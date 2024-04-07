(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-spec::timestamp 1712526093)
  (begin
    (define gxc#::generate-method-specializers::t
      (let ((__tmp172556 (list gxc#::identity::t))
            (__tmp172555 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-method-specializers::t
         '::generate-method-specializers
         __tmp172556
         '()
         __tmp172555
         '#f)))
    (define gxc#::generate-method-specializers?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-method-specializers::t)))
    (define gxc#make-::generate-method-specializers
      (lambda _%$args171421%_
        (apply make-instance
               gxc#::generate-method-specializers::t
               _%$args171421%_)))
    (define gxc#::generate-method-specializers-bind-methods!
      (let ((__tmp172557
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
        (__make-promise __tmp172557)))
    (define gxc#apply-generate-method-specializers
      (lambda (_%stx171413%_)
        (force gxc#::generate-method-specializers-bind-methods!)
        (let* ((_%self171416%_
                (let ((__obj172550
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-method-specializers::t))))
                  __obj172550))
               (__tmp172558
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self171416%_ _%stx171413%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp172558
           gxc#current-compile-method
           _%self171416%_))))
    (define gxc#::collect-object-refs::t
      (let ((__tmp172560 (list gxc#::void::t))
            (__tmp172559 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-object-refs::t
         '::collect-object-refs
         __tmp172560
         '(receiver methods slots)
         __tmp172559
         '#f)))
    (define gxc#::collect-object-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-object-refs::t)))
    (define gxc#make-::collect-object-refs
      (lambda _%$args171410%_
        (apply make-instance gxc#::collect-object-refs::t _%$args171410%_)))
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
      (let ((__tmp172561
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
        (__make-promise __tmp172561)))
    (define gxc#apply-collect-object-refs__%
      (lambda (_%@@keywords171376%_
               _%receiver171371171377%_
               _%methods171372171379%_
               _%slots171373171381%_
               _%stx171383%_)
        (let* ((_%receiver171386%_
                (if (eq? _%receiver171371171377%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _%receiver171371171377%_))
               (_%methods171388%_
                (if (eq? _%methods171372171379%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _%methods171372171379%_))
               (_%slots171390%_
                (if (eq? _%slots171373171381%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _%slots171373171381%_)))
          (force gxc#::collect-object-refs-bind-methods!)
          (let* ((_%self171392%_
                  (let ((__obj172552
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
                       __obj172552
                       _%receiver171386%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj172552
                       _%methods171388%_
                       '2
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj172552
                       _%slots171390%_
                       '3
                       '#f
                       '#f))
                    __obj172552))
                 (__tmp172562
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self171392%_ _%stx171383%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp172562
             gxc#current-compile-method
             _%self171392%_)))))
    (define gxc#apply-collect-object-refs__@
      (lambda (_%@@keywords171399%_ . _%args171400%_)
        (apply gxc#apply-collect-object-refs__%
               _%@@keywords171399%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords171399%_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords171399%_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords171399%_
                  'slots:
                  absent-value))
               _%args171400%_)))
    (define gxc#apply-collect-object-refs
      (lambda _%args171374171406%_
        (apply keyword-dispatch
               '#(receiver: slots: methods:)
               gxc#apply-collect-object-refs__@
               _%args171374171406%_)))
    (define gxc#::subst-object-refs::t
      (let ((__tmp172564 (list gxc#::basic-xform-expression::t))
            (__tmp172563 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::subst-object-refs::t
         '::subst-object-refs
         __tmp172564
         '(receiver klass methods slots)
         __tmp172563
         '#f)))
    (define gxc#::subst-object-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::subst-object-refs::t)))
    (define gxc#make-::subst-object-refs
      (lambda _%$args171367%_
        (apply make-instance gxc#::subst-object-refs::t _%$args171367%_)))
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
      (let ((__tmp172565
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
        (__make-promise __tmp172565)))
    (define gxc#apply-subst-object-refs__%
      (lambda (_%@@keywords171329%_
               _%receiver171323171330%_
               _%klass171324171332%_
               _%methods171325171334%_
               _%slots171326171336%_
               _%stx171338%_)
        (let* ((_%receiver171341%_
                (if (eq? _%receiver171323171330%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _%receiver171323171330%_))
               (_%klass171343%_
                (if (eq? _%klass171324171332%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'klass:))
                    _%klass171324171332%_))
               (_%methods171345%_
                (if (eq? _%methods171325171334%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _%methods171325171334%_))
               (_%slots171347%_
                (if (eq? _%slots171326171336%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _%slots171326171336%_)))
          (force gxc#::subst-object-refs-bind-methods!)
          (let* ((_%self171349%_
                  (let ((__obj172554
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
                       __obj172554
                       _%receiver171341%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj172554
                       _%klass171343%_
                       '2
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj172554
                       _%methods171345%_
                       '3
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj172554
                       _%slots171347%_
                       '4
                       '#f
                       '#f))
                    __obj172554))
                 (__tmp172566
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self171349%_ _%stx171338%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp172566
             gxc#current-compile-method
             _%self171349%_)))))
    (define gxc#apply-subst-object-refs__@
      (lambda (_%@@keywords171356%_ . _%args171357%_)
        (apply gxc#apply-subst-object-refs__%
               _%@@keywords171356%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords171356%_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords171356%_
                  'klass:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords171356%_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords171356%_
                  'slots:
                  absent-value))
               _%args171357%_)))
    (define gxc#apply-subst-object-refs
      (lambda _%args171327171363%_
        (apply keyword-dispatch
               '#(receiver: methods: slots: klass:)
               gxc#apply-subst-object-refs__@
               _%args171327171363%_)))
    (define gxc#generate-method-specializers-define-values%
      (lambda (_%self168504%_ _%stx168505%_)
        (letrec ((_%generate-method-bind168507%_
                  (lambda (_%$klass171315%_
                           _%$method-table171316%_
                           _%id171317%_
                           _%$id171318%_)
                    (let ((_%$tmp171320%_
                           (let ((__tmp172567
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__method))))
                             (declare (not safe))
                             (make-symbol__0 __tmp172567))))
                      (cons (cons _%$id171318%_ '())
                            (cons (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons 'make-promise '()))
                                              (cons (cons '%#lambda
                                                          (cons '()
                                                                (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons (cons (cons _%$tmp171320%_ '())
                                                      (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#ref (cons 'symbolic-table-ref '()))
                                (cons (cons '%#ref
                                            (cons _%$method-table171316%_ '()))
                                      (cons (cons '%#quote
                                                  (cons _%id171317%_ '()))
                                            (cons (cons '%#quote
                                                        (cons '#f '()))
                                                  '())))))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())
                                          (cons (cons '%#if
                                                      (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%$tmp171320%_ '()))
                    (cons (cons '%#ref (cons _%$tmp171320%_ '()))
                          (cons (cons '%#call
                                      (cons (cons '%#ref (cons 'error '()))
                                            (cons (cons '%#quote
                                                        (cons '"Missing method"
                                                              '()))
                                                  (cons (cons '%#quote
                                                              (cons _%id171317%_
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
                 (_%generate-slot-bind168508%_
                  (lambda (_%$klass171309%_ _%id171310%_ _%$id171311%_)
                    (let ((_%$tmp171313%_
                           (let ((__tmp172568
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__slot))))
                             (declare (not safe))
                             (make-symbol__0 __tmp172568))))
                      (cons (cons _%$id171311%_ '())
                            (cons (cons '%#let-values
                                        (cons (cons (cons (cons _%$tmp171313%_
                                                                '())
                                                          (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '%#ref (cons 'class-slot-offset '()))
                                    (cons (cons '%#ref
                                                (cons _%$klass171309%_ '()))
                                          (cons (cons '%#quote
                                                      (cons _%id171310%_ '()))
                                                '()))))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())
                                              (cons (cons '%#if
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$tmp171313%_ '()))
                        (cons (cons '%#ref (cons _%$tmp171313%_ '()))
                              (cons (cons '%#call
                                          (cons (cons '%#ref (cons 'error '()))
                                                (cons (cons '%#quote
                                                            (cons '"Unknown slot"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#quote (cons _%id171310%_ '())) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '())))))
                 (_%generate-specializer-impl168509%_
                  (lambda (_%$klass171303%_
                           _%$method-table171304%_
                           _%methods-bind171305%_
                           _%slots-bind171306%_
                           _%specializer-impl171307%_)
                    (let ((__tmp172569
                           (cons '%#lambda
                                 (cons (cons _%$klass171303%_
                                             (cons _%$method-table171304%_
                                                   '()))
                                       (cons (cons '%#let-values
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (__foldr1
                                                            cons
                                                            _%slots-bind171306%_
                                                            _%methods-bind171305%_))
                                                         (cons _%specializer-impl171307%_
                                                               '())))
                                             '())))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp172569 _%stx168505%_))))
                 (_%generate-specializer-def168510%_
                  (lambda (_%id171299%_
                           _%specializer-id171300%_
                           _%specializer-impl171301%_)
                    (let ((__tmp172570
                           (cons '%#begin
                                 (cons _%stx168505%_
                                       (cons (let ((__tmp172571
                                                    (cons '%#define-values
                                                          (cons (cons _%specializer-id171300%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons _%specializer-impl171301%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp172571
                                                _%stx168505%_))
                                             (cons (let ((__tmp172572
                                                          (cons '%#call
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons 'bind-specializer! '()))
                              (cons (cons '%#ref (cons _%id171299%_ '()))
                                    (cons (cons '%#ref
                                                (cons _%specializer-id171300%_
                                                      '()))
                                          '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp172572
                                                      _%stx168505%_))
                                                   '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp172570 _%stx168505%_)))))
          (let* ((_%__stx171510171511%_ _%stx168505%_)
                 (_%g168513168533%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx171510171511%_)))))
            (let ((_%__kont171512171513%_
                   (lambda (_%L168577%_ _%L168578%_)
                     (let ((_%method-calls168597%_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_%slot-refs168598%_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_%empty168599%_
                            (let ()
                              (declare (not safe))
                              (make-hash-table-eq))))
                       (letrec ((_%no-specializer?168601%_
                                 (lambda ()
                                   (if (fxzero? (let ()
                                                  (declare (not safe))
                                                  (hash-length
                                                   _%method-calls168597%_)))
                                       (fxzero? (let ()
                                                  (declare (not safe))
                                                  (hash-length
                                                   _%slot-refs168598%_)))
                                       '#f))))
                         (if (let ()
                               (declare (not safe))
                               (gxc#lambda-expr? _%L168577%_))
                             (let ()
                               (let* ((_%__stx171424171425%_ _%L168577%_)
                                      (_%g168989169007%_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx171424171425%_)))))
                                 (let ((_%__kont171426171427%_
                                        (lambda (_%L169043%_
                                                 _%L169044%_
                                                 _%L169045%_)
                                          (for-each
                                           (lambda (_%g169061169063%_)
                                             (let ()
                                               (declare (not safe))
                                               (gxc#apply-collect-object-refs__%
                                                '#f
                                                _%L169045%_
                                                _%method-calls168597%_
                                                _%slot-refs168598%_
                                                _%g169061169063%_)))
                                           _%L169043%_)
                                          (if (let ()
                                                (declare (not safe))
                                                (_%no-specializer?168601%_))
                                              _%stx168505%_
                                              (let* ((_%specializer-id169072%_
                                                      (let* ((_%id169066%_
                                                              (let ((__tmp172573
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%L168578%_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp172573 '"::specialize")))
                     (_%specializer-id169069%_
                      (let ((__tmp172574
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _%stx168505%_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _%id169066%_ __tmp172574))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _%specializer-id169069%_))
                _%specializer-id169069%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$klass169074%_
                                                      (let ((__tmp172575
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__klass))))
                (declare (not safe))
                (make-symbol__0 __tmp172575)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$method-table169076%_
                                                      (let ((__tmp172576
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__method-table))))
                (declare (not safe))
                (make-symbol__0 __tmp172576)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods169078%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _%method-calls168597%_)))
                                                     (_%$methods169082%_
                                                      (map (lambda (_%id169080%_)
                                                             (let ((__tmp172577
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _%id169080%_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp172577)))
                   _%methods169078%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_169091%_
                                                      (for-each
                                                       (lambda (_%g169083169086%_
                                                                _%g169084169088%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (hash-put!
                                                            _%method-calls168597%_
                                                            _%g169083169086%_
                                                            _%g169084169088%_)))
                                                       _%methods169078%_
                                                       _%$methods169082%_))
                                                     (_%methods-bind169101%_
                                                      (map (lambda (_%g169093169096%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g169094169098%_)
                     (let ()
                       (declare (not safe))
                       (_%generate-method-bind168507%_
                        _%$klass169074%_
                        _%$method-table169076%_
                        _%g169093169096%_
                        _%g169094169098%_)))
                   _%methods169078%_
                   _%$methods169082%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots169103%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _%slot-refs168598%_)))
                                                     (_%$slots169107%_
                                                      (map (lambda (_%id169105%_)
                                                             (let ((__tmp172578
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _%id169105%_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp172578)))
                   _%slots169103%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_169116%_
                                                      (for-each
                                                       (lambda (_%g169108169111%_
                                                                _%g169109169113%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (hash-put!
                                                            _%slot-refs168598%_
                                                            _%g169108169111%_
                                                            _%g169109169113%_)))
                                                       _%slots169103%_
                                                       _%$slots169107%_))
                                                     (_%slots-bind169125%_
                                                      (map (lambda (_%g169117169120%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g169118169122%_)
                     (let ()
                       (declare (not safe))
                       (_%generate-slot-bind168508%_
                        _%$klass169074%_
                        _%g169117169120%_
                        _%g169118169122%_)))
                   _%slots169103%_
                   _%$slots169107%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-body169131%_
                                                      (map (lambda (_%g169126169128%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#apply-subst-object-refs__%
                        '#f
                        _%L169045%_
                        _%$klass169074%_
                        _%method-calls168597%_
                        _%slot-refs168598%_
                        _%g169126169128%_)))
                   _%L169043%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl169133%_
                                                      (let ((__tmp172579
                                                             (cons '%#lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons _%L169045%_ _%L169044%_)
                                 _%specializer-body169131%_))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp172579 _%stx168505%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl169135%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%generate-specializer-impl168509%_
                                                         _%$klass169074%_
                                                         _%$method-table169076%_
                                                         _%methods-bind169101%_
                                                         _%slots-bind169125%_
                                                         _%specializer-impl169133%_))))
                                                (let ((__tmp172581
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%L168578%_)))
                                                      (__tmp172580
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%specializer-id169072%_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp172581
                                                   '" => "
                                                   __tmp172580))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%generate-specializer-def168510%_
                                                   _%L168578%_
                                                   _%specializer-id169072%_
                                                   _%specializer-impl169135%_))))))
                                       (_%__kont171428171429%_
                                        (lambda () _%stx168505%_)))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%__stx171424171425%_))
                                       (let ((_%e168996169019%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%__stx171424171425%_))))
                                         (let ((_%tl168994169024%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e168996169019%_)))
                                               (_%hd168995169022%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e168996169019%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl168994169024%_))
                                               (let ((_%e168999169027%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%tl168994169024%_))))
                                                 (let ((_%tl168997169032%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e168999169027%_)))
                                                       (_%hd168998169030%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e168999169027%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%hd168998169030%_))
                                                       (let ((_%e169002169035%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%hd168998169030%_))))
                 (let ((_%tl169000169040%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e169002169035%_)))
                       (_%hd169001169038%_
                        (let ()
                          (declare (not safe))
                          (##car _%e169002169035%_))))
                   (_%__kont171426171427%_
                    _%tl168997169032%_
                    _%tl169000169040%_
                    _%hd169001169038%_)))
               (_%__kont171428171429%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%__kont171428171429%_))))
                                       (_%__kont171428171429%_)))))
                             (if (let ()
                                   (declare (not safe))
                                   (gxc#case-lambda-expr? _%L168577%_))
                                 (let ()
                                   (let* ((_%g169142169161%_
                                           (lambda (_%g169143169158%_)
                                             (let ()
                                               (declare (not safe))
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _%g169143169158%_))))
                                          (_%g169141169448%_
                                           (lambda (_%g169143169164%_)
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%g169143169164%_))
                                                 (let ((_%e169147169166%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%g169143169164%_))))
                                                   (let ((_%hd169146169169%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e169147169166%_)))
                                                         (_%tl169145169171%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e169147169166%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair/null?
                                                            _%tl169145169171%_))
                                                         (let ((_g172582_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax-split-splice _%tl169145169171%_ '0))))
                   (begin
                     (let ((_g172583_
                            (let ()
                              (declare (not safe))
                              (if (##values? _g172582_)
                                  (##vector-length _g172582_)
                                  1))))
                       (if (not (let ()
                                  (declare (not safe))
                                  (##fx= _g172583_ 2)))
                           (error "Context expects 2 values" _g172583_)))
                     (let ((_%target169148169174%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _g172582_ 0)))
                           (_%tl169150169176%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _g172582_ 1))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl169150169176%_))
                           (letrec ((_%loop169151169179%_
                                     (lambda (_%hd169149169182%_
                                              _%clause169155169184%_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%hd169149169182%_))
                                           (let ((_%e169152169187%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%hd169149169182%_))))
                                             (let ((_%lp-hd169153169190%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e169152169187%_)))
                                                   (_%lp-tl169154169192%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e169152169187%_))))
                                               (let ((__tmp172584
                                                      (cons _%lp-hd169153169190%_
                                                            _%clause169155169184%_)))
                                                 (declare (not safe))
                                                 (_%loop169151169179%_
                                                  _%lp-tl169154169192%_
                                                  __tmp172584))))
                                           (let ((_%clause169156169195%_
                                                  (reverse _%clause169155169184%_)))
                                             ((lambda (_%L169198%_)
                                                (for-each
                                                 (lambda (_%clause169212%_)
                                                   (let* ((_%__stx171450171451%_
                                                           _%clause169212%_)
                                                          (_%g169215169230%_
                                                           (lambda ()
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _%__stx171450171451%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_%__kont171452171453%_
                                                            (lambda (_%L169258%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%L169259%_
                             _%L169260%_)
                      (for-each
                       (lambda (_%g169275169277%_)
                         (let ()
                           (declare (not safe))
                           (gxc#apply-collect-object-refs__%
                            '#f
                            _%L169260%_
                            _%method-calls168597%_
                            _%slot-refs168598%_
                            _%g169275169277%_)))
                       _%L169258%_)))
                   (_%__kont171454171455%_ (lambda () '#!void)))
               (if (let ()
                     (declare (not safe))
                     (gx#stx-pair? _%__stx171450171451%_))
                   (let ((_%e169222169242%_
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%__stx171450171451%_))))
                     (let ((_%tl169220169247%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e169222169242%_)))
                           (_%hd169221169245%_
                            (let ()
                              (declare (not safe))
                              (##car _%e169222169242%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%hd169221169245%_))
                           (let ((_%e169225169250%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd169221169245%_))))
                             (let ((_%tl169223169255%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e169225169250%_)))
                                   (_%hd169224169253%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e169225169250%_))))
                               (_%__kont171452171453%_
                                _%tl169220169247%_
                                _%tl169223169255%_
                                _%hd169224169253%_)))
                           (_%__kont171454171455%_))))
                   (_%__kont171454171455%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((__tmp172585
                                                        (lambda (_%g169282169285%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g169283169287%_)
                  (cons _%g169282169285%_ _%g169283169287%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__foldr1
                                                    __tmp172585
                                                    '()
                                                    _%L169198%_)))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (_%no-specializer?168601%_))
                                                    _%stx168505%_
                                                    (let* ((_%specializer-id169296%_
                                                            (let* ((_%id169290%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp172586
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L168578%_))))
                              (declare (not safe))
                              (make-symbol__1 __tmp172586 '"::specialize")))
                           (_%specializer-id169293%_
                            (let ((__tmp172587
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-source _%stx168505%_))))
                              (declare (not safe))
                              (gx#core-quote-syntax__1
                               _%id169290%_
                               __tmp172587))))
                      (let ()
                        (declare (not safe))
                        (gx#core-bind-runtime!__0 _%specializer-id169293%_))
                      _%specializer-id169293%_))
                   (_%$klass169298%_
                    (let ((__tmp172588
                           (let () (declare (not safe)) (##gensym '__klass))))
                      (declare (not safe))
                      (make-symbol__0 __tmp172588)))
                   (_%$method-table169300%_
                    (let ((__tmp172589
                           (let ()
                             (declare (not safe))
                             (##gensym '__method-table))))
                      (declare (not safe))
                      (make-symbol__0 __tmp172589)))
                   (_%methods169302%_
                    (let ()
                      (declare (not safe))
                      (hash-keys _%method-calls168597%_)))
                   (_%$methods169306%_
                    (map (lambda (_%id169304%_)
                           (let ((__tmp172590 (gensym _%id169304%_)))
                             (declare (not safe))
                             (make-symbol__1 '"__" __tmp172590)))
                         _%methods169302%_))
                   (_%_169315%_
                    (for-each
                     (lambda (_%g169307169310%_ _%g169308169312%_)
                       (let ()
                         (declare (not safe))
                         (hash-put!
                          _%method-calls168597%_
                          _%g169307169310%_
                          _%g169308169312%_)))
                     _%methods169302%_
                     _%$methods169306%_))
                   (_%methods-bind169325%_
                    (map (lambda (_%g169317169320%_ _%g169318169322%_)
                           (let ()
                             (declare (not safe))
                             (_%generate-method-bind168507%_
                              _%$klass169298%_
                              _%$method-table169300%_
                              _%g169317169320%_
                              _%g169318169322%_)))
                         _%methods169302%_
                         _%$methods169306%_))
                   (_%slots169327%_
                    (let ()
                      (declare (not safe))
                      (hash-keys _%slot-refs168598%_)))
                   (_%$slots169331%_
                    (map (lambda (_%id169329%_)
                           (let ((__tmp172591 (gensym _%id169329%_)))
                             (declare (not safe))
                             (make-symbol__1 '"__" __tmp172591)))
                         _%slots169327%_))
                   (_%_169340%_
                    (for-each
                     (lambda (_%g169332169335%_ _%g169333169337%_)
                       (let ()
                         (declare (not safe))
                         (hash-put!
                          _%slot-refs168598%_
                          _%g169332169335%_
                          _%g169333169337%_)))
                     _%slots169327%_
                     _%$slots169331%_))
                   (_%slots-bind169349%_
                    (map (lambda (_%g169341169344%_ _%g169342169346%_)
                           (let ()
                             (declare (not safe))
                             (_%generate-slot-bind168508%_
                              _%$klass169298%_
                              _%g169341169344%_
                              _%g169342169346%_)))
                         _%slots169327%_
                         _%$slots169331%_))
                   (_%specializer-clauses169441%_
                    (map (lambda (_%clause169351%_)
                           (let* ((_%__stx171470171471%_ _%clause169351%_)
                                  (_%g169354169369%_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%__stx171470171471%_)))))
                             (let ((_%__kont171472171473%_
                                    (lambda (_%L169397%_
                                             _%L169398%_
                                             _%L169399%_)
                                      (let ((_%body169429%_
                                             (map (lambda (_%g169424169426%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#apply-subst-object-refs__%
                                                       '#f
                                                       _%L169399%_
                                                       _%$klass169298%_
                                                       _%method-calls168597%_
                                                       _%slot-refs168598%_
                                                       _%g169424169426%_)))
                                                  _%L169397%_)))
                                        (cons (cons _%L169399%_ _%L169398%_)
                                              _%body169429%_))))
                                   (_%__kont171474171475%_
                                    (lambda () _%clause169351%_)))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%__stx171470171471%_))
                                   (let ((_%e169361169381%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%__stx171470171471%_))))
                                     (let ((_%tl169359169386%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e169361169381%_)))
                                           (_%hd169360169384%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e169361169381%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%hd169360169384%_))
                                           (let ((_%e169364169389%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%hd169360169384%_))))
                                             (let ((_%tl169362169394%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e169364169389%_)))
                                                   (_%hd169363169392%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e169364169389%_))))
                                               (_%__kont171472171473%_
                                                _%tl169359169386%_
                                                _%tl169362169394%_
                                                _%hd169363169392%_)))
                                           (_%__kont171474171475%_))))
                                   (_%__kont171474171475%_)))))
                         (let ((__tmp172592
                                (lambda (_%g169433169436%_ _%g169434169438%_)
                                  (cons _%g169433169436%_ _%g169434169438%_))))
                           (declare (not safe))
                           (__foldr1 __tmp172592 '() _%L169198%_))))
                   (_%specializer-impl169443%_
                    (let ((__tmp172593
                           (cons '%#case-lambda
                                 _%specializer-clauses169441%_)))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp172593 _%stx168505%_)))
                   (_%specializer-impl169445%_
                    (let ()
                      (declare (not safe))
                      (_%generate-specializer-impl168509%_
                       _%$klass169298%_
                       _%$method-table169300%_
                       _%methods-bind169325%_
                       _%slots-bind169349%_
                       _%specializer-impl169443%_))))
              (let ((__tmp172595
                     (let () (declare (not safe)) (gx#stx-e _%L168578%_)))
                    (__tmp172594
                     (let ()
                       (declare (not safe))
                       (gx#stx-e _%specializer-id169296%_))))
                (declare (not safe))
                (gxc#verbose
                 '"generate method specializer "
                 __tmp172595
                 '" => "
                 __tmp172594))
              (let ()
                (declare (not safe))
                (_%generate-specializer-def168510%_
                 _%L168578%_
                 _%specializer-id169296%_
                 _%specializer-impl169445%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%clause169156169195%_))))))
                             (let ()
                               (declare (not safe))
                               (_%loop169151169179%_
                                _%target169148169174%_
                                '())))
                           (let ()
                             (declare (not safe))
                             (_%g169142169161%_ _%g169143169164%_))))))
                 (let ()
                   (declare (not safe))
                   (_%g169142169161%_ _%g169143169164%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%g169142169161%_
                                                    _%g169143169164%_))))))
                                     (declare (not safe))
                                     (_%g169141169448%_ _%L168577%_)))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#opt-lambda-expr? _%L168577%_))
                                     (let ()
                                       (let* ((_%g169452169482%_
                                               (lambda (_%g169453169479%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g169453169479%_))))
                                              (_%g169451170091%_
                                               (lambda (_%g169453169485%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%g169453169485%_))
                                                     (let ((_%e169459169487%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%g169453169485%_))))
                                                       (let ((_%hd169458169490%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e169459169487%_)))
                     (_%tl169457169492%_
                      (let () (declare (not safe)) (##cdr _%e169459169487%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl169457169492%_))
                     (let ((_%e169462169495%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl169457169492%_))))
                       (let ((_%hd169461169498%_
                              (let ()
                                (declare (not safe))
                                (##car _%e169462169495%_)))
                             (_%tl169460169500%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e169462169495%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%hd169461169498%_))
                             (let ((_%e169465169503%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%hd169461169498%_))))
                               (let ((_%hd169464169506%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e169465169503%_)))
                                     (_%tl169463169508%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e169465169503%_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd169464169506%_))
                                     (let ((_%e169468169511%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd169464169506%_))))
                                       (let ((_%hd169467169514%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e169468169511%_)))
                                             (_%tl169466169516%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e169468169511%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%hd169467169514%_))
                                             (let ((_%e169471169519%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%hd169467169514%_))))
                                               (let ((_%hd169470169522%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e169471169519%_)))
                                                     (_%tl169469169524%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e169471169519%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%tl169469169524%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%tl169466169516%_))
                                                         (let ((_%e169474169527%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%tl169466169516%_))))
                   (let ((_%hd169473169530%_
                          (let ()
                            (declare (not safe))
                            (##car _%e169474169527%_)))
                         (_%tl169472169532%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e169474169527%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl169472169532%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl169463169508%_))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl169460169500%_))
                                 (let ((_%e169477169535%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%tl169460169500%_))))
                                   (let ((_%hd169476169538%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e169477169535%_)))
                                         (_%tl169475169540%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e169477169535%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _%tl169475169540%_))
                                         ((lambda (_%L169543%_
                                                   _%L169544%_
                                                   _%L169545%_)
                                            (let* ((_%g169569169587%_
                                                    (lambda (_%g169570169584%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _%g169570169584%_))))
                                                   (_%g169568169638%_
                                                    (lambda (_%g169570169590%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%g169570169590%_))
                                                          (let ((_%e169576169592%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%g169570169590%_))))
                    (let ((_%hd169575169595%_
                           (let ()
                             (declare (not safe))
                             (##car _%e169576169592%_)))
                          (_%tl169574169597%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e169576169592%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl169574169597%_))
                          (let ((_%e169579169600%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl169574169597%_))))
                            (let ((_%hd169578169603%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e169579169600%_)))
                                  (_%tl169577169605%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e169579169600%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd169578169603%_))
                                  (let ((_%e169582169608%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd169578169603%_))))
                                    (let ((_%hd169581169611%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e169582169608%_)))
                                          (_%tl169580169613%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e169582169608%_))))
                                      ((lambda (_%L169616%_
                                                _%L169617%_
                                                _%L169618%_)
                                         (for-each
                                          (lambda (_%g169633169635%_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#apply-collect-object-refs__%
                                               '#f
                                               _%L169618%_
                                               _%method-calls168597%_
                                               _%slot-refs168598%_
                                               _%g169633169635%_)))
                                          _%L169616%_))
                                       _%tl169577169605%_
                                       _%tl169580169613%_
                                       _%hd169581169611%_)))
                                  (let ()
                                    (declare (not safe))
                                    (_%g169569169587%_ _%g169570169590%_)))))
                          (let ()
                            (declare (not safe))
                            (_%g169569169587%_ _%g169570169590%_)))))
                  (let ()
                    (declare (not safe))
                    (_%g169569169587%_ _%g169570169590%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_%g169568169638%_ _%L169544%_))
                                            (let* ((_%g169641169660%_
                                                    (lambda (_%g169642169657%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _%g169642169657%_))))
                                                   (_%g169640169779%_
                                                    (lambda (_%g169642169663%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%g169642169663%_))
                                                          (let ((_%e169646169665%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%g169642169663%_))))
                    (let ((_%hd169645169668%_
                           (let ()
                             (declare (not safe))
                             (##car _%e169646169665%_)))
                          (_%tl169644169670%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e169646169665%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _%tl169644169670%_))
                          (let ((_g172596_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _%tl169644169670%_
                                    '0))))
                            (begin
                              (let ((_g172597_
                                     (let ()
                                       (declare (not safe))
                                       (if (##values? _g172596_)
                                           (##vector-length _g172596_)
                                           1))))
                                (if (not (let ()
                                           (declare (not safe))
                                           (##fx= _g172597_ 2)))
                                    (error "Context expects 2 values"
                                           _g172597_)))
                              (let ((_%target169647169673%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref _g172596_ 0)))
                                    (_%tl169649169675%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref _g172596_ 1))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl169649169675%_))
                                    (letrec ((_%loop169650169678%_
                                              (lambda (_%hd169648169681%_
                                                       _%clause169654169683%_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%hd169648169681%_))
                                                    (let ((_%e169651169686%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd169648169681%_))))
                                                      (let ((_%lp-hd169652169689%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e169651169686%_)))
                    (_%lp-tl169653169691%_
                     (let () (declare (not safe)) (##cdr _%e169651169686%_))))
                (let ((__tmp172598
                       (cons _%lp-hd169652169689%_ _%clause169654169683%_)))
                  (declare (not safe))
                  (_%loop169650169678%_ _%lp-tl169653169691%_ __tmp172598))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%clause169655169694%_
                                                           (reverse _%clause169654169683%_)))
                                                      ((lambda (_%L169697%_)
                                                         (for-each
                                                          (lambda (_%clause169710%_)
                                                            (let* ((_%g169712169727%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%g169713169724%_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g169713169724%_))))
                           (_%g169711169769%_
                            (lambda (_%g169713169730%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%g169713169730%_))
                                  (let ((_%e169719169732%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%g169713169730%_))))
                                    (let ((_%hd169718169735%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e169719169732%_)))
                                          (_%tl169717169737%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e169719169732%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%hd169718169735%_))
                                          (let ((_%e169722169740%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%hd169718169735%_))))
                                            (let ((_%hd169721169743%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e169722169740%_)))
                                                  (_%tl169720169745%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e169722169740%_))))
                                              ((lambda (_%L169748%_
                                                        _%L169749%_
                                                        _%L169750%_)
                                                 (for-each
                                                  (lambda (_%g169764169766%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#apply-collect-object-refs__%
                                                       '#f
                                                       _%L169750%_
                                                       _%method-calls168597%_
                                                       _%slot-refs168598%_
                                                       _%g169764169766%_)))
                                                  _%L169748%_))
                                               _%tl169717169737%_
                                               _%tl169720169745%_
                                               _%hd169721169743%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g169712169727%_
                                             _%g169713169730%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g169712169727%_ _%g169713169730%_))))))
                      (declare (not safe))
                      (_%g169711169769%_ _%clause169710%_)))
                  (let ((__tmp172599
                         (lambda (_%g169771169774%_ _%g169772169776%_)
                           (cons _%g169771169774%_ _%g169772169776%_))))
                    (declare (not safe))
                    (__foldr1 __tmp172599 '() _%L169697%_))))
               _%clause169655169694%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (let ()
                                        (declare (not safe))
                                        (_%loop169650169678%_
                                         _%target169647169673%_
                                         '())))
                                    (let ()
                                      (declare (not safe))
                                      (_%g169641169660%_
                                       _%g169642169663%_))))))
                          (let ()
                            (declare (not safe))
                            (_%g169641169660%_ _%g169642169663%_)))))
                  (let ()
                    (declare (not safe))
                    (_%g169641169660%_ _%g169642169663%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_%g169640169779%_ _%L169543%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (_%no-specializer?168601%_))
                                                _%stx168505%_
                                                (let* ((_%specializer-id169788%_
                                                        (let* ((_%id169782%_
                                                                (let ((__tmp172600
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%L168578%_))))
                          (declare (not safe))
                          (make-symbol__1 __tmp172600 '"::specialize")))
                       (_%specializer-id169785%_
                        (let ((__tmp172601
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-source _%stx168505%_))))
                          (declare (not safe))
                          (gx#core-quote-syntax__1 _%id169782%_ __tmp172601))))
                  (let ()
                    (declare (not safe))
                    (gx#core-bind-runtime!__0 _%specializer-id169785%_))
                  _%specializer-id169785%_))
               (_%$klass169790%_
                (let ((__tmp172602
                       (let () (declare (not safe)) (##gensym '__klass))))
                  (declare (not safe))
                  (make-symbol__0 __tmp172602)))
               (_%$method-table169792%_
                (let ((__tmp172603
                       (let ()
                         (declare (not safe))
                         (##gensym '__method-table))))
                  (declare (not safe))
                  (make-symbol__0 __tmp172603)))
               (_%methods169794%_
                (let ()
                  (declare (not safe))
                  (hash-keys _%method-calls168597%_)))
               (_%$methods169798%_
                (map (lambda (_%id169796%_)
                       (let ((__tmp172604 (gensym _%id169796%_)))
                         (declare (not safe))
                         (make-symbol__1 '"__" __tmp172604)))
                     _%methods169794%_))
               (_%_169807%_
                (for-each
                 (lambda (_%g169799169802%_ _%g169800169804%_)
                   (let ()
                     (declare (not safe))
                     (hash-put!
                      _%method-calls168597%_
                      _%g169799169802%_
                      _%g169800169804%_)))
                 _%methods169794%_
                 _%$methods169798%_))
               (_%methods-bind169817%_
                (map (lambda (_%g169809169812%_ _%g169810169814%_)
                       (let ()
                         (declare (not safe))
                         (_%generate-method-bind168507%_
                          _%$klass169790%_
                          _%$method-table169792%_
                          _%g169809169812%_
                          _%g169810169814%_)))
                     _%methods169794%_
                     _%$methods169798%_))
               (_%slots169819%_
                (let () (declare (not safe)) (hash-keys _%slot-refs168598%_)))
               (_%$slots169823%_
                (map (lambda (_%id169821%_)
                       (let ((__tmp172605 (gensym _%id169821%_)))
                         (declare (not safe))
                         (make-symbol__1 '"__" __tmp172605)))
                     _%slots169819%_))
               (_%_169832%_
                (for-each
                 (lambda (_%g169824169827%_ _%g169825169829%_)
                   (let ()
                     (declare (not safe))
                     (hash-put!
                      _%slot-refs168598%_
                      _%g169824169827%_
                      _%g169825169829%_)))
                 _%slots169819%_
                 _%$slots169823%_))
               (_%slots-bind169841%_
                (map (lambda (_%g169833169836%_ _%g169834169838%_)
                       (let ()
                         (declare (not safe))
                         (_%generate-slot-bind168508%_
                          _%$klass169790%_
                          _%g169833169836%_
                          _%g169834169838%_)))
                     _%slots169819%_
                     _%$slots169823%_))
               (_%specializer-lambda-expr169927%_
                (let* ((_%g169843169861%_
                        (lambda (_%g169844169858%_)
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _%g169844169858%_))))
                       (_%g169842169924%_
                        (lambda (_%g169844169864%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%g169844169864%_))
                              (let ((_%e169850169866%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%g169844169864%_))))
                                (let ((_%hd169849169869%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e169850169866%_)))
                                      (_%tl169848169871%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e169850169866%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl169848169871%_))
                                      (let ((_%e169853169874%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl169848169871%_))))
                                        (let ((_%hd169852169877%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e169853169874%_)))
                                              (_%tl169851169879%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e169853169874%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd169852169877%_))
                                              (let ((_%e169856169882%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd169852169877%_))))
                                                (let ((_%hd169855169885%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e169856169882%_)))
                                                      (_%tl169854169887%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e169856169882%_))))
                                                  ((lambda (_%L169890%_
                                                            _%L169891%_
                                                            _%L169892%_)
                                                     (let* ((_%body169922%_
                                                             (map (lambda (_%g169917169919%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gxc#apply-subst-object-refs__%
                               '#f
                               _%L169892%_
                               _%$klass169790%_
                               _%method-calls168597%_
                               _%slot-refs168598%_
                               _%g169917169919%_)))
                          _%L169890%_))
                    (__tmp172606
                     (cons '%#lambda
                           (cons (cons _%L169892%_ _%L169891%_)
                                 _%body169922%_))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp172606 _%L169544%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%tl169851169879%_
                                                   _%tl169854169887%_
                                                   _%hd169855169885%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g169843169861%_
                                                 _%g169844169864%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g169843169861%_
                                         _%g169844169864%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g169843169861%_ _%g169844169864%_))))))
                  (declare (not safe))
                  (_%g169842169924%_ _%L169544%_)))
               (_%specializer-case-lambda-expr170084%_
                (let* ((_%g169929169948%_
                        (lambda (_%g169930169945%_)
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _%g169930169945%_))))
                       (_%g169928170081%_
                        (lambda (_%g169930169951%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%g169930169951%_))
                              (let ((_%e169934169953%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%g169930169951%_))))
                                (let ((_%hd169933169956%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e169934169953%_)))
                                      (_%tl169932169958%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e169934169953%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl169932169958%_))
                                      (let ((_g172607_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl169932169958%_
                                                '0))))
                                        (begin
                                          (let ((_g172608_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g172607_)
                                                       (##vector-length
                                                        _g172607_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g172608_ 2)))
                                                (error "Context expects 2 values"
                                                       _g172608_)))
                                          (let ((_%target169935169961%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g172607_ 0)))
                                                (_%tl169937169963%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g172607_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl169937169963%_))
                                                (letrec ((_%loop169938169966%_
                                                          (lambda (_%hd169936169969%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%clause169942169971%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd169936169969%_))
                        (let ((_%e169939169974%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd169936169969%_))))
                          (let ((_%lp-hd169940169977%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e169939169974%_)))
                                (_%lp-tl169941169979%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e169939169974%_))))
                            (let ((__tmp172609
                                   (cons _%lp-hd169940169977%_
                                         _%clause169942169971%_)))
                              (declare (not safe))
                              (_%loop169938169966%_
                               _%lp-tl169941169979%_
                               __tmp172609))))
                        (let ((_%clause169943169982%_
                               (reverse _%clause169942169971%_)))
                          ((lambda (_%L169985%_)
                             (let* ((_%clauses170079%_
                                     (map (lambda (_%clause169999%_)
                                            (let* ((_%__stx171490171491%_
                                                    _%clause169999%_)
                                                   (_%g170002170017%_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _%__stx171490171491%_)))))
                                              (let ((_%__kont171492171493%_
                                                     (lambda (_%L170045%_
                                                              _%L170046%_
                                                              _%L170047%_)
                                                       (let ((_%body170067%_
                                                              (map (lambda (_%g170062170064%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gxc#apply-subst-object-refs__%
                                '#f
                                _%L170047%_
                                _%$klass169790%_
                                _%method-calls168597%_
                                _%slot-refs168598%_
                                _%g170062170064%_)))
                           _%L170045%_)))
                 (cons (cons _%L170047%_ _%L170046%_) _%body170067%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont171494171495%_
                                                     (lambda ()
                                                       _%clause169999%_)))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%__stx171490171491%_))
                                                    (let ((_%e170009170029%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%__stx171490171491%_))))
                                                      (let ((_%tl170007170034%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e170009170029%_)))
                    (_%hd170008170032%_
                     (let () (declare (not safe)) (##car _%e170009170029%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%hd170008170032%_))
                    (let ((_%e170012170037%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd170008170032%_))))
                      (let ((_%tl170010170042%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e170012170037%_)))
                            (_%hd170011170040%_
                             (let ()
                               (declare (not safe))
                               (##car _%e170012170037%_))))
                        (_%__kont171492171493%_
                         _%tl170007170034%_
                         _%tl170010170042%_
                         _%hd170011170040%_)))
                    (_%__kont171494171495%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont171494171495%_)))))
                                          (let ((__tmp172610
                                                 (lambda (_%g170071170074%_
                                                          _%g170072170076%_)
                                                   (cons _%g170071170074%_
                                                         _%g170072170076%_))))
                                            (declare (not safe))
                                            (__foldr1
                                             __tmp172610
                                             '()
                                             _%L169985%_))))
                                    (__tmp172611
                                     (cons '%#case-lambda _%clauses170079%_)))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp172611
                                _%L169543%_)))
                           _%clause169943169982%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%loop169938169966%_
                                                     _%target169935169961%_
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g169929169948%_
                                                   _%g169930169951%_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g169929169948%_
                                         _%g169930169951%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g169929169948%_ _%g169930169951%_))))))
                  (declare (not safe))
                  (_%g169928170081%_ _%L169543%_)))
               (_%specializer-impl170086%_
                (let ((__tmp172612
                       (cons '%#let-values
                             (cons (cons (cons (cons _%L169545%_ '())
                                               (cons _%specializer-lambda-expr169927%_
                                                     '()))
                                         '())
                                   (cons _%specializer-case-lambda-expr170084%_
                                         '())))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp172612 _%stx168505%_)))
               (_%specializer-impl170088%_
                (let ()
                  (declare (not safe))
                  (_%generate-specializer-impl168509%_
                   _%$klass169790%_
                   _%$method-table169792%_
                   _%methods-bind169817%_
                   _%slots-bind169841%_
                   _%specializer-impl170086%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((__tmp172614
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%L168578%_)))
                                                        (__tmp172613
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%specializer-id169788%_))))
                                                    (declare (not safe))
                                                    (gxc#verbose
                                                     '"generate method specializer "
                                                     __tmp172614
                                                     '" => "
                                                     __tmp172613))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%generate-specializer-def168510%_
                                                     _%L168578%_
                                                     _%specializer-id169788%_
                                                     _%specializer-impl170088%_)))))
                                          _%hd169476169538%_
                                          _%hd169473169530%_
                                          _%hd169470169522%_)
                                         (let ()
                                           (declare (not safe))
                                           (_%g169452169482%_
                                            _%g169453169485%_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_%g169452169482%_ _%g169453169485%_)))
                             (let ()
                               (declare (not safe))
                               (_%g169452169482%_ _%g169453169485%_)))
                         (let ()
                           (declare (not safe))
                           (_%g169452169482%_ _%g169453169485%_)))))
                 (let ()
                   (declare (not safe))
                   (_%g169452169482%_ _%g169453169485%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g169452169482%_
                                                        _%g169453169485%_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_%g169452169482%_
                                                _%g169453169485%_)))))
                                     (let ()
                                       (declare (not safe))
                                       (_%g169452169482%_
                                        _%g169453169485%_)))))
                             (let ()
                               (declare (not safe))
                               (_%g169452169482%_ _%g169453169485%_)))))
                     (let ()
                       (declare (not safe))
                       (_%g169452169482%_ _%g169453169485%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g169452169482%_
                                                        _%g169453169485%_))))))
                                         (declare (not safe))
                                         (_%g169451170091%_ _%L168577%_)))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#kw-lambda-expr? _%L168577%_))
                                         (let ()
                                           (let* ((_%g170095170148%_
                                                   (lambda (_%g170096170145%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g170096170145%_))))
                                                  (_%g170094171291%_
                                                   (lambda (_%g170096170151%_)
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%g170096170151%_))
                                                         (let ((_%e170104170153%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%g170096170151%_))))
                   (let ((_%hd170103170156%_
                          (let ()
                            (declare (not safe))
                            (##car _%e170104170153%_)))
                         (_%tl170102170158%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e170104170153%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#identifier? _%hd170103170156%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-eq? '%#let-values _%hd170103170156%_))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl170102170158%_))
                                 (let ((_%e170107170161%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%tl170102170158%_))))
                                   (let ((_%hd170106170164%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e170107170161%_)))
                                         (_%tl170105170166%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e170107170161%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd170106170164%_))
                                         (let ((_%e170110170169%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd170106170164%_))))
                                           (let ((_%hd170109170172%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e170110170169%_)))
                                                 (_%tl170108170174%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e170110170169%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%hd170109170172%_))
                                                 (let ((_%e170113170177%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%hd170109170172%_))))
                                                   (let ((_%hd170112170180%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e170113170177%_)))
                                                         (_%tl170111170182%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e170113170177%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%hd170112170180%_))
                                                         (let ((_%e170116170185%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%hd170112170180%_))))
                   (let ((_%hd170115170188%_
                          (let ()
                            (declare (not safe))
                            (##car _%e170116170185%_)))
                         (_%tl170114170190%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e170116170185%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl170114170190%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%tl170111170182%_))
                             (let ((_%e170119170193%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%tl170111170182%_))))
                               (let ((_%hd170118170196%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e170119170193%_)))
                                     (_%tl170117170198%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e170119170193%_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd170118170196%_))
                                     (let ((_%e170122170201%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd170118170196%_))))
                                       (let ((_%hd170121170204%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e170122170201%_)))
                                             (_%tl170120170206%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e170122170201%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#identifier?
                                                _%hd170121170204%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#let-values
                                                    _%hd170121170204%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl170120170206%_))
                                                     (let ((_%e170125170209%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl170120170206%_))))
                                                       (let ((_%hd170124170212%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e170125170209%_)))
                     (_%tl170123170214%_
                      (let () (declare (not safe)) (##cdr _%e170125170209%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%hd170124170212%_))
                     (let ((_%e170128170217%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%hd170124170212%_))))
                       (let ((_%hd170127170220%_
                              (let ()
                                (declare (not safe))
                                (##car _%e170128170217%_)))
                             (_%tl170126170222%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e170128170217%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%hd170127170220%_))
                             (let ((_%e170131170225%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%hd170127170220%_))))
                               (let ((_%hd170130170228%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e170131170225%_)))
                                     (_%tl170129170230%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e170131170225%_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd170130170228%_))
                                     (let ((_%e170134170233%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd170130170228%_))))
                                       (let ((_%hd170133170236%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e170134170233%_)))
                                             (_%tl170132170238%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e170134170233%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-null?
                                                _%tl170132170238%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl170129170230%_))
                                                 (let ((_%e170137170241%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%tl170129170230%_))))
                                                   (let ((_%hd170136170244%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e170137170241%_)))
                                                         (_%tl170135170246%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e170137170241%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl170135170246%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-null? _%tl170126170222%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl170123170214%_))
                         (let ((_%e170140170249%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%tl170123170214%_))))
                           (let ((_%hd170139170252%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e170140170249%_)))
                                 (_%tl170138170254%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e170140170249%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%tl170138170254%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-null? _%tl170117170198%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _%tl170108170174%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl170105170166%_))
                                             (let ((_%e170143170257%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%tl170105170166%_))))
                                               (let ((_%hd170142170260%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e170143170257%_)))
                                                     (_%tl170141170262%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e170143170257%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%tl170141170262%_))
                                                     ((lambda (_%L170265%_
                                                               _%L170266%_
                                                               _%L170267%_
                                                               _%L170268%_
                                                               _%L170269%_)
                                                        (let* ((_%g170309170371%_
                                                                (lambda (_%g170310170368%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _%g170310170368%_))))
                       (_%g170308171288%_
                        (lambda (_%g170310170374%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%g170310170374%_))
                              (let ((_%e170318170376%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%g170310170374%_))))
                                (let ((_%hd170317170379%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e170318170376%_)))
                                      (_%tl170316170381%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e170318170376%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd170317170379%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#lambda
                                             _%hd170317170379%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl170316170381%_))
                                              (let ((_%e170321170384%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl170316170381%_))))
                                                (let ((_%hd170320170387%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e170321170384%_)))
                                                      (_%tl170319170389%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e170321170384%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl170319170389%_))
                                                      (let ((_%e170324170392%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl170319170389%_))))
                (let ((_%hd170323170395%_
                       (let () (declare (not safe)) (##car _%e170324170392%_)))
                      (_%tl170322170397%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e170324170392%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd170323170395%_))
                      (let ((_%e170327170400%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd170323170395%_))))
                        (let ((_%hd170326170403%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e170327170400%_)))
                              (_%tl170325170405%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e170327170400%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%hd170326170403%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#call _%hd170326170403%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl170325170405%_))
                                      (let ((_%e170330170408%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl170325170405%_))))
                                        (let ((_%hd170329170411%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e170330170408%_)))
                                              (_%tl170328170413%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e170330170408%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd170329170411%_))
                                              (let ((_%e170333170416%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd170329170411%_))))
                                                (let ((_%hd170332170419%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e170333170416%_)))
                                                      (_%tl170331170421%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e170333170416%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _%hd170332170419%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#ref
                                                             _%hd170332170419%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl170331170421%_))
                      (let ((_%e170336170424%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl170331170421%_))))
                        (let ((_%hd170335170427%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e170336170424%_)))
                              (_%tl170334170429%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e170336170424%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl170334170429%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl170328170413%_))
                                  (let ((_%e170339170432%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl170328170413%_))))
                                    (let ((_%hd170338170435%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e170339170432%_)))
                                          (_%tl170337170437%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e170339170432%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%hd170338170435%_))
                                          (let ((_%e170342170440%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%hd170338170435%_))))
                                            (let ((_%hd170341170443%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e170342170440%_)))
                                                  (_%tl170340170445%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e170342170440%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _%hd170341170443%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-eq?
                                                         '%#ref
                                                         _%hd170341170443%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl170340170445%_))
                                                          (let ((_%e170345170448%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl170340170445%_))))
                    (let ((_%hd170344170451%_
                           (let ()
                             (declare (not safe))
                             (##car _%e170345170448%_)))
                          (_%tl170343170453%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e170345170448%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl170343170453%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl170337170437%_))
                              (let ((_%e170348170456%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl170337170437%_))))
                                (let ((_%hd170347170459%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e170348170456%_)))
                                      (_%tl170346170461%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e170348170456%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd170347170459%_))
                                      (let ((_%e170351170464%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd170347170459%_))))
                                        (let ((_%hd170350170467%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e170351170464%_)))
                                              (_%tl170349170469%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e170351170464%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#identifier?
                                                 _%hd170350170467%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#ref
                                                     _%hd170350170467%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl170349170469%_))
                                                      (let ((_%e170354170472%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl170349170469%_))))
                (let ((_%hd170353170475%_
                       (let () (declare (not safe)) (##car _%e170354170472%_)))
                      (_%tl170352170477%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e170354170472%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl170352170477%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _%tl170346170461%_))
                          (if (let ((__tmp172615
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-length _%tl170346170461%_))))
                                (declare (not safe))
                                (##fx>= __tmp172615 '1))
                              (let ((_g172616_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl170346170461%_
                                        '1))))
                                (begin
                                  (let ((_g172617_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g172616_)
                                               (##vector-length _g172616_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g172617_ 2)))
                                        (error "Context expects 2 values"
                                               _g172617_)))
                                  (let ((_%target170355170480%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g172616_ 0)))
                                        (_%tl170357170482%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g172616_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl170357170482%_))
                                        (let ((_%e170366170485%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl170357170482%_))))
                                          (let ((_%hd170365170488%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e170366170485%_)))
                                                (_%tl170364170490%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e170366170485%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl170364170490%_))
                                                (letrec ((_%loop170358170493%_
                                                          (lambda (_%hd170356170496%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%kw-ref170362170498%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd170356170496%_))
                        (let ((_%e170359170501%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd170356170496%_))))
                          (let ((_%lp-hd170360170504%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e170359170501%_)))
                                (_%lp-tl170361170506%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e170359170501%_))))
                            (let ((__tmp172618
                                   (cons _%lp-hd170360170504%_
                                         _%kw-ref170362170498%_)))
                              (declare (not safe))
                              (_%loop170358170493%_
                               _%lp-tl170361170506%_
                               __tmp172618))))
                        (let ((_%kw-ref170363170509%_
                               (reverse _%kw-ref170362170498%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl170322170397%_))
                              ((lambda (_%L170512%_
                                        _%L170513%_
                                        _%L170514%_
                                        _%L170515%_
                                        _%L170516%_)
                                 (let* ((_%kw-count170567%_
                                         (length (let ((__tmp172619
                                                        (lambda (_%g170559170562%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g170560170564%_)
                  (cons _%g170559170562%_ _%g170560170564%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__foldr1
                                                    __tmp172619
                                                    '()
                                                    _%L170513%_))))
                                        (_%self-index170569%_
                                         (let ()
                                           (declare (not safe))
                                           (##fx+ _%kw-count170567%_ '1))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gxc#lambda-expr? _%L170267%_))
                                       (let ()
                                         (let* ((_%g170573170587%_
                                                 (lambda (_%g170574170584%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g170574170584%_))))
                                                (_%g170572170704%_
                                                 (lambda (_%g170574170590%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%g170574170590%_))
                                                       (let ((_%e170579170592%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%g170574170590%_))))
                 (let ((_%hd170578170595%_
                        (let ()
                          (declare (not safe))
                          (##car _%e170579170592%_)))
                       (_%tl170577170597%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e170579170592%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%tl170577170597%_))
                       (let ((_%e170582170600%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%tl170577170597%_))))
                         (let ((_%hd170581170603%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e170582170600%_)))
                               (_%tl170580170605%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e170582170600%_))))
                           ((lambda (_%L170608%_ _%L170609%_)
                              (let ((_%self170626%_
                                     (list-ref
                                      _%L170609%_
                                      _%self-index170569%_)))
                                (for-each
                                 (lambda (_%g170627170629%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#apply-collect-object-refs__%
                                      '#f
                                      _%self170626%_
                                      _%method-calls168597%_
                                      _%slot-refs168598%_
                                      _%g170627170629%_)))
                                 _%L170608%_)
                                (if (let ()
                                      (declare (not safe))
                                      (_%no-specializer?168601%_))
                                    _%stx168505%_
                                    (let* ((_%specializer-id170638%_
                                            (let* ((_%id170632%_
                                                    (let ((__tmp172620
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%L168578%_))))
                                                      (declare (not safe))
                                                      (make-symbol__1
                                                       __tmp172620
                                                       '"::specialize")))
                                                   (_%specializer-id170635%_
                                                    (let ((__tmp172621
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-source
                                                              _%stx168505%_))))
                                                      (declare (not safe))
                                                      (gx#core-quote-syntax__1
                                                       _%id170632%_
                                                       __tmp172621))))
                                              (let ()
                                                (declare (not safe))
                                                (gx#core-bind-runtime!__0
                                                 _%specializer-id170635%_))
                                              _%specializer-id170635%_))
                                           (_%$klass170640%_
                                            (let ((__tmp172622
                                                   (let ()
                                                     (declare (not safe))
                                                     (##gensym '__klass))))
                                              (declare (not safe))
                                              (make-symbol__0 __tmp172622)))
                                           (_%$method-table170642%_
                                            (let ((__tmp172623
                                                   (let ()
                                                     (declare (not safe))
                                                     (##gensym
                                                      '__method-table))))
                                              (declare (not safe))
                                              (make-symbol__0 __tmp172623)))
                                           (_%methods170644%_
                                            (let ()
                                              (declare (not safe))
                                              (hash-keys
                                               _%method-calls168597%_)))
                                           (_%$methods170648%_
                                            (map (lambda (_%id170646%_)
                                                   (let ((__tmp172624
                                                          (gensym _%id170646%_)))
                                                     (declare (not safe))
                                                     (make-symbol__1
                                                      '"__"
                                                      __tmp172624)))
                                                 _%methods170644%_))
                                           (_%_170657%_
                                            (for-each
                                             (lambda (_%g170649170652%_
                                                      _%g170650170654%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (hash-put!
                                                  _%method-calls168597%_
                                                  _%g170649170652%_
                                                  _%g170650170654%_)))
                                             _%methods170644%_
                                             _%$methods170648%_))
                                           (_%methods-bind170667%_
                                            (map (lambda (_%g170659170662%_
                                                          _%g170660170664%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%generate-method-bind168507%_
                                                      _%$klass170640%_
                                                      _%$method-table170642%_
                                                      _%g170659170662%_
                                                      _%g170660170664%_)))
                                                 _%methods170644%_
                                                 _%$methods170648%_))
                                           (_%slots170669%_
                                            (let ()
                                              (declare (not safe))
                                              (hash-keys _%slot-refs168598%_)))
                                           (_%$slots170673%_
                                            (map (lambda (_%id170671%_)
                                                   (let ((__tmp172625
                                                          (gensym _%id170671%_)))
                                                     (declare (not safe))
                                                     (make-symbol__1
                                                      '"__"
                                                      __tmp172625)))
                                                 _%slots170669%_))
                                           (_%_170682%_
                                            (for-each
                                             (lambda (_%g170674170677%_
                                                      _%g170675170679%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (hash-put!
                                                  _%slot-refs168598%_
                                                  _%g170674170677%_
                                                  _%g170675170679%_)))
                                             _%slots170669%_
                                             _%$slots170673%_))
                                           (_%slots-bind170691%_
                                            (map (lambda (_%g170683170686%_
                                                          _%g170684170688%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%generate-slot-bind168508%_
                                                      _%$klass170640%_
                                                      _%g170683170686%_
                                                      _%g170684170688%_)))
                                                 _%slots170669%_
                                                 _%$slots170673%_))
                                           (_%specializer-impl170699%_
                                            (let* ((_%specializer-body170697%_
                                                    (map (lambda (_%g170692170694%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#apply-subst-object-refs__%
                                                              '#f
                                                              _%self170626%_
                                                              _%$klass170640%_
                                                              _%method-calls168597%_
                                                              _%slot-refs168598%_
                                                              _%g170692170694%_)))
                                                         _%L170608%_))
                                                   (__tmp172626
                                                    (cons '%#let-values
                                                          (cons (cons (cons (cons _%L170269%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                          '())
                                    (cons (cons '%#let-values
                                                (cons (cons (cons (cons _%L170268%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '())
                          (cons (let ((__tmp172627
                                       (cons '%#lambda
                                             (cons _%L170609%_
                                                   _%specializer-body170697%_))))
                                  (declare (not safe))
                                  (gxc#xform-wrap-source
                                   __tmp172627
                                   _%L170267%_))
                                '()))
                    '())
              (cons _%L170266%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '()))
                              '())
                        (cons _%L170265%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (gxc#xform-wrap-source
                                               __tmp172626
                                               _%stx168505%_)))
                                           (_%specializer-impl170701%_
                                            (let ()
                                              (declare (not safe))
                                              (_%generate-specializer-impl168509%_
                                               _%$klass170640%_
                                               _%$method-table170642%_
                                               _%methods-bind170667%_
                                               _%slots-bind170691%_
                                               _%specializer-impl170699%_))))
                                      (let ((__tmp172629
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%L168578%_)))
                                            (__tmp172628
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%specializer-id170638%_))))
                                        (declare (not safe))
                                        (gxc#verbose
                                         '"generate method specializer "
                                         __tmp172629
                                         '" => "
                                         __tmp172628))
                                      (let ()
                                        (declare (not safe))
                                        (_%generate-specializer-def168510%_
                                         _%L168578%_
                                         _%specializer-id170638%_
                                         _%specializer-impl170701%_))))))
                            _%tl170580170605%_
                            _%hd170581170603%_)))
                       (let ()
                         (declare (not safe))
                         (_%g170573170587%_ _%g170574170590%_)))))
               (let ()
                 (declare (not safe))
                 (_%g170573170587%_ _%g170574170590%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (_%g170572170704%_ _%L170267%_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (gxc#opt-lambda-expr?
                                              _%L170267%_))
                                           (let ()
                                             (let* ((_%g170708170738%_
                                                     (lambda (_%g170709170735%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%g170709170735%_))))
                                                    (_%g170707171284%_
                                                     (lambda (_%g170709170741%_)
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%g170709170741%_))
                                                           (let ((_%e170715170743%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%g170709170741%_))))
                     (let ((_%hd170714170746%_
                            (let ()
                              (declare (not safe))
                              (##car _%e170715170743%_)))
                           (_%tl170713170748%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e170715170743%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%tl170713170748%_))
                           (let ((_%e170718170751%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%tl170713170748%_))))
                             (let ((_%hd170717170754%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e170718170751%_)))
                                   (_%tl170716170756%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e170718170751%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd170717170754%_))
                                   (let ((_%e170721170759%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd170717170754%_))))
                                     (let ((_%hd170720170762%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e170721170759%_)))
                                           (_%tl170719170764%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e170721170759%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%hd170720170762%_))
                                           (let ((_%e170724170767%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%hd170720170762%_))))
                                             (let ((_%hd170723170770%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e170724170767%_)))
                                                   (_%tl170722170772%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e170724170767%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%hd170723170770%_))
                                                   (let ((_%e170727170775%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%hd170723170770%_))))
                                                     (let ((_%hd170726170778%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e170727170775%_)))
                                                           (_%tl170725170780%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e170727170775%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _%tl170725170780%_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _%tl170722170772%_))
                       (let ((_%e170730170783%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%tl170722170772%_))))
                         (let ((_%hd170729170786%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e170730170783%_)))
                               (_%tl170728170788%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e170730170783%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%tl170728170788%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl170719170764%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%tl170716170756%_))
                                       (let ((_%e170733170791%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%tl170716170756%_))))
                                         (let ((_%hd170732170794%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e170733170791%_)))
                                               (_%tl170731170796%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e170733170791%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _%tl170731170796%_))
                                               ((lambda (_%L170799%_
                                                         _%L170800%_
                                                         _%L170801%_)
                                                  (let* ((_%g170825170839%_
                                                          (lambda (_%g170826170836%_)
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _%g170826170836%_))))
                                                         (_%g170824170880%_
                                                          (lambda (_%g170826170842%_)
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%g170826170842%_))
                        (let ((_%e170831170844%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g170826170842%_))))
                          (let ((_%hd170830170847%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e170831170844%_)))
                                (_%tl170829170849%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e170831170844%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl170829170849%_))
                                (let ((_%e170834170852%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl170829170849%_))))
                                  (let ((_%hd170833170855%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e170834170852%_)))
                                        (_%tl170832170857%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e170834170852%_))))
                                    ((lambda (_%L170860%_ _%L170861%_)
                                       (let ((_%self170874%_
                                              (list-ref
                                               _%L170861%_
                                               _%self-index170569%_)))
                                         (for-each
                                          (lambda (_%g170875170877%_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#apply-collect-object-refs__%
                                               '#f
                                               _%self170874%_
                                               _%method-calls168597%_
                                               _%slot-refs168598%_
                                               _%g170875170877%_)))
                                          _%L170860%_)))
                                     _%tl170832170857%_
                                     _%hd170833170855%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g170825170839%_ _%g170826170842%_)))))
                        (let ()
                          (declare (not safe))
                          (_%g170825170839%_ _%g170826170842%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_%g170824170880%_
                                                     _%L170800%_))
                                                  (let* ((_%g170883170902%_
                                                          (lambda (_%g170884170899%_)
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _%g170884170899%_))))
                                                         (_%g170882171007%_
                                                          (lambda (_%g170884170905%_)
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%g170884170905%_))
                        (let ((_%e170888170907%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g170884170905%_))))
                          (let ((_%hd170887170910%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e170888170907%_)))
                                (_%tl170886170912%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e170888170907%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl170886170912%_))
                                (let ((_g172630_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _%tl170886170912%_
                                          '0))))
                                  (begin
                                    (let ((_g172631_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g172630_)
                                                 (##vector-length _g172630_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g172631_ 2)))
                                          (error "Context expects 2 values"
                                                 _g172631_)))
                                    (let ((_%target170889170915%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g172630_ 0)))
                                          (_%tl170891170917%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g172630_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl170891170917%_))
                                          (letrec ((_%loop170892170920%_
                                                    (lambda (_%hd170890170923%_
                                                             _%clause170896170925%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd170890170923%_))
                                                          (let ((_%e170893170928%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd170890170923%_))))
                    (let ((_%lp-hd170894170931%_
                           (let ()
                             (declare (not safe))
                             (##car _%e170893170928%_)))
                          (_%lp-tl170895170933%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e170893170928%_))))
                      (let ((__tmp172632
                             (cons _%lp-hd170894170931%_
                                   _%clause170896170925%_)))
                        (declare (not safe))
                        (_%loop170892170920%_
                         _%lp-tl170895170933%_
                         __tmp172632))))
                  (let ((_%clause170897170936%_
                         (reverse _%clause170896170925%_)))
                    ((lambda (_%L170939%_)
                       (for-each
                        (lambda (_%clause170952%_)
                          (let* ((_%g170954170965%_
                                  (lambda (_%g170955170962%_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%g170955170962%_))))
                                 (_%g170953170997%_
                                  (lambda (_%g170955170968%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%g170955170968%_))
                                        (let ((_%e170960170970%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%g170955170968%_))))
                                          (let ((_%hd170959170973%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e170960170970%_)))
                                                (_%tl170958170975%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e170960170970%_))))
                                            ((lambda (_%L170978%_ _%L170979%_)
                                               (let ((_%self170991%_
                                                      (list-ref
                                                       _%L170979%_
                                                       _%self-index170569%_)))
                                                 (for-each
                                                  (lambda (_%g170992170994%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#apply-collect-object-refs__%
                                                       '#f
                                                       _%self170991%_
                                                       _%method-calls168597%_
                                                       _%slot-refs168598%_
                                                       _%g170992170994%_)))
                                                  _%L170978%_)))
                                             _%tl170958170975%_
                                             _%hd170959170973%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%g170954170965%_
                                           _%g170955170968%_))))))
                            (declare (not safe))
                            (_%g170953170997%_ _%clause170952%_)))
                        (let ((__tmp172633
                               (lambda (_%g170999171002%_ _%g171000171004%_)
                                 (cons _%g170999171002%_ _%g171000171004%_))))
                          (declare (not safe))
                          (__foldr1 __tmp172633 '() _%L170939%_))))
                     _%clause170897170936%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_%loop170892170920%_
                                               _%target170889170915%_
                                               '())))
                                          (let ()
                                            (declare (not safe))
                                            (_%g170883170902%_
                                             _%g170884170905%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g170883170902%_ _%g170884170905%_)))))
                        (let ()
                          (declare (not safe))
                          (_%g170883170902%_ _%g170884170905%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_%g170882171007%_
                                                     _%L170799%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (_%no-specializer?168601%_))
                                                      _%stx168505%_
                                                      (let* ((_%specializer-id171016%_
                                                              (let* ((_%id171010%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp172634
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%L168578%_))))
                                (declare (not safe))
                                (make-symbol__1 __tmp172634 '"::specialize")))
                             (_%specializer-id171013%_
                              (let ((__tmp172635
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-source _%stx168505%_))))
                                (declare (not safe))
                                (gx#core-quote-syntax__1
                                 _%id171010%_
                                 __tmp172635))))
                        (let ()
                          (declare (not safe))
                          (gx#core-bind-runtime!__0 _%specializer-id171013%_))
                        _%specializer-id171013%_))
                     (_%$klass171018%_
                      (let ((__tmp172636
                             (let ()
                               (declare (not safe))
                               (##gensym '__klass))))
                        (declare (not safe))
                        (make-symbol__0 __tmp172636)))
                     (_%$method-table171020%_
                      (let ((__tmp172637
                             (let ()
                               (declare (not safe))
                               (##gensym '__method-table))))
                        (declare (not safe))
                        (make-symbol__0 __tmp172637)))
                     (_%methods171022%_
                      (let ()
                        (declare (not safe))
                        (hash-keys _%method-calls168597%_)))
                     (_%$methods171026%_
                      (map (lambda (_%id171024%_)
                             (let ((__tmp172638 (gensym _%id171024%_)))
                               (declare (not safe))
                               (make-symbol__1 '"__" __tmp172638)))
                           _%methods171022%_))
                     (_%_171035%_
                      (for-each
                       (lambda (_%g171027171030%_ _%g171028171032%_)
                         (let ()
                           (declare (not safe))
                           (hash-put!
                            _%method-calls168597%_
                            _%g171027171030%_
                            _%g171028171032%_)))
                       _%methods171022%_
                       _%$methods171026%_))
                     (_%methods-bind171045%_
                      (map (lambda (_%g171037171040%_ _%g171038171042%_)
                             (let ()
                               (declare (not safe))
                               (_%generate-method-bind168507%_
                                _%$klass171018%_
                                _%$method-table171020%_
                                _%g171037171040%_
                                _%g171038171042%_)))
                           _%methods171022%_
                           _%$methods171026%_))
                     (_%slots171047%_
                      (let ()
                        (declare (not safe))
                        (hash-keys _%slot-refs168598%_)))
                     (_%$slots171051%_
                      (map (lambda (_%id171049%_)
                             (let ((__tmp172639 (gensym _%id171049%_)))
                               (declare (not safe))
                               (make-symbol__1 '"__" __tmp172639)))
                           _%slots171047%_))
                     (_%_171060%_
                      (for-each
                       (lambda (_%g171052171055%_ _%g171053171057%_)
                         (let ()
                           (declare (not safe))
                           (hash-put!
                            _%slot-refs168598%_
                            _%g171052171055%_
                            _%g171053171057%_)))
                       _%slots171047%_
                       _%$slots171051%_))
                     (_%slots-bind171069%_
                      (map (lambda (_%g171061171064%_ _%g171062171066%_)
                             (let ()
                               (declare (not safe))
                               (_%generate-slot-bind168508%_
                                _%$klass171018%_
                                _%g171061171064%_
                                _%g171062171066%_)))
                           _%slots171047%_
                           _%$slots171051%_))
                     (_%specializer-lambda-expr171142%_
                      (let* ((_%g171071171085%_
                              (lambda (_%g171072171082%_)
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g171072171082%_))))
                             (_%g171070171139%_
                              (lambda (_%g171072171088%_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%g171072171088%_))
                                    (let ((_%e171077171090%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%g171072171088%_))))
                                      (let ((_%hd171076171093%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e171077171090%_)))
                                            (_%tl171075171095%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e171077171090%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl171075171095%_))
                                            (let ((_%e171080171098%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl171075171095%_))))
                                              (let ((_%hd171079171101%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e171080171098%_)))
                                                    (_%tl171078171103%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e171080171098%_))))
                                                ((lambda (_%L171106%_
                                                          _%L171107%_)
                                                   (let* ((_%self171130%_
                                                           (list-ref
                                                            _%L171107%_
                                                            _%self-index170569%_))
                                                          (_%body171136%_
                                                           (map (lambda (_%g171131171133%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gxc#apply-subst-object-refs__%
                             '#f
                             _%self171130%_
                             _%$klass171018%_
                             _%method-calls168597%_
                             _%slot-refs168598%_
                             _%g171131171133%_)))
                        _%L171106%_))
                  (__tmp172640
                   (cons '%#lambda (cons _%L171107%_ _%body171136%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp172640
                                                      _%L170800%_)))
                                                 _%tl171078171103%_
                                                 _%hd171079171101%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g171071171085%_
                                               _%g171072171088%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g171071171085%_
                                       _%g171072171088%_))))))
                        (declare (not safe))
                        (_%g171070171139%_ _%L170800%_)))
                     (_%specializer-case-lambda-expr171277%_
                      (let* ((_%g171144171163%_
                              (lambda (_%g171145171160%_)
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g171145171160%_))))
                             (_%g171143171274%_
                              (lambda (_%g171145171166%_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%g171145171166%_))
                                    (let ((_%e171149171168%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%g171145171166%_))))
                                      (let ((_%hd171148171171%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e171149171168%_)))
                                            (_%tl171147171173%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e171149171168%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair/null?
                                               _%tl171147171173%_))
                                            (let ((_g172641_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-split-splice
                                                      _%tl171147171173%_
                                                      '0))))
                                              (begin
                                                (let ((_g172642_
                                                       (let ()
                                                         (declare (not safe))
                                                         (if (##values?
                                                              _g172641_)
                                                             (##vector-length
                                                              _g172641_)
                                                             1))))
                                                  (if (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx= _g172642_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2)))
              (error "Context expects 2 values" _g172642_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%target171150171176%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _g172641_
                                                          0)))
                                                      (_%tl171152171178%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _g172641_
                                                          1))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl171152171178%_))
                                                      (letrec ((_%loop171153171181%_
                                                                (lambda (_%hd171151171184%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%clause171157171186%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd171151171184%_))
                              (let ((_%e171154171189%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd171151171184%_))))
                                (let ((_%lp-hd171155171192%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e171154171189%_)))
                                      (_%lp-tl171156171194%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e171154171189%_))))
                                  (let ((__tmp172643
                                         (cons _%lp-hd171155171192%_
                                               _%clause171157171186%_)))
                                    (declare (not safe))
                                    (_%loop171153171181%_
                                     _%lp-tl171156171194%_
                                     __tmp172643))))
                              (let ((_%clause171158171197%_
                                     (reverse _%clause171157171186%_)))
                                ((lambda (_%L171200%_)
                                   (let* ((_%clauses171272%_
                                           (map (lambda (_%clause171214%_)
                                                  (let* ((_%g171216171227%_
                                                          (lambda (_%g171217171224%_)
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _%g171217171224%_))))
                                                         (_%g171215171262%_
                                                          (lambda (_%g171217171230%_)
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%g171217171230%_))
                        (let ((_%e171222171232%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g171217171230%_))))
                          (let ((_%hd171221171235%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e171222171232%_)))
                                (_%tl171220171237%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e171222171232%_))))
                            ((lambda (_%L171240%_ _%L171241%_)
                               (let* ((_%self171253%_
                                       (list-ref
                                        _%L171241%_
                                        _%self-index170569%_))
                                      (_%body171259%_
                                       (map (lambda (_%g171254171256%_)
                                              (let ()
                                                (declare (not safe))
                                                (gxc#apply-subst-object-refs__%
                                                 '#f
                                                 _%self171253%_
                                                 _%$klass171018%_
                                                 _%method-calls168597%_
                                                 _%slot-refs168598%_
                                                 _%g171254171256%_)))
                                            _%L171240%_)))
                                 (cons _%L171241%_ _%body171259%_)))
                             _%tl171220171237%_
                             _%hd171221171235%_)))
                        (let ()
                          (declare (not safe))
                          (_%g171216171227%_ _%g171217171230%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_%g171215171262%_
                                                     _%clause171214%_)))
                                                (let ((__tmp172644
                                                       (lambda (_%g171264171267%_
                                                                _%g171265171269%_)
                                                         (cons _%g171264171267%_
                                                               _%g171265171269%_))))
                                                  (declare (not safe))
                                                  (__foldr1
                                                   __tmp172644
                                                   '()
                                                   _%L171200%_))))
                                          (__tmp172645
                                           (cons '%#case-lambda
                                                 _%clauses171272%_)))
                                     (declare (not safe))
                                     (gxc#xform-wrap-source
                                      __tmp172645
                                      _%L170799%_)))
                                 _%clause171158171197%_))))))
                (let ()
                  (declare (not safe))
                  (_%loop171153171181%_ _%target171150171176%_ '())))
              (let ()
                (declare (not safe))
                (_%g171144171163%_ _%g171145171166%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_%g171144171163%_
                                               _%g171145171166%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g171144171163%_
                                       _%g171145171166%_))))))
                        (declare (not safe))
                        (_%g171143171274%_ _%L170799%_)))
                     (_%specializer-impl171279%_
                      (let ((__tmp172646
                             (cons '%#let-values
                                   (cons (cons (cons (cons _%L170269%_ '())
                                                     (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons (cons (cons _%L170268%_ '())
                                           (cons (let ((__tmp172647
                                                        (cons '%#let-values
                                                              (cons (cons (cons (cons _%L170801%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                              '())
                                        (cons _%specializer-lambda-expr171142%_
                                              '()))
                                  '())
                            (cons _%specializer-case-lambda-expr171277%_
                                  '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp172647
                                                    _%stx168505%_))
                                                 '()))
                                     '())
                               (cons _%L170266%_ '())))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '())
                                         (cons _%L170265%_ '())))))
                        (declare (not safe))
                        (gxc#xform-wrap-source __tmp172646 _%stx168505%_)))
                     (_%specializer-impl171281%_
                      (let ()
                        (declare (not safe))
                        (_%generate-specializer-impl168509%_
                         _%$klass171018%_
                         _%$method-table171020%_
                         _%methods-bind171045%_
                         _%slots-bind171069%_
                         _%specializer-impl171279%_))))
                (let ((__tmp172649
                       (let () (declare (not safe)) (gx#stx-e _%L168578%_)))
                      (__tmp172648
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%specializer-id171016%_))))
                  (declare (not safe))
                  (gxc#verbose
                   '"generate method specializer "
                   __tmp172649
                   '" => "
                   __tmp172648))
                (let ()
                  (declare (not safe))
                  (_%generate-specializer-def168510%_
                   _%L168578%_
                   _%specializer-id171016%_
                   _%specializer-impl171281%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%hd170732170794%_
                                                _%hd170729170786%_
                                                _%hd170726170778%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g170708170738%_
                                                  _%g170709170741%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_%g170708170738%_
                                          _%g170709170741%_)))
                                   (let ()
                                     (declare (not safe))
                                     (_%g170708170738%_ _%g170709170741%_)))
                               (let ()
                                 (declare (not safe))
                                 (_%g170708170738%_ _%g170709170741%_)))))
                       (let ()
                         (declare (not safe))
                         (_%g170708170738%_ _%g170709170741%_)))
                   (let ()
                     (declare (not safe))
                     (_%g170708170738%_ _%g170709170741%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g170708170738%_
                                                      _%g170709170741%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g170708170738%_
                                              _%g170709170741%_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_%g170708170738%_ _%g170709170741%_)))))
                           (let ()
                             (declare (not safe))
                             (_%g170708170738%_ _%g170709170741%_)))))
                   (let ()
                     (declare (not safe))
                     (_%g170708170738%_ _%g170709170741%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (_%g170707171284%_
                                                _%L170267%_)))
                                           (let () _%stx168505%_)))))
                               _%hd170365170488%_
                               _%kw-ref170363170509%_
                               _%hd170353170475%_
                               _%hd170344170451%_
                               _%hd170335170427%_)
                              (let ()
                                (declare (not safe))
                                (_%g170309170371%_ _%g170310170374%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%loop170358170493%_
                                                     _%target170355170480%_
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g170309170371%_
                                                   _%g170310170374%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g170309170371%_
                                           _%g170310170374%_))))))
                              (let ()
                                (declare (not safe))
                                (_%g170309170371%_ _%g170310170374%_)))
                          (let ()
                            (declare (not safe))
                            (_%g170309170371%_ _%g170310170374%_)))
                      (let ()
                        (declare (not safe))
                        (_%g170309170371%_ _%g170310170374%_)))))
              (let ()
                (declare (not safe))
                (_%g170309170371%_ _%g170310170374%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g170309170371%_
                                                     _%g170310170374%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g170309170371%_
                                                 _%g170310170374%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g170309170371%_
                                         _%g170310170374%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g170309170371%_ _%g170310170374%_)))
                          (let ()
                            (declare (not safe))
                            (_%g170309170371%_ _%g170310170374%_)))))
                  (let ()
                    (declare (not safe))
                    (_%g170309170371%_ _%g170310170374%_)))
              (let ()
                (declare (not safe))
                (_%g170309170371%_ _%g170310170374%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g170309170371%_
                                                     _%g170310170374%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g170309170371%_
                                             _%g170310170374%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g170309170371%_ _%g170310170374%_)))
                              (let ()
                                (declare (not safe))
                                (_%g170309170371%_ _%g170310170374%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g170309170371%_ _%g170310170374%_)))
                  (let ()
                    (declare (not safe))
                    (_%g170309170371%_ _%g170310170374%_)))
              (let ()
                (declare (not safe))
                (_%g170309170371%_ _%g170310170374%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g170309170371%_
                                                 _%g170310170374%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g170309170371%_ _%g170310170374%_)))
                                  (let ()
                                    (declare (not safe))
                                    (_%g170309170371%_ _%g170310170374%_)))
                              (let ()
                                (declare (not safe))
                                (_%g170309170371%_ _%g170310170374%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g170309170371%_ _%g170310170374%_)))))
              (let ()
                (declare (not safe))
                (_%g170309170371%_ _%g170310170374%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g170309170371%_
                                                 _%g170310170374%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g170309170371%_
                                             _%g170310170374%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g170309170371%_
                                         _%g170310170374%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g170309170371%_ _%g170310170374%_))))))
                  (declare (not safe))
                  (_%g170308171288%_ _%L170266%_)))
              _%hd170142170260%_
              _%hd170139170252%_
              _%hd170136170244%_
              _%hd170133170236%_
              _%hd170115170188%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g170095170148%_
                                                        _%g170096170151%_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_%g170095170148%_
                                                _%g170096170151%_)))
                                         (let ()
                                           (declare (not safe))
                                           (_%g170095170148%_
                                            _%g170096170151%_)))
                                     (let ()
                                       (declare (not safe))
                                       (_%g170095170148%_ _%g170096170151%_)))
                                 (let ()
                                   (declare (not safe))
                                   (_%g170095170148%_ _%g170096170151%_)))))
                         (let ()
                           (declare (not safe))
                           (_%g170095170148%_ _%g170096170151%_)))
                     (let ()
                       (declare (not safe))
                       (_%g170095170148%_ _%g170096170151%_)))
                 (let ()
                   (declare (not safe))
                   (_%g170095170148%_ _%g170096170151%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%g170095170148%_
                                                    _%g170096170151%_)))
                                             (let ()
                                               (declare (not safe))
                                               (_%g170095170148%_
                                                _%g170096170151%_)))))
                                     (let ()
                                       (declare (not safe))
                                       (_%g170095170148%_
                                        _%g170096170151%_)))))
                             (let ()
                               (declare (not safe))
                               (_%g170095170148%_ _%g170096170151%_)))))
                     (let ()
                       (declare (not safe))
                       (_%g170095170148%_ _%g170096170151%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g170095170148%_
                                                        _%g170096170151%_)))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%g170095170148%_
                                                    _%g170096170151%_)))
                                             (let ()
                                               (declare (not safe))
                                               (_%g170095170148%_
                                                _%g170096170151%_)))))
                                     (let ()
                                       (declare (not safe))
                                       (_%g170095170148%_
                                        _%g170096170151%_)))))
                             (let ()
                               (declare (not safe))
                               (_%g170095170148%_ _%g170096170151%_)))
                         (let ()
                           (declare (not safe))
                           (_%g170095170148%_ _%g170096170151%_)))))
                 (let ()
                   (declare (not safe))
                   (_%g170095170148%_ _%g170096170151%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%g170095170148%_
                                                    _%g170096170151%_)))))
                                         (let ()
                                           (declare (not safe))
                                           (_%g170095170148%_
                                            _%g170096170151%_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_%g170095170148%_ _%g170096170151%_)))
                             (let ()
                               (declare (not safe))
                               (_%g170095170148%_ _%g170096170151%_)))
                         (let ()
                           (declare (not safe))
                           (_%g170095170148%_ _%g170096170151%_)))))
                 (let ()
                   (declare (not safe))
                   (_%g170095170148%_ _%g170096170151%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (_%g170094171291%_ _%L168577%_)))
                                         (let () _%stx168505%_)))))))))
                  (_%__kont171514171515%_ (lambda () _%stx168505%_)))
              (let ((_%__match171543171544%_
                     (lambda (_%e168519168545%_
                              _%hd168518168548%_
                              _%tl168517168550%_
                              _%e168522168553%_
                              _%hd168521168556%_
                              _%tl168520168558%_
                              _%e168525168561%_
                              _%hd168524168564%_
                              _%tl168523168566%_
                              _%e168528168569%_
                              _%hd168527168572%_
                              _%tl168526168574%_)
                       (let ((_%L168577%_ _%hd168527168572%_)
                             (_%L168578%_ _%hd168524168564%_))
                         (if (let ((__tmp172650
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _%L168578%_))))
                               (declare (not safe))
                               (gxc#optimizer-top-level-method? __tmp172650))
                             (_%__kont171512171513%_ _%L168577%_ _%L168578%_)
                             (_%__kont171514171515%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx171510171511%_))
                    (let ((_%e168519168545%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx171510171511%_))))
                      (let ((_%tl168517168550%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e168519168545%_)))
                            (_%hd168518168548%_
                             (let ()
                               (declare (not safe))
                               (##car _%e168519168545%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl168517168550%_))
                            (let ((_%e168522168553%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl168517168550%_))))
                              (let ((_%tl168520168558%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e168522168553%_)))
                                    (_%hd168521168556%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e168522168553%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd168521168556%_))
                                    (let ((_%e168525168561%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd168521168556%_))))
                                      (let ((_%tl168523168566%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e168525168561%_)))
                                            (_%hd168524168564%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e168525168561%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl168523168566%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl168520168558%_))
                                                (let ((_%e168528168569%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl168520168558%_))))
                                                  (let ((_%tl168526168574%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e168528168569%_)))
                                                        (_%hd168527168572%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e168528168569%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl168526168574%_))
                                                        (_%__match171543171544%_
                                                         _%e168519168545%_
                                                         _%hd168518168548%_
                                                         _%tl168517168550%_
                                                         _%e168522168553%_
                                                         _%hd168521168556%_
                                                         _%tl168520168558%_
                                                         _%e168525168561%_
                                                         _%hd168524168564%_
                                                         _%tl168523168566%_
                                                         _%e168528168569%_
                                                         _%hd168527168572%_
                                                         _%tl168526168574%_)
                                                        (_%__kont171514171515%_))))
                                                (_%__kont171514171515%_))
                                            (_%__kont171514171515%_))))
                                    (_%__kont171514171515%_))))
                            (_%__kont171514171515%_))))
                    (_%__kont171514171515%_))))))))
    (define gxc#collect-object-refs-call%
      (lambda (_%self167465%_ _%stx167466%_)
        (let* ((_%__stx171546171547%_ _%stx167466%_)
               (_%g167474167696%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx171546171547%_)))))
          (let ((_%__kont171548171549%_
                 (lambda (_%L168453%_ _%L168454%_ _%L168455%_ _%L168456%_)
                   (let ((__tmp172652
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self167465%_ 'methods)))
                         (__tmp172651
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L168454%_))))
                     (declare (not safe))
                     (hash-put! __tmp172652 __tmp172651 '#t))
                   (for-each
                    (lambda (_%g168489168491%_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self167465%_ _%g168489168491%_)))
                    (let ((__tmp172653
                           (lambda (_%g168493168496%_ _%g168494168498%_)
                             (cons _%g168493168496%_ _%g168494168498%_))))
                      (declare (not safe))
                      (__foldr1 __tmp172653 '() _%L168453%_)))))
                (_%__kont171552171553%_
                 (lambda (_%L168288%_
                          _%L168289%_
                          _%L168290%_
                          _%L168291%_
                          _%L168292%_)
                   (let ((__tmp172655
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self167465%_ 'methods)))
                         (__tmp172654
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L168289%_))))
                     (declare (not safe))
                     (hash-put! __tmp172655 __tmp172654 '#t))
                   (for-each
                    (lambda (_%g168332168334%_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self167465%_ _%g168332168334%_)))
                    (let ((__tmp172656
                           (lambda (_%g168336168339%_ _%g168337168341%_)
                             (cons _%g168336168339%_ _%g168337168341%_))))
                      (declare (not safe))
                      (__foldr1 __tmp172656 '() _%L168288%_)))))
                (_%__kont171556171557%_
                 (lambda (_%L168121%_ _%L168122%_ _%L168123%_)
                   (let ((__tmp172658
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self167465%_ 'slots)))
                         (__tmp172657
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L168121%_))))
                     (declare (not safe))
                     (hash-put! __tmp172658 __tmp172657 '#t))))
                (_%__kont171558171559%_
                 (lambda (_%L167998%_ _%L167999%_ _%L168000%_ _%L168001%_)
                   (let ((__tmp172660
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self167465%_ 'slots)))
                         (__tmp172659
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L167999%_))))
                     (declare (not safe))
                     (hash-put! __tmp172660 __tmp172659 '#t))
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self167465%_ _%L167998%_))))
                (_%__kont171560171561%_
                 (lambda (_%L167872%_ _%L167873%_)
                   (let* ((_%accessor167895%_
                           (let ((__tmp172661
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _%L167873%_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp172661)))
                          (_%klass167897%_
                           (let ((__tmp172662
                                  (##structure-ref
                                   _%accessor167895%_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _%stx167466%_
                              __tmp172662)))
                          (_%slot167899%_
                           (##structure-ref
                            _%accessor167895%_
                            '3
                            gxc#!accessor::t
                            '#f)))
                     (if (and (let ((__tmp172663
                                     (##structure-ref
                                      _%accessor167895%_
                                      '4
                                      gxc#!accessor::t
                                      '#f)))
                                (declare (not safe))
                                (not __tmp172663))
                              (or (let ()
                                    (declare (not safe))
                                    (gxc#!class-struct-slot?
                                     _%klass167897%_
                                     _%slot167899%_))
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%klass167897%_
                                     '8
                                     '#f
                                     '#f))))
                         '#!void
                         (let ((__tmp172665
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _%self167465%_ 'slots)))
                               (__tmp172664
                                (##structure-ref
                                 _%accessor167895%_
                                 '3
                                 gxc#!accessor::t
                                 '#f)))
                           (declare (not safe))
                           (hash-put! __tmp172665 __tmp172664 '#t))))))
                (_%__kont171562171563%_
                 (lambda (_%L167772%_ _%L167773%_ _%L167774%_)
                   (let* ((_%mutator167801%_
                           (let ((__tmp172666
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _%L167774%_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp172666)))
                          (_%klass167803%_
                           (let ((__tmp172667
                                  (##structure-ref
                                   _%mutator167801%_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _%stx167466%_
                              __tmp172667)))
                          (_%slot167805%_
                           (##structure-ref
                            _%mutator167801%_
                            '3
                            gxc#!mutator::t
                            '#f)))
                     (if (and (let ((__tmp172668
                                     (##structure-ref
                                      _%mutator167801%_
                                      '4
                                      gxc#!mutator::t
                                      '#f)))
                                (declare (not safe))
                                (not __tmp172668))
                              (or (let ()
                                    (declare (not safe))
                                    (gxc#!class-struct-slot?
                                     _%klass167803%_
                                     _%slot167805%_))
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%klass167803%_
                                     '8
                                     '#f
                                     '#f))))
                         '#!void
                         (let ((__tmp172669
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _%self167465%_ 'slots))))
                           (declare (not safe))
                           (hash-put! __tmp172669 _%slot167805%_ '#t)))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-e__1 _%self167465%_ _%L167772%_)))))
                (_%__kont171564171565%_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#apply-operands _%self167465%_ _%stx167466%_)))))
            (let* ((_%__match172045172046%_
                    (lambda (_%e167670167708%_
                             _%hd167669167711%_
                             _%tl167668167713%_
                             _%e167673167716%_
                             _%hd167672167719%_
                             _%tl167671167721%_
                             _%e167676167724%_
                             _%hd167675167727%_
                             _%tl167674167729%_
                             _%e167679167732%_
                             _%hd167678167735%_
                             _%tl167677167737%_
                             _%e167682167740%_
                             _%hd167681167743%_
                             _%tl167680167745%_
                             _%e167685167748%_
                             _%hd167684167751%_
                             _%tl167683167753%_
                             _%e167688167756%_
                             _%hd167687167759%_
                             _%tl167686167761%_
                             _%e167691167764%_
                             _%hd167690167767%_
                             _%tl167689167769%_)
                      (let ((_%L167772%_ _%hd167690167767%_)
                            (_%L167773%_ _%hd167687167759%_)
                            (_%L167774%_ _%hd167678167735%_))
                        (if (and (let ((__tmp172670
                                        (let ((__tmp172671
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _%L167774%_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp172671))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp172670
                                    'gxc#!mutator::t))
                                 (let ((__tmp172672
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self167465%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L167773%_
                                    __tmp172672)))
                            (_%__kont171562171563%_
                             _%L167772%_
                             _%L167773%_
                             _%L167774%_)
                            (_%__kont171564171565%_)))))
                   (_%__match172043172044%_
                    (lambda (_%e167670167708%_
                             _%hd167669167711%_
                             _%tl167668167713%_
                             _%e167673167716%_
                             _%hd167672167719%_
                             _%tl167671167721%_
                             _%e167676167724%_
                             _%hd167675167727%_
                             _%tl167674167729%_
                             _%e167679167732%_
                             _%hd167678167735%_
                             _%tl167677167737%_
                             _%e167682167740%_
                             _%hd167681167743%_
                             _%tl167680167745%_
                             _%e167685167748%_
                             _%hd167684167751%_
                             _%tl167683167753%_
                             _%e167688167756%_
                             _%hd167687167759%_
                             _%tl167686167761%_
                             _%e167691167764%_
                             _%hd167690167767%_
                             _%tl167689167769%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl167689167769%_))
                          (_%__match172045172046%_
                           _%e167670167708%_
                           _%hd167669167711%_
                           _%tl167668167713%_
                           _%e167673167716%_
                           _%hd167672167719%_
                           _%tl167671167721%_
                           _%e167676167724%_
                           _%hd167675167727%_
                           _%tl167674167729%_
                           _%e167679167732%_
                           _%hd167678167735%_
                           _%tl167677167737%_
                           _%e167682167740%_
                           _%hd167681167743%_
                           _%tl167680167745%_
                           _%e167685167748%_
                           _%hd167684167751%_
                           _%tl167683167753%_
                           _%e167688167756%_
                           _%hd167687167759%_
                           _%tl167686167761%_
                           _%e167691167764%_
                           _%hd167690167767%_
                           _%tl167689167769%_)
                          (_%__kont171564171565%_))))
                   (_%__match172037172038%_
                    (lambda (_%e167670167708%_
                             _%hd167669167711%_
                             _%tl167668167713%_
                             _%e167673167716%_
                             _%hd167672167719%_
                             _%tl167671167721%_
                             _%e167676167724%_
                             _%hd167675167727%_
                             _%tl167674167729%_
                             _%e167679167732%_
                             _%hd167678167735%_
                             _%tl167677167737%_
                             _%e167682167740%_
                             _%hd167681167743%_
                             _%tl167680167745%_
                             _%e167685167748%_
                             _%hd167684167751%_
                             _%tl167683167753%_
                             _%e167688167756%_
                             _%hd167687167759%_
                             _%tl167686167761%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl167680167745%_))
                          (let ((_%e167691167764%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl167680167745%_))))
                            (let ((_%tl167689167769%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e167691167764%_)))
                                  (_%hd167690167767%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e167691167764%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl167689167769%_))
                                  (_%__match172045172046%_
                                   _%e167670167708%_
                                   _%hd167669167711%_
                                   _%tl167668167713%_
                                   _%e167673167716%_
                                   _%hd167672167719%_
                                   _%tl167671167721%_
                                   _%e167676167724%_
                                   _%hd167675167727%_
                                   _%tl167674167729%_
                                   _%e167679167732%_
                                   _%hd167678167735%_
                                   _%tl167677167737%_
                                   _%e167682167740%_
                                   _%hd167681167743%_
                                   _%tl167680167745%_
                                   _%e167685167748%_
                                   _%hd167684167751%_
                                   _%tl167683167753%_
                                   _%e167688167756%_
                                   _%hd167687167759%_
                                   _%tl167686167761%_
                                   _%e167691167764%_
                                   _%hd167690167767%_
                                   _%tl167689167769%_)
                                  (_%__kont171564171565%_))))
                          (_%__kont171564171565%_))))
                   (_%__match171983171984%_
                    (lambda (_%e167646167816%_
                             _%hd167645167819%_
                             _%tl167644167821%_
                             _%e167649167824%_
                             _%hd167648167827%_
                             _%tl167647167829%_
                             _%e167652167832%_
                             _%hd167651167835%_
                             _%tl167650167837%_
                             _%e167655167840%_
                             _%hd167654167843%_
                             _%tl167653167845%_
                             _%e167658167848%_
                             _%hd167657167851%_
                             _%tl167656167853%_
                             _%e167661167856%_
                             _%hd167660167859%_
                             _%tl167659167861%_
                             _%e167664167864%_
                             _%hd167663167867%_
                             _%tl167662167869%_)
                      (let ((_%L167872%_ _%hd167663167867%_)
                            (_%L167873%_ _%hd167654167843%_))
                        (if (and (let ((__tmp172673
                                        (let ((__tmp172674
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _%L167873%_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp172674))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp172673
                                    'gxc#!accessor::t))
                                 (let ((__tmp172675
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self167465%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L167872%_
                                    __tmp172675)))
                            (_%__kont171560171561%_ _%L167872%_ _%L167873%_)
                            (_%__kont171564171565%_)))))
                   (_%__match171981171982%_
                    (lambda (_%e167646167816%_
                             _%hd167645167819%_
                             _%tl167644167821%_
                             _%e167649167824%_
                             _%hd167648167827%_
                             _%tl167647167829%_
                             _%e167652167832%_
                             _%hd167651167835%_
                             _%tl167650167837%_
                             _%e167655167840%_
                             _%hd167654167843%_
                             _%tl167653167845%_
                             _%e167658167848%_
                             _%hd167657167851%_
                             _%tl167656167853%_
                             _%e167661167856%_
                             _%hd167660167859%_
                             _%tl167659167861%_
                             _%e167664167864%_
                             _%hd167663167867%_
                             _%tl167662167869%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl167656167853%_))
                          (_%__match171983171984%_
                           _%e167646167816%_
                           _%hd167645167819%_
                           _%tl167644167821%_
                           _%e167649167824%_
                           _%hd167648167827%_
                           _%tl167647167829%_
                           _%e167652167832%_
                           _%hd167651167835%_
                           _%tl167650167837%_
                           _%e167655167840%_
                           _%hd167654167843%_
                           _%tl167653167845%_
                           _%e167658167848%_
                           _%hd167657167851%_
                           _%tl167656167853%_
                           _%e167661167856%_
                           _%hd167660167859%_
                           _%tl167659167861%_
                           _%e167664167864%_
                           _%hd167663167867%_
                           _%tl167662167869%_)
                          (_%__match172037172038%_
                           _%e167646167816%_
                           _%hd167645167819%_
                           _%tl167644167821%_
                           _%e167649167824%_
                           _%hd167648167827%_
                           _%tl167647167829%_
                           _%e167652167832%_
                           _%hd167651167835%_
                           _%tl167650167837%_
                           _%e167655167840%_
                           _%hd167654167843%_
                           _%tl167653167845%_
                           _%e167658167848%_
                           _%hd167657167851%_
                           _%tl167656167853%_
                           _%e167661167856%_
                           _%hd167660167859%_
                           _%tl167659167861%_
                           _%e167664167864%_
                           _%hd167663167867%_
                           _%tl167662167869%_))))
                   (_%__match171927171928%_
                    (lambda (_%e167611167910%_
                             _%hd167610167913%_
                             _%tl167609167915%_
                             _%e167614167918%_
                             _%hd167613167921%_
                             _%tl167612167923%_
                             _%e167617167926%_
                             _%hd167616167929%_
                             _%tl167615167931%_
                             _%e167620167934%_
                             _%hd167619167937%_
                             _%tl167618167939%_
                             _%e167623167942%_
                             _%hd167622167945%_
                             _%tl167621167947%_
                             _%e167626167950%_
                             _%hd167625167953%_
                             _%tl167624167955%_
                             _%e167629167958%_
                             _%hd167628167961%_
                             _%tl167627167963%_
                             _%e167632167966%_
                             _%hd167631167969%_
                             _%tl167630167971%_
                             _%e167635167974%_
                             _%hd167634167977%_
                             _%tl167633167979%_
                             _%e167638167982%_
                             _%hd167637167985%_
                             _%tl167636167987%_
                             _%e167641167990%_
                             _%hd167640167993%_
                             _%tl167639167995%_)
                      (let ((_%L167998%_ _%hd167640167993%_)
                            (_%L167999%_ _%hd167637167985%_)
                            (_%L168000%_ _%hd167628167961%_)
                            (_%L168001%_ _%hd167619167937%_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L168001%_
                                        'slot-set!))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L168001%_
                                        'unchecked-slot-set!)))
                                 (let ((__tmp172676
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self167465%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L168000%_
                                    __tmp172676)))
                            (_%__kont171558171559%_
                             _%L167998%_
                             _%L167999%_
                             _%L168000%_
                             _%L168001%_)
                            (_%__kont171564171565%_)))))
                   (_%__match171919171920%_
                    (lambda (_%e167611167910%_
                             _%hd167610167913%_
                             _%tl167609167915%_
                             _%e167614167918%_
                             _%hd167613167921%_
                             _%tl167612167923%_
                             _%e167617167926%_
                             _%hd167616167929%_
                             _%tl167615167931%_
                             _%e167620167934%_
                             _%hd167619167937%_
                             _%tl167618167939%_
                             _%e167623167942%_
                             _%hd167622167945%_
                             _%tl167621167947%_
                             _%e167626167950%_
                             _%hd167625167953%_
                             _%tl167624167955%_
                             _%e167629167958%_
                             _%hd167628167961%_
                             _%tl167627167963%_
                             _%e167632167966%_
                             _%hd167631167969%_
                             _%tl167630167971%_
                             _%e167635167974%_
                             _%hd167634167977%_
                             _%tl167633167979%_
                             _%e167638167982%_
                             _%hd167637167985%_
                             _%tl167636167987%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl167630167971%_))
                          (let ((_%e167641167990%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl167630167971%_))))
                            (let ((_%tl167639167995%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e167641167990%_)))
                                  (_%hd167640167993%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e167641167990%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl167639167995%_))
                                  (_%__match171927171928%_
                                   _%e167611167910%_
                                   _%hd167610167913%_
                                   _%tl167609167915%_
                                   _%e167614167918%_
                                   _%hd167613167921%_
                                   _%tl167612167923%_
                                   _%e167617167926%_
                                   _%hd167616167929%_
                                   _%tl167615167931%_
                                   _%e167620167934%_
                                   _%hd167619167937%_
                                   _%tl167618167939%_
                                   _%e167623167942%_
                                   _%hd167622167945%_
                                   _%tl167621167947%_
                                   _%e167626167950%_
                                   _%hd167625167953%_
                                   _%tl167624167955%_
                                   _%e167629167958%_
                                   _%hd167628167961%_
                                   _%tl167627167963%_
                                   _%e167632167966%_
                                   _%hd167631167969%_
                                   _%tl167630167971%_
                                   _%e167635167974%_
                                   _%hd167634167977%_
                                   _%tl167633167979%_
                                   _%e167638167982%_
                                   _%hd167637167985%_
                                   _%tl167636167987%_
                                   _%e167641167990%_
                                   _%hd167640167993%_
                                   _%tl167639167995%_)
                                  (_%__kont171564171565%_))))
                          (_%__match172043172044%_
                           _%e167611167910%_
                           _%hd167610167913%_
                           _%tl167609167915%_
                           _%e167614167918%_
                           _%hd167613167921%_
                           _%tl167612167923%_
                           _%e167617167926%_
                           _%hd167616167929%_
                           _%tl167615167931%_
                           _%e167620167934%_
                           _%hd167619167937%_
                           _%tl167618167939%_
                           _%e167623167942%_
                           _%hd167622167945%_
                           _%tl167621167947%_
                           _%e167626167950%_
                           _%hd167625167953%_
                           _%tl167624167955%_
                           _%e167629167958%_
                           _%hd167628167961%_
                           _%tl167627167963%_
                           _%e167632167966%_
                           _%hd167631167969%_
                           _%tl167630167971%_))))
                   (_%__match171841171842%_
                    (lambda (_%e167577168041%_
                             _%hd167576168044%_
                             _%tl167575168046%_
                             _%e167580168049%_
                             _%hd167579168052%_
                             _%tl167578168054%_
                             _%e167583168057%_
                             _%hd167582168060%_
                             _%tl167581168062%_
                             _%e167586168065%_
                             _%hd167585168068%_
                             _%tl167584168070%_
                             _%e167589168073%_
                             _%hd167588168076%_
                             _%tl167587168078%_
                             _%e167592168081%_
                             _%hd167591168084%_
                             _%tl167590168086%_
                             _%e167595168089%_
                             _%hd167594168092%_
                             _%tl167593168094%_
                             _%e167598168097%_
                             _%hd167597168100%_
                             _%tl167596168102%_
                             _%e167601168105%_
                             _%hd167600168108%_
                             _%tl167599168110%_
                             _%e167604168113%_
                             _%hd167603168116%_
                             _%tl167602168118%_)
                      (let ((_%L168121%_ _%hd167603168116%_)
                            (_%L168122%_ _%hd167594168092%_)
                            (_%L168123%_ _%hd167585168068%_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L168123%_
                                        'slot-ref))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L168123%_
                                        'unchecked-slot-ref)))
                                 (let ((__tmp172677
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self167465%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L168122%_
                                    __tmp172677)))
                            (_%__kont171556171557%_
                             _%L168121%_
                             _%L168122%_
                             _%L168123%_)
                            (_%__match172045172046%_
                             _%e167577168041%_
                             _%hd167576168044%_
                             _%tl167575168046%_
                             _%e167580168049%_
                             _%hd167579168052%_
                             _%tl167578168054%_
                             _%e167583168057%_
                             _%hd167582168060%_
                             _%tl167581168062%_
                             _%e167586168065%_
                             _%hd167585168068%_
                             _%tl167584168070%_
                             _%e167589168073%_
                             _%hd167588168076%_
                             _%tl167587168078%_
                             _%e167592168081%_
                             _%hd167591168084%_
                             _%tl167590168086%_
                             _%e167595168089%_
                             _%hd167594168092%_
                             _%tl167593168094%_
                             _%e167598168097%_
                             _%hd167597168100%_
                             _%tl167596168102%_)))))
                   (_%__match171839171840%_
                    (lambda (_%e167577168041%_
                             _%hd167576168044%_
                             _%tl167575168046%_
                             _%e167580168049%_
                             _%hd167579168052%_
                             _%tl167578168054%_
                             _%e167583168057%_
                             _%hd167582168060%_
                             _%tl167581168062%_
                             _%e167586168065%_
                             _%hd167585168068%_
                             _%tl167584168070%_
                             _%e167589168073%_
                             _%hd167588168076%_
                             _%tl167587168078%_
                             _%e167592168081%_
                             _%hd167591168084%_
                             _%tl167590168086%_
                             _%e167595168089%_
                             _%hd167594168092%_
                             _%tl167593168094%_
                             _%e167598168097%_
                             _%hd167597168100%_
                             _%tl167596168102%_
                             _%e167601168105%_
                             _%hd167600168108%_
                             _%tl167599168110%_
                             _%e167604168113%_
                             _%hd167603168116%_
                             _%tl167602168118%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl167596168102%_))
                          (_%__match171841171842%_
                           _%e167577168041%_
                           _%hd167576168044%_
                           _%tl167575168046%_
                           _%e167580168049%_
                           _%hd167579168052%_
                           _%tl167578168054%_
                           _%e167583168057%_
                           _%hd167582168060%_
                           _%tl167581168062%_
                           _%e167586168065%_
                           _%hd167585168068%_
                           _%tl167584168070%_
                           _%e167589168073%_
                           _%hd167588168076%_
                           _%tl167587168078%_
                           _%e167592168081%_
                           _%hd167591168084%_
                           _%tl167590168086%_
                           _%e167595168089%_
                           _%hd167594168092%_
                           _%tl167593168094%_
                           _%e167598168097%_
                           _%hd167597168100%_
                           _%tl167596168102%_
                           _%e167601168105%_
                           _%hd167600168108%_
                           _%tl167599168110%_
                           _%e167604168113%_
                           _%hd167603168116%_
                           _%tl167602168118%_)
                          (_%__match171919171920%_
                           _%e167577168041%_
                           _%hd167576168044%_
                           _%tl167575168046%_
                           _%e167580168049%_
                           _%hd167579168052%_
                           _%tl167578168054%_
                           _%e167583168057%_
                           _%hd167582168060%_
                           _%tl167581168062%_
                           _%e167586168065%_
                           _%hd167585168068%_
                           _%tl167584168070%_
                           _%e167589168073%_
                           _%hd167588168076%_
                           _%tl167587168078%_
                           _%e167592168081%_
                           _%hd167591168084%_
                           _%tl167590168086%_
                           _%e167595168089%_
                           _%hd167594168092%_
                           _%tl167593168094%_
                           _%e167598168097%_
                           _%hd167597168100%_
                           _%tl167596168102%_
                           _%e167601168105%_
                           _%hd167600168108%_
                           _%tl167599168110%_
                           _%e167604168113%_
                           _%hd167603168116%_
                           _%tl167602168118%_))))
                   (_%__match171829171830%_
                    (lambda (_%e167577168041%_
                             _%hd167576168044%_
                             _%tl167575168046%_
                             _%e167580168049%_
                             _%hd167579168052%_
                             _%tl167578168054%_
                             _%e167583168057%_
                             _%hd167582168060%_
                             _%tl167581168062%_
                             _%e167586168065%_
                             _%hd167585168068%_
                             _%tl167584168070%_
                             _%e167589168073%_
                             _%hd167588168076%_
                             _%tl167587168078%_
                             _%e167592168081%_
                             _%hd167591168084%_
                             _%tl167590168086%_
                             _%e167595168089%_
                             _%hd167594168092%_
                             _%tl167593168094%_
                             _%e167598168097%_
                             _%hd167597168100%_
                             _%tl167596168102%_
                             _%e167601168105%_
                             _%hd167600168108%_
                             _%tl167599168110%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#quote _%hd167600168108%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl167599168110%_))
                              (let ((_%e167604168113%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl167599168110%_))))
                                (let ((_%tl167602168118%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e167604168113%_)))
                                      (_%hd167603168116%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e167604168113%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl167602168118%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl167596168102%_))
                                          (_%__match171841171842%_
                                           _%e167577168041%_
                                           _%hd167576168044%_
                                           _%tl167575168046%_
                                           _%e167580168049%_
                                           _%hd167579168052%_
                                           _%tl167578168054%_
                                           _%e167583168057%_
                                           _%hd167582168060%_
                                           _%tl167581168062%_
                                           _%e167586168065%_
                                           _%hd167585168068%_
                                           _%tl167584168070%_
                                           _%e167589168073%_
                                           _%hd167588168076%_
                                           _%tl167587168078%_
                                           _%e167592168081%_
                                           _%hd167591168084%_
                                           _%tl167590168086%_
                                           _%e167595168089%_
                                           _%hd167594168092%_
                                           _%tl167593168094%_
                                           _%e167598168097%_
                                           _%hd167597168100%_
                                           _%tl167596168102%_
                                           _%e167601168105%_
                                           _%hd167600168108%_
                                           _%tl167599168110%_
                                           _%e167604168113%_
                                           _%hd167603168116%_
                                           _%tl167602168118%_)
                                          (_%__match171919171920%_
                                           _%e167577168041%_
                                           _%hd167576168044%_
                                           _%tl167575168046%_
                                           _%e167580168049%_
                                           _%hd167579168052%_
                                           _%tl167578168054%_
                                           _%e167583168057%_
                                           _%hd167582168060%_
                                           _%tl167581168062%_
                                           _%e167586168065%_
                                           _%hd167585168068%_
                                           _%tl167584168070%_
                                           _%e167589168073%_
                                           _%hd167588168076%_
                                           _%tl167587168078%_
                                           _%e167592168081%_
                                           _%hd167591168084%_
                                           _%tl167590168086%_
                                           _%e167595168089%_
                                           _%hd167594168092%_
                                           _%tl167593168094%_
                                           _%e167598168097%_
                                           _%hd167597168100%_
                                           _%tl167596168102%_
                                           _%e167601168105%_
                                           _%hd167600168108%_
                                           _%tl167599168110%_
                                           _%e167604168113%_
                                           _%hd167603168116%_
                                           _%tl167602168118%_))
                                      (_%__match172043172044%_
                                       _%e167577168041%_
                                       _%hd167576168044%_
                                       _%tl167575168046%_
                                       _%e167580168049%_
                                       _%hd167579168052%_
                                       _%tl167578168054%_
                                       _%e167583168057%_
                                       _%hd167582168060%_
                                       _%tl167581168062%_
                                       _%e167586168065%_
                                       _%hd167585168068%_
                                       _%tl167584168070%_
                                       _%e167589168073%_
                                       _%hd167588168076%_
                                       _%tl167587168078%_
                                       _%e167592168081%_
                                       _%hd167591168084%_
                                       _%tl167590168086%_
                                       _%e167595168089%_
                                       _%hd167594168092%_
                                       _%tl167593168094%_
                                       _%e167598168097%_
                                       _%hd167597168100%_
                                       _%tl167596168102%_))))
                              (_%__match172043172044%_
                               _%e167577168041%_
                               _%hd167576168044%_
                               _%tl167575168046%_
                               _%e167580168049%_
                               _%hd167579168052%_
                               _%tl167578168054%_
                               _%e167583168057%_
                               _%hd167582168060%_
                               _%tl167581168062%_
                               _%e167586168065%_
                               _%hd167585168068%_
                               _%tl167584168070%_
                               _%e167589168073%_
                               _%hd167588168076%_
                               _%tl167587168078%_
                               _%e167592168081%_
                               _%hd167591168084%_
                               _%tl167590168086%_
                               _%e167595168089%_
                               _%hd167594168092%_
                               _%tl167593168094%_
                               _%e167598168097%_
                               _%hd167597168100%_
                               _%tl167596168102%_))
                          (_%__match172043172044%_
                           _%e167577168041%_
                           _%hd167576168044%_
                           _%tl167575168046%_
                           _%e167580168049%_
                           _%hd167579168052%_
                           _%tl167578168054%_
                           _%e167583168057%_
                           _%hd167582168060%_
                           _%tl167581168062%_
                           _%e167586168065%_
                           _%hd167585168068%_
                           _%tl167584168070%_
                           _%e167589168073%_
                           _%hd167588168076%_
                           _%tl167587168078%_
                           _%e167592168081%_
                           _%hd167591168084%_
                           _%tl167590168086%_
                           _%e167595168089%_
                           _%hd167594168092%_
                           _%tl167593168094%_
                           _%e167598168097%_
                           _%hd167597168100%_
                           _%tl167596168102%_))))
                   (_%__match171761171762%_
                    (lambda (_%e167526168160%_
                             _%hd167525168163%_
                             _%tl167524168165%_
                             _%e167529168168%_
                             _%hd167528168171%_
                             _%tl167527168173%_
                             _%e167532168176%_
                             _%hd167531168179%_
                             _%tl167530168181%_
                             _%e167535168184%_
                             _%hd167534168187%_
                             _%tl167533168189%_
                             _%e167538168192%_
                             _%hd167537168195%_
                             _%tl167536168197%_
                             _%e167541168200%_
                             _%hd167540168203%_
                             _%tl167539168205%_
                             _%e167544168208%_
                             _%hd167543168211%_
                             _%tl167542168213%_
                             _%e167547168216%_
                             _%hd167546168219%_
                             _%tl167545168221%_
                             _%e167550168224%_
                             _%hd167549168227%_
                             _%tl167548168229%_
                             _%e167553168232%_
                             _%hd167552168235%_
                             _%tl167551168237%_
                             _%e167556168240%_
                             _%hd167555168243%_
                             _%tl167554168245%_
                             _%e167559168248%_
                             _%hd167558168251%_
                             _%tl167557168253%_
                             _%e167562168256%_
                             _%hd167561168259%_
                             _%tl167560168261%_
                             _%__splice171554171555%_
                             _%target167563168264%_
                             _%tl167565168266%_)
                      (letrec ((_%loop167566168269%_
                                (lambda (_%hd167564168272%_
                                         _%args167570168274%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd167564168272%_))
                                      (let ((_%e167567168277%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd167564168272%_))))
                                        (let ((_%lp-tl167569168282%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e167567168277%_)))
                                              (_%lp-hd167568168280%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e167567168277%_))))
                                          (let ((__tmp172678
                                                 (cons _%lp-hd167568168280%_
                                                       _%args167570168274%_)))
                                            (declare (not safe))
                                            (_%loop167566168269%_
                                             _%lp-tl167569168282%_
                                             __tmp172678))))
                                      (let ((_%args167571168285%_
                                             (reverse _%args167570168274%_)))
                                        (let ((_%L168288%_
                                               _%args167571168285%_)
                                              (_%L168289%_ _%hd167561168259%_)
                                              (_%L168290%_ _%hd167552168235%_)
                                              (_%L168291%_ _%hd167543168211%_)
                                              (_%L168292%_ _%hd167534168187%_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%L168292%_
                                                      'apply))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%L168291%_
                                                      'call-method))
                                                   (let ((__tmp172679
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self167465%_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%L168290%_
                                                      __tmp172679)))
                                              (_%__kont171552171553%_
                                               _%L168288%_
                                               _%L168289%_
                                               _%L168290%_
                                               _%L168291%_
                                               _%L168292%_)
                                              (_%__kont171564171565%_))))))))
                        (let ()
                          (declare (not safe))
                          (_%loop167566168269%_ _%target167563168264%_ '())))))
                   (_%__match171719171720%_
                    (lambda (_%e167526168160%_
                             _%hd167525168163%_
                             _%tl167524168165%_
                             _%e167529168168%_
                             _%hd167528168171%_
                             _%tl167527168173%_
                             _%e167532168176%_
                             _%hd167531168179%_
                             _%tl167530168181%_
                             _%e167535168184%_
                             _%hd167534168187%_
                             _%tl167533168189%_
                             _%e167538168192%_
                             _%hd167537168195%_
                             _%tl167536168197%_
                             _%e167541168200%_
                             _%hd167540168203%_
                             _%tl167539168205%_
                             _%e167544168208%_
                             _%hd167543168211%_
                             _%tl167542168213%_
                             _%e167547168216%_
                             _%hd167546168219%_
                             _%tl167545168221%_
                             _%e167550168224%_
                             _%hd167549168227%_
                             _%tl167548168229%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _%hd167549168227%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl167548168229%_))
                              (let ((_%e167553168232%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl167548168229%_))))
                                (let ((_%tl167551168237%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e167553168232%_)))
                                      (_%hd167552168235%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e167553168232%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl167551168237%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl167545168221%_))
                                          (let ((_%e167556168240%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl167545168221%_))))
                                            (let ((_%tl167554168245%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e167556168240%_)))
                                                  (_%hd167555168243%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e167556168240%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd167555168243%_))
                                                  (let ((_%e167559168248%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd167555168243%_))))
                                                    (let ((_%tl167557168253%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e167559168248%_)))
                                                          (_%hd167558168251%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e167559168248%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd167558168251%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#quote _%hd167558168251%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl167557168253%_))
                          (let ((_%e167562168256%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl167557168253%_))))
                            (let ((_%tl167560168261%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e167562168256%_)))
                                  (_%hd167561168259%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e167562168256%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl167560168261%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl167554168245%_))
                                      (let ((_%__splice171554171555%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl167554168245%_
                                                '0))))
                                        (let ((_%tl167565168266%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice171554171555%_
                                                  '1)))
                                              (_%target167563168264%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice171554171555%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl167565168266%_))
                                              (_%__match171761171762%_
                                               _%e167526168160%_
                                               _%hd167525168163%_
                                               _%tl167524168165%_
                                               _%e167529168168%_
                                               _%hd167528168171%_
                                               _%tl167527168173%_
                                               _%e167532168176%_
                                               _%hd167531168179%_
                                               _%tl167530168181%_
                                               _%e167535168184%_
                                               _%hd167534168187%_
                                               _%tl167533168189%_
                                               _%e167538168192%_
                                               _%hd167537168195%_
                                               _%tl167536168197%_
                                               _%e167541168200%_
                                               _%hd167540168203%_
                                               _%tl167539168205%_
                                               _%e167544168208%_
                                               _%hd167543168211%_
                                               _%tl167542168213%_
                                               _%e167547168216%_
                                               _%hd167546168219%_
                                               _%tl167545168221%_
                                               _%e167550168224%_
                                               _%hd167549168227%_
                                               _%tl167548168229%_
                                               _%e167553168232%_
                                               _%hd167552168235%_
                                               _%tl167551168237%_
                                               _%e167556168240%_
                                               _%hd167555168243%_
                                               _%tl167554168245%_
                                               _%e167559168248%_
                                               _%hd167558168251%_
                                               _%tl167557168253%_
                                               _%e167562168256%_
                                               _%hd167561168259%_
                                               _%tl167560168261%_
                                               _%__splice171554171555%_
                                               _%target167563168264%_
                                               _%tl167565168266%_)
                                              (_%__kont171564171565%_))))
                                      (_%__kont171564171565%_))
                                  (_%__kont171564171565%_))))
                          (_%__kont171564171565%_))
                      (_%__kont171564171565%_))
                  (_%__kont171564171565%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont171564171565%_))))
                                          (_%__match172043172044%_
                                           _%e167526168160%_
                                           _%hd167525168163%_
                                           _%tl167524168165%_
                                           _%e167529168168%_
                                           _%hd167528168171%_
                                           _%tl167527168173%_
                                           _%e167532168176%_
                                           _%hd167531168179%_
                                           _%tl167530168181%_
                                           _%e167535168184%_
                                           _%hd167534168187%_
                                           _%tl167533168189%_
                                           _%e167538168192%_
                                           _%hd167537168195%_
                                           _%tl167536168197%_
                                           _%e167541168200%_
                                           _%hd167540168203%_
                                           _%tl167539168205%_
                                           _%e167544168208%_
                                           _%hd167543168211%_
                                           _%tl167542168213%_
                                           _%e167547168216%_
                                           _%hd167546168219%_
                                           _%tl167545168221%_))
                                      (_%__match172043172044%_
                                       _%e167526168160%_
                                       _%hd167525168163%_
                                       _%tl167524168165%_
                                       _%e167529168168%_
                                       _%hd167528168171%_
                                       _%tl167527168173%_
                                       _%e167532168176%_
                                       _%hd167531168179%_
                                       _%tl167530168181%_
                                       _%e167535168184%_
                                       _%hd167534168187%_
                                       _%tl167533168189%_
                                       _%e167538168192%_
                                       _%hd167537168195%_
                                       _%tl167536168197%_
                                       _%e167541168200%_
                                       _%hd167540168203%_
                                       _%tl167539168205%_
                                       _%e167544168208%_
                                       _%hd167543168211%_
                                       _%tl167542168213%_
                                       _%e167547168216%_
                                       _%hd167546168219%_
                                       _%tl167545168221%_))))
                              (_%__match172043172044%_
                               _%e167526168160%_
                               _%hd167525168163%_
                               _%tl167524168165%_
                               _%e167529168168%_
                               _%hd167528168171%_
                               _%tl167527168173%_
                               _%e167532168176%_
                               _%hd167531168179%_
                               _%tl167530168181%_
                               _%e167535168184%_
                               _%hd167534168187%_
                               _%tl167533168189%_
                               _%e167538168192%_
                               _%hd167537168195%_
                               _%tl167536168197%_
                               _%e167541168200%_
                               _%hd167540168203%_
                               _%tl167539168205%_
                               _%e167544168208%_
                               _%hd167543168211%_
                               _%tl167542168213%_
                               _%e167547168216%_
                               _%hd167546168219%_
                               _%tl167545168221%_))
                          (_%__match171829171830%_
                           _%e167526168160%_
                           _%hd167525168163%_
                           _%tl167524168165%_
                           _%e167529168168%_
                           _%hd167528168171%_
                           _%tl167527168173%_
                           _%e167532168176%_
                           _%hd167531168179%_
                           _%tl167530168181%_
                           _%e167535168184%_
                           _%hd167534168187%_
                           _%tl167533168189%_
                           _%e167538168192%_
                           _%hd167537168195%_
                           _%tl167536168197%_
                           _%e167541168200%_
                           _%hd167540168203%_
                           _%tl167539168205%_
                           _%e167544168208%_
                           _%hd167543168211%_
                           _%tl167542168213%_
                           _%e167547168216%_
                           _%hd167546168219%_
                           _%tl167545168221%_
                           _%e167550168224%_
                           _%hd167549168227%_
                           _%tl167548168229%_))))
                   (_%__match171651171652%_
                    (lambda (_%e167482168349%_
                             _%hd167481168352%_
                             _%tl167480168354%_
                             _%e167485168357%_
                             _%hd167484168360%_
                             _%tl167483168362%_
                             _%e167488168365%_
                             _%hd167487168368%_
                             _%tl167486168370%_
                             _%e167491168373%_
                             _%hd167490168376%_
                             _%tl167489168378%_
                             _%e167494168381%_
                             _%hd167493168384%_
                             _%tl167492168386%_
                             _%e167497168389%_
                             _%hd167496168392%_
                             _%tl167495168394%_
                             _%e167500168397%_
                             _%hd167499168400%_
                             _%tl167498168402%_
                             _%e167503168405%_
                             _%hd167502168408%_
                             _%tl167501168410%_
                             _%e167506168413%_
                             _%hd167505168416%_
                             _%tl167504168418%_
                             _%e167509168421%_
                             _%hd167508168424%_
                             _%tl167507168426%_
                             _%__splice171550171551%_
                             _%target167510168429%_
                             _%tl167512168431%_)
                      (letrec ((_%loop167513168434%_
                                (lambda (_%hd167511168437%_
                                         _%args167517168439%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd167511168437%_))
                                      (let ((_%e167514168442%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd167511168437%_))))
                                        (let ((_%lp-tl167516168447%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e167514168442%_)))
                                              (_%lp-hd167515168445%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e167514168442%_))))
                                          (let ((__tmp172680
                                                 (cons _%lp-hd167515168445%_
                                                       _%args167517168439%_)))
                                            (declare (not safe))
                                            (_%loop167513168434%_
                                             _%lp-tl167516168447%_
                                             __tmp172680))))
                                      (let ((_%args167518168450%_
                                             (reverse _%args167517168439%_)))
                                        (let ((_%L168453%_
                                               _%args167518168450%_)
                                              (_%L168454%_ _%hd167508168424%_)
                                              (_%L168455%_ _%hd167499168400%_)
                                              (_%L168456%_ _%hd167490168376%_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%L168456%_
                                                      'call-method))
                                                   (let ((__tmp172681
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self167465%_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%L168455%_
                                                      __tmp172681)))
                                              (_%__kont171548171549%_
                                               _%L168453%_
                                               _%L168454%_
                                               _%L168455%_
                                               _%L168456%_)
                                              (_%__match171839171840%_
                                               _%e167482168349%_
                                               _%hd167481168352%_
                                               _%tl167480168354%_
                                               _%e167485168357%_
                                               _%hd167484168360%_
                                               _%tl167483168362%_
                                               _%e167488168365%_
                                               _%hd167487168368%_
                                               _%tl167486168370%_
                                               _%e167491168373%_
                                               _%hd167490168376%_
                                               _%tl167489168378%_
                                               _%e167494168381%_
                                               _%hd167493168384%_
                                               _%tl167492168386%_
                                               _%e167497168389%_
                                               _%hd167496168392%_
                                               _%tl167495168394%_
                                               _%e167500168397%_
                                               _%hd167499168400%_
                                               _%tl167498168402%_
                                               _%e167503168405%_
                                               _%hd167502168408%_
                                               _%tl167501168410%_
                                               _%e167506168413%_
                                               _%hd167505168416%_
                                               _%tl167504168418%_
                                               _%e167509168421%_
                                               _%hd167508168424%_
                                               _%tl167507168426%_))))))))
                        (let ()
                          (declare (not safe))
                          (_%loop167513168434%_
                           _%target167510168429%_
                           '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx171546171547%_))
                  (let ((_%e167482168349%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx171546171547%_))))
                    (let ((_%tl167480168354%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e167482168349%_)))
                          (_%hd167481168352%_
                           (let ()
                             (declare (not safe))
                             (##car _%e167482168349%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl167480168354%_))
                          (let ((_%e167485168357%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl167480168354%_))))
                            (let ((_%tl167483168362%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e167485168357%_)))
                                  (_%hd167484168360%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e167485168357%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd167484168360%_))
                                  (let ((_%e167488168365%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd167484168360%_))))
                                    (let ((_%tl167486168370%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e167488168365%_)))
                                          (_%hd167487168368%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e167488168365%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd167487168368%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd167487168368%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl167486168370%_))
                                                  (let ((_%e167491168373%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl167486168370%_))))
                                                    (let ((_%tl167489168378%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e167491168373%_)))
                                                          (_%hd167490168376%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e167491168373%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl167489168378%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl167483168362%_))
                      (let ((_%e167494168381%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl167483168362%_))))
                        (let ((_%tl167492168386%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e167494168381%_)))
                              (_%hd167493168384%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e167494168381%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd167493168384%_))
                              (let ((_%e167497168389%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd167493168384%_))))
                                (let ((_%tl167495168394%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e167497168389%_)))
                                      (_%hd167496168392%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e167497168389%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd167496168392%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd167496168392%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl167495168394%_))
                                              (let ((_%e167500168397%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl167495168394%_))))
                                                (let ((_%tl167498168402%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e167500168397%_)))
                                                      (_%hd167499168400%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e167500168397%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl167498168402%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl167492168386%_))
                                                          (let ((_%e167503168405%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl167492168386%_))))
                    (let ((_%tl167501168410%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e167503168405%_)))
                          (_%hd167502168408%_
                           (let ()
                             (declare (not safe))
                             (##car _%e167503168405%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd167502168408%_))
                          (let ((_%e167506168413%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd167502168408%_))))
                            (let ((_%tl167504168418%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e167506168413%_)))
                                  (_%hd167505168416%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e167506168413%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd167505168416%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%hd167505168416%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl167504168418%_))
                                          (let ((_%e167509168421%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl167504168418%_))))
                                            (let ((_%tl167507168426%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e167509168421%_)))
                                                  (_%hd167508168424%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e167509168421%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl167507168426%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl167501168410%_))
                                                      (let ((_%__splice171550171551%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%tl167501168410%_ '0))))
                (let ((_%tl167512168431%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice171550171551%_ '1)))
                      (_%target167510168429%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice171550171551%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl167512168431%_))
                      (_%__match171651171652%_
                       _%e167482168349%_
                       _%hd167481168352%_
                       _%tl167480168354%_
                       _%e167485168357%_
                       _%hd167484168360%_
                       _%tl167483168362%_
                       _%e167488168365%_
                       _%hd167487168368%_
                       _%tl167486168370%_
                       _%e167491168373%_
                       _%hd167490168376%_
                       _%tl167489168378%_
                       _%e167494168381%_
                       _%hd167493168384%_
                       _%tl167492168386%_
                       _%e167497168389%_
                       _%hd167496168392%_
                       _%tl167495168394%_
                       _%e167500168397%_
                       _%hd167499168400%_
                       _%tl167498168402%_
                       _%e167503168405%_
                       _%hd167502168408%_
                       _%tl167501168410%_
                       _%e167506168413%_
                       _%hd167505168416%_
                       _%tl167504168418%_
                       _%e167509168421%_
                       _%hd167508168424%_
                       _%tl167507168426%_
                       _%__splice171550171551%_
                       _%target167510168429%_
                       _%tl167512168431%_)
                      (_%__match171839171840%_
                       _%e167482168349%_
                       _%hd167481168352%_
                       _%tl167480168354%_
                       _%e167485168357%_
                       _%hd167484168360%_
                       _%tl167483168362%_
                       _%e167488168365%_
                       _%hd167487168368%_
                       _%tl167486168370%_
                       _%e167491168373%_
                       _%hd167490168376%_
                       _%tl167489168378%_
                       _%e167494168381%_
                       _%hd167493168384%_
                       _%tl167492168386%_
                       _%e167497168389%_
                       _%hd167496168392%_
                       _%tl167495168394%_
                       _%e167500168397%_
                       _%hd167499168400%_
                       _%tl167498168402%_
                       _%e167503168405%_
                       _%hd167502168408%_
                       _%tl167501168410%_
                       _%e167506168413%_
                       _%hd167505168416%_
                       _%tl167504168418%_
                       _%e167509168421%_
                       _%hd167508168424%_
                       _%tl167507168426%_))))
              (_%__match171839171840%_
               _%e167482168349%_
               _%hd167481168352%_
               _%tl167480168354%_
               _%e167485168357%_
               _%hd167484168360%_
               _%tl167483168362%_
               _%e167488168365%_
               _%hd167487168368%_
               _%tl167486168370%_
               _%e167491168373%_
               _%hd167490168376%_
               _%tl167489168378%_
               _%e167494168381%_
               _%hd167493168384%_
               _%tl167492168386%_
               _%e167497168389%_
               _%hd167496168392%_
               _%tl167495168394%_
               _%e167500168397%_
               _%hd167499168400%_
               _%tl167498168402%_
               _%e167503168405%_
               _%hd167502168408%_
               _%tl167501168410%_
               _%e167506168413%_
               _%hd167505168416%_
               _%tl167504168418%_
               _%e167509168421%_
               _%hd167508168424%_
               _%tl167507168426%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__match172043172044%_
                                                   _%e167482168349%_
                                                   _%hd167481168352%_
                                                   _%tl167480168354%_
                                                   _%e167485168357%_
                                                   _%hd167484168360%_
                                                   _%tl167483168362%_
                                                   _%e167488168365%_
                                                   _%hd167487168368%_
                                                   _%tl167486168370%_
                                                   _%e167491168373%_
                                                   _%hd167490168376%_
                                                   _%tl167489168378%_
                                                   _%e167494168381%_
                                                   _%hd167493168384%_
                                                   _%tl167492168386%_
                                                   _%e167497168389%_
                                                   _%hd167496168392%_
                                                   _%tl167495168394%_
                                                   _%e167500168397%_
                                                   _%hd167499168400%_
                                                   _%tl167498168402%_
                                                   _%e167503168405%_
                                                   _%hd167502168408%_
                                                   _%tl167501168410%_))))
                                          (_%__match172043172044%_
                                           _%e167482168349%_
                                           _%hd167481168352%_
                                           _%tl167480168354%_
                                           _%e167485168357%_
                                           _%hd167484168360%_
                                           _%tl167483168362%_
                                           _%e167488168365%_
                                           _%hd167487168368%_
                                           _%tl167486168370%_
                                           _%e167491168373%_
                                           _%hd167490168376%_
                                           _%tl167489168378%_
                                           _%e167494168381%_
                                           _%hd167493168384%_
                                           _%tl167492168386%_
                                           _%e167497168389%_
                                           _%hd167496168392%_
                                           _%tl167495168394%_
                                           _%e167500168397%_
                                           _%hd167499168400%_
                                           _%tl167498168402%_
                                           _%e167503168405%_
                                           _%hd167502168408%_
                                           _%tl167501168410%_))
                                      (_%__match171719171720%_
                                       _%e167482168349%_
                                       _%hd167481168352%_
                                       _%tl167480168354%_
                                       _%e167485168357%_
                                       _%hd167484168360%_
                                       _%tl167483168362%_
                                       _%e167488168365%_
                                       _%hd167487168368%_
                                       _%tl167486168370%_
                                       _%e167491168373%_
                                       _%hd167490168376%_
                                       _%tl167489168378%_
                                       _%e167494168381%_
                                       _%hd167493168384%_
                                       _%tl167492168386%_
                                       _%e167497168389%_
                                       _%hd167496168392%_
                                       _%tl167495168394%_
                                       _%e167500168397%_
                                       _%hd167499168400%_
                                       _%tl167498168402%_
                                       _%e167503168405%_
                                       _%hd167502168408%_
                                       _%tl167501168410%_
                                       _%e167506168413%_
                                       _%hd167505168416%_
                                       _%tl167504168418%_))
                                  (_%__match172043172044%_
                                   _%e167482168349%_
                                   _%hd167481168352%_
                                   _%tl167480168354%_
                                   _%e167485168357%_
                                   _%hd167484168360%_
                                   _%tl167483168362%_
                                   _%e167488168365%_
                                   _%hd167487168368%_
                                   _%tl167486168370%_
                                   _%e167491168373%_
                                   _%hd167490168376%_
                                   _%tl167489168378%_
                                   _%e167494168381%_
                                   _%hd167493168384%_
                                   _%tl167492168386%_
                                   _%e167497168389%_
                                   _%hd167496168392%_
                                   _%tl167495168394%_
                                   _%e167500168397%_
                                   _%hd167499168400%_
                                   _%tl167498168402%_
                                   _%e167503168405%_
                                   _%hd167502168408%_
                                   _%tl167501168410%_))))
                          (_%__match172043172044%_
                           _%e167482168349%_
                           _%hd167481168352%_
                           _%tl167480168354%_
                           _%e167485168357%_
                           _%hd167484168360%_
                           _%tl167483168362%_
                           _%e167488168365%_
                           _%hd167487168368%_
                           _%tl167486168370%_
                           _%e167491168373%_
                           _%hd167490168376%_
                           _%tl167489168378%_
                           _%e167494168381%_
                           _%hd167493168384%_
                           _%tl167492168386%_
                           _%e167497168389%_
                           _%hd167496168392%_
                           _%tl167495168394%_
                           _%e167500168397%_
                           _%hd167499168400%_
                           _%tl167498168402%_
                           _%e167503168405%_
                           _%hd167502168408%_
                           _%tl167501168410%_))))
                  (_%__match171981171982%_
                   _%e167482168349%_
                   _%hd167481168352%_
                   _%tl167480168354%_
                   _%e167485168357%_
                   _%hd167484168360%_
                   _%tl167483168362%_
                   _%e167488168365%_
                   _%hd167487168368%_
                   _%tl167486168370%_
                   _%e167491168373%_
                   _%hd167490168376%_
                   _%tl167489168378%_
                   _%e167494168381%_
                   _%hd167493168384%_
                   _%tl167492168386%_
                   _%e167497168389%_
                   _%hd167496168392%_
                   _%tl167495168394%_
                   _%e167500168397%_
                   _%hd167499168400%_
                   _%tl167498168402%_))
              (_%__kont171564171565%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont171564171565%_))
                                          (_%__kont171564171565%_))
                                      (_%__kont171564171565%_))))
                              (_%__kont171564171565%_))))
                      (_%__kont171564171565%_))
                  (_%__kont171564171565%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont171564171565%_))
                                              (_%__kont171564171565%_))
                                          (_%__kont171564171565%_))))
                                  (_%__kont171564171565%_))))
                          (_%__kont171564171565%_))))
                  (_%__kont171564171565%_)))))))
    (define gxc#subst-object-refs-call%
      (lambda (_%self166404%_ _%stx166405%_)
        (letrec ((_%force-e166407%_
                  (lambda (_%target167463%_)
                    (cons '%#call
                          (cons (cons '%#ref (cons 'force '()))
                                (cons (cons '%#ref (cons _%target167463%_ '()))
                                      '()))))))
          (let* ((_%__stx172048172049%_ _%stx166405%_)
                 (_%g166415166637%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx172048172049%_)))))
            (let ((_%__kont172050172051%_
                   (lambda (_%L167409%_ _%L167410%_ _%L167411%_ _%L167412%_)
                     (let ((_%$method167457%_
                            (let ((__tmp172683
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self166404%_ 'methods)))
                                  (__tmp172682
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L167410%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp172683 __tmp172682)))
                           (_%args167458%_
                            (map (lambda (_%g167445167447%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self166404%_
                                      _%g167445167447%_)))
                                 (let ((__tmp172684
                                        (lambda (_%g167449167452%_
                                                 _%g167450167454%_)
                                          (cons _%g167449167452%_
                                                _%g167450167454%_))))
                                   (declare (not safe))
                                   (__foldr1 __tmp172684 '() _%L167409%_)))))
                       (let ((__tmp172685
                              (cons '%#call
                                    (cons (let ()
                                            (declare (not safe))
                                            (_%force-e166407%_
                                             _%$method167457%_))
                                          (cons (cons '%#ref
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self166404%_
                                                               'receiver))
                                                            '()))
                                                _%args167458%_)))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp172685 _%stx166405%_)))))
                  (_%__kont172054172055%_
                   (lambda (_%L167241%_
                            _%L167242%_
                            _%L167243%_
                            _%L167244%_
                            _%L167245%_)
                     (let ((_%$method167297%_
                            (let ((__tmp172687
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self166404%_ 'methods)))
                                  (__tmp172686
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L167242%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp172687 __tmp172686)))
                           (_%args167298%_
                            (map (lambda (_%g167285167287%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self166404%_
                                      _%g167285167287%_)))
                                 (let ((__tmp172688
                                        (lambda (_%g167289167292%_
                                                 _%g167290167294%_)
                                          (cons _%g167289167292%_
                                                _%g167290167294%_))))
                                   (declare (not safe))
                                   (__foldr1 __tmp172688 '() _%L167241%_)))))
                       (let ((__tmp172689
                              (cons '%#call
                                    (cons (cons '%#ref (cons 'apply '()))
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (_%force-e166407%_
                                                   _%$method167297%_))
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (slot-ref__0 _%self166404%_ 'receiver))
                          '()))
              _%args167298%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp172689 _%stx166405%_)))))
                  (_%__kont172058172059%_
                   (lambda (_%L167072%_ _%L167073%_ _%L167074%_)
                     (let* ((_%$field167106%_
                             (let ((__tmp172691
                                    (let ()
                                      (declare (not safe))
                                      (slot-ref__0 _%self166404%_ 'slots)))
                                   (__tmp172690
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%L167072%_))))
                               (declare (not safe))
                               (hash-ref__0 __tmp172691 __tmp172690)))
                            (__tmp172692
                             (cons '%#struct-unchecked-ref
                                   (cons (cons '%#ref
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (slot-ref__0
                                                        _%self166404%_
                                                        'klass))
                                                     '()))
                                         (cons (cons '%#ref
                                                     (cons _%$field167106%_
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (slot-ref__0 _%self166404%_ 'receiver))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp172692 _%stx166405%_))))
                  (_%__kont172060172061%_
                   (lambda (_%L166946%_ _%L166947%_ _%L166948%_ _%L166949%_)
                     (let ((_%$field166984%_
                            (let ((__tmp172694
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self166404%_ 'slots)))
                                  (__tmp172693
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L166947%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp172694 __tmp172693)))
                           (_%expr166985%_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-e__1 _%self166404%_ _%L166946%_))))
                       (let ((__tmp172695
                              (cons '%#struct-unchecked-set!
                                    (cons (cons '%#ref
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (slot-ref__0
                                                         _%self166404%_
                                                         'klass))
                                                      '()))
                                          (cons (cons '%#ref
                                                      (cons _%$field166984%_
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (slot-ref__0 _%self166404%_ 'receiver))
                          '()))
              (cons _%expr166985%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp172695 _%stx166405%_)))))
                  (_%__kont172062172063%_
                   (lambda (_%L166818%_ _%L166819%_)
                     (let* ((_%accessor166841%_
                             (let ((__tmp172696
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _%L166819%_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp172696)))
                            (_%klass166843%_
                             (let ((__tmp172697
                                    (##structure-ref
                                     _%accessor166841%_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _%stx166405%_
                                __tmp172697)))
                            (_%slot166845%_
                             (##structure-ref
                              _%accessor166841%_
                              '3
                              gxc#!accessor::t
                              '#f)))
                       (if (and (let ((__tmp172698
                                       (##structure-ref
                                        _%accessor166841%_
                                        '4
                                        gxc#!accessor::t
                                        '#f)))
                                  (declare (not safe))
                                  (not __tmp172698))
                                (or (let ()
                                      (declare (not safe))
                                      (gxc#!class-struct-slot?
                                       _%klass166843%_
                                       _%slot166845%_))
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%klass166843%_
                                       '8
                                       '#f
                                       '#f))))
                           _%stx166405%_
                           (let* ((_%$field166851%_
                                   (let ((__tmp172699
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self166404%_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp172699 _%slot166845%_)))
                                  (__tmp172700
                                   (cons '%#struct-unchecked-ref
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (slot-ref__0
                                                              _%self166404%_
                                                              'klass))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$field166851%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _%self166404%_ 'receiver))
                               '()))
                   '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp172700
                              _%stx166405%_))))))
                  (_%__kont172064172065%_
                   (lambda (_%L166713%_ _%L166714%_ _%L166715%_)
                     (let* ((_%mutator166743%_
                             (let ((__tmp172701
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _%L166715%_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp172701)))
                            (_%klass166745%_
                             (let ((__tmp172702
                                    (##structure-ref
                                     _%mutator166743%_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _%stx166405%_
                                __tmp172702)))
                            (_%slot166747%_
                             (##structure-ref
                              _%mutator166743%_
                              '3
                              gxc#!mutator::t
                              '#f))
                            (_%expr166749%_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-e__1 _%self166404%_ _%L166713%_))))
                       (if (and (let ((__tmp172703
                                       (##structure-ref
                                        _%mutator166743%_
                                        '4
                                        gxc#!mutator::t
                                        '#f)))
                                  (declare (not safe))
                                  (not __tmp172703))
                                (or (let ()
                                      (declare (not safe))
                                      (gxc#!class-struct-slot?
                                       _%klass166745%_
                                       _%slot166747%_))
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%klass166745%_
                                       '8
                                       '#f
                                       '#f))))
                           (let ((__tmp172704
                                  (cons '%#call
                                        (cons (cons (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       '%#ref))
                                                    (cons _%L166715%_ '()))
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#ref))
                                                          (cons _%L166714%_
                                                                '()))
                                                    (cons _%expr166749%_
                                                          '()))))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp172704 _%stx166405%_))
                           (let* ((_%$field166755%_
                                   (let ((__tmp172705
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self166404%_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp172705 _%slot166747%_)))
                                  (__tmp172706
                                   (cons '%#struct-unchecked-set!
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (slot-ref__0
                                                              _%self166404%_
                                                              'klass))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$field166755%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _%self166404%_ 'receiver))
                               '()))
                   (cons _%expr166749%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp172706
                              _%stx166405%_))))))
                  (_%__kont172066172067%_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-operands _%self166404%_ _%stx166405%_)))))
              (let* ((_%__match172547172548%_
                      (lambda (_%e166611166649%_
                               _%hd166610166652%_
                               _%tl166609166654%_
                               _%e166614166657%_
                               _%hd166613166660%_
                               _%tl166612166662%_
                               _%e166617166665%_
                               _%hd166616166668%_
                               _%tl166615166670%_
                               _%e166620166673%_
                               _%hd166619166676%_
                               _%tl166618166678%_
                               _%e166623166681%_
                               _%hd166622166684%_
                               _%tl166621166686%_
                               _%e166626166689%_
                               _%hd166625166692%_
                               _%tl166624166694%_
                               _%e166629166697%_
                               _%hd166628166700%_
                               _%tl166627166702%_
                               _%e166632166705%_
                               _%hd166631166708%_
                               _%tl166630166710%_)
                        (let ((_%L166713%_ _%hd166631166708%_)
                              (_%L166714%_ _%hd166628166700%_)
                              (_%L166715%_ _%hd166619166676%_))
                          (if (and (let ((__tmp172707
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self166404%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L166714%_
                                      __tmp172707))
                                   (let ((__tmp172708
                                          (let ((__tmp172709
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%L166715%_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp172709))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp172708
                                      'gxc#!mutator::t)))
                              (_%__kont172064172065%_
                               _%L166713%_
                               _%L166714%_
                               _%L166715%_)
                              (_%__kont172066172067%_)))))
                     (_%__match172545172546%_
                      (lambda (_%e166611166649%_
                               _%hd166610166652%_
                               _%tl166609166654%_
                               _%e166614166657%_
                               _%hd166613166660%_
                               _%tl166612166662%_
                               _%e166617166665%_
                               _%hd166616166668%_
                               _%tl166615166670%_
                               _%e166620166673%_
                               _%hd166619166676%_
                               _%tl166618166678%_
                               _%e166623166681%_
                               _%hd166622166684%_
                               _%tl166621166686%_
                               _%e166626166689%_
                               _%hd166625166692%_
                               _%tl166624166694%_
                               _%e166629166697%_
                               _%hd166628166700%_
                               _%tl166627166702%_
                               _%e166632166705%_
                               _%hd166631166708%_
                               _%tl166630166710%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl166630166710%_))
                            (_%__match172547172548%_
                             _%e166611166649%_
                             _%hd166610166652%_
                             _%tl166609166654%_
                             _%e166614166657%_
                             _%hd166613166660%_
                             _%tl166612166662%_
                             _%e166617166665%_
                             _%hd166616166668%_
                             _%tl166615166670%_
                             _%e166620166673%_
                             _%hd166619166676%_
                             _%tl166618166678%_
                             _%e166623166681%_
                             _%hd166622166684%_
                             _%tl166621166686%_
                             _%e166626166689%_
                             _%hd166625166692%_
                             _%tl166624166694%_
                             _%e166629166697%_
                             _%hd166628166700%_
                             _%tl166627166702%_
                             _%e166632166705%_
                             _%hd166631166708%_
                             _%tl166630166710%_)
                            (_%__kont172066172067%_))))
                     (_%__match172539172540%_
                      (lambda (_%e166611166649%_
                               _%hd166610166652%_
                               _%tl166609166654%_
                               _%e166614166657%_
                               _%hd166613166660%_
                               _%tl166612166662%_
                               _%e166617166665%_
                               _%hd166616166668%_
                               _%tl166615166670%_
                               _%e166620166673%_
                               _%hd166619166676%_
                               _%tl166618166678%_
                               _%e166623166681%_
                               _%hd166622166684%_
                               _%tl166621166686%_
                               _%e166626166689%_
                               _%hd166625166692%_
                               _%tl166624166694%_
                               _%e166629166697%_
                               _%hd166628166700%_
                               _%tl166627166702%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl166621166686%_))
                            (let ((_%e166632166705%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl166621166686%_))))
                              (let ((_%tl166630166710%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e166632166705%_)))
                                    (_%hd166631166708%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e166632166705%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl166630166710%_))
                                    (_%__match172547172548%_
                                     _%e166611166649%_
                                     _%hd166610166652%_
                                     _%tl166609166654%_
                                     _%e166614166657%_
                                     _%hd166613166660%_
                                     _%tl166612166662%_
                                     _%e166617166665%_
                                     _%hd166616166668%_
                                     _%tl166615166670%_
                                     _%e166620166673%_
                                     _%hd166619166676%_
                                     _%tl166618166678%_
                                     _%e166623166681%_
                                     _%hd166622166684%_
                                     _%tl166621166686%_
                                     _%e166626166689%_
                                     _%hd166625166692%_
                                     _%tl166624166694%_
                                     _%e166629166697%_
                                     _%hd166628166700%_
                                     _%tl166627166702%_
                                     _%e166632166705%_
                                     _%hd166631166708%_
                                     _%tl166630166710%_)
                                    (_%__kont172066172067%_))))
                            (_%__kont172066172067%_))))
                     (_%__match172485172486%_
                      (lambda (_%e166587166762%_
                               _%hd166586166765%_
                               _%tl166585166767%_
                               _%e166590166770%_
                               _%hd166589166773%_
                               _%tl166588166775%_
                               _%e166593166778%_
                               _%hd166592166781%_
                               _%tl166591166783%_
                               _%e166596166786%_
                               _%hd166595166789%_
                               _%tl166594166791%_
                               _%e166599166794%_
                               _%hd166598166797%_
                               _%tl166597166799%_
                               _%e166602166802%_
                               _%hd166601166805%_
                               _%tl166600166807%_
                               _%e166605166810%_
                               _%hd166604166813%_
                               _%tl166603166815%_)
                        (let ((_%L166818%_ _%hd166604166813%_)
                              (_%L166819%_ _%hd166595166789%_))
                          (if (and (let ((__tmp172710
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self166404%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L166818%_
                                      __tmp172710))
                                   (let ((__tmp172711
                                          (let ((__tmp172712
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%L166819%_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp172712))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp172711
                                      'gxc#!accessor::t)))
                              (_%__kont172062172063%_ _%L166818%_ _%L166819%_)
                              (_%__kont172066172067%_)))))
                     (_%__match172483172484%_
                      (lambda (_%e166587166762%_
                               _%hd166586166765%_
                               _%tl166585166767%_
                               _%e166590166770%_
                               _%hd166589166773%_
                               _%tl166588166775%_
                               _%e166593166778%_
                               _%hd166592166781%_
                               _%tl166591166783%_
                               _%e166596166786%_
                               _%hd166595166789%_
                               _%tl166594166791%_
                               _%e166599166794%_
                               _%hd166598166797%_
                               _%tl166597166799%_
                               _%e166602166802%_
                               _%hd166601166805%_
                               _%tl166600166807%_
                               _%e166605166810%_
                               _%hd166604166813%_
                               _%tl166603166815%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl166597166799%_))
                            (_%__match172485172486%_
                             _%e166587166762%_
                             _%hd166586166765%_
                             _%tl166585166767%_
                             _%e166590166770%_
                             _%hd166589166773%_
                             _%tl166588166775%_
                             _%e166593166778%_
                             _%hd166592166781%_
                             _%tl166591166783%_
                             _%e166596166786%_
                             _%hd166595166789%_
                             _%tl166594166791%_
                             _%e166599166794%_
                             _%hd166598166797%_
                             _%tl166597166799%_
                             _%e166602166802%_
                             _%hd166601166805%_
                             _%tl166600166807%_
                             _%e166605166810%_
                             _%hd166604166813%_
                             _%tl166603166815%_)
                            (_%__match172539172540%_
                             _%e166587166762%_
                             _%hd166586166765%_
                             _%tl166585166767%_
                             _%e166590166770%_
                             _%hd166589166773%_
                             _%tl166588166775%_
                             _%e166593166778%_
                             _%hd166592166781%_
                             _%tl166591166783%_
                             _%e166596166786%_
                             _%hd166595166789%_
                             _%tl166594166791%_
                             _%e166599166794%_
                             _%hd166598166797%_
                             _%tl166597166799%_
                             _%e166602166802%_
                             _%hd166601166805%_
                             _%tl166600166807%_
                             _%e166605166810%_
                             _%hd166604166813%_
                             _%tl166603166815%_))))
                     (_%__match172429172430%_
                      (lambda (_%e166552166858%_
                               _%hd166551166861%_
                               _%tl166550166863%_
                               _%e166555166866%_
                               _%hd166554166869%_
                               _%tl166553166871%_
                               _%e166558166874%_
                               _%hd166557166877%_
                               _%tl166556166879%_
                               _%e166561166882%_
                               _%hd166560166885%_
                               _%tl166559166887%_
                               _%e166564166890%_
                               _%hd166563166893%_
                               _%tl166562166895%_
                               _%e166567166898%_
                               _%hd166566166901%_
                               _%tl166565166903%_
                               _%e166570166906%_
                               _%hd166569166909%_
                               _%tl166568166911%_
                               _%e166573166914%_
                               _%hd166572166917%_
                               _%tl166571166919%_
                               _%e166576166922%_
                               _%hd166575166925%_
                               _%tl166574166927%_
                               _%e166579166930%_
                               _%hd166578166933%_
                               _%tl166577166935%_
                               _%e166582166938%_
                               _%hd166581166941%_
                               _%tl166580166943%_)
                        (let ((_%L166946%_ _%hd166581166941%_)
                              (_%L166947%_ _%hd166578166933%_)
                              (_%L166948%_ _%hd166569166909%_)
                              (_%L166949%_ _%hd166560166885%_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L166949%_
                                          'slot-set!))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L166949%_
                                          'unchecked-slot-set!)))
                                   (let ((__tmp172713
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self166404%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L166948%_
                                      __tmp172713)))
                              (_%__kont172060172061%_
                               _%L166946%_
                               _%L166947%_
                               _%L166948%_
                               _%L166949%_)
                              (_%__kont172066172067%_)))))
                     (_%__match172421172422%_
                      (lambda (_%e166552166858%_
                               _%hd166551166861%_
                               _%tl166550166863%_
                               _%e166555166866%_
                               _%hd166554166869%_
                               _%tl166553166871%_
                               _%e166558166874%_
                               _%hd166557166877%_
                               _%tl166556166879%_
                               _%e166561166882%_
                               _%hd166560166885%_
                               _%tl166559166887%_
                               _%e166564166890%_
                               _%hd166563166893%_
                               _%tl166562166895%_
                               _%e166567166898%_
                               _%hd166566166901%_
                               _%tl166565166903%_
                               _%e166570166906%_
                               _%hd166569166909%_
                               _%tl166568166911%_
                               _%e166573166914%_
                               _%hd166572166917%_
                               _%tl166571166919%_
                               _%e166576166922%_
                               _%hd166575166925%_
                               _%tl166574166927%_
                               _%e166579166930%_
                               _%hd166578166933%_
                               _%tl166577166935%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl166571166919%_))
                            (let ((_%e166582166938%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl166571166919%_))))
                              (let ((_%tl166580166943%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e166582166938%_)))
                                    (_%hd166581166941%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e166582166938%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl166580166943%_))
                                    (_%__match172429172430%_
                                     _%e166552166858%_
                                     _%hd166551166861%_
                                     _%tl166550166863%_
                                     _%e166555166866%_
                                     _%hd166554166869%_
                                     _%tl166553166871%_
                                     _%e166558166874%_
                                     _%hd166557166877%_
                                     _%tl166556166879%_
                                     _%e166561166882%_
                                     _%hd166560166885%_
                                     _%tl166559166887%_
                                     _%e166564166890%_
                                     _%hd166563166893%_
                                     _%tl166562166895%_
                                     _%e166567166898%_
                                     _%hd166566166901%_
                                     _%tl166565166903%_
                                     _%e166570166906%_
                                     _%hd166569166909%_
                                     _%tl166568166911%_
                                     _%e166573166914%_
                                     _%hd166572166917%_
                                     _%tl166571166919%_
                                     _%e166576166922%_
                                     _%hd166575166925%_
                                     _%tl166574166927%_
                                     _%e166579166930%_
                                     _%hd166578166933%_
                                     _%tl166577166935%_
                                     _%e166582166938%_
                                     _%hd166581166941%_
                                     _%tl166580166943%_)
                                    (_%__kont172066172067%_))))
                            (_%__match172545172546%_
                             _%e166552166858%_
                             _%hd166551166861%_
                             _%tl166550166863%_
                             _%e166555166866%_
                             _%hd166554166869%_
                             _%tl166553166871%_
                             _%e166558166874%_
                             _%hd166557166877%_
                             _%tl166556166879%_
                             _%e166561166882%_
                             _%hd166560166885%_
                             _%tl166559166887%_
                             _%e166564166890%_
                             _%hd166563166893%_
                             _%tl166562166895%_
                             _%e166567166898%_
                             _%hd166566166901%_
                             _%tl166565166903%_
                             _%e166570166906%_
                             _%hd166569166909%_
                             _%tl166568166911%_
                             _%e166573166914%_
                             _%hd166572166917%_
                             _%tl166571166919%_))))
                     (_%__match172343172344%_
                      (lambda (_%e166518166992%_
                               _%hd166517166995%_
                               _%tl166516166997%_
                               _%e166521167000%_
                               _%hd166520167003%_
                               _%tl166519167005%_
                               _%e166524167008%_
                               _%hd166523167011%_
                               _%tl166522167013%_
                               _%e166527167016%_
                               _%hd166526167019%_
                               _%tl166525167021%_
                               _%e166530167024%_
                               _%hd166529167027%_
                               _%tl166528167029%_
                               _%e166533167032%_
                               _%hd166532167035%_
                               _%tl166531167037%_
                               _%e166536167040%_
                               _%hd166535167043%_
                               _%tl166534167045%_
                               _%e166539167048%_
                               _%hd166538167051%_
                               _%tl166537167053%_
                               _%e166542167056%_
                               _%hd166541167059%_
                               _%tl166540167061%_
                               _%e166545167064%_
                               _%hd166544167067%_
                               _%tl166543167069%_)
                        (let ((_%L167072%_ _%hd166544167067%_)
                              (_%L167073%_ _%hd166535167043%_)
                              (_%L167074%_ _%hd166526167019%_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L167074%_
                                          'slot-ref))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L167074%_
                                          'unchecked-slot-ref)))
                                   (let ((__tmp172714
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self166404%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L167073%_
                                      __tmp172714)))
                              (_%__kont172058172059%_
                               _%L167072%_
                               _%L167073%_
                               _%L167074%_)
                              (_%__match172547172548%_
                               _%e166518166992%_
                               _%hd166517166995%_
                               _%tl166516166997%_
                               _%e166521167000%_
                               _%hd166520167003%_
                               _%tl166519167005%_
                               _%e166524167008%_
                               _%hd166523167011%_
                               _%tl166522167013%_
                               _%e166527167016%_
                               _%hd166526167019%_
                               _%tl166525167021%_
                               _%e166530167024%_
                               _%hd166529167027%_
                               _%tl166528167029%_
                               _%e166533167032%_
                               _%hd166532167035%_
                               _%tl166531167037%_
                               _%e166536167040%_
                               _%hd166535167043%_
                               _%tl166534167045%_
                               _%e166539167048%_
                               _%hd166538167051%_
                               _%tl166537167053%_)))))
                     (_%__match172341172342%_
                      (lambda (_%e166518166992%_
                               _%hd166517166995%_
                               _%tl166516166997%_
                               _%e166521167000%_
                               _%hd166520167003%_
                               _%tl166519167005%_
                               _%e166524167008%_
                               _%hd166523167011%_
                               _%tl166522167013%_
                               _%e166527167016%_
                               _%hd166526167019%_
                               _%tl166525167021%_
                               _%e166530167024%_
                               _%hd166529167027%_
                               _%tl166528167029%_
                               _%e166533167032%_
                               _%hd166532167035%_
                               _%tl166531167037%_
                               _%e166536167040%_
                               _%hd166535167043%_
                               _%tl166534167045%_
                               _%e166539167048%_
                               _%hd166538167051%_
                               _%tl166537167053%_
                               _%e166542167056%_
                               _%hd166541167059%_
                               _%tl166540167061%_
                               _%e166545167064%_
                               _%hd166544167067%_
                               _%tl166543167069%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl166537167053%_))
                            (_%__match172343172344%_
                             _%e166518166992%_
                             _%hd166517166995%_
                             _%tl166516166997%_
                             _%e166521167000%_
                             _%hd166520167003%_
                             _%tl166519167005%_
                             _%e166524167008%_
                             _%hd166523167011%_
                             _%tl166522167013%_
                             _%e166527167016%_
                             _%hd166526167019%_
                             _%tl166525167021%_
                             _%e166530167024%_
                             _%hd166529167027%_
                             _%tl166528167029%_
                             _%e166533167032%_
                             _%hd166532167035%_
                             _%tl166531167037%_
                             _%e166536167040%_
                             _%hd166535167043%_
                             _%tl166534167045%_
                             _%e166539167048%_
                             _%hd166538167051%_
                             _%tl166537167053%_
                             _%e166542167056%_
                             _%hd166541167059%_
                             _%tl166540167061%_
                             _%e166545167064%_
                             _%hd166544167067%_
                             _%tl166543167069%_)
                            (_%__match172421172422%_
                             _%e166518166992%_
                             _%hd166517166995%_
                             _%tl166516166997%_
                             _%e166521167000%_
                             _%hd166520167003%_
                             _%tl166519167005%_
                             _%e166524167008%_
                             _%hd166523167011%_
                             _%tl166522167013%_
                             _%e166527167016%_
                             _%hd166526167019%_
                             _%tl166525167021%_
                             _%e166530167024%_
                             _%hd166529167027%_
                             _%tl166528167029%_
                             _%e166533167032%_
                             _%hd166532167035%_
                             _%tl166531167037%_
                             _%e166536167040%_
                             _%hd166535167043%_
                             _%tl166534167045%_
                             _%e166539167048%_
                             _%hd166538167051%_
                             _%tl166537167053%_
                             _%e166542167056%_
                             _%hd166541167059%_
                             _%tl166540167061%_
                             _%e166545167064%_
                             _%hd166544167067%_
                             _%tl166543167069%_))))
                     (_%__match172331172332%_
                      (lambda (_%e166518166992%_
                               _%hd166517166995%_
                               _%tl166516166997%_
                               _%e166521167000%_
                               _%hd166520167003%_
                               _%tl166519167005%_
                               _%e166524167008%_
                               _%hd166523167011%_
                               _%tl166522167013%_
                               _%e166527167016%_
                               _%hd166526167019%_
                               _%tl166525167021%_
                               _%e166530167024%_
                               _%hd166529167027%_
                               _%tl166528167029%_
                               _%e166533167032%_
                               _%hd166532167035%_
                               _%tl166531167037%_
                               _%e166536167040%_
                               _%hd166535167043%_
                               _%tl166534167045%_
                               _%e166539167048%_
                               _%hd166538167051%_
                               _%tl166537167053%_
                               _%e166542167056%_
                               _%hd166541167059%_
                               _%tl166540167061%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#quote _%hd166541167059%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl166540167061%_))
                                (let ((_%e166545167064%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl166540167061%_))))
                                  (let ((_%tl166543167069%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e166545167064%_)))
                                        (_%hd166544167067%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e166545167064%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl166543167069%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl166537167053%_))
                                            (_%__match172343172344%_
                                             _%e166518166992%_
                                             _%hd166517166995%_
                                             _%tl166516166997%_
                                             _%e166521167000%_
                                             _%hd166520167003%_
                                             _%tl166519167005%_
                                             _%e166524167008%_
                                             _%hd166523167011%_
                                             _%tl166522167013%_
                                             _%e166527167016%_
                                             _%hd166526167019%_
                                             _%tl166525167021%_
                                             _%e166530167024%_
                                             _%hd166529167027%_
                                             _%tl166528167029%_
                                             _%e166533167032%_
                                             _%hd166532167035%_
                                             _%tl166531167037%_
                                             _%e166536167040%_
                                             _%hd166535167043%_
                                             _%tl166534167045%_
                                             _%e166539167048%_
                                             _%hd166538167051%_
                                             _%tl166537167053%_
                                             _%e166542167056%_
                                             _%hd166541167059%_
                                             _%tl166540167061%_
                                             _%e166545167064%_
                                             _%hd166544167067%_
                                             _%tl166543167069%_)
                                            (_%__match172421172422%_
                                             _%e166518166992%_
                                             _%hd166517166995%_
                                             _%tl166516166997%_
                                             _%e166521167000%_
                                             _%hd166520167003%_
                                             _%tl166519167005%_
                                             _%e166524167008%_
                                             _%hd166523167011%_
                                             _%tl166522167013%_
                                             _%e166527167016%_
                                             _%hd166526167019%_
                                             _%tl166525167021%_
                                             _%e166530167024%_
                                             _%hd166529167027%_
                                             _%tl166528167029%_
                                             _%e166533167032%_
                                             _%hd166532167035%_
                                             _%tl166531167037%_
                                             _%e166536167040%_
                                             _%hd166535167043%_
                                             _%tl166534167045%_
                                             _%e166539167048%_
                                             _%hd166538167051%_
                                             _%tl166537167053%_
                                             _%e166542167056%_
                                             _%hd166541167059%_
                                             _%tl166540167061%_
                                             _%e166545167064%_
                                             _%hd166544167067%_
                                             _%tl166543167069%_))
                                        (_%__match172545172546%_
                                         _%e166518166992%_
                                         _%hd166517166995%_
                                         _%tl166516166997%_
                                         _%e166521167000%_
                                         _%hd166520167003%_
                                         _%tl166519167005%_
                                         _%e166524167008%_
                                         _%hd166523167011%_
                                         _%tl166522167013%_
                                         _%e166527167016%_
                                         _%hd166526167019%_
                                         _%tl166525167021%_
                                         _%e166530167024%_
                                         _%hd166529167027%_
                                         _%tl166528167029%_
                                         _%e166533167032%_
                                         _%hd166532167035%_
                                         _%tl166531167037%_
                                         _%e166536167040%_
                                         _%hd166535167043%_
                                         _%tl166534167045%_
                                         _%e166539167048%_
                                         _%hd166538167051%_
                                         _%tl166537167053%_))))
                                (_%__match172545172546%_
                                 _%e166518166992%_
                                 _%hd166517166995%_
                                 _%tl166516166997%_
                                 _%e166521167000%_
                                 _%hd166520167003%_
                                 _%tl166519167005%_
                                 _%e166524167008%_
                                 _%hd166523167011%_
                                 _%tl166522167013%_
                                 _%e166527167016%_
                                 _%hd166526167019%_
                                 _%tl166525167021%_
                                 _%e166530167024%_
                                 _%hd166529167027%_
                                 _%tl166528167029%_
                                 _%e166533167032%_
                                 _%hd166532167035%_
                                 _%tl166531167037%_
                                 _%e166536167040%_
                                 _%hd166535167043%_
                                 _%tl166534167045%_
                                 _%e166539167048%_
                                 _%hd166538167051%_
                                 _%tl166537167053%_))
                            (_%__match172545172546%_
                             _%e166518166992%_
                             _%hd166517166995%_
                             _%tl166516166997%_
                             _%e166521167000%_
                             _%hd166520167003%_
                             _%tl166519167005%_
                             _%e166524167008%_
                             _%hd166523167011%_
                             _%tl166522167013%_
                             _%e166527167016%_
                             _%hd166526167019%_
                             _%tl166525167021%_
                             _%e166530167024%_
                             _%hd166529167027%_
                             _%tl166528167029%_
                             _%e166533167032%_
                             _%hd166532167035%_
                             _%tl166531167037%_
                             _%e166536167040%_
                             _%hd166535167043%_
                             _%tl166534167045%_
                             _%e166539167048%_
                             _%hd166538167051%_
                             _%tl166537167053%_))))
                     (_%__match172263172264%_
                      (lambda (_%e166467167113%_
                               _%hd166466167116%_
                               _%tl166465167118%_
                               _%e166470167121%_
                               _%hd166469167124%_
                               _%tl166468167126%_
                               _%e166473167129%_
                               _%hd166472167132%_
                               _%tl166471167134%_
                               _%e166476167137%_
                               _%hd166475167140%_
                               _%tl166474167142%_
                               _%e166479167145%_
                               _%hd166478167148%_
                               _%tl166477167150%_
                               _%e166482167153%_
                               _%hd166481167156%_
                               _%tl166480167158%_
                               _%e166485167161%_
                               _%hd166484167164%_
                               _%tl166483167166%_
                               _%e166488167169%_
                               _%hd166487167172%_
                               _%tl166486167174%_
                               _%e166491167177%_
                               _%hd166490167180%_
                               _%tl166489167182%_
                               _%e166494167185%_
                               _%hd166493167188%_
                               _%tl166492167190%_
                               _%e166497167193%_
                               _%hd166496167196%_
                               _%tl166495167198%_
                               _%e166500167201%_
                               _%hd166499167204%_
                               _%tl166498167206%_
                               _%e166503167209%_
                               _%hd166502167212%_
                               _%tl166501167214%_
                               _%__splice172056172057%_
                               _%target166504167217%_
                               _%tl166506167219%_)
                        (letrec ((_%loop166507167222%_
                                  (lambda (_%hd166505167225%_
                                           _%args166511167227%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd166505167225%_))
                                        (let ((_%e166508167230%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd166505167225%_))))
                                          (let ((_%lp-tl166510167235%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e166508167230%_)))
                                                (_%lp-hd166509167233%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e166508167230%_))))
                                            (let ((__tmp172715
                                                   (cons _%lp-hd166509167233%_
                                                         _%args166511167227%_)))
                                              (declare (not safe))
                                              (_%loop166507167222%_
                                               _%lp-tl166510167235%_
                                               __tmp172715))))
                                        (let ((_%args166512167238%_
                                               (reverse _%args166511167227%_)))
                                          (let ((_%L167241%_
                                                 _%args166512167238%_)
                                                (_%L167242%_
                                                 _%hd166502167212%_)
                                                (_%L167243%_
                                                 _%hd166493167188%_)
                                                (_%L167244%_
                                                 _%hd166484167164%_)
                                                (_%L167245%_
                                                 _%hd166475167140%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%L167245%_
                                                        'apply))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%L167244%_
                                                        'call-method))
                                                     (let ((__tmp172716
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self166404%_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _%L167243%_
                                                        __tmp172716)))
                                                (_%__kont172054172055%_
                                                 _%L167241%_
                                                 _%L167242%_
                                                 _%L167243%_
                                                 _%L167244%_
                                                 _%L167245%_)
                                                (_%__kont172066172067%_))))))))
                          (let ()
                            (declare (not safe))
                            (_%loop166507167222%_
                             _%target166504167217%_
                             '())))))
                     (_%__match172221172222%_
                      (lambda (_%e166467167113%_
                               _%hd166466167116%_
                               _%tl166465167118%_
                               _%e166470167121%_
                               _%hd166469167124%_
                               _%tl166468167126%_
                               _%e166473167129%_
                               _%hd166472167132%_
                               _%tl166471167134%_
                               _%e166476167137%_
                               _%hd166475167140%_
                               _%tl166474167142%_
                               _%e166479167145%_
                               _%hd166478167148%_
                               _%tl166477167150%_
                               _%e166482167153%_
                               _%hd166481167156%_
                               _%tl166480167158%_
                               _%e166485167161%_
                               _%hd166484167164%_
                               _%tl166483167166%_
                               _%e166488167169%_
                               _%hd166487167172%_
                               _%tl166486167174%_
                               _%e166491167177%_
                               _%hd166490167180%_
                               _%tl166489167182%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _%hd166490167180%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl166489167182%_))
                                (let ((_%e166494167185%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl166489167182%_))))
                                  (let ((_%tl166492167190%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e166494167185%_)))
                                        (_%hd166493167188%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e166494167185%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl166492167190%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl166486167174%_))
                                            (let ((_%e166497167193%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl166486167174%_))))
                                              (let ((_%tl166495167198%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e166497167193%_)))
                                                    (_%hd166496167196%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e166497167193%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%hd166496167196%_))
                                                    (let ((_%e166500167201%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd166496167196%_))))
                                                      (let ((_%tl166498167206%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e166500167201%_)))
                    (_%hd166499167204%_
                     (let () (declare (not safe)) (##car _%e166500167201%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _%hd166499167204%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _%hd166499167204%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl166498167206%_))
                            (let ((_%e166503167209%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl166498167206%_))))
                              (let ((_%tl166501167214%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e166503167209%_)))
                                    (_%hd166502167212%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e166503167209%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl166501167214%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl166495167198%_))
                                        (let ((_%__splice172056172057%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl166495167198%_
                                                  '0))))
                                          (let ((_%tl166506167219%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice172056172057%_
                                                    '1)))
                                                (_%target166504167217%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice172056172057%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl166506167219%_))
                                                (_%__match172263172264%_
                                                 _%e166467167113%_
                                                 _%hd166466167116%_
                                                 _%tl166465167118%_
                                                 _%e166470167121%_
                                                 _%hd166469167124%_
                                                 _%tl166468167126%_
                                                 _%e166473167129%_
                                                 _%hd166472167132%_
                                                 _%tl166471167134%_
                                                 _%e166476167137%_
                                                 _%hd166475167140%_
                                                 _%tl166474167142%_
                                                 _%e166479167145%_
                                                 _%hd166478167148%_
                                                 _%tl166477167150%_
                                                 _%e166482167153%_
                                                 _%hd166481167156%_
                                                 _%tl166480167158%_
                                                 _%e166485167161%_
                                                 _%hd166484167164%_
                                                 _%tl166483167166%_
                                                 _%e166488167169%_
                                                 _%hd166487167172%_
                                                 _%tl166486167174%_
                                                 _%e166491167177%_
                                                 _%hd166490167180%_
                                                 _%tl166489167182%_
                                                 _%e166494167185%_
                                                 _%hd166493167188%_
                                                 _%tl166492167190%_
                                                 _%e166497167193%_
                                                 _%hd166496167196%_
                                                 _%tl166495167198%_
                                                 _%e166500167201%_
                                                 _%hd166499167204%_
                                                 _%tl166498167206%_
                                                 _%e166503167209%_
                                                 _%hd166502167212%_
                                                 _%tl166501167214%_
                                                 _%__splice172056172057%_
                                                 _%target166504167217%_
                                                 _%tl166506167219%_)
                                                (_%__kont172066172067%_))))
                                        (_%__kont172066172067%_))
                                    (_%__kont172066172067%_))))
                            (_%__kont172066172067%_))
                        (_%__kont172066172067%_))
                    (_%__kont172066172067%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont172066172067%_))))
                                            (_%__match172545172546%_
                                             _%e166467167113%_
                                             _%hd166466167116%_
                                             _%tl166465167118%_
                                             _%e166470167121%_
                                             _%hd166469167124%_
                                             _%tl166468167126%_
                                             _%e166473167129%_
                                             _%hd166472167132%_
                                             _%tl166471167134%_
                                             _%e166476167137%_
                                             _%hd166475167140%_
                                             _%tl166474167142%_
                                             _%e166479167145%_
                                             _%hd166478167148%_
                                             _%tl166477167150%_
                                             _%e166482167153%_
                                             _%hd166481167156%_
                                             _%tl166480167158%_
                                             _%e166485167161%_
                                             _%hd166484167164%_
                                             _%tl166483167166%_
                                             _%e166488167169%_
                                             _%hd166487167172%_
                                             _%tl166486167174%_))
                                        (_%__match172545172546%_
                                         _%e166467167113%_
                                         _%hd166466167116%_
                                         _%tl166465167118%_
                                         _%e166470167121%_
                                         _%hd166469167124%_
                                         _%tl166468167126%_
                                         _%e166473167129%_
                                         _%hd166472167132%_
                                         _%tl166471167134%_
                                         _%e166476167137%_
                                         _%hd166475167140%_
                                         _%tl166474167142%_
                                         _%e166479167145%_
                                         _%hd166478167148%_
                                         _%tl166477167150%_
                                         _%e166482167153%_
                                         _%hd166481167156%_
                                         _%tl166480167158%_
                                         _%e166485167161%_
                                         _%hd166484167164%_
                                         _%tl166483167166%_
                                         _%e166488167169%_
                                         _%hd166487167172%_
                                         _%tl166486167174%_))))
                                (_%__match172545172546%_
                                 _%e166467167113%_
                                 _%hd166466167116%_
                                 _%tl166465167118%_
                                 _%e166470167121%_
                                 _%hd166469167124%_
                                 _%tl166468167126%_
                                 _%e166473167129%_
                                 _%hd166472167132%_
                                 _%tl166471167134%_
                                 _%e166476167137%_
                                 _%hd166475167140%_
                                 _%tl166474167142%_
                                 _%e166479167145%_
                                 _%hd166478167148%_
                                 _%tl166477167150%_
                                 _%e166482167153%_
                                 _%hd166481167156%_
                                 _%tl166480167158%_
                                 _%e166485167161%_
                                 _%hd166484167164%_
                                 _%tl166483167166%_
                                 _%e166488167169%_
                                 _%hd166487167172%_
                                 _%tl166486167174%_))
                            (_%__match172331172332%_
                             _%e166467167113%_
                             _%hd166466167116%_
                             _%tl166465167118%_
                             _%e166470167121%_
                             _%hd166469167124%_
                             _%tl166468167126%_
                             _%e166473167129%_
                             _%hd166472167132%_
                             _%tl166471167134%_
                             _%e166476167137%_
                             _%hd166475167140%_
                             _%tl166474167142%_
                             _%e166479167145%_
                             _%hd166478167148%_
                             _%tl166477167150%_
                             _%e166482167153%_
                             _%hd166481167156%_
                             _%tl166480167158%_
                             _%e166485167161%_
                             _%hd166484167164%_
                             _%tl166483167166%_
                             _%e166488167169%_
                             _%hd166487167172%_
                             _%tl166486167174%_
                             _%e166491167177%_
                             _%hd166490167180%_
                             _%tl166489167182%_))))
                     (_%__match172153172154%_
                      (lambda (_%e166423167305%_
                               _%hd166422167308%_
                               _%tl166421167310%_
                               _%e166426167313%_
                               _%hd166425167316%_
                               _%tl166424167318%_
                               _%e166429167321%_
                               _%hd166428167324%_
                               _%tl166427167326%_
                               _%e166432167329%_
                               _%hd166431167332%_
                               _%tl166430167334%_
                               _%e166435167337%_
                               _%hd166434167340%_
                               _%tl166433167342%_
                               _%e166438167345%_
                               _%hd166437167348%_
                               _%tl166436167350%_
                               _%e166441167353%_
                               _%hd166440167356%_
                               _%tl166439167358%_
                               _%e166444167361%_
                               _%hd166443167364%_
                               _%tl166442167366%_
                               _%e166447167369%_
                               _%hd166446167372%_
                               _%tl166445167374%_
                               _%e166450167377%_
                               _%hd166449167380%_
                               _%tl166448167382%_
                               _%__splice172052172053%_
                               _%target166451167385%_
                               _%tl166453167387%_)
                        (letrec ((_%loop166454167390%_
                                  (lambda (_%hd166452167393%_
                                           _%args166458167395%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd166452167393%_))
                                        (let ((_%e166455167398%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd166452167393%_))))
                                          (let ((_%lp-tl166457167403%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e166455167398%_)))
                                                (_%lp-hd166456167401%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e166455167398%_))))
                                            (let ((__tmp172717
                                                   (cons _%lp-hd166456167401%_
                                                         _%args166458167395%_)))
                                              (declare (not safe))
                                              (_%loop166454167390%_
                                               _%lp-tl166457167403%_
                                               __tmp172717))))
                                        (let ((_%args166459167406%_
                                               (reverse _%args166458167395%_)))
                                          (let ((_%L167409%_
                                                 _%args166459167406%_)
                                                (_%L167410%_
                                                 _%hd166449167380%_)
                                                (_%L167411%_
                                                 _%hd166440167356%_)
                                                (_%L167412%_
                                                 _%hd166431167332%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%L167412%_
                                                        'call-method))
                                                     (let ((__tmp172718
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self166404%_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _%L167411%_
                                                        __tmp172718)))
                                                (_%__kont172050172051%_
                                                 _%L167409%_
                                                 _%L167410%_
                                                 _%L167411%_
                                                 _%L167412%_)
                                                (_%__match172341172342%_
                                                 _%e166423167305%_
                                                 _%hd166422167308%_
                                                 _%tl166421167310%_
                                                 _%e166426167313%_
                                                 _%hd166425167316%_
                                                 _%tl166424167318%_
                                                 _%e166429167321%_
                                                 _%hd166428167324%_
                                                 _%tl166427167326%_
                                                 _%e166432167329%_
                                                 _%hd166431167332%_
                                                 _%tl166430167334%_
                                                 _%e166435167337%_
                                                 _%hd166434167340%_
                                                 _%tl166433167342%_
                                                 _%e166438167345%_
                                                 _%hd166437167348%_
                                                 _%tl166436167350%_
                                                 _%e166441167353%_
                                                 _%hd166440167356%_
                                                 _%tl166439167358%_
                                                 _%e166444167361%_
                                                 _%hd166443167364%_
                                                 _%tl166442167366%_
                                                 _%e166447167369%_
                                                 _%hd166446167372%_
                                                 _%tl166445167374%_
                                                 _%e166450167377%_
                                                 _%hd166449167380%_
                                                 _%tl166448167382%_))))))))
                          (let ()
                            (declare (not safe))
                            (_%loop166454167390%_
                             _%target166451167385%_
                             '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx172048172049%_))
                    (let ((_%e166423167305%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx172048172049%_))))
                      (let ((_%tl166421167310%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e166423167305%_)))
                            (_%hd166422167308%_
                             (let ()
                               (declare (not safe))
                               (##car _%e166423167305%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl166421167310%_))
                            (let ((_%e166426167313%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl166421167310%_))))
                              (let ((_%tl166424167318%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e166426167313%_)))
                                    (_%hd166425167316%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e166426167313%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd166425167316%_))
                                    (let ((_%e166429167321%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd166425167316%_))))
                                      (let ((_%tl166427167326%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e166429167321%_)))
                                            (_%hd166428167324%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e166429167321%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _%hd166428167324%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _%hd166428167324%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl166427167326%_))
                                                    (let ((_%e166432167329%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl166427167326%_))))
                                                      (let ((_%tl166430167334%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e166432167329%_)))
                    (_%hd166431167332%_
                     (let () (declare (not safe)) (##car _%e166432167329%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl166430167334%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl166424167318%_))
                        (let ((_%e166435167337%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl166424167318%_))))
                          (let ((_%tl166433167342%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e166435167337%_)))
                                (_%hd166434167340%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e166435167337%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd166434167340%_))
                                (let ((_%e166438167345%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd166434167340%_))))
                                  (let ((_%tl166436167350%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e166438167345%_)))
                                        (_%hd166437167348%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e166438167345%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd166437167348%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _%hd166437167348%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl166436167350%_))
                                                (let ((_%e166441167353%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl166436167350%_))))
                                                  (let ((_%tl166439167358%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e166441167353%_)))
                                                        (_%hd166440167356%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e166441167353%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl166439167358%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl166433167342%_))
                                                            (let ((_%e166444167361%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl166433167342%_))))
                      (let ((_%tl166442167366%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e166444167361%_)))
                            (_%hd166443167364%_
                             (let ()
                               (declare (not safe))
                               (##car _%e166444167361%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd166443167364%_))
                            (let ((_%e166447167369%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd166443167364%_))))
                              (let ((_%tl166445167374%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e166447167369%_)))
                                    (_%hd166446167372%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e166447167369%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd166446167372%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd166446167372%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl166445167374%_))
                                            (let ((_%e166450167377%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl166445167374%_))))
                                              (let ((_%tl166448167382%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e166450167377%_)))
                                                    (_%hd166449167380%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e166450167377%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl166448167382%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair/null?
                                                           _%tl166442167366%_))
                                                        (let ((_%__splice172052172053%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-split-splice _%tl166442167366%_ '0))))
                  (let ((_%tl166453167387%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice172052172053%_ '1)))
                        (_%target166451167385%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice172052172053%_ '0))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl166453167387%_))
                        (_%__match172153172154%_
                         _%e166423167305%_
                         _%hd166422167308%_
                         _%tl166421167310%_
                         _%e166426167313%_
                         _%hd166425167316%_
                         _%tl166424167318%_
                         _%e166429167321%_
                         _%hd166428167324%_
                         _%tl166427167326%_
                         _%e166432167329%_
                         _%hd166431167332%_
                         _%tl166430167334%_
                         _%e166435167337%_
                         _%hd166434167340%_
                         _%tl166433167342%_
                         _%e166438167345%_
                         _%hd166437167348%_
                         _%tl166436167350%_
                         _%e166441167353%_
                         _%hd166440167356%_
                         _%tl166439167358%_
                         _%e166444167361%_
                         _%hd166443167364%_
                         _%tl166442167366%_
                         _%e166447167369%_
                         _%hd166446167372%_
                         _%tl166445167374%_
                         _%e166450167377%_
                         _%hd166449167380%_
                         _%tl166448167382%_
                         _%__splice172052172053%_
                         _%target166451167385%_
                         _%tl166453167387%_)
                        (_%__match172341172342%_
                         _%e166423167305%_
                         _%hd166422167308%_
                         _%tl166421167310%_
                         _%e166426167313%_
                         _%hd166425167316%_
                         _%tl166424167318%_
                         _%e166429167321%_
                         _%hd166428167324%_
                         _%tl166427167326%_
                         _%e166432167329%_
                         _%hd166431167332%_
                         _%tl166430167334%_
                         _%e166435167337%_
                         _%hd166434167340%_
                         _%tl166433167342%_
                         _%e166438167345%_
                         _%hd166437167348%_
                         _%tl166436167350%_
                         _%e166441167353%_
                         _%hd166440167356%_
                         _%tl166439167358%_
                         _%e166444167361%_
                         _%hd166443167364%_
                         _%tl166442167366%_
                         _%e166447167369%_
                         _%hd166446167372%_
                         _%tl166445167374%_
                         _%e166450167377%_
                         _%hd166449167380%_
                         _%tl166448167382%_))))
                (_%__match172341172342%_
                 _%e166423167305%_
                 _%hd166422167308%_
                 _%tl166421167310%_
                 _%e166426167313%_
                 _%hd166425167316%_
                 _%tl166424167318%_
                 _%e166429167321%_
                 _%hd166428167324%_
                 _%tl166427167326%_
                 _%e166432167329%_
                 _%hd166431167332%_
                 _%tl166430167334%_
                 _%e166435167337%_
                 _%hd166434167340%_
                 _%tl166433167342%_
                 _%e166438167345%_
                 _%hd166437167348%_
                 _%tl166436167350%_
                 _%e166441167353%_
                 _%hd166440167356%_
                 _%tl166439167358%_
                 _%e166444167361%_
                 _%hd166443167364%_
                 _%tl166442167366%_
                 _%e166447167369%_
                 _%hd166446167372%_
                 _%tl166445167374%_
                 _%e166450167377%_
                 _%hd166449167380%_
                 _%tl166448167382%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match172545172546%_
                                                     _%e166423167305%_
                                                     _%hd166422167308%_
                                                     _%tl166421167310%_
                                                     _%e166426167313%_
                                                     _%hd166425167316%_
                                                     _%tl166424167318%_
                                                     _%e166429167321%_
                                                     _%hd166428167324%_
                                                     _%tl166427167326%_
                                                     _%e166432167329%_
                                                     _%hd166431167332%_
                                                     _%tl166430167334%_
                                                     _%e166435167337%_
                                                     _%hd166434167340%_
                                                     _%tl166433167342%_
                                                     _%e166438167345%_
                                                     _%hd166437167348%_
                                                     _%tl166436167350%_
                                                     _%e166441167353%_
                                                     _%hd166440167356%_
                                                     _%tl166439167358%_
                                                     _%e166444167361%_
                                                     _%hd166443167364%_
                                                     _%tl166442167366%_))))
                                            (_%__match172545172546%_
                                             _%e166423167305%_
                                             _%hd166422167308%_
                                             _%tl166421167310%_
                                             _%e166426167313%_
                                             _%hd166425167316%_
                                             _%tl166424167318%_
                                             _%e166429167321%_
                                             _%hd166428167324%_
                                             _%tl166427167326%_
                                             _%e166432167329%_
                                             _%hd166431167332%_
                                             _%tl166430167334%_
                                             _%e166435167337%_
                                             _%hd166434167340%_
                                             _%tl166433167342%_
                                             _%e166438167345%_
                                             _%hd166437167348%_
                                             _%tl166436167350%_
                                             _%e166441167353%_
                                             _%hd166440167356%_
                                             _%tl166439167358%_
                                             _%e166444167361%_
                                             _%hd166443167364%_
                                             _%tl166442167366%_))
                                        (_%__match172221172222%_
                                         _%e166423167305%_
                                         _%hd166422167308%_
                                         _%tl166421167310%_
                                         _%e166426167313%_
                                         _%hd166425167316%_
                                         _%tl166424167318%_
                                         _%e166429167321%_
                                         _%hd166428167324%_
                                         _%tl166427167326%_
                                         _%e166432167329%_
                                         _%hd166431167332%_
                                         _%tl166430167334%_
                                         _%e166435167337%_
                                         _%hd166434167340%_
                                         _%tl166433167342%_
                                         _%e166438167345%_
                                         _%hd166437167348%_
                                         _%tl166436167350%_
                                         _%e166441167353%_
                                         _%hd166440167356%_
                                         _%tl166439167358%_
                                         _%e166444167361%_
                                         _%hd166443167364%_
                                         _%tl166442167366%_
                                         _%e166447167369%_
                                         _%hd166446167372%_
                                         _%tl166445167374%_))
                                    (_%__match172545172546%_
                                     _%e166423167305%_
                                     _%hd166422167308%_
                                     _%tl166421167310%_
                                     _%e166426167313%_
                                     _%hd166425167316%_
                                     _%tl166424167318%_
                                     _%e166429167321%_
                                     _%hd166428167324%_
                                     _%tl166427167326%_
                                     _%e166432167329%_
                                     _%hd166431167332%_
                                     _%tl166430167334%_
                                     _%e166435167337%_
                                     _%hd166434167340%_
                                     _%tl166433167342%_
                                     _%e166438167345%_
                                     _%hd166437167348%_
                                     _%tl166436167350%_
                                     _%e166441167353%_
                                     _%hd166440167356%_
                                     _%tl166439167358%_
                                     _%e166444167361%_
                                     _%hd166443167364%_
                                     _%tl166442167366%_))))
                            (_%__match172545172546%_
                             _%e166423167305%_
                             _%hd166422167308%_
                             _%tl166421167310%_
                             _%e166426167313%_
                             _%hd166425167316%_
                             _%tl166424167318%_
                             _%e166429167321%_
                             _%hd166428167324%_
                             _%tl166427167326%_
                             _%e166432167329%_
                             _%hd166431167332%_
                             _%tl166430167334%_
                             _%e166435167337%_
                             _%hd166434167340%_
                             _%tl166433167342%_
                             _%e166438167345%_
                             _%hd166437167348%_
                             _%tl166436167350%_
                             _%e166441167353%_
                             _%hd166440167356%_
                             _%tl166439167358%_
                             _%e166444167361%_
                             _%hd166443167364%_
                             _%tl166442167366%_))))
                    (_%__match172483172484%_
                     _%e166423167305%_
                     _%hd166422167308%_
                     _%tl166421167310%_
                     _%e166426167313%_
                     _%hd166425167316%_
                     _%tl166424167318%_
                     _%e166429167321%_
                     _%hd166428167324%_
                     _%tl166427167326%_
                     _%e166432167329%_
                     _%hd166431167332%_
                     _%tl166430167334%_
                     _%e166435167337%_
                     _%hd166434167340%_
                     _%tl166433167342%_
                     _%e166438167345%_
                     _%hd166437167348%_
                     _%tl166436167350%_
                     _%e166441167353%_
                     _%hd166440167356%_
                     _%tl166439167358%_))
                (_%__kont172066172067%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont172066172067%_))
                                            (_%__kont172066172067%_))
                                        (_%__kont172066172067%_))))
                                (_%__kont172066172067%_))))
                        (_%__kont172066172067%_))
                    (_%__kont172066172067%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont172066172067%_))
                                                (_%__kont172066172067%_))
                                            (_%__kont172066172067%_))))
                                    (_%__kont172066172067%_))))
                            (_%__kont172066172067%_))))
                    (_%__kont172066172067%_))))))))))
