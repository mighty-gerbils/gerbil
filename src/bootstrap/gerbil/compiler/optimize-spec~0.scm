(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-spec::timestamp 1712773528)
  (begin
    (define gxc#::generate-method-specializers::t
      (let ((__tmp172602 (list gxc#::identity::t))
            (__tmp172601 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-method-specializers::t
         '::generate-method-specializers
         __tmp172602
         '()
         __tmp172601
         '#f)))
    (define gxc#::generate-method-specializers?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-method-specializers::t)))
    (define gxc#make-::generate-method-specializers
      (lambda _%$args171399%_
        (apply make-instance
               gxc#::generate-method-specializers::t
               _%$args171399%_)))
    (define gxc#::generate-method-specializers-bind-methods!
      (let ((__tmp172603
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
        (__make-promise __tmp172603)))
    (define gxc#apply-generate-method-specializers
      (lambda (_%stx171391%_)
        (force gxc#::generate-method-specializers-bind-methods!)
        (let* ((_%self171394%_
                (let ((__obj172594
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-method-specializers::t))))
                  __obj172594))
               (__tmp172604
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self171394%_ _%stx171391%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp172604
           gxc#current-compile-method
           _%self171394%_))))
    (define gxc#::extract-receiver::t
      (let ((__tmp172606 (list gxc#::false::t))
            (__tmp172605 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::extract-receiver::t
         '::extract-receiver
         __tmp172606
         '()
         __tmp172605
         '#f)))
    (define gxc#::extract-receiver?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::extract-receiver::t)))
    (define gxc#make-::extract-receiver
      (lambda _%$args171388%_
        (apply make-instance gxc#::extract-receiver::t _%$args171388%_)))
    (define gxc#::extract-receiver-bind-methods!
      (let ((__tmp172607
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
        (__make-promise __tmp172607)))
    (define gxc#apply-extract-receiver
      (lambda (_%stx171380%_)
        (force gxc#::extract-receiver-bind-methods!)
        (let* ((_%self171383%_
                (let ((__obj172596
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::extract-receiver::t))))
                  __obj172596))
               (__tmp172608
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self171383%_ _%stx171380%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp172608
           gxc#current-compile-method
           _%self171383%_))))
    (define gxc#::collect-object-refs::t
      (let ((__tmp172610 (list gxc#::void::t))
            (__tmp172609 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-object-refs::t
         '::collect-object-refs
         __tmp172610
         '(receiver methods slots)
         __tmp172609
         '#f)))
    (define gxc#::collect-object-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-object-refs::t)))
    (define gxc#make-::collect-object-refs
      (lambda _%$args171377%_
        (apply make-instance gxc#::collect-object-refs::t _%$args171377%_)))
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
      (let ((__tmp172611
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
        (__make-promise __tmp172611)))
    (define gxc#apply-collect-object-refs__%
      (lambda (_%@@keywords171343%_
               _%receiver171338171344%_
               _%methods171339171346%_
               _%slots171340171348%_
               _%stx171350%_)
        (let* ((_%receiver171353%_
                (if (eq? _%receiver171338171344%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _%receiver171338171344%_))
               (_%methods171355%_
                (if (eq? _%methods171339171346%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _%methods171339171346%_))
               (_%slots171357%_
                (if (eq? _%slots171340171348%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _%slots171340171348%_)))
          (force gxc#::collect-object-refs-bind-methods!)
          (let* ((_%self171359%_
                  (let ((__obj172598
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
                       __obj172598
                       _%receiver171353%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj172598
                       _%methods171355%_
                       '2
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj172598
                       _%slots171357%_
                       '3
                       '#f
                       '#f))
                    __obj172598))
                 (__tmp172612
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self171359%_ _%stx171350%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp172612
             gxc#current-compile-method
             _%self171359%_)))))
    (define gxc#apply-collect-object-refs__@
      (lambda (_%@@keywords171366%_ . _%args171367%_)
        (apply gxc#apply-collect-object-refs__%
               _%@@keywords171366%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords171366%_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords171366%_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords171366%_
                  'slots:
                  absent-value))
               _%args171367%_)))
    (define gxc#apply-collect-object-refs
      (lambda _%args171341171373%_
        (apply keyword-dispatch
               '#(receiver: slots: methods:)
               gxc#apply-collect-object-refs__@
               _%args171341171373%_)))
    (define gxc#::subst-object-refs::t
      (let ((__tmp172614 (list gxc#::basic-xform-expression::t))
            (__tmp172613 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::subst-object-refs::t
         '::subst-object-refs
         __tmp172614
         '(receiver klass methods slots)
         __tmp172613
         '#f)))
    (define gxc#::subst-object-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::subst-object-refs::t)))
    (define gxc#make-::subst-object-refs
      (lambda _%$args171334%_
        (apply make-instance gxc#::subst-object-refs::t _%$args171334%_)))
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
      (let ((__tmp172615
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
        (__make-promise __tmp172615)))
    (define gxc#apply-subst-object-refs__%
      (lambda (_%@@keywords171296%_
               _%receiver171290171297%_
               _%klass171291171299%_
               _%methods171292171301%_
               _%slots171293171303%_
               _%stx171305%_)
        (let* ((_%receiver171308%_
                (if (eq? _%receiver171290171297%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _%receiver171290171297%_))
               (_%klass171310%_
                (if (eq? _%klass171291171299%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'klass:))
                    _%klass171291171299%_))
               (_%methods171312%_
                (if (eq? _%methods171292171301%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _%methods171292171301%_))
               (_%slots171314%_
                (if (eq? _%slots171293171303%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _%slots171293171303%_)))
          (force gxc#::subst-object-refs-bind-methods!)
          (let* ((_%self171316%_
                  (let ((__obj172600
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
                       __obj172600
                       _%receiver171308%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj172600
                       _%klass171310%_
                       '2
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj172600
                       _%methods171312%_
                       '3
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj172600
                       _%slots171314%_
                       '4
                       '#f
                       '#f))
                    __obj172600))
                 (__tmp172616
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self171316%_ _%stx171305%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp172616
             gxc#current-compile-method
             _%self171316%_)))))
    (define gxc#apply-subst-object-refs__@
      (lambda (_%@@keywords171323%_ . _%args171324%_)
        (apply gxc#apply-subst-object-refs__%
               _%@@keywords171323%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords171323%_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords171323%_
                  'klass:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords171323%_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords171323%_
                  'slots:
                  absent-value))
               _%args171324%_)))
    (define gxc#apply-subst-object-refs
      (lambda _%args171294171330%_
        (apply keyword-dispatch
               '#(receiver: methods: slots: klass:)
               gxc#apply-subst-object-refs__@
               _%args171294171330%_)))
    (define gxc#generate-method-specializers-define-values%
      (lambda (_%self168405%_ _%stx168406%_)
        (letrec ((_%generate-method-bind168408%_
                  (lambda (_%$klass171282%_
                           _%$method-table171283%_
                           _%id171284%_
                           _%$id171285%_)
                    (let ((_%$tmp171287%_
                           (let ((__tmp172617
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__method))))
                             (declare (not safe))
                             (make-symbol__0 __tmp172617))))
                      (cons (cons _%$id171285%_ '())
                            (cons (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons 'make-promise '()))
                                              (cons (cons '%#lambda
                                                          (cons '()
                                                                (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons (cons (cons _%$tmp171287%_ '())
                                                      (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#ref (cons 'symbolic-table-ref '()))
                                (cons (cons '%#ref
                                            (cons _%$method-table171283%_ '()))
                                      (cons (cons '%#quote
                                                  (cons _%id171284%_ '()))
                                            (cons (cons '%#quote
                                                        (cons '#f '()))
                                                  '())))))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())
                                          (cons (cons '%#if
                                                      (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%$tmp171287%_ '()))
                    (cons (cons '%#ref (cons _%$tmp171287%_ '()))
                          (cons (cons '%#call
                                      (cons (cons '%#ref (cons 'error '()))
                                            (cons (cons '%#quote
                                                        (cons '"Missing method"
                                                              '()))
                                                  (cons (cons '%#quote
                                                              (cons _%id171284%_
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
                 (_%generate-slot-bind168409%_
                  (lambda (_%$klass171276%_ _%id171277%_ _%$id171278%_)
                    (let ((_%$tmp171280%_
                           (let ((__tmp172618
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__slot))))
                             (declare (not safe))
                             (make-symbol__0 __tmp172618))))
                      (cons (cons _%$id171278%_ '())
                            (cons (cons '%#let-values
                                        (cons (cons (cons (cons _%$tmp171280%_
                                                                '())
                                                          (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '%#ref (cons 'class-slot-offset '()))
                                    (cons (cons '%#ref
                                                (cons _%$klass171276%_ '()))
                                          (cons (cons '%#quote
                                                      (cons _%id171277%_ '()))
                                                '()))))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())
                                              (cons (cons '%#if
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$tmp171280%_ '()))
                        (cons (cons '%#ref (cons _%$tmp171280%_ '()))
                              (cons (cons '%#call
                                          (cons (cons '%#ref (cons 'error '()))
                                                (cons (cons '%#quote
                                                            (cons '"Unknown slot"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#quote (cons _%id171277%_ '())) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '())))))
                 (_%generate-specializer-impl168410%_
                  (lambda (_%$klass171270%_
                           _%$method-table171271%_
                           _%methods-bind171272%_
                           _%slots-bind171273%_
                           _%specializer-impl171274%_)
                    (let ((__tmp172619
                           (cons '%#lambda
                                 (cons (cons _%$klass171270%_
                                             (cons _%$method-table171271%_
                                                   '()))
                                       (cons (cons '%#let-values
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (__foldr1
                                                            cons
                                                            _%slots-bind171273%_
                                                            _%methods-bind171272%_))
                                                         (cons _%specializer-impl171274%_
                                                               '())))
                                             '())))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp172619 _%stx168406%_))))
                 (_%generate-specializer-def168411%_
                  (lambda (_%id171266%_
                           _%specializer-id171267%_
                           _%specializer-impl171268%_)
                    (let ((__tmp172620
                           (cons '%#begin
                                 (cons _%stx168406%_
                                       (cons (let ((__tmp172621
                                                    (cons '%#define-values
                                                          (cons (cons _%specializer-id171267%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons _%specializer-impl171268%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp172621
                                                _%stx168406%_))
                                             (cons (let ((__tmp172622
                                                          (cons '%#call
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons 'bind-specializer! '()))
                              (cons (cons '%#ref (cons _%id171266%_ '()))
                                    (cons (cons '%#ref
                                                (cons _%specializer-id171267%_
                                                      '()))
                                          '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp172622
                                                      _%stx168406%_))
                                                   '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp172620 _%stx168406%_)))))
          (let* ((_%__stx171488171489%_ _%stx168406%_)
                 (_%g168414168434%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx171488171489%_)))))
            (let ((_%__kont171490171491%_
                   (lambda (_%L168478%_ _%L168479%_)
                     (let ((_%method-calls168498%_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_%slot-refs168499%_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_%empty168500%_
                            (let ()
                              (declare (not safe))
                              (make-hash-table-eq))))
                       (letrec ((_%no-specializer?168502%_
                                 (lambda ()
                                   (if (fxzero? (let ()
                                                  (declare (not safe))
                                                  (hash-length
                                                   _%method-calls168498%_)))
                                       (fxzero? (let ()
                                                  (declare (not safe))
                                                  (hash-length
                                                   _%slot-refs168499%_)))
                                       '#f))))
                         (if (let ()
                               (declare (not safe))
                               (gxc#lambda-expr? _%L168478%_))
                             (let* ((_%__stx171402171403%_ _%L168478%_)
                                    (_%g168890168908%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx171402171403%_)))))
                               (let ((_%__kont171404171405%_
                                      (lambda (_%L168944%_
                                               _%L168945%_
                                               _%L168946%_)
                                        (let ((_%receiver168966%_
                                               (let ((_%$e168963%_
                                                      (gxc#apply-extract-receiver
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f '%#begin))
                     _%L168944%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e168963%_
                                                     _%$e168963%_
                                                     _%L168946%_))))
                                          (for-each
                                           (lambda (_%g168967168969%_)
                                             (gxc#apply-collect-object-refs__%
                                              '#f
                                              _%receiver168966%_
                                              _%method-calls168498%_
                                              _%slot-refs168499%_
                                              _%g168967168969%_))
                                           _%L168944%_)
                                          (if (_%no-specializer?168502%_)
                                              _%stx168406%_
                                              (let* ((_%specializer-id168978%_
                                                      (let* ((_%id168972%_
                                                              (let ((__tmp172623
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%L168479%_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp172623 '"::specialize")))
                     (_%specializer-id168975%_
                      (let ((__tmp172624
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _%stx168406%_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _%id168972%_ __tmp172624))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _%specializer-id168975%_))
                _%specializer-id168975%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$klass168980%_
                                                      (let ((__tmp172625
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__klass))))
                (declare (not safe))
                (make-symbol__0 __tmp172625)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$method-table168982%_
                                                      (let ((__tmp172626
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__method-table))))
                (declare (not safe))
                (make-symbol__0 __tmp172626)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods168984%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _%method-calls168498%_)))
                                                     (_%$methods168988%_
                                                      (map (lambda (_%id168986%_)
                                                             (let ((__tmp172627
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _%id168986%_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp172627)))
                   _%methods168984%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_168997%_
                                                      (for-each
                                                       (lambda (_%g168989168992%_
                                                                _%g168990168994%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (hash-put!
                                                            _%method-calls168498%_
                                                            _%g168989168992%_
                                                            _%g168990168994%_)))
                                                       _%methods168984%_
                                                       _%$methods168988%_))
                                                     (_%methods-bind169007%_
                                                      (map (lambda (_%g168999169002%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g169000169004%_)
                     (_%generate-method-bind168408%_
                      _%$klass168980%_
                      _%$method-table168982%_
                      _%g168999169002%_
                      _%g169000169004%_))
                   _%methods168984%_
                   _%$methods168988%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots169009%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _%slot-refs168499%_)))
                                                     (_%$slots169013%_
                                                      (map (lambda (_%id169011%_)
                                                             (let ((__tmp172628
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _%id169011%_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp172628)))
                   _%slots169009%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_169022%_
                                                      (for-each
                                                       (lambda (_%g169014169017%_
                                                                _%g169015169019%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (hash-put!
                                                            _%slot-refs168499%_
                                                            _%g169014169017%_
                                                            _%g169015169019%_)))
                                                       _%slots169009%_
                                                       _%$slots169013%_))
                                                     (_%slots-bind169031%_
                                                      (map (lambda (_%g169023169026%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g169024169028%_)
                     (_%generate-slot-bind168409%_
                      _%$klass168980%_
                      _%g169023169026%_
                      _%g169024169028%_))
                   _%slots169009%_
                   _%$slots169013%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-body169037%_
                                                      (map (lambda (_%g169032169034%_)
                                                             (gxc#apply-subst-object-refs__%
                                                              '#f
                                                              _%receiver168966%_
                                                              _%$klass168980%_
                                                              _%method-calls168498%_
                                                              _%slot-refs168499%_
                                                              _%g169032169034%_))
                                                           _%L168944%_))
                                                     (_%specializer-impl169039%_
                                                      (let ((__tmp172629
                                                             (cons '%#lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons _%L168946%_ _%L168945%_)
                                 _%specializer-body169037%_))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp172629 _%stx168406%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl169041%_
                                                      (_%generate-specializer-impl168410%_
                                                       _%$klass168980%_
                                                       _%$method-table168982%_
                                                       _%methods-bind169007%_
                                                       _%slots-bind169031%_
                                                       _%specializer-impl169039%_)))
                                                (let ((__tmp172631
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%L168479%_)))
                                                      (__tmp172630
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%specializer-id168978%_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp172631
                                                   '" => "
                                                   __tmp172630))
                                                (_%generate-specializer-def168411%_
                                                 _%L168479%_
                                                 _%specializer-id168978%_
                                                 _%specializer-impl169041%_))))))
                                     (_%__kont171406171407%_
                                      (lambda () _%stx168406%_)))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%__stx171402171403%_))
                                     (let ((_%e168895168920%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e
                                               _%__stx171402171403%_))))
                                       (let ((_%tl168897168925%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e168895168920%_)))
                                             (_%hd168896168923%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e168895168920%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl168897168925%_))
                                             (let ((_%e168898168928%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%tl168897168925%_))))
                                               (let ((_%tl168900168933%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e168898168928%_)))
                                                     (_%hd168899168931%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e168898168928%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%hd168899168931%_))
                                                     (let ((_%e168901168936%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%hd168899168931%_))))
                                                       (let ((_%tl168903168941%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e168901168936%_)))
                     (_%hd168902168939%_
                      (let () (declare (not safe)) (##car _%e168901168936%_))))
                 (_%__kont171404171405%_
                  _%tl168900168933%_
                  _%tl168903168941%_
                  _%hd168902168939%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont171406171407%_))))
                                             (_%__kont171406171407%_))))
                                     (_%__kont171406171407%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gxc#case-lambda-expr? _%L168478%_))
                                 (let* ((_%g169048169067%_
                                         (lambda (_%g169049169064%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g169049169064%_))))
                                        (_%g169047169365%_
                                         (lambda (_%g169049169070%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g169049169070%_))
                                               (let ((_%e169051169072%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%g169049169070%_))))
                                                 (let ((_%hd169052169075%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e169051169072%_)))
                                                       (_%tl169053169077%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e169051169072%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair/null?
                                                          _%tl169053169077%_))
                                                       (let ((_g172632_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-split-splice _%tl169053169077%_ '0))))
                 (begin
                   (let ((_g172633_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g172632_)
                                (##vector-length _g172632_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g172633_ 2)))
                         (error "Context expects 2 values" _g172633_)))
                   (let ((_%target169054169080%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g172632_ 0)))
                         (_%tl169056169082%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g172632_ 1))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl169056169082%_))
                         (letrec ((_%loop169057169085%_
                                   (lambda (_%hd169055169088%_
                                            _%clause169061169090%_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd169055169088%_))
                                         (let ((_%e169058169093%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd169055169088%_))))
                                           (let ((_%lp-hd169059169096%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e169058169093%_)))
                                                 (_%lp-tl169060169098%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e169058169093%_))))
                                             (_%loop169057169085%_
                                              _%lp-tl169060169098%_
                                              (cons _%lp-hd169059169096%_
                                                    _%clause169061169090%_))))
                                         (let ((_%clause169062169101%_
                                                (reverse _%clause169061169090%_)))
                                           ((lambda (_%L169104%_)
                                              (for-each
                                               (lambda (_%clause169118%_)
                                                 (let* ((_%__stx171428171429%_
                                                         _%clause169118%_)
                                                        (_%g169121169136%_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%__stx171428171429%_)))))
                                                   (let ((_%__kont171430171431%_
                                                          (lambda (_%L169164%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%L169165%_
                           _%L169166%_)
                    (let ((_%receiver169185%_
                           (let ((_%$e169182%_
                                  (gxc#apply-extract-receiver
                                   (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f '%#begin))
                                         _%L169164%_))))
                             (if _%$e169182%_ _%$e169182%_ _%L169166%_))))
                      (for-each
                       (lambda (_%g169186169188%_)
                         (gxc#apply-collect-object-refs__%
                          '#f
                          _%receiver169185%_
                          _%method-calls168498%_
                          _%slot-refs168499%_
                          _%g169186169188%_))
                       _%L169164%_))))
                 (_%__kont171432171433%_ (lambda () '#!void)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%__stx171428171429%_))
                                                         (let ((_%e169126169148%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%__stx171428171429%_))))
                   (let ((_%tl169128169153%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e169126169148%_)))
                         (_%hd169127169151%_
                          (let ()
                            (declare (not safe))
                            (##car _%e169126169148%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%hd169127169151%_))
                         (let ((_%e169129169156%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd169127169151%_))))
                           (let ((_%tl169131169161%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e169129169156%_)))
                                 (_%hd169130169159%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e169129169156%_))))
                             (_%__kont171430171431%_
                              _%tl169128169153%_
                              _%tl169131169161%_
                              _%hd169130169159%_)))
                         (_%__kont171432171433%_))))
                 (_%__kont171432171433%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((__tmp172634
                                                      (lambda (_%g169193169196%_
                                                               _%g169194169198%_)
                                                        (cons _%g169193169196%_
                                                              _%g169194169198%_))))
                                                 (declare (not safe))
                                                 (__foldr1
                                                  __tmp172634
                                                  '()
                                                  _%L169104%_)))
                                              (if (_%no-specializer?168502%_)
                                                  _%stx168406%_
                                                  (let* ((_%specializer-id169207%_
                                                          (let* ((_%id169201%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp172635
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%L168479%_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp172635 '"::specialize")))
                         (_%specializer-id169204%_
                          (let ((__tmp172636
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _%stx168406%_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _%id169201%_
                             __tmp172636))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _%specializer-id169204%_))
                    _%specializer-id169204%_))
                 (_%$klass169209%_
                  (let ((__tmp172637
                         (let () (declare (not safe)) (##gensym '__klass))))
                    (declare (not safe))
                    (make-symbol__0 __tmp172637)))
                 (_%$method-table169211%_
                  (let ((__tmp172638
                         (let ()
                           (declare (not safe))
                           (##gensym '__method-table))))
                    (declare (not safe))
                    (make-symbol__0 __tmp172638)))
                 (_%methods169213%_
                  (let ()
                    (declare (not safe))
                    (hash-keys _%method-calls168498%_)))
                 (_%$methods169217%_
                  (map (lambda (_%id169215%_)
                         (let ((__tmp172639 (gensym _%id169215%_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp172639)))
                       _%methods169213%_))
                 (_%_169226%_
                  (for-each
                   (lambda (_%g169218169221%_ _%g169219169223%_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _%method-calls168498%_
                        _%g169218169221%_
                        _%g169219169223%_)))
                   _%methods169213%_
                   _%$methods169217%_))
                 (_%methods-bind169236%_
                  (map (lambda (_%g169228169231%_ _%g169229169233%_)
                         (_%generate-method-bind168408%_
                          _%$klass169209%_
                          _%$method-table169211%_
                          _%g169228169231%_
                          _%g169229169233%_))
                       _%methods169213%_
                       _%$methods169217%_))
                 (_%slots169238%_
                  (let ()
                    (declare (not safe))
                    (hash-keys _%slot-refs168499%_)))
                 (_%$slots169242%_
                  (map (lambda (_%id169240%_)
                         (let ((__tmp172640 (gensym _%id169240%_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp172640)))
                       _%slots169238%_))
                 (_%_169251%_
                  (for-each
                   (lambda (_%g169243169246%_ _%g169244169248%_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _%slot-refs168499%_
                        _%g169243169246%_
                        _%g169244169248%_)))
                   _%slots169238%_
                   _%$slots169242%_))
                 (_%slots-bind169260%_
                  (map (lambda (_%g169252169255%_ _%g169253169257%_)
                         (_%generate-slot-bind168409%_
                          _%$klass169209%_
                          _%g169252169255%_
                          _%g169253169257%_))
                       _%slots169238%_
                       _%$slots169242%_))
                 (_%specializer-clauses169358%_
                  (map (lambda (_%clause169262%_)
                         (let* ((_%__stx171448171449%_ _%clause169262%_)
                                (_%g169265169280%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx171448171449%_)))))
                           (let ((_%__kont171450171451%_
                                  (lambda (_%L169308%_ _%L169309%_ _%L169310%_)
                                    (let* ((_%receiver169339%_
                                            (let ((_%$e169336%_
                                                   (gxc#apply-extract-receiver
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#begin))
                                                          _%L169308%_))))
                                              (if _%$e169336%_
                                                  _%$e169336%_
                                                  _%L169310%_)))
                                           (_%body169345%_
                                            (map (lambda (_%g169340169342%_)
                                                   (gxc#apply-subst-object-refs__%
                                                    '#f
                                                    _%receiver169339%_
                                                    _%$klass169209%_
                                                    _%method-calls168498%_
                                                    _%slot-refs168499%_
                                                    _%g169340169342%_))
                                                 _%L169308%_)))
                                      (cons (cons _%L169310%_ _%L169309%_)
                                            _%body169345%_))))
                                 (_%__kont171452171453%_
                                  (lambda () _%clause169262%_)))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx171448171449%_))
                                 (let ((_%e169270169292%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx171448171449%_))))
                                   (let ((_%tl169272169297%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e169270169292%_)))
                                         (_%hd169271169295%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e169270169292%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd169271169295%_))
                                         (let ((_%e169273169300%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd169271169295%_))))
                                           (let ((_%tl169275169305%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e169273169300%_)))
                                                 (_%hd169274169303%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e169273169300%_))))
                                             (_%__kont171450171451%_
                                              _%tl169272169297%_
                                              _%tl169275169305%_
                                              _%hd169274169303%_)))
                                         (_%__kont171452171453%_))))
                                 (_%__kont171452171453%_)))))
                       (let ((__tmp172641
                              (lambda (_%g169350169353%_ _%g169351169355%_)
                                (cons _%g169350169353%_ _%g169351169355%_))))
                         (declare (not safe))
                         (__foldr1 __tmp172641 '() _%L169104%_))))
                 (_%specializer-impl169360%_
                  (let ((__tmp172642
                         (cons '%#case-lambda _%specializer-clauses169358%_)))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp172642 _%stx168406%_)))
                 (_%specializer-impl169362%_
                  (_%generate-specializer-impl168410%_
                   _%$klass169209%_
                   _%$method-table169211%_
                   _%methods-bind169236%_
                   _%slots-bind169260%_
                   _%specializer-impl169360%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp172644
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%L168479%_)))
                                                          (__tmp172643
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%specializer-id169207%_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp172644
                                                       '" => "
                                                       __tmp172643))
                                                    (_%generate-specializer-def168411%_
                                                     _%L168479%_
                                                     _%specializer-id169207%_
                                                     _%specializer-impl169362%_))))
                                            _%clause169062169101%_))))))
                           (_%loop169057169085%_ _%target169054169080%_ '()))
                         (_%g169048169067%_ _%g169049169070%_)))))
               (_%g169048169067%_ _%g169049169070%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g169048169067%_
                                                _%g169049169070%_)))))
                                   (_%g169047169365%_ _%L168478%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#opt-lambda-expr? _%L168478%_))
                                     (let* ((_%g169369169399%_
                                             (lambda (_%g169370169396%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g169370169396%_))))
                                            (_%g169368170030%_
                                             (lambda (_%g169370169402%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%g169370169402%_))
                                                   (let ((_%e169374169404%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%g169370169402%_))))
                                                     (let ((_%hd169375169407%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e169374169404%_)))
                                                           (_%tl169376169409%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e169374169404%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl169376169409%_))
                                                           (let ((_%e169377169412%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl169376169409%_))))
                     (let ((_%hd169378169415%_
                            (let ()
                              (declare (not safe))
                              (##car _%e169377169412%_)))
                           (_%tl169379169417%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e169377169412%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%hd169378169415%_))
                           (let ((_%e169380169420%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd169378169415%_))))
                             (let ((_%hd169381169423%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e169380169420%_)))
                                   (_%tl169382169425%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e169380169420%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd169381169423%_))
                                   (let ((_%e169383169428%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd169381169423%_))))
                                     (let ((_%hd169384169431%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e169383169428%_)))
                                           (_%tl169385169433%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e169383169428%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%hd169384169431%_))
                                           (let ((_%e169386169436%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%hd169384169431%_))))
                                             (let ((_%hd169387169439%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e169386169436%_)))
                                                   (_%tl169388169441%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e169386169436%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl169388169441%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl169385169433%_))
                                                       (let ((_%e169389169444%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%tl169385169433%_))))
                 (let ((_%hd169390169447%_
                        (let ()
                          (declare (not safe))
                          (##car _%e169389169444%_)))
                       (_%tl169391169449%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e169389169444%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl169391169449%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl169382169425%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl169379169417%_))
                               (let ((_%e169392169452%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%tl169379169417%_))))
                                 (let ((_%hd169393169455%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e169392169452%_)))
                                       (_%tl169394169457%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e169392169452%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%tl169394169457%_))
                                       ((lambda (_%L169460%_
                                                 _%L169461%_
                                                 _%L169462%_)
                                          (let* ((_%g169486169504%_
                                                  (lambda (_%g169487169501%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g169487169501%_))))
                                                 (_%g169485169560%_
                                                  (lambda (_%g169487169507%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%g169487169507%_))
                                                        (let ((_%e169491169509%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%g169487169507%_))))
                  (let ((_%hd169492169512%_
                         (let ()
                           (declare (not safe))
                           (##car _%e169491169509%_)))
                        (_%tl169493169514%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e169491169509%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl169493169514%_))
                        (let ((_%e169494169517%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl169493169514%_))))
                          (let ((_%hd169495169520%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e169494169517%_)))
                                (_%tl169496169522%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e169494169517%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd169495169520%_))
                                (let ((_%e169497169525%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd169495169520%_))))
                                  (let ((_%hd169498169528%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e169497169525%_)))
                                        (_%tl169499169530%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e169497169525%_))))
                                    ((lambda (_%L169533%_
                                              _%L169534%_
                                              _%L169535%_)
                                       (let ((_%receiver169554%_
                                              (let ((_%$e169551%_
                                                     (gxc#apply-extract-receiver
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               '%#begin))
                                                            _%L169533%_))))
                                                (if _%$e169551%_
                                                    _%$e169551%_
                                                    _%L169535%_))))
                                         (for-each
                                          (lambda (_%g169555169557%_)
                                            (gxc#apply-collect-object-refs__%
                                             '#f
                                             _%receiver169554%_
                                             _%method-calls168498%_
                                             _%slot-refs168499%_
                                             _%g169555169557%_))
                                          _%L169533%_)))
                                     _%tl169496169522%_
                                     _%tl169499169530%_
                                     _%hd169498169528%_)))
                                (_%g169486169504%_ _%g169487169507%_))))
                        (_%g169486169504%_ _%g169487169507%_))))
                (_%g169486169504%_ _%g169487169507%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g169485169560%_ _%L169461%_))
                                          (let* ((_%g169563169582%_
                                                  (lambda (_%g169564169579%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g169564169579%_))))
                                                 (_%g169562169706%_
                                                  (lambda (_%g169564169585%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%g169564169585%_))
                                                        (let ((_%e169566169587%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%g169564169585%_))))
                  (let ((_%hd169567169590%_
                         (let ()
                           (declare (not safe))
                           (##car _%e169566169587%_)))
                        (_%tl169568169592%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e169566169587%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%tl169568169592%_))
                        (let ((_g172645_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _%tl169568169592%_
                                  '0))))
                          (begin
                            (let ((_g172646_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g172645_)
                                         (##vector-length _g172645_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g172646_ 2)))
                                  (error "Context expects 2 values"
                                         _g172646_)))
                            (let ((_%target169569169595%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g172645_ 0)))
                                  (_%tl169571169597%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g172645_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl169571169597%_))
                                  (letrec ((_%loop169572169600%_
                                            (lambda (_%hd169570169603%_
                                                     _%clause169576169605%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd169570169603%_))
                                                  (let ((_%e169573169608%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd169570169603%_))))
                                                    (let ((_%lp-hd169574169611%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e169573169608%_)))
                                                          (_%lp-tl169575169613%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e169573169608%_))))
                                                      (_%loop169572169600%_
                                                       _%lp-tl169575169613%_
                                                       (cons _%lp-hd169574169611%_
                                                             _%clause169576169605%_))))
                                                  (let ((_%clause169577169616%_
                                                         (reverse _%clause169576169605%_)))
                                                    ((lambda (_%L169619%_)
                                                       (for-each
                                                        (lambda (_%clause169632%_)
                                                          (let* ((_%g169634169649%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%g169635169646%_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g169635169646%_))))
                         (_%g169633169696%_
                          (lambda (_%g169635169652%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%g169635169652%_))
                                (let ((_%e169639169654%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%g169635169652%_))))
                                  (let ((_%hd169640169657%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e169639169654%_)))
                                        (_%tl169641169659%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e169639169654%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd169640169657%_))
                                        (let ((_%e169642169662%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd169640169657%_))))
                                          (let ((_%hd169643169665%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e169642169662%_)))
                                                (_%tl169644169667%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e169642169662%_))))
                                            ((lambda (_%L169670%_
                                                      _%L169671%_
                                                      _%L169672%_)
                                               (let ((_%receiver169690%_
                                                      (let ((_%$e169687%_
                                                             (gxc#apply-extract-receiver
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f '%#begin))
                            _%L169670%_))))
                (if _%$e169687%_ _%$e169687%_ _%L169672%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (for-each
                                                  (lambda (_%g169691169693%_)
                                                    (gxc#apply-collect-object-refs__%
                                                     '#f
                                                     _%receiver169690%_
                                                     _%method-calls168498%_
                                                     _%slot-refs168499%_
                                                     _%g169691169693%_))
                                                  _%L169670%_)))
                                             _%tl169641169659%_
                                             _%tl169644169667%_
                                             _%hd169643169665%_)))
                                        (_%g169634169649%_
                                         _%g169635169652%_))))
                                (_%g169634169649%_ _%g169635169652%_)))))
                    (_%g169633169696%_ _%clause169632%_)))
                (let ((__tmp172647
                       (lambda (_%g169698169701%_ _%g169699169703%_)
                         (cons _%g169698169701%_ _%g169699169703%_))))
                  (declare (not safe))
                  (__foldr1 __tmp172647 '() _%L169619%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%clause169577169616%_))))))
                                    (_%loop169572169600%_
                                     _%target169569169595%_
                                     '()))
                                  (_%g169563169582%_ _%g169564169585%_)))))
                        (_%g169563169582%_ _%g169564169585%_))))
                (_%g169563169582%_ _%g169564169585%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g169562169706%_ _%L169460%_))
                                          (if (_%no-specializer?168502%_)
                                              _%stx168406%_
                                              (let* ((_%specializer-id169715%_
                                                      (let* ((_%id169709%_
                                                              (let ((__tmp172648
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%L168479%_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp172648 '"::specialize")))
                     (_%specializer-id169712%_
                      (let ((__tmp172649
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _%stx168406%_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _%id169709%_ __tmp172649))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _%specializer-id169712%_))
                _%specializer-id169712%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$klass169717%_
                                                      (let ((__tmp172650
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__klass))))
                (declare (not safe))
                (make-symbol__0 __tmp172650)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$method-table169719%_
                                                      (let ((__tmp172651
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__method-table))))
                (declare (not safe))
                (make-symbol__0 __tmp172651)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods169721%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _%method-calls168498%_)))
                                                     (_%$methods169725%_
                                                      (map (lambda (_%id169723%_)
                                                             (let ((__tmp172652
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _%id169723%_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp172652)))
                   _%methods169721%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_169734%_
                                                      (for-each
                                                       (lambda (_%g169726169729%_
                                                                _%g169727169731%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (hash-put!
                                                            _%method-calls168498%_
                                                            _%g169726169729%_
                                                            _%g169727169731%_)))
                                                       _%methods169721%_
                                                       _%$methods169725%_))
                                                     (_%methods-bind169744%_
                                                      (map (lambda (_%g169736169739%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g169737169741%_)
                     (_%generate-method-bind168408%_
                      _%$klass169717%_
                      _%$method-table169719%_
                      _%g169736169739%_
                      _%g169737169741%_))
                   _%methods169721%_
                   _%$methods169725%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots169746%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _%slot-refs168499%_)))
                                                     (_%$slots169750%_
                                                      (map (lambda (_%id169748%_)
                                                             (let ((__tmp172653
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _%id169748%_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp172653)))
                   _%slots169746%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_169759%_
                                                      (for-each
                                                       (lambda (_%g169751169754%_
                                                                _%g169752169756%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (hash-put!
                                                            _%slot-refs168499%_
                                                            _%g169751169754%_
                                                            _%g169752169756%_)))
                                                       _%slots169746%_
                                                       _%$slots169750%_))
                                                     (_%slots-bind169768%_
                                                      (map (lambda (_%g169760169763%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g169761169765%_)
                     (_%generate-slot-bind168409%_
                      _%$klass169717%_
                      _%g169760169763%_
                      _%g169761169765%_))
                   _%slots169746%_
                   _%$slots169750%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-lambda-expr169860%_
                                                      (let* ((_%g169770169788%_
                                                              (lambda (_%g169771169785%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g169771169785%_))))
                     (_%g169769169857%_
                      (lambda (_%g169771169791%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g169771169791%_))
                            (let ((_%e169775169793%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g169771169791%_))))
                              (let ((_%hd169776169796%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e169775169793%_)))
                                    (_%tl169777169798%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e169775169793%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl169777169798%_))
                                    (let ((_%e169778169801%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl169777169798%_))))
                                      (let ((_%hd169779169804%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e169778169801%_)))
                                            (_%tl169780169806%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e169778169801%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd169779169804%_))
                                            (let ((_%e169781169809%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd169779169804%_))))
                                              (let ((_%hd169782169812%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e169781169809%_)))
                                                    (_%tl169783169814%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e169781169809%_))))
                                                ((lambda (_%L169817%_
                                                          _%L169818%_
                                                          _%L169819%_)
                                                   (let* ((_%receiver169848%_
                                                           (let ((_%$e169845%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gxc#apply-extract-receiver
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '%#begin))
                                 _%L169817%_))))
                     (if _%$e169845%_ _%$e169845%_ _%L169819%_)))
                  (_%body169854%_
                   (map (lambda (_%g169849169851%_)
                          (gxc#apply-subst-object-refs__%
                           '#f
                           _%receiver169848%_
                           _%$klass169717%_
                           _%method-calls168498%_
                           _%slot-refs168499%_
                           _%g169849169851%_))
                        _%L169817%_))
                  (__tmp172654
                   (cons '%#lambda
                         (cons (cons _%L169819%_ _%L169818%_)
                               _%body169854%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp172654
                                                      _%L169461%_)))
                                                 _%tl169780169806%_
                                                 _%tl169783169814%_
                                                 _%hd169782169812%_)))
                                            (_%g169770169788%_
                                             _%g169771169791%_))))
                                    (_%g169770169788%_ _%g169771169791%_))))
                            (_%g169770169788%_ _%g169771169791%_)))))
                (_%g169769169857%_ _%L169461%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-case-lambda-expr170023%_
                                                      (let* ((_%g169862169881%_
                                                              (lambda (_%g169863169878%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g169863169878%_))))
                     (_%g169861170020%_
                      (lambda (_%g169863169884%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g169863169884%_))
                            (let ((_%e169865169886%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g169863169884%_))))
                              (let ((_%hd169866169889%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e169865169886%_)))
                                    (_%tl169867169891%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e169865169886%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl169867169891%_))
                                    (let ((_g172655_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _%tl169867169891%_
                                              '0))))
                                      (begin
                                        (let ((_g172656_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g172655_)
                                                     (##vector-length
                                                      _g172655_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g172656_ 2)))
                                              (error "Context expects 2 values"
                                                     _g172656_)))
                                        (let ((_%target169868169894%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g172655_ 0)))
                                              (_%tl169870169896%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g172655_ 1))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl169870169896%_))
                                              (letrec ((_%loop169871169899%_
                                                        (lambda (_%hd169869169902%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%clause169875169904%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd169869169902%_))
                      (let ((_%e169872169907%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd169869169902%_))))
                        (let ((_%lp-hd169873169910%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e169872169907%_)))
                              (_%lp-tl169874169912%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e169872169907%_))))
                          (_%loop169871169899%_
                           _%lp-tl169874169912%_
                           (cons _%lp-hd169873169910%_
                                 _%clause169875169904%_))))
                      (let ((_%clause169876169915%_
                             (reverse _%clause169875169904%_)))
                        ((lambda (_%L169918%_)
                           (let* ((_%clauses170018%_
                                   (map (lambda (_%clause169932%_)
                                          (let* ((_%__stx171468171469%_
                                                  _%clause169932%_)
                                                 (_%g169935169950%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx171468171469%_)))))
                                            (let ((_%__kont171470171471%_
                                                   (lambda (_%L169978%_
                                                            _%L169979%_
                                                            _%L169980%_)
                                                     (let* ((_%receiver169999%_
                                                             (let ((_%$e169996%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gxc#apply-extract-receiver
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f '%#begin))
                                   _%L169978%_))))
                       (if _%$e169996%_ _%$e169996%_ _%L169980%_)))
                    (_%body170005%_
                     (map (lambda (_%g170000170002%_)
                            (gxc#apply-subst-object-refs__%
                             '#f
                             _%receiver169999%_
                             _%$klass169717%_
                             _%method-calls168498%_
                             _%slot-refs168499%_
                             _%g170000170002%_))
                          _%L169978%_)))
               (cons (cons _%L169980%_ _%L169979%_) _%body170005%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont171472171473%_
                                                   (lambda ()
                                                     _%clause169932%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%__stx171468171469%_))
                                                  (let ((_%e169940169962%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%__stx171468171469%_))))
                                                    (let ((_%tl169942169967%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e169940169962%_)))
                                                          (_%hd169941169965%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e169940169962%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd169941169965%_))
                                                          (let ((_%e169943169970%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd169941169965%_))))
                    (let ((_%tl169945169975%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e169943169970%_)))
                          (_%hd169944169973%_
                           (let ()
                             (declare (not safe))
                             (##car _%e169943169970%_))))
                      (_%__kont171470171471%_
                       _%tl169942169967%_
                       _%tl169945169975%_
                       _%hd169944169973%_)))
                  (_%__kont171472171473%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont171472171473%_)))))
                                        (let ((__tmp172657
                                               (lambda (_%g170010170013%_
                                                        _%g170011170015%_)
                                                 (cons _%g170010170013%_
                                                       _%g170011170015%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp172657
                                           '()
                                           _%L169918%_))))
                                  (__tmp172658
                                   (cons '%#case-lambda _%clauses170018%_)))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp172658 _%L169460%_)))
                         _%clause169876169915%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop169871169899%_
                                                 _%target169868169894%_
                                                 '()))
                                              (_%g169862169881%_
                                               _%g169863169884%_)))))
                                    (_%g169862169881%_ _%g169863169884%_))))
                            (_%g169862169881%_ _%g169863169884%_)))))
                (_%g169861170020%_ _%L169460%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl170025%_
                                                      (let ((__tmp172659
                                                             (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (cons (cons _%L169462%_ '())
                                             (cons _%specializer-lambda-expr169860%_
                                                   '()))
                                       '())
                                 (cons _%specializer-case-lambda-expr170023%_
                                       '())))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp172659 _%stx168406%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl170027%_
                                                      (_%generate-specializer-impl168410%_
                                                       _%$klass169717%_
                                                       _%$method-table169719%_
                                                       _%methods-bind169744%_
                                                       _%slots-bind169768%_
                                                       _%specializer-impl170025%_)))
                                                (let ((__tmp172661
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%L168479%_)))
                                                      (__tmp172660
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%specializer-id169715%_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp172661
                                                   '" => "
                                                   __tmp172660))
                                                (_%generate-specializer-def168411%_
                                                 _%L168479%_
                                                 _%specializer-id169715%_
                                                 _%specializer-impl170027%_))))
                                        _%hd169393169455%_
                                        _%hd169390169447%_
                                        _%hd169387169439%_)
                                       (_%g169369169399%_ _%g169370169402%_))))
                               (_%g169369169399%_ _%g169370169402%_))
                           (_%g169369169399%_ _%g169370169402%_))
                       (_%g169369169399%_ _%g169370169402%_))))
               (_%g169369169399%_ _%g169370169402%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g169369169399%_
                                                    _%g169370169402%_))))
                                           (_%g169369169399%_
                                            _%g169370169402%_))))
                                   (_%g169369169399%_ _%g169370169402%_))))
                           (_%g169369169399%_ _%g169370169402%_))))
                   (_%g169369169399%_ _%g169370169402%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g169369169399%_
                                                    _%g169370169402%_)))))
                                       (_%g169368170030%_ _%L168478%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#kw-lambda-expr? _%L168478%_))
                                         (let* ((_%g170034170087%_
                                                 (lambda (_%g170035170084%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g170035170084%_))))
                                                (_%g170033171258%_
                                                 (lambda (_%g170035170090%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%g170035170090%_))
                                                       (let ((_%e170041170092%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%g170035170090%_))))
                 (let ((_%hd170042170095%_
                        (let ()
                          (declare (not safe))
                          (##car _%e170041170092%_)))
                       (_%tl170043170097%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e170041170092%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#identifier? _%hd170042170095%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-eq? '%#let-values _%hd170042170095%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl170043170097%_))
                               (let ((_%e170044170100%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%tl170043170097%_))))
                                 (let ((_%hd170045170103%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e170044170100%_)))
                                       (_%tl170046170105%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e170044170100%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd170045170103%_))
                                       (let ((_%e170047170108%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd170045170103%_))))
                                         (let ((_%hd170048170111%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e170047170108%_)))
                                               (_%tl170049170113%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e170047170108%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%hd170048170111%_))
                                               (let ((_%e170050170116%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%hd170048170111%_))))
                                                 (let ((_%hd170051170119%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e170050170116%_)))
                                                       (_%tl170052170121%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e170050170116%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%hd170051170119%_))
                                                       (let ((_%e170053170124%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%hd170051170119%_))))
                 (let ((_%hd170054170127%_
                        (let ()
                          (declare (not safe))
                          (##car _%e170053170124%_)))
                       (_%tl170055170129%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e170053170124%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl170055170129%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%tl170052170121%_))
                           (let ((_%e170056170132%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%tl170052170121%_))))
                             (let ((_%hd170057170135%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e170056170132%_)))
                                   (_%tl170058170137%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e170056170132%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd170057170135%_))
                                   (let ((_%e170059170140%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd170057170135%_))))
                                     (let ((_%hd170060170143%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e170059170140%_)))
                                           (_%tl170061170145%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e170059170140%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#identifier?
                                              _%hd170060170143%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-eq?
                                                  '%#let-values
                                                  _%hd170060170143%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%tl170061170145%_))
                                                   (let ((_%e170062170148%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%tl170061170145%_))))
                                                     (let ((_%hd170063170151%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e170062170148%_)))
                                                           (_%tl170064170153%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e170062170148%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%hd170063170151%_))
                                                           (let ((_%e170065170156%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%hd170063170151%_))))
                     (let ((_%hd170066170159%_
                            (let ()
                              (declare (not safe))
                              (##car _%e170065170156%_)))
                           (_%tl170067170161%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e170065170156%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%hd170066170159%_))
                           (let ((_%e170068170164%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd170066170159%_))))
                             (let ((_%hd170069170167%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e170068170164%_)))
                                   (_%tl170070170169%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e170068170164%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd170069170167%_))
                                   (let ((_%e170071170172%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd170069170167%_))))
                                     (let ((_%hd170072170175%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e170071170172%_)))
                                           (_%tl170073170177%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e170071170172%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl170073170177%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl170070170169%_))
                                               (let ((_%e170074170180%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%tl170070170169%_))))
                                                 (let ((_%hd170075170183%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e170074170180%_)))
                                                       (_%tl170076170185%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e170074170180%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl170076170185%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _%tl170067170161%_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _%tl170064170153%_))
                       (let ((_%e170077170188%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%tl170064170153%_))))
                         (let ((_%hd170078170191%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e170077170188%_)))
                               (_%tl170079170193%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e170077170188%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%tl170079170193%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl170058170137%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%tl170049170113%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%tl170046170105%_))
                                           (let ((_%e170080170196%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%tl170046170105%_))))
                                             (let ((_%hd170081170199%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e170080170196%_)))
                                                   (_%tl170082170201%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e170080170196%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl170082170201%_))
                                                   ((lambda (_%L170204%_
                                                             _%L170205%_
                                                             _%L170206%_
                                                             _%L170207%_
                                                             _%L170208%_)
                                                      (let* ((_%g170248170310%_
                                                              (lambda (_%g170249170307%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g170249170307%_))))
                     (_%g170247171255%_
                      (lambda (_%g170249170313%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g170249170313%_))
                            (let ((_%e170255170315%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g170249170313%_))))
                              (let ((_%hd170256170318%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e170255170315%_)))
                                    (_%tl170257170320%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e170255170315%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd170256170318%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _%hd170256170318%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl170257170320%_))
                                            (let ((_%e170258170323%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl170257170320%_))))
                                              (let ((_%hd170259170326%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e170258170323%_)))
                                                    (_%tl170260170328%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e170258170323%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl170260170328%_))
                                                    (let ((_%e170261170331%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl170260170328%_))))
                                                      (let ((_%hd170262170334%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e170261170331%_)))
                    (_%tl170263170336%_
                     (let () (declare (not safe)) (##cdr _%e170261170331%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%hd170262170334%_))
                    (let ((_%e170264170339%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd170262170334%_))))
                      (let ((_%hd170265170342%_
                             (let ()
                               (declare (not safe))
                               (##car _%e170264170339%_)))
                            (_%tl170266170344%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e170264170339%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%hd170265170342%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#call _%hd170265170342%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl170266170344%_))
                                    (let ((_%e170267170347%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl170266170344%_))))
                                      (let ((_%hd170268170350%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e170267170347%_)))
                                            (_%tl170269170352%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e170267170347%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd170268170350%_))
                                            (let ((_%e170270170355%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd170268170350%_))))
                                              (let ((_%hd170271170358%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e170270170355%_)))
                                                    (_%tl170272170360%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e170270170355%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd170271170358%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd170271170358%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl170272170360%_))
                                                            (let ((_%e170273170363%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl170272170360%_))))
                      (let ((_%hd170274170366%_
                             (let ()
                               (declare (not safe))
                               (##car _%e170273170363%_)))
                            (_%tl170275170368%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e170273170363%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl170275170368%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl170269170352%_))
                                (let ((_%e170276170371%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl170269170352%_))))
                                  (let ((_%hd170277170374%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e170276170371%_)))
                                        (_%tl170278170376%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e170276170371%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd170277170374%_))
                                        (let ((_%e170279170379%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd170277170374%_))))
                                          (let ((_%hd170280170382%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e170279170379%_)))
                                                (_%tl170281170384%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e170279170379%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _%hd170280170382%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _%hd170280170382%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl170281170384%_))
                                                        (let ((_%e170282170387%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl170281170384%_))))
                  (let ((_%hd170283170390%_
                         (let ()
                           (declare (not safe))
                           (##car _%e170282170387%_)))
                        (_%tl170284170392%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e170282170387%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl170284170392%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl170278170376%_))
                            (let ((_%e170285170395%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl170278170376%_))))
                              (let ((_%hd170286170398%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e170285170395%_)))
                                    (_%tl170287170400%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e170285170395%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd170286170398%_))
                                    (let ((_%e170288170403%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd170286170398%_))))
                                      (let ((_%hd170289170406%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e170288170403%_)))
                                            (_%tl170290170408%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e170288170403%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _%hd170289170406%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _%hd170289170406%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl170290170408%_))
                                                    (let ((_%e170291170411%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl170290170408%_))))
                                                      (let ((_%hd170292170414%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e170291170411%_)))
                    (_%tl170293170416%_
                     (let () (declare (not safe)) (##cdr _%e170291170411%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl170293170416%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%tl170287170400%_))
                        (if (let ((__tmp172662
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-length _%tl170287170400%_))))
                              (declare (not safe))
                              (##fx>= __tmp172662 '1))
                            (let ((_g172663_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _%tl170287170400%_
                                      '1))))
                              (begin
                                (let ((_g172664_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g172663_)
                                             (##vector-length _g172663_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g172664_ 2)))
                                      (error "Context expects 2 values"
                                             _g172664_)))
                                (let ((_%target170294170419%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g172663_ 0)))
                                      (_%tl170296170421%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g172663_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl170296170421%_))
                                      (let ((_%e170303170424%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl170296170421%_))))
                                        (let ((_%hd170304170427%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e170303170424%_)))
                                              (_%tl170305170429%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e170303170424%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl170305170429%_))
                                              (letrec ((_%loop170297170432%_
                                                        (lambda (_%hd170295170435%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%kw-ref170301170437%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd170295170435%_))
                      (let ((_%e170298170440%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd170295170435%_))))
                        (let ((_%lp-hd170299170443%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e170298170440%_)))
                              (_%lp-tl170300170445%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e170298170440%_))))
                          (_%loop170297170432%_
                           _%lp-tl170300170445%_
                           (cons _%lp-hd170299170443%_
                                 _%kw-ref170301170437%_))))
                      (let ((_%kw-ref170302170448%_
                             (reverse _%kw-ref170301170437%_)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl170263170336%_))
                            ((lambda (_%L170451%_
                                      _%L170452%_
                                      _%L170453%_
                                      _%L170454%_
                                      _%L170455%_)
                               (let* ((_%kw-count170506%_
                                       (length (let ((__tmp172665
                                                      (lambda (_%g170498170501%_
                                                               _%g170499170503%_)
                                                        (cons _%g170498170501%_
                                                              _%g170499170503%_))))
                                                 (declare (not safe))
                                                 (__foldr1
                                                  __tmp172665
                                                  '()
                                                  _%L170452%_))))
                                      (_%self-index170508%_
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _%kw-count170506%_ '1))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#lambda-expr? _%L170206%_))
                                     (let* ((_%g170512170526%_
                                             (lambda (_%g170513170523%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g170513170523%_))))
                                            (_%g170511170649%_
                                             (lambda (_%g170513170529%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%g170513170529%_))
                                                   (let ((_%e170516170531%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%g170513170529%_))))
                                                     (let ((_%hd170517170534%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e170516170531%_)))
                                                           (_%tl170518170536%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e170516170531%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl170518170536%_))
                                                           (let ((_%e170519170539%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl170518170536%_))))
                     (let ((_%hd170520170542%_
                            (let ()
                              (declare (not safe))
                              (##car _%e170519170539%_)))
                           (_%tl170521170544%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e170519170539%_))))
                       ((lambda (_%L170547%_ _%L170548%_)
                          (let* ((_%self170565%_
                                  (list-ref _%L170548%_ _%self-index170508%_))
                                 (_%receiver170570%_
                                  (let ((_%$e170567%_
                                         (gxc#apply-extract-receiver
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   '%#begin))
                                                _%L170547%_))))
                                    (if _%$e170567%_
                                        _%$e170567%_
                                        _%self170565%_))))
                            (for-each
                             (lambda (_%g170572170574%_)
                               (gxc#apply-collect-object-refs__%
                                '#f
                                _%receiver170570%_
                                _%method-calls168498%_
                                _%slot-refs168499%_
                                _%g170572170574%_))
                             _%L170547%_)
                            (if (_%no-specializer?168502%_)
                                _%stx168406%_
                                (let* ((_%specializer-id170583%_
                                        (let* ((_%id170577%_
                                                (let ((__tmp172666
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%L168479%_))))
                                                  (declare (not safe))
                                                  (make-symbol__1
                                                   __tmp172666
                                                   '"::specialize")))
                                               (_%specializer-id170580%_
                                                (let ((__tmp172667
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-source
                                                          _%stx168406%_))))
                                                  (declare (not safe))
                                                  (gx#core-quote-syntax__1
                                                   _%id170577%_
                                                   __tmp172667))))
                                          (let ()
                                            (declare (not safe))
                                            (gx#core-bind-runtime!__0
                                             _%specializer-id170580%_))
                                          _%specializer-id170580%_))
                                       (_%$klass170585%_
                                        (let ((__tmp172668
                                               (let ()
                                                 (declare (not safe))
                                                 (##gensym '__klass))))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp172668)))
                                       (_%$method-table170587%_
                                        (let ((__tmp172669
                                               (let ()
                                                 (declare (not safe))
                                                 (##gensym '__method-table))))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp172669)))
                                       (_%methods170589%_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys _%method-calls168498%_)))
                                       (_%$methods170593%_
                                        (map (lambda (_%id170591%_)
                                               (let ((__tmp172670
                                                      (gensym _%id170591%_)))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  '"__"
                                                  __tmp172670)))
                                             _%methods170589%_))
                                       (_%_170602%_
                                        (for-each
                                         (lambda (_%g170594170597%_
                                                  _%g170595170599%_)
                                           (let ()
                                             (declare (not safe))
                                             (hash-put!
                                              _%method-calls168498%_
                                              _%g170594170597%_
                                              _%g170595170599%_)))
                                         _%methods170589%_
                                         _%$methods170593%_))
                                       (_%methods-bind170612%_
                                        (map (lambda (_%g170604170607%_
                                                      _%g170605170609%_)
                                               (_%generate-method-bind168408%_
                                                _%$klass170585%_
                                                _%$method-table170587%_
                                                _%g170604170607%_
                                                _%g170605170609%_))
                                             _%methods170589%_
                                             _%$methods170593%_))
                                       (_%slots170614%_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys _%slot-refs168499%_)))
                                       (_%$slots170618%_
                                        (map (lambda (_%id170616%_)
                                               (let ((__tmp172671
                                                      (gensym _%id170616%_)))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  '"__"
                                                  __tmp172671)))
                                             _%slots170614%_))
                                       (_%_170627%_
                                        (for-each
                                         (lambda (_%g170619170622%_
                                                  _%g170620170624%_)
                                           (let ()
                                             (declare (not safe))
                                             (hash-put!
                                              _%slot-refs168499%_
                                              _%g170619170622%_
                                              _%g170620170624%_)))
                                         _%slots170614%_
                                         _%$slots170618%_))
                                       (_%slots-bind170636%_
                                        (map (lambda (_%g170628170631%_
                                                      _%g170629170633%_)
                                               (_%generate-slot-bind168409%_
                                                _%$klass170585%_
                                                _%g170628170631%_
                                                _%g170629170633%_))
                                             _%slots170614%_
                                             _%$slots170618%_))
                                       (_%specializer-impl170644%_
                                        (let* ((_%specializer-body170642%_
                                                (map (lambda (_%g170637170639%_)
                                                       (gxc#apply-subst-object-refs__%
                                                        '#f
                                                        _%receiver170570%_
                                                        _%$klass170585%_
                                                        _%method-calls168498%_
                                                        _%slot-refs168499%_
                                                        _%g170637170639%_))
                                                     _%L170547%_))
                                               (__tmp172672
                                                (cons '%#let-values
                                                      (cons (cons (cons (cons _%L170208%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      '())
                                (cons (cons '%#let-values
                                            (cons (cons (cons (cons _%L170207%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())
                      (cons (let ((__tmp172673
                                   (cons '%#lambda
                                         (cons _%L170548%_
                                               _%specializer-body170642%_))))
                              (declare (not safe))
                              (gxc#xform-wrap-source __tmp172673 _%L170206%_))
                            '()))
                '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons _%L170205%_ '())))
                                      '()))
                          '())
                    (cons _%L170204%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp172672
                                           _%stx168406%_)))
                                       (_%specializer-impl170646%_
                                        (_%generate-specializer-impl168410%_
                                         _%$klass170585%_
                                         _%$method-table170587%_
                                         _%methods-bind170612%_
                                         _%slots-bind170636%_
                                         _%specializer-impl170644%_)))
                                  (let ((__tmp172675
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%L168479%_)))
                                        (__tmp172674
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e
                                            _%specializer-id170583%_))))
                                    (declare (not safe))
                                    (gxc#verbose
                                     '"generate method specializer "
                                     __tmp172675
                                     '" => "
                                     __tmp172674))
                                  (_%generate-specializer-def168411%_
                                   _%L168479%_
                                   _%specializer-id170583%_
                                   _%specializer-impl170646%_)))))
                        _%tl170521170544%_
                        _%hd170520170542%_)))
                   (_%g170512170526%_ _%g170513170529%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g170512170526%_
                                                    _%g170513170529%_)))))
                                       (_%g170511170649%_ _%L170206%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#opt-lambda-expr? _%L170206%_))
                                         (let* ((_%g170653170683%_
                                                 (lambda (_%g170654170680%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g170654170680%_))))
                                                (_%g170652171251%_
                                                 (lambda (_%g170654170686%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%g170654170686%_))
                                                       (let ((_%e170658170688%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%g170654170686%_))))
                 (let ((_%hd170659170691%_
                        (let ()
                          (declare (not safe))
                          (##car _%e170658170688%_)))
                       (_%tl170660170693%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e170658170688%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%tl170660170693%_))
                       (let ((_%e170661170696%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%tl170660170693%_))))
                         (let ((_%hd170662170699%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e170661170696%_)))
                               (_%tl170663170701%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e170661170696%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%hd170662170699%_))
                               (let ((_%e170664170704%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%hd170662170699%_))))
                                 (let ((_%hd170665170707%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e170664170704%_)))
                                       (_%tl170666170709%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e170664170704%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd170665170707%_))
                                       (let ((_%e170667170712%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd170665170707%_))))
                                         (let ((_%hd170668170715%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e170667170712%_)))
                                               (_%tl170669170717%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e170667170712%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%hd170668170715%_))
                                               (let ((_%e170670170720%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%hd170668170715%_))))
                                                 (let ((_%hd170671170723%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e170670170720%_)))
                                                       (_%tl170672170725%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e170670170720%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl170672170725%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl170669170717%_))
                                                           (let ((_%e170673170728%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl170669170717%_))))
                     (let ((_%hd170674170731%_
                            (let ()
                              (declare (not safe))
                              (##car _%e170673170728%_)))
                           (_%tl170675170733%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e170673170728%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl170675170733%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%tl170666170709%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%tl170663170701%_))
                                   (let ((_%e170676170736%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%tl170663170701%_))))
                                     (let ((_%hd170677170739%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e170676170736%_)))
                                           (_%tl170678170741%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e170676170736%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl170678170741%_))
                                           ((lambda (_%L170744%_
                                                     _%L170745%_
                                                     _%L170746%_)
                                              (let* ((_%g170770170784%_
                                                      (lambda (_%g170771170781%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g170771170781%_))))
                                                     (_%g170769170831%_
                                                      (lambda (_%g170771170787%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g170771170787%_))
                                                            (let ((_%e170774170789%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%g170771170787%_))))
                      (let ((_%hd170775170792%_
                             (let ()
                               (declare (not safe))
                               (##car _%e170774170789%_)))
                            (_%tl170776170794%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e170774170789%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl170776170794%_))
                            (let ((_%e170777170797%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl170776170794%_))))
                              (let ((_%hd170778170800%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e170777170797%_)))
                                    (_%tl170779170802%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e170777170797%_))))
                                ((lambda (_%L170805%_ _%L170806%_)
                                   (let* ((_%self170819%_
                                           (list-ref
                                            _%L170806%_
                                            _%self-index170508%_))
                                          (_%receiver170824%_
                                           (let ((_%$e170821%_
                                                  (gxc#apply-extract-receiver
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gx#datum->syntax__0
                                                            '#f
                                                            '%#begin))
                                                         _%L170805%_))))
                                             (if _%$e170821%_
                                                 _%$e170821%_
                                                 _%self170819%_))))
                                     (for-each
                                      (lambda (_%g170826170828%_)
                                        (gxc#apply-collect-object-refs__%
                                         '#f
                                         _%receiver170824%_
                                         _%method-calls168498%_
                                         _%slot-refs168499%_
                                         _%g170826170828%_))
                                      _%L170805%_)))
                                 _%tl170779170802%_
                                 _%hd170778170800%_)))
                            (_%g170770170784%_ _%g170771170787%_))))
                    (_%g170770170784%_ _%g170771170787%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g170769170831%_
                                                 _%L170745%_))
                                              (let* ((_%g170834170853%_
                                                      (lambda (_%g170835170850%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g170835170850%_))))
                                                     (_%g170833170964%_
                                                      (lambda (_%g170835170856%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g170835170856%_))
                                                            (let ((_%e170837170858%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%g170835170856%_))))
                      (let ((_%hd170838170861%_
                             (let ()
                               (declare (not safe))
                               (##car _%e170837170858%_)))
                            (_%tl170839170863%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e170837170858%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _%tl170839170863%_))
                            (let ((_g172676_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _%tl170839170863%_
                                      '0))))
                              (begin
                                (let ((_g172677_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g172676_)
                                             (##vector-length _g172676_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g172677_ 2)))
                                      (error "Context expects 2 values"
                                             _g172677_)))
                                (let ((_%target170840170866%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g172676_ 0)))
                                      (_%tl170842170868%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g172676_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl170842170868%_))
                                      (letrec ((_%loop170843170871%_
                                                (lambda (_%hd170841170874%_
                                                         _%clause170847170876%_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%hd170841170874%_))
                                                      (let ((_%e170844170879%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd170841170874%_))))
                (let ((_%lp-hd170845170882%_
                       (let () (declare (not safe)) (##car _%e170844170879%_)))
                      (_%lp-tl170846170884%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e170844170879%_))))
                  (_%loop170843170871%_
                   _%lp-tl170846170884%_
                   (cons _%lp-hd170845170882%_ _%clause170847170876%_))))
              (let ((_%clause170848170887%_ (reverse _%clause170847170876%_)))
                ((lambda (_%L170890%_)
                   (for-each
                    (lambda (_%clause170903%_)
                      (let* ((_%g170905170916%_
                              (lambda (_%g170906170913%_)
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g170906170913%_))))
                             (_%g170904170954%_
                              (lambda (_%g170906170919%_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%g170906170919%_))
                                    (let ((_%e170909170921%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%g170906170919%_))))
                                      (let ((_%hd170910170924%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e170909170921%_)))
                                            (_%tl170911170926%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e170909170921%_))))
                                        ((lambda (_%L170929%_ _%L170930%_)
                                           (let* ((_%self170942%_
                                                   (list-ref
                                                    _%L170930%_
                                                    _%self-index170508%_))
                                                  (_%receiver170947%_
                                                   (let ((_%$e170944%_
                                                          (gxc#apply-extract-receiver
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '%#begin))
                         _%L170929%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _%$e170944%_
                                                         _%$e170944%_
                                                         _%self170942%_))))
                                             (for-each
                                              (lambda (_%g170949170951%_)
                                                (gxc#apply-collect-object-refs__%
                                                 '#f
                                                 _%receiver170947%_
                                                 _%method-calls168498%_
                                                 _%slot-refs168499%_
                                                 _%g170949170951%_))
                                              _%L170929%_)))
                                         _%tl170911170926%_
                                         _%hd170910170924%_)))
                                    (_%g170905170916%_ _%g170906170919%_)))))
                        (_%g170904170954%_ _%clause170903%_)))
                    (let ((__tmp172678
                           (lambda (_%g170956170959%_ _%g170957170961%_)
                             (cons _%g170956170959%_ _%g170957170961%_))))
                      (declare (not safe))
                      (__foldr1 __tmp172678 '() _%L170890%_))))
                 _%clause170848170887%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_%loop170843170871%_
                                         _%target170840170866%_
                                         '()))
                                      (_%g170834170853%_ _%g170835170856%_)))))
                            (_%g170834170853%_ _%g170835170856%_))))
                    (_%g170834170853%_ _%g170835170856%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g170833170964%_
                                                 _%L170744%_))
                                              (if (_%no-specializer?168502%_)
                                                  _%stx168406%_
                                                  (let* ((_%specializer-id170973%_
                                                          (let* ((_%id170967%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp172679
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%L168479%_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp172679 '"::specialize")))
                         (_%specializer-id170970%_
                          (let ((__tmp172680
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _%stx168406%_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _%id170967%_
                             __tmp172680))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _%specializer-id170970%_))
                    _%specializer-id170970%_))
                 (_%$klass170975%_
                  (let ((__tmp172681
                         (let () (declare (not safe)) (##gensym '__klass))))
                    (declare (not safe))
                    (make-symbol__0 __tmp172681)))
                 (_%$method-table170977%_
                  (let ((__tmp172682
                         (let ()
                           (declare (not safe))
                           (##gensym '__method-table))))
                    (declare (not safe))
                    (make-symbol__0 __tmp172682)))
                 (_%methods170979%_
                  (let ()
                    (declare (not safe))
                    (hash-keys _%method-calls168498%_)))
                 (_%$methods170983%_
                  (map (lambda (_%id170981%_)
                         (let ((__tmp172683 (gensym _%id170981%_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp172683)))
                       _%methods170979%_))
                 (_%_170992%_
                  (for-each
                   (lambda (_%g170984170987%_ _%g170985170989%_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _%method-calls168498%_
                        _%g170984170987%_
                        _%g170985170989%_)))
                   _%methods170979%_
                   _%$methods170983%_))
                 (_%methods-bind171002%_
                  (map (lambda (_%g170994170997%_ _%g170995170999%_)
                         (_%generate-method-bind168408%_
                          _%$klass170975%_
                          _%$method-table170977%_
                          _%g170994170997%_
                          _%g170995170999%_))
                       _%methods170979%_
                       _%$methods170983%_))
                 (_%slots171004%_
                  (let ()
                    (declare (not safe))
                    (hash-keys _%slot-refs168499%_)))
                 (_%$slots171008%_
                  (map (lambda (_%id171006%_)
                         (let ((__tmp172684 (gensym _%id171006%_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp172684)))
                       _%slots171004%_))
                 (_%_171017%_
                  (for-each
                   (lambda (_%g171009171012%_ _%g171010171014%_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _%slot-refs168499%_
                        _%g171009171012%_
                        _%g171010171014%_)))
                   _%slots171004%_
                   _%$slots171008%_))
                 (_%slots-bind171026%_
                  (map (lambda (_%g171018171021%_ _%g171019171023%_)
                         (_%generate-slot-bind168409%_
                          _%$klass170975%_
                          _%g171018171021%_
                          _%g171019171023%_))
                       _%slots171004%_
                       _%$slots171008%_))
                 (_%specializer-lambda-expr171104%_
                  (let* ((_%g171028171042%_
                          (lambda (_%g171029171039%_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g171029171039%_))))
                         (_%g171027171101%_
                          (lambda (_%g171029171045%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%g171029171045%_))
                                (let ((_%e171032171047%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%g171029171045%_))))
                                  (let ((_%hd171033171050%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e171032171047%_)))
                                        (_%tl171034171052%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e171032171047%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl171034171052%_))
                                        (let ((_%e171035171055%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl171034171052%_))))
                                          (let ((_%hd171036171058%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e171035171055%_)))
                                                (_%tl171037171060%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e171035171055%_))))
                                            ((lambda (_%L171063%_ _%L171064%_)
                                               (let* ((_%self171087%_
                                                       (list-ref
                                                        _%L171064%_
                                                        _%self-index170508%_))
                                                      (_%receiver171092%_
                                                       (let ((_%$e171089%_
                                                              (gxc#apply-extract-receiver
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f '%#begin))
                             _%L171063%_))))
                 (if _%$e171089%_ _%$e171089%_ _%self171087%_)))
              (_%body171098%_
               (map (lambda (_%g171093171095%_)
                      (gxc#apply-subst-object-refs__%
                       '#f
                       _%receiver171092%_
                       _%$klass170975%_
                       _%method-calls168498%_
                       _%slot-refs168499%_
                       _%g171093171095%_))
                    _%L171063%_))
              (__tmp172685 (cons '%#lambda (cons _%L171064%_ _%body171098%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp172685
                                                  _%L170745%_)))
                                             _%tl171037171060%_
                                             _%hd171036171058%_)))
                                        (_%g171028171042%_
                                         _%g171029171045%_))))
                                (_%g171028171042%_ _%g171029171045%_)))))
                    (_%g171027171101%_ _%L170745%_)))
                 (_%specializer-case-lambda-expr171244%_
                  (let* ((_%g171106171125%_
                          (lambda (_%g171107171122%_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g171107171122%_))))
                         (_%g171105171241%_
                          (lambda (_%g171107171128%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%g171107171128%_))
                                (let ((_%e171109171130%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%g171107171128%_))))
                                  (let ((_%hd171110171133%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e171109171130%_)))
                                        (_%tl171111171135%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e171109171130%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl171111171135%_))
                                        (let ((_g172686_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl171111171135%_
                                                  '0))))
                                          (begin
                                            (let ((_g172687_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g172686_)
                                                         (##vector-length
                                                          _g172686_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g172687_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g172687_)))
                                            (let ((_%target171112171138%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g172686_
                                                      0)))
                                                  (_%tl171114171140%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g172686_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl171114171140%_))
                                                  (letrec ((_%loop171115171143%_
                                                            (lambda (_%hd171113171146%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%clause171119171148%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd171113171146%_))
                          (let ((_%e171116171151%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd171113171146%_))))
                            (let ((_%lp-hd171117171154%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e171116171151%_)))
                                  (_%lp-tl171118171156%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e171116171151%_))))
                              (_%loop171115171143%_
                               _%lp-tl171118171156%_
                               (cons _%lp-hd171117171154%_
                                     _%clause171119171148%_))))
                          (let ((_%clause171120171159%_
                                 (reverse _%clause171119171148%_)))
                            ((lambda (_%L171162%_)
                               (let* ((_%clauses171239%_
                                       (map (lambda (_%clause171176%_)
                                              (let* ((_%g171178171189%_
                                                      (lambda (_%g171179171186%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g171179171186%_))))
                                                     (_%g171177171229%_
                                                      (lambda (_%g171179171192%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g171179171192%_))
                                                            (let ((_%e171182171194%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%g171179171192%_))))
                      (let ((_%hd171183171197%_
                             (let ()
                               (declare (not safe))
                               (##car _%e171182171194%_)))
                            (_%tl171184171199%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e171182171194%_))))
                        ((lambda (_%L171202%_ _%L171203%_)
                           (let* ((_%self171215%_
                                   (list-ref _%L171203%_ _%self-index170508%_))
                                  (_%receiver171220%_
                                   (let ((_%$e171217%_
                                          (gxc#apply-extract-receiver
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    '%#begin))
                                                 _%L171202%_))))
                                     (if _%$e171217%_
                                         _%$e171217%_
                                         _%self171215%_)))
                                  (_%body171226%_
                                   (map (lambda (_%g171221171223%_)
                                          (gxc#apply-subst-object-refs__%
                                           '#f
                                           _%receiver171220%_
                                           _%$klass170975%_
                                           _%method-calls168498%_
                                           _%slot-refs168499%_
                                           _%g171221171223%_))
                                        _%L171202%_)))
                             (cons _%L171203%_ _%body171226%_)))
                         _%tl171184171199%_
                         _%hd171183171197%_)))
                    (_%g171178171189%_ _%g171179171192%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g171177171229%_
                                                 _%clause171176%_)))
                                            (let ((__tmp172688
                                                   (lambda (_%g171231171234%_
                                                            _%g171232171236%_)
                                                     (cons _%g171231171234%_
                                                           _%g171232171236%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp172688
                                               '()
                                               _%L171162%_))))
                                      (__tmp172689
                                       (cons '%#case-lambda
                                             _%clauses171239%_)))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp172689
                                  _%L170744%_)))
                             _%clause171120171159%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop171115171143%_
                                                     _%target171112171138%_
                                                     '()))
                                                  (_%g171106171125%_
                                                   _%g171107171128%_)))))
                                        (_%g171106171125%_
                                         _%g171107171128%_))))
                                (_%g171106171125%_ _%g171107171128%_)))))
                    (_%g171105171241%_ _%L170744%_)))
                 (_%specializer-impl171246%_
                  (let ((__tmp172690
                         (cons '%#let-values
                               (cons (cons (cons (cons _%L170208%_ '())
                                                 (cons (cons '%#let-values
                                                             (cons (cons (cons (cons _%L170207%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                             '())
                                       (cons (let ((__tmp172691
                                                    (cons '%#let-values
                                                          (cons (cons (cons (cons _%L170746%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                          '())
                                    (cons _%specializer-lambda-expr171104%_
                                          '()))
                              '())
                        (cons _%specializer-case-lambda-expr171244%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp172691
                                                _%stx168406%_))
                                             '()))
                                 '())
                           (cons _%L170205%_ '())))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())
                                     (cons _%L170204%_ '())))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp172690 _%stx168406%_)))
                 (_%specializer-impl171248%_
                  (_%generate-specializer-impl168410%_
                   _%$klass170975%_
                   _%$method-table170977%_
                   _%methods-bind171002%_
                   _%slots-bind171026%_
                   _%specializer-impl171246%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp172693
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%L168479%_)))
                                                          (__tmp172692
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%specializer-id170973%_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp172693
                                                       '" => "
                                                       __tmp172692))
                                                    (_%generate-specializer-def168411%_
                                                     _%L168479%_
                                                     _%specializer-id170973%_
                                                     _%specializer-impl171248%_))))
                                            _%hd170677170739%_
                                            _%hd170674170731%_
                                            _%hd170671170723%_)
                                           (_%g170653170683%_
                                            _%g170654170686%_))))
                                   (_%g170653170683%_ _%g170654170686%_))
                               (_%g170653170683%_ _%g170654170686%_))
                           (_%g170653170683%_ _%g170654170686%_))))
                   (_%g170653170683%_ _%g170654170686%_))
               (_%g170653170683%_ _%g170654170686%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g170653170683%_
                                                _%g170654170686%_))))
                                       (_%g170653170683%_ _%g170654170686%_))))
                               (_%g170653170683%_ _%g170654170686%_))))
                       (_%g170653170683%_ _%g170654170686%_))))
               (_%g170653170683%_ _%g170654170686%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g170652171251%_ _%L170206%_))
                                         _%stx168406%_))))
                             _%hd170304170427%_
                             _%kw-ref170302170448%_
                             _%hd170292170414%_
                             _%hd170283170390%_
                             _%hd170274170366%_)
                            (_%g170248170310%_ _%g170249170313%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop170297170432%_
                                                 _%target170294170419%_
                                                 '()))
                                              (_%g170248170310%_
                                               _%g170249170313%_))))
                                      (_%g170248170310%_ _%g170249170313%_)))))
                            (_%g170248170310%_ _%g170249170313%_))
                        (_%g170248170310%_ _%g170249170313%_))
                    (_%g170248170310%_ _%g170249170313%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g170248170310%_
                                                     _%g170249170313%_))
                                                (_%g170248170310%_
                                                 _%g170249170313%_))
                                            (_%g170248170310%_
                                             _%g170249170313%_))))
                                    (_%g170248170310%_ _%g170249170313%_))))
                            (_%g170248170310%_ _%g170249170313%_))
                        (_%g170248170310%_ _%g170249170313%_))))
                (_%g170248170310%_ _%g170249170313%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g170248170310%_
                                                     _%g170249170313%_))
                                                (_%g170248170310%_
                                                 _%g170249170313%_))))
                                        (_%g170248170310%_
                                         _%g170249170313%_))))
                                (_%g170248170310%_ _%g170249170313%_))
                            (_%g170248170310%_ _%g170249170313%_))))
                    (_%g170248170310%_ _%g170249170313%_))
                (_%g170248170310%_ _%g170249170313%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g170248170310%_
                                                     _%g170249170313%_))))
                                            (_%g170248170310%_
                                             _%g170249170313%_))))
                                    (_%g170248170310%_ _%g170249170313%_))
                                (_%g170248170310%_ _%g170249170313%_))
                            (_%g170248170310%_ _%g170249170313%_))))
                    (_%g170248170310%_ _%g170249170313%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g170248170310%_
                                                     _%g170249170313%_))))
                                            (_%g170248170310%_
                                             _%g170249170313%_))
                                        (_%g170248170310%_ _%g170249170313%_))
                                    (_%g170248170310%_ _%g170249170313%_))))
                            (_%g170248170310%_ _%g170249170313%_)))))
                (_%g170247171255%_ _%L170205%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%hd170081170199%_
                                                    _%hd170078170191%_
                                                    _%hd170075170183%_
                                                    _%hd170072170175%_
                                                    _%hd170054170127%_)
                                                   (_%g170034170087%_
                                                    _%g170035170090%_))))
                                           (_%g170034170087%_
                                            _%g170035170090%_))
                                       (_%g170034170087%_ _%g170035170090%_))
                                   (_%g170034170087%_ _%g170035170090%_))
                               (_%g170034170087%_ _%g170035170090%_))))
                       (_%g170034170087%_ _%g170035170090%_))
                   (_%g170034170087%_ _%g170035170090%_))
               (_%g170034170087%_ _%g170035170090%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g170034170087%_
                                                _%g170035170090%_))
                                           (_%g170034170087%_
                                            _%g170035170090%_))))
                                   (_%g170034170087%_ _%g170035170090%_))))
                           (_%g170034170087%_ _%g170035170090%_))))
                   (_%g170034170087%_ _%g170035170090%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g170034170087%_
                                                    _%g170035170090%_))
                                               (_%g170034170087%_
                                                _%g170035170090%_))
                                           (_%g170034170087%_
                                            _%g170035170090%_))))
                                   (_%g170034170087%_ _%g170035170090%_))))
                           (_%g170034170087%_ _%g170035170090%_))
                       (_%g170034170087%_ _%g170035170090%_))))
               (_%g170034170087%_ _%g170035170090%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g170034170087%_
                                                _%g170035170090%_))))
                                       (_%g170034170087%_ _%g170035170090%_))))
                               (_%g170034170087%_ _%g170035170090%_))
                           (_%g170034170087%_ _%g170035170090%_))
                       (_%g170034170087%_ _%g170035170090%_))))
               (_%g170034170087%_ _%g170035170090%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g170033171258%_ _%L168478%_))
                                         _%stx168406%_))))))))
                  (_%__kont171492171493%_ (lambda () _%stx168406%_)))
              (let ((_%__match171521171522%_
                     (lambda (_%e168418168446%_
                              _%hd168419168449%_
                              _%tl168420168451%_
                              _%e168421168454%_
                              _%hd168422168457%_
                              _%tl168423168459%_
                              _%e168424168462%_
                              _%hd168425168465%_
                              _%tl168426168467%_
                              _%e168427168470%_
                              _%hd168428168473%_
                              _%tl168429168475%_)
                       (let ((_%L168478%_ _%hd168428168473%_)
                             (_%L168479%_ _%hd168425168465%_))
                         (if (let ((__tmp172694
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _%L168479%_))))
                               (declare (not safe))
                               (gxc#optimizer-top-level-method? __tmp172694))
                             (_%__kont171490171491%_ _%L168478%_ _%L168479%_)
                             (_%__kont171492171493%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx171488171489%_))
                    (let ((_%e168418168446%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx171488171489%_))))
                      (let ((_%tl168420168451%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e168418168446%_)))
                            (_%hd168419168449%_
                             (let ()
                               (declare (not safe))
                               (##car _%e168418168446%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl168420168451%_))
                            (let ((_%e168421168454%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl168420168451%_))))
                              (let ((_%tl168423168459%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e168421168454%_)))
                                    (_%hd168422168457%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e168421168454%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd168422168457%_))
                                    (let ((_%e168424168462%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd168422168457%_))))
                                      (let ((_%tl168426168467%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e168424168462%_)))
                                            (_%hd168425168465%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e168424168462%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl168426168467%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl168423168459%_))
                                                (let ((_%e168427168470%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl168423168459%_))))
                                                  (let ((_%tl168429168475%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e168427168470%_)))
                                                        (_%hd168428168473%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e168427168470%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl168429168475%_))
                                                        (_%__match171521171522%_
                                                         _%e168418168446%_
                                                         _%hd168419168449%_
                                                         _%tl168420168451%_
                                                         _%e168421168454%_
                                                         _%hd168422168457%_
                                                         _%tl168423168459%_
                                                         _%e168424168462%_
                                                         _%hd168425168465%_
                                                         _%tl168426168467%_
                                                         _%e168427168470%_
                                                         _%hd168428168473%_
                                                         _%tl168429168475%_)
                                                        (_%__kont171492171493%_))))
                                                (_%__kont171492171493%_))
                                            (_%__kont171492171493%_))))
                                    (_%__kont171492171493%_))))
                            (_%__kont171492171493%_))))
                    (_%__kont171492171493%_))))))))
    (define gxc#extract-receiver-begin-annotation%
      (lambda (_%self168258%_ _%stx168259%_)
        (let* ((_%__stx171524171525%_ _%stx168259%_)
               (_%g168262168295%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx171524171525%_)))))
          (let ((_%__kont171526171527%_ (lambda (_%L168385%_) _%L168385%_))
                (_%__kont171528171529%_
                 (lambda (_%L168324%_ _%L168325%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self168258%_ _%L168324%_)))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx171524171525%_))
                (let ((_%e168265168345%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%__stx171524171525%_))))
                  (let ((_%tl168267168350%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e168265168345%_)))
                        (_%hd168266168348%_
                         (let ()
                           (declare (not safe))
                           (##car _%e168265168345%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl168267168350%_))
                        (let ((_%e168268168353%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl168267168350%_))))
                          (let ((_%tl168270168358%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e168268168353%_)))
                                (_%hd168269168356%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e168268168353%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd168269168356%_))
                                (let ((_%e168271168361%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd168269168356%_))))
                                  (let ((_%tl168273168366%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e168271168361%_)))
                                        (_%hd168272168364%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e168271168361%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd168272168364%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '@receiver
                                               _%hd168272168364%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl168273168366%_))
                                                (let ((_%e168274168369%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl168273168366%_))))
                                                  (let ((_%tl168276168374%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e168274168369%_)))
                                                        (_%hd168275168372%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e168274168369%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl168276168374%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl168270168358%_))
                                                            (let ((_%e168277168377%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl168270168358%_))))
                      (let ((_%tl168279168382%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e168277168377%_)))
                            (_%hd168278168380%_
                             (let ()
                               (declare (not safe))
                               (##car _%e168277168377%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl168279168382%_))
                            (_%__kont171526171527%_ _%hd168275168372%_)
                            (let ()
                              (declare (not safe))
                              (_%g168262168295%_)))))
                    (let () (declare (not safe)) (_%g168262168295%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl168270168358%_))
                    (let ((_%e168288168316%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl168270168358%_))))
                      (let ((_%tl168290168321%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e168288168316%_)))
                            (_%hd168289168319%_
                             (let ()
                               (declare (not safe))
                               (##car _%e168288168316%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl168290168321%_))
                            (_%__kont171528171529%_
                             _%hd168289168319%_
                             _%hd168269168356%_)
                            (let ()
                              (declare (not safe))
                              (_%g168262168295%_)))))
                    (let () (declare (not safe)) (_%g168262168295%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl168270168358%_))
                                                    (let ((_%e168288168316%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl168270168358%_))))
                                                      (let ((_%tl168290168321%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e168288168316%_)))
                    (_%hd168289168319%_
                     (let () (declare (not safe)) (##car _%e168288168316%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl168290168321%_))
                    (_%__kont171528171529%_
                     _%hd168289168319%_
                     _%hd168269168356%_)
                    (let () (declare (not safe)) (_%g168262168295%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g168262168295%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl168270168358%_))
                                                (let ((_%e168288168316%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl168270168358%_))))
                                                  (let ((_%tl168290168321%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e168288168316%_)))
                                                        (_%hd168289168319%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e168288168316%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl168290168321%_))
                                                        (_%__kont171528171529%_
                                                         _%hd168289168319%_
                                                         _%hd168269168356%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g168262168295%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g168262168295%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl168270168358%_))
                                            (let ((_%e168288168316%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl168270168358%_))))
                                              (let ((_%tl168290168321%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e168288168316%_)))
                                                    (_%hd168289168319%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e168288168316%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl168290168321%_))
                                                    (_%__kont171528171529%_
                                                     _%hd168289168319%_
                                                     _%hd168269168356%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g168262168295%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g168262168295%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl168270168358%_))
                                    (let ((_%e168288168316%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl168270168358%_))))
                                      (let ((_%tl168290168321%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e168288168316%_)))
                                            (_%hd168289168319%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e168288168316%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl168290168321%_))
                                            (_%__kont171528171529%_
                                             _%hd168289168319%_
                                             _%hd168269168356%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g168262168295%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g168262168295%_))))))
                        (let () (declare (not safe)) (_%g168262168295%_)))))
                (let () (declare (not safe)) (_%g168262168295%_)))))))
    (define gxc#extract-receiver-if%
      (lambda (_%self168174%_ _%stx168175%_)
        (let* ((_%g168177168198%_
                (lambda (_%g168178168195%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g168178168195%_))))
               (_%g168176168255%_
                (lambda (_%g168178168201%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g168178168201%_))
                      (let ((_%e168182168203%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g168178168201%_))))
                        (let ((_%hd168183168206%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e168182168203%_)))
                              (_%tl168184168208%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e168182168203%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl168184168208%_))
                              (let ((_%e168185168211%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl168184168208%_))))
                                (let ((_%hd168186168214%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e168185168211%_)))
                                      (_%tl168187168216%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e168185168211%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl168187168216%_))
                                      (let ((_%e168188168219%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl168187168216%_))))
                                        (let ((_%hd168189168222%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e168188168219%_)))
                                              (_%tl168190168224%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e168188168219%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl168190168224%_))
                                              (let ((_%e168191168227%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl168190168224%_))))
                                                (let ((_%hd168192168230%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e168191168227%_)))
                                                      (_%tl168193168232%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e168191168227%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl168193168232%_))
                                                      ((lambda (_%L168235%_
                                                                _%L168236%_
                                                                _%L168237%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%self168174%_
                                                            _%L168236%_)))
                                                       _%hd168192168230%_
                                                       _%hd168189168222%_
                                                       _%hd168186168214%_)
                                                      (_%g168177168198%_
                                                       _%g168178168201%_))))
                                              (_%g168177168198%_
                                               _%g168178168201%_))))
                                      (_%g168177168198%_ _%g168178168201%_))))
                              (_%g168177168198%_ _%g168178168201%_))))
                      (_%g168177168198%_ _%g168178168201%_)))))
          (_%g168176168255%_ _%stx168175%_))))
    (define gxc#collect-object-refs-call%
      (lambda (_%self167135%_ _%stx167136%_)
        (let* ((_%__stx171590171591%_ _%stx167136%_)
               (_%g167144167366%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx171590171591%_)))))
          (let ((_%__kont171592171593%_
                 (lambda (_%L168123%_ _%L168124%_ _%L168125%_ _%L168126%_)
                   (let ((__tmp172696
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self167135%_ 'methods)))
                         (__tmp172695
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L168124%_))))
                     (declare (not safe))
                     (hash-put! __tmp172696 __tmp172695 '#t))
                   (for-each
                    (lambda (_%g168159168161%_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self167135%_ _%g168159168161%_)))
                    (let ((__tmp172697
                           (lambda (_%g168163168166%_ _%g168164168168%_)
                             (cons _%g168163168166%_ _%g168164168168%_))))
                      (declare (not safe))
                      (__foldr1 __tmp172697 '() _%L168123%_)))))
                (_%__kont171596171597%_
                 (lambda (_%L167958%_
                          _%L167959%_
                          _%L167960%_
                          _%L167961%_
                          _%L167962%_)
                   (let ((__tmp172699
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self167135%_ 'methods)))
                         (__tmp172698
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L167959%_))))
                     (declare (not safe))
                     (hash-put! __tmp172699 __tmp172698 '#t))
                   (for-each
                    (lambda (_%g168002168004%_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self167135%_ _%g168002168004%_)))
                    (let ((__tmp172700
                           (lambda (_%g168006168009%_ _%g168007168011%_)
                             (cons _%g168006168009%_ _%g168007168011%_))))
                      (declare (not safe))
                      (__foldr1 __tmp172700 '() _%L167958%_)))))
                (_%__kont171600171601%_
                 (lambda (_%L167791%_ _%L167792%_ _%L167793%_)
                   (let ((__tmp172702
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self167135%_ 'slots)))
                         (__tmp172701
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L167791%_))))
                     (declare (not safe))
                     (hash-put! __tmp172702 __tmp172701 '#t))))
                (_%__kont171602171603%_
                 (lambda (_%L167668%_ _%L167669%_ _%L167670%_ _%L167671%_)
                   (let ((__tmp172704
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self167135%_ 'slots)))
                         (__tmp172703
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L167669%_))))
                     (declare (not safe))
                     (hash-put! __tmp172704 __tmp172703 '#t))
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self167135%_ _%L167668%_))))
                (_%__kont171604171605%_
                 (lambda (_%L167542%_ _%L167543%_)
                   (let* ((_%accessor167565%_
                           (let ((__tmp172705
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _%L167543%_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp172705)))
                          (_%klass167567%_
                           (let ((__tmp172706
                                  (##structure-ref
                                   _%accessor167565%_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _%stx167136%_
                              __tmp172706)))
                          (_%slot167569%_
                           (##structure-ref
                            _%accessor167565%_
                            '3
                            gxc#!accessor::t
                            '#f)))
                     (if (and (not (##structure-ref
                                    _%accessor167565%_
                                    '4
                                    gxc#!accessor::t
                                    '#f))
                              (or (let ()
                                    (declare (not safe))
                                    (gxc#!class-struct-slot?
                                     _%klass167567%_
                                     _%slot167569%_))
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%klass167567%_
                                     '8
                                     '#f
                                     '#f))))
                         '#!void
                         (let ((__tmp172708
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _%self167135%_ 'slots)))
                               (__tmp172707
                                (##structure-ref
                                 _%accessor167565%_
                                 '3
                                 gxc#!accessor::t
                                 '#f)))
                           (declare (not safe))
                           (hash-put! __tmp172708 __tmp172707 '#t))))))
                (_%__kont171606171607%_
                 (lambda (_%L167442%_ _%L167443%_ _%L167444%_)
                   (let* ((_%mutator167471%_
                           (let ((__tmp172709
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _%L167444%_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp172709)))
                          (_%klass167473%_
                           (let ((__tmp172710
                                  (##structure-ref
                                   _%mutator167471%_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _%stx167136%_
                              __tmp172710)))
                          (_%slot167475%_
                           (##structure-ref
                            _%mutator167471%_
                            '3
                            gxc#!mutator::t
                            '#f)))
                     (if (and (not (##structure-ref
                                    _%mutator167471%_
                                    '4
                                    gxc#!mutator::t
                                    '#f))
                              (or (let ()
                                    (declare (not safe))
                                    (gxc#!class-struct-slot?
                                     _%klass167473%_
                                     _%slot167475%_))
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%klass167473%_
                                     '8
                                     '#f
                                     '#f))))
                         '#!void
                         (let ((__tmp172711
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _%self167135%_ 'slots))))
                           (declare (not safe))
                           (hash-put! __tmp172711 _%slot167475%_ '#t)))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-e__1 _%self167135%_ _%L167442%_)))))
                (_%__kont171608171609%_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#apply-operands _%self167135%_ _%stx167136%_)))))
            (let* ((_%__match172089172090%_
                    (lambda (_%e167338167378%_
                             _%hd167339167381%_
                             _%tl167340167383%_
                             _%e167341167386%_
                             _%hd167342167389%_
                             _%tl167343167391%_
                             _%e167344167394%_
                             _%hd167345167397%_
                             _%tl167346167399%_
                             _%e167347167402%_
                             _%hd167348167405%_
                             _%tl167349167407%_
                             _%e167350167410%_
                             _%hd167351167413%_
                             _%tl167352167415%_
                             _%e167353167418%_
                             _%hd167354167421%_
                             _%tl167355167423%_
                             _%e167356167426%_
                             _%hd167357167429%_
                             _%tl167358167431%_
                             _%e167359167434%_
                             _%hd167360167437%_
                             _%tl167361167439%_)
                      (let ((_%L167442%_ _%hd167360167437%_)
                            (_%L167443%_ _%hd167357167429%_)
                            (_%L167444%_ _%hd167348167405%_))
                        (if (and (let ((__tmp172712
                                        (let ((__tmp172713
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _%L167444%_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp172713))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp172712
                                    'gxc#!mutator::t))
                                 (let ((__tmp172714
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self167135%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L167443%_
                                    __tmp172714)))
                            (_%__kont171606171607%_
                             _%L167442%_
                             _%L167443%_
                             _%L167444%_)
                            (_%__kont171608171609%_)))))
                   (_%__match172087172088%_
                    (lambda (_%e167338167378%_
                             _%hd167339167381%_
                             _%tl167340167383%_
                             _%e167341167386%_
                             _%hd167342167389%_
                             _%tl167343167391%_
                             _%e167344167394%_
                             _%hd167345167397%_
                             _%tl167346167399%_
                             _%e167347167402%_
                             _%hd167348167405%_
                             _%tl167349167407%_
                             _%e167350167410%_
                             _%hd167351167413%_
                             _%tl167352167415%_
                             _%e167353167418%_
                             _%hd167354167421%_
                             _%tl167355167423%_
                             _%e167356167426%_
                             _%hd167357167429%_
                             _%tl167358167431%_
                             _%e167359167434%_
                             _%hd167360167437%_
                             _%tl167361167439%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl167361167439%_))
                          (_%__match172089172090%_
                           _%e167338167378%_
                           _%hd167339167381%_
                           _%tl167340167383%_
                           _%e167341167386%_
                           _%hd167342167389%_
                           _%tl167343167391%_
                           _%e167344167394%_
                           _%hd167345167397%_
                           _%tl167346167399%_
                           _%e167347167402%_
                           _%hd167348167405%_
                           _%tl167349167407%_
                           _%e167350167410%_
                           _%hd167351167413%_
                           _%tl167352167415%_
                           _%e167353167418%_
                           _%hd167354167421%_
                           _%tl167355167423%_
                           _%e167356167426%_
                           _%hd167357167429%_
                           _%tl167358167431%_
                           _%e167359167434%_
                           _%hd167360167437%_
                           _%tl167361167439%_)
                          (_%__kont171608171609%_))))
                   (_%__match172081172082%_
                    (lambda (_%e167338167378%_
                             _%hd167339167381%_
                             _%tl167340167383%_
                             _%e167341167386%_
                             _%hd167342167389%_
                             _%tl167343167391%_
                             _%e167344167394%_
                             _%hd167345167397%_
                             _%tl167346167399%_
                             _%e167347167402%_
                             _%hd167348167405%_
                             _%tl167349167407%_
                             _%e167350167410%_
                             _%hd167351167413%_
                             _%tl167352167415%_
                             _%e167353167418%_
                             _%hd167354167421%_
                             _%tl167355167423%_
                             _%e167356167426%_
                             _%hd167357167429%_
                             _%tl167358167431%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl167352167415%_))
                          (let ((_%e167359167434%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl167352167415%_))))
                            (let ((_%tl167361167439%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e167359167434%_)))
                                  (_%hd167360167437%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e167359167434%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl167361167439%_))
                                  (_%__match172089172090%_
                                   _%e167338167378%_
                                   _%hd167339167381%_
                                   _%tl167340167383%_
                                   _%e167341167386%_
                                   _%hd167342167389%_
                                   _%tl167343167391%_
                                   _%e167344167394%_
                                   _%hd167345167397%_
                                   _%tl167346167399%_
                                   _%e167347167402%_
                                   _%hd167348167405%_
                                   _%tl167349167407%_
                                   _%e167350167410%_
                                   _%hd167351167413%_
                                   _%tl167352167415%_
                                   _%e167353167418%_
                                   _%hd167354167421%_
                                   _%tl167355167423%_
                                   _%e167356167426%_
                                   _%hd167357167429%_
                                   _%tl167358167431%_
                                   _%e167359167434%_
                                   _%hd167360167437%_
                                   _%tl167361167439%_)
                                  (_%__kont171608171609%_))))
                          (_%__kont171608171609%_))))
                   (_%__match172027172028%_
                    (lambda (_%e167314167486%_
                             _%hd167315167489%_
                             _%tl167316167491%_
                             _%e167317167494%_
                             _%hd167318167497%_
                             _%tl167319167499%_
                             _%e167320167502%_
                             _%hd167321167505%_
                             _%tl167322167507%_
                             _%e167323167510%_
                             _%hd167324167513%_
                             _%tl167325167515%_
                             _%e167326167518%_
                             _%hd167327167521%_
                             _%tl167328167523%_
                             _%e167329167526%_
                             _%hd167330167529%_
                             _%tl167331167531%_
                             _%e167332167534%_
                             _%hd167333167537%_
                             _%tl167334167539%_)
                      (let ((_%L167542%_ _%hd167333167537%_)
                            (_%L167543%_ _%hd167324167513%_))
                        (if (and (let ((__tmp172715
                                        (let ((__tmp172716
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _%L167543%_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp172716))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp172715
                                    'gxc#!accessor::t))
                                 (let ((__tmp172717
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self167135%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L167542%_
                                    __tmp172717)))
                            (_%__kont171604171605%_ _%L167542%_ _%L167543%_)
                            (_%__kont171608171609%_)))))
                   (_%__match172025172026%_
                    (lambda (_%e167314167486%_
                             _%hd167315167489%_
                             _%tl167316167491%_
                             _%e167317167494%_
                             _%hd167318167497%_
                             _%tl167319167499%_
                             _%e167320167502%_
                             _%hd167321167505%_
                             _%tl167322167507%_
                             _%e167323167510%_
                             _%hd167324167513%_
                             _%tl167325167515%_
                             _%e167326167518%_
                             _%hd167327167521%_
                             _%tl167328167523%_
                             _%e167329167526%_
                             _%hd167330167529%_
                             _%tl167331167531%_
                             _%e167332167534%_
                             _%hd167333167537%_
                             _%tl167334167539%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl167328167523%_))
                          (_%__match172027172028%_
                           _%e167314167486%_
                           _%hd167315167489%_
                           _%tl167316167491%_
                           _%e167317167494%_
                           _%hd167318167497%_
                           _%tl167319167499%_
                           _%e167320167502%_
                           _%hd167321167505%_
                           _%tl167322167507%_
                           _%e167323167510%_
                           _%hd167324167513%_
                           _%tl167325167515%_
                           _%e167326167518%_
                           _%hd167327167521%_
                           _%tl167328167523%_
                           _%e167329167526%_
                           _%hd167330167529%_
                           _%tl167331167531%_
                           _%e167332167534%_
                           _%hd167333167537%_
                           _%tl167334167539%_)
                          (_%__match172081172082%_
                           _%e167314167486%_
                           _%hd167315167489%_
                           _%tl167316167491%_
                           _%e167317167494%_
                           _%hd167318167497%_
                           _%tl167319167499%_
                           _%e167320167502%_
                           _%hd167321167505%_
                           _%tl167322167507%_
                           _%e167323167510%_
                           _%hd167324167513%_
                           _%tl167325167515%_
                           _%e167326167518%_
                           _%hd167327167521%_
                           _%tl167328167523%_
                           _%e167329167526%_
                           _%hd167330167529%_
                           _%tl167331167531%_
                           _%e167332167534%_
                           _%hd167333167537%_
                           _%tl167334167539%_))))
                   (_%__match171971171972%_
                    (lambda (_%e167279167580%_
                             _%hd167280167583%_
                             _%tl167281167585%_
                             _%e167282167588%_
                             _%hd167283167591%_
                             _%tl167284167593%_
                             _%e167285167596%_
                             _%hd167286167599%_
                             _%tl167287167601%_
                             _%e167288167604%_
                             _%hd167289167607%_
                             _%tl167290167609%_
                             _%e167291167612%_
                             _%hd167292167615%_
                             _%tl167293167617%_
                             _%e167294167620%_
                             _%hd167295167623%_
                             _%tl167296167625%_
                             _%e167297167628%_
                             _%hd167298167631%_
                             _%tl167299167633%_
                             _%e167300167636%_
                             _%hd167301167639%_
                             _%tl167302167641%_
                             _%e167303167644%_
                             _%hd167304167647%_
                             _%tl167305167649%_
                             _%e167306167652%_
                             _%hd167307167655%_
                             _%tl167308167657%_
                             _%e167309167660%_
                             _%hd167310167663%_
                             _%tl167311167665%_)
                      (let ((_%L167668%_ _%hd167310167663%_)
                            (_%L167669%_ _%hd167307167655%_)
                            (_%L167670%_ _%hd167298167631%_)
                            (_%L167671%_ _%hd167289167607%_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L167671%_
                                        'slot-set!))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L167671%_
                                        'unchecked-slot-set!)))
                                 (let ((__tmp172718
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self167135%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L167670%_
                                    __tmp172718)))
                            (_%__kont171602171603%_
                             _%L167668%_
                             _%L167669%_
                             _%L167670%_
                             _%L167671%_)
                            (_%__kont171608171609%_)))))
                   (_%__match171963171964%_
                    (lambda (_%e167279167580%_
                             _%hd167280167583%_
                             _%tl167281167585%_
                             _%e167282167588%_
                             _%hd167283167591%_
                             _%tl167284167593%_
                             _%e167285167596%_
                             _%hd167286167599%_
                             _%tl167287167601%_
                             _%e167288167604%_
                             _%hd167289167607%_
                             _%tl167290167609%_
                             _%e167291167612%_
                             _%hd167292167615%_
                             _%tl167293167617%_
                             _%e167294167620%_
                             _%hd167295167623%_
                             _%tl167296167625%_
                             _%e167297167628%_
                             _%hd167298167631%_
                             _%tl167299167633%_
                             _%e167300167636%_
                             _%hd167301167639%_
                             _%tl167302167641%_
                             _%e167303167644%_
                             _%hd167304167647%_
                             _%tl167305167649%_
                             _%e167306167652%_
                             _%hd167307167655%_
                             _%tl167308167657%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl167302167641%_))
                          (let ((_%e167309167660%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl167302167641%_))))
                            (let ((_%tl167311167665%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e167309167660%_)))
                                  (_%hd167310167663%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e167309167660%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl167311167665%_))
                                  (_%__match171971171972%_
                                   _%e167279167580%_
                                   _%hd167280167583%_
                                   _%tl167281167585%_
                                   _%e167282167588%_
                                   _%hd167283167591%_
                                   _%tl167284167593%_
                                   _%e167285167596%_
                                   _%hd167286167599%_
                                   _%tl167287167601%_
                                   _%e167288167604%_
                                   _%hd167289167607%_
                                   _%tl167290167609%_
                                   _%e167291167612%_
                                   _%hd167292167615%_
                                   _%tl167293167617%_
                                   _%e167294167620%_
                                   _%hd167295167623%_
                                   _%tl167296167625%_
                                   _%e167297167628%_
                                   _%hd167298167631%_
                                   _%tl167299167633%_
                                   _%e167300167636%_
                                   _%hd167301167639%_
                                   _%tl167302167641%_
                                   _%e167303167644%_
                                   _%hd167304167647%_
                                   _%tl167305167649%_
                                   _%e167306167652%_
                                   _%hd167307167655%_
                                   _%tl167308167657%_
                                   _%e167309167660%_
                                   _%hd167310167663%_
                                   _%tl167311167665%_)
                                  (_%__kont171608171609%_))))
                          (_%__match172087172088%_
                           _%e167279167580%_
                           _%hd167280167583%_
                           _%tl167281167585%_
                           _%e167282167588%_
                           _%hd167283167591%_
                           _%tl167284167593%_
                           _%e167285167596%_
                           _%hd167286167599%_
                           _%tl167287167601%_
                           _%e167288167604%_
                           _%hd167289167607%_
                           _%tl167290167609%_
                           _%e167291167612%_
                           _%hd167292167615%_
                           _%tl167293167617%_
                           _%e167294167620%_
                           _%hd167295167623%_
                           _%tl167296167625%_
                           _%e167297167628%_
                           _%hd167298167631%_
                           _%tl167299167633%_
                           _%e167300167636%_
                           _%hd167301167639%_
                           _%tl167302167641%_))))
                   (_%__match171885171886%_
                    (lambda (_%e167245167711%_
                             _%hd167246167714%_
                             _%tl167247167716%_
                             _%e167248167719%_
                             _%hd167249167722%_
                             _%tl167250167724%_
                             _%e167251167727%_
                             _%hd167252167730%_
                             _%tl167253167732%_
                             _%e167254167735%_
                             _%hd167255167738%_
                             _%tl167256167740%_
                             _%e167257167743%_
                             _%hd167258167746%_
                             _%tl167259167748%_
                             _%e167260167751%_
                             _%hd167261167754%_
                             _%tl167262167756%_
                             _%e167263167759%_
                             _%hd167264167762%_
                             _%tl167265167764%_
                             _%e167266167767%_
                             _%hd167267167770%_
                             _%tl167268167772%_
                             _%e167269167775%_
                             _%hd167270167778%_
                             _%tl167271167780%_
                             _%e167272167783%_
                             _%hd167273167786%_
                             _%tl167274167788%_)
                      (let ((_%L167791%_ _%hd167273167786%_)
                            (_%L167792%_ _%hd167264167762%_)
                            (_%L167793%_ _%hd167255167738%_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L167793%_
                                        'slot-ref))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L167793%_
                                        'unchecked-slot-ref)))
                                 (let ((__tmp172719
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self167135%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L167792%_
                                    __tmp172719)))
                            (_%__kont171600171601%_
                             _%L167791%_
                             _%L167792%_
                             _%L167793%_)
                            (_%__match172089172090%_
                             _%e167245167711%_
                             _%hd167246167714%_
                             _%tl167247167716%_
                             _%e167248167719%_
                             _%hd167249167722%_
                             _%tl167250167724%_
                             _%e167251167727%_
                             _%hd167252167730%_
                             _%tl167253167732%_
                             _%e167254167735%_
                             _%hd167255167738%_
                             _%tl167256167740%_
                             _%e167257167743%_
                             _%hd167258167746%_
                             _%tl167259167748%_
                             _%e167260167751%_
                             _%hd167261167754%_
                             _%tl167262167756%_
                             _%e167263167759%_
                             _%hd167264167762%_
                             _%tl167265167764%_
                             _%e167266167767%_
                             _%hd167267167770%_
                             _%tl167268167772%_)))))
                   (_%__match171883171884%_
                    (lambda (_%e167245167711%_
                             _%hd167246167714%_
                             _%tl167247167716%_
                             _%e167248167719%_
                             _%hd167249167722%_
                             _%tl167250167724%_
                             _%e167251167727%_
                             _%hd167252167730%_
                             _%tl167253167732%_
                             _%e167254167735%_
                             _%hd167255167738%_
                             _%tl167256167740%_
                             _%e167257167743%_
                             _%hd167258167746%_
                             _%tl167259167748%_
                             _%e167260167751%_
                             _%hd167261167754%_
                             _%tl167262167756%_
                             _%e167263167759%_
                             _%hd167264167762%_
                             _%tl167265167764%_
                             _%e167266167767%_
                             _%hd167267167770%_
                             _%tl167268167772%_
                             _%e167269167775%_
                             _%hd167270167778%_
                             _%tl167271167780%_
                             _%e167272167783%_
                             _%hd167273167786%_
                             _%tl167274167788%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl167268167772%_))
                          (_%__match171885171886%_
                           _%e167245167711%_
                           _%hd167246167714%_
                           _%tl167247167716%_
                           _%e167248167719%_
                           _%hd167249167722%_
                           _%tl167250167724%_
                           _%e167251167727%_
                           _%hd167252167730%_
                           _%tl167253167732%_
                           _%e167254167735%_
                           _%hd167255167738%_
                           _%tl167256167740%_
                           _%e167257167743%_
                           _%hd167258167746%_
                           _%tl167259167748%_
                           _%e167260167751%_
                           _%hd167261167754%_
                           _%tl167262167756%_
                           _%e167263167759%_
                           _%hd167264167762%_
                           _%tl167265167764%_
                           _%e167266167767%_
                           _%hd167267167770%_
                           _%tl167268167772%_
                           _%e167269167775%_
                           _%hd167270167778%_
                           _%tl167271167780%_
                           _%e167272167783%_
                           _%hd167273167786%_
                           _%tl167274167788%_)
                          (_%__match171963171964%_
                           _%e167245167711%_
                           _%hd167246167714%_
                           _%tl167247167716%_
                           _%e167248167719%_
                           _%hd167249167722%_
                           _%tl167250167724%_
                           _%e167251167727%_
                           _%hd167252167730%_
                           _%tl167253167732%_
                           _%e167254167735%_
                           _%hd167255167738%_
                           _%tl167256167740%_
                           _%e167257167743%_
                           _%hd167258167746%_
                           _%tl167259167748%_
                           _%e167260167751%_
                           _%hd167261167754%_
                           _%tl167262167756%_
                           _%e167263167759%_
                           _%hd167264167762%_
                           _%tl167265167764%_
                           _%e167266167767%_
                           _%hd167267167770%_
                           _%tl167268167772%_
                           _%e167269167775%_
                           _%hd167270167778%_
                           _%tl167271167780%_
                           _%e167272167783%_
                           _%hd167273167786%_
                           _%tl167274167788%_))))
                   (_%__match171873171874%_
                    (lambda (_%e167245167711%_
                             _%hd167246167714%_
                             _%tl167247167716%_
                             _%e167248167719%_
                             _%hd167249167722%_
                             _%tl167250167724%_
                             _%e167251167727%_
                             _%hd167252167730%_
                             _%tl167253167732%_
                             _%e167254167735%_
                             _%hd167255167738%_
                             _%tl167256167740%_
                             _%e167257167743%_
                             _%hd167258167746%_
                             _%tl167259167748%_
                             _%e167260167751%_
                             _%hd167261167754%_
                             _%tl167262167756%_
                             _%e167263167759%_
                             _%hd167264167762%_
                             _%tl167265167764%_
                             _%e167266167767%_
                             _%hd167267167770%_
                             _%tl167268167772%_
                             _%e167269167775%_
                             _%hd167270167778%_
                             _%tl167271167780%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#quote _%hd167270167778%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl167271167780%_))
                              (let ((_%e167272167783%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl167271167780%_))))
                                (let ((_%tl167274167788%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e167272167783%_)))
                                      (_%hd167273167786%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e167272167783%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl167274167788%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl167268167772%_))
                                          (_%__match171885171886%_
                                           _%e167245167711%_
                                           _%hd167246167714%_
                                           _%tl167247167716%_
                                           _%e167248167719%_
                                           _%hd167249167722%_
                                           _%tl167250167724%_
                                           _%e167251167727%_
                                           _%hd167252167730%_
                                           _%tl167253167732%_
                                           _%e167254167735%_
                                           _%hd167255167738%_
                                           _%tl167256167740%_
                                           _%e167257167743%_
                                           _%hd167258167746%_
                                           _%tl167259167748%_
                                           _%e167260167751%_
                                           _%hd167261167754%_
                                           _%tl167262167756%_
                                           _%e167263167759%_
                                           _%hd167264167762%_
                                           _%tl167265167764%_
                                           _%e167266167767%_
                                           _%hd167267167770%_
                                           _%tl167268167772%_
                                           _%e167269167775%_
                                           _%hd167270167778%_
                                           _%tl167271167780%_
                                           _%e167272167783%_
                                           _%hd167273167786%_
                                           _%tl167274167788%_)
                                          (_%__match171963171964%_
                                           _%e167245167711%_
                                           _%hd167246167714%_
                                           _%tl167247167716%_
                                           _%e167248167719%_
                                           _%hd167249167722%_
                                           _%tl167250167724%_
                                           _%e167251167727%_
                                           _%hd167252167730%_
                                           _%tl167253167732%_
                                           _%e167254167735%_
                                           _%hd167255167738%_
                                           _%tl167256167740%_
                                           _%e167257167743%_
                                           _%hd167258167746%_
                                           _%tl167259167748%_
                                           _%e167260167751%_
                                           _%hd167261167754%_
                                           _%tl167262167756%_
                                           _%e167263167759%_
                                           _%hd167264167762%_
                                           _%tl167265167764%_
                                           _%e167266167767%_
                                           _%hd167267167770%_
                                           _%tl167268167772%_
                                           _%e167269167775%_
                                           _%hd167270167778%_
                                           _%tl167271167780%_
                                           _%e167272167783%_
                                           _%hd167273167786%_
                                           _%tl167274167788%_))
                                      (_%__match172087172088%_
                                       _%e167245167711%_
                                       _%hd167246167714%_
                                       _%tl167247167716%_
                                       _%e167248167719%_
                                       _%hd167249167722%_
                                       _%tl167250167724%_
                                       _%e167251167727%_
                                       _%hd167252167730%_
                                       _%tl167253167732%_
                                       _%e167254167735%_
                                       _%hd167255167738%_
                                       _%tl167256167740%_
                                       _%e167257167743%_
                                       _%hd167258167746%_
                                       _%tl167259167748%_
                                       _%e167260167751%_
                                       _%hd167261167754%_
                                       _%tl167262167756%_
                                       _%e167263167759%_
                                       _%hd167264167762%_
                                       _%tl167265167764%_
                                       _%e167266167767%_
                                       _%hd167267167770%_
                                       _%tl167268167772%_))))
                              (_%__match172087172088%_
                               _%e167245167711%_
                               _%hd167246167714%_
                               _%tl167247167716%_
                               _%e167248167719%_
                               _%hd167249167722%_
                               _%tl167250167724%_
                               _%e167251167727%_
                               _%hd167252167730%_
                               _%tl167253167732%_
                               _%e167254167735%_
                               _%hd167255167738%_
                               _%tl167256167740%_
                               _%e167257167743%_
                               _%hd167258167746%_
                               _%tl167259167748%_
                               _%e167260167751%_
                               _%hd167261167754%_
                               _%tl167262167756%_
                               _%e167263167759%_
                               _%hd167264167762%_
                               _%tl167265167764%_
                               _%e167266167767%_
                               _%hd167267167770%_
                               _%tl167268167772%_))
                          (_%__match172087172088%_
                           _%e167245167711%_
                           _%hd167246167714%_
                           _%tl167247167716%_
                           _%e167248167719%_
                           _%hd167249167722%_
                           _%tl167250167724%_
                           _%e167251167727%_
                           _%hd167252167730%_
                           _%tl167253167732%_
                           _%e167254167735%_
                           _%hd167255167738%_
                           _%tl167256167740%_
                           _%e167257167743%_
                           _%hd167258167746%_
                           _%tl167259167748%_
                           _%e167260167751%_
                           _%hd167261167754%_
                           _%tl167262167756%_
                           _%e167263167759%_
                           _%hd167264167762%_
                           _%tl167265167764%_
                           _%e167266167767%_
                           _%hd167267167770%_
                           _%tl167268167772%_))))
                   (_%__match171805171806%_
                    (lambda (_%e167194167830%_
                             _%hd167195167833%_
                             _%tl167196167835%_
                             _%e167197167838%_
                             _%hd167198167841%_
                             _%tl167199167843%_
                             _%e167200167846%_
                             _%hd167201167849%_
                             _%tl167202167851%_
                             _%e167203167854%_
                             _%hd167204167857%_
                             _%tl167205167859%_
                             _%e167206167862%_
                             _%hd167207167865%_
                             _%tl167208167867%_
                             _%e167209167870%_
                             _%hd167210167873%_
                             _%tl167211167875%_
                             _%e167212167878%_
                             _%hd167213167881%_
                             _%tl167214167883%_
                             _%e167215167886%_
                             _%hd167216167889%_
                             _%tl167217167891%_
                             _%e167218167894%_
                             _%hd167219167897%_
                             _%tl167220167899%_
                             _%e167221167902%_
                             _%hd167222167905%_
                             _%tl167223167907%_
                             _%e167224167910%_
                             _%hd167225167913%_
                             _%tl167226167915%_
                             _%e167227167918%_
                             _%hd167228167921%_
                             _%tl167229167923%_
                             _%e167230167926%_
                             _%hd167231167929%_
                             _%tl167232167931%_
                             _%__splice171598171599%_
                             _%target167233167934%_
                             _%tl167235167936%_)
                      (letrec ((_%loop167236167939%_
                                (lambda (_%hd167234167942%_
                                         _%args167240167944%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd167234167942%_))
                                      (let ((_%e167237167947%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd167234167942%_))))
                                        (let ((_%lp-tl167239167952%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e167237167947%_)))
                                              (_%lp-hd167238167950%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e167237167947%_))))
                                          (_%loop167236167939%_
                                           _%lp-tl167239167952%_
                                           (cons _%lp-hd167238167950%_
                                                 _%args167240167944%_))))
                                      (let ((_%args167241167955%_
                                             (reverse _%args167240167944%_)))
                                        (let ((_%L167958%_
                                               _%args167241167955%_)
                                              (_%L167959%_ _%hd167231167929%_)
                                              (_%L167960%_ _%hd167222167905%_)
                                              (_%L167961%_ _%hd167213167881%_)
                                              (_%L167962%_ _%hd167204167857%_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%L167962%_
                                                      'apply))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%L167961%_
                                                      'call-method))
                                                   (let ((__tmp172720
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self167135%_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%L167960%_
                                                      __tmp172720)))
                                              (_%__kont171596171597%_
                                               _%L167958%_
                                               _%L167959%_
                                               _%L167960%_
                                               _%L167961%_
                                               _%L167962%_)
                                              (_%__kont171608171609%_))))))))
                        (_%loop167236167939%_ _%target167233167934%_ '()))))
                   (_%__match171763171764%_
                    (lambda (_%e167194167830%_
                             _%hd167195167833%_
                             _%tl167196167835%_
                             _%e167197167838%_
                             _%hd167198167841%_
                             _%tl167199167843%_
                             _%e167200167846%_
                             _%hd167201167849%_
                             _%tl167202167851%_
                             _%e167203167854%_
                             _%hd167204167857%_
                             _%tl167205167859%_
                             _%e167206167862%_
                             _%hd167207167865%_
                             _%tl167208167867%_
                             _%e167209167870%_
                             _%hd167210167873%_
                             _%tl167211167875%_
                             _%e167212167878%_
                             _%hd167213167881%_
                             _%tl167214167883%_
                             _%e167215167886%_
                             _%hd167216167889%_
                             _%tl167217167891%_
                             _%e167218167894%_
                             _%hd167219167897%_
                             _%tl167220167899%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _%hd167219167897%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl167220167899%_))
                              (let ((_%e167221167902%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl167220167899%_))))
                                (let ((_%tl167223167907%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e167221167902%_)))
                                      (_%hd167222167905%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e167221167902%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl167223167907%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl167217167891%_))
                                          (let ((_%e167224167910%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl167217167891%_))))
                                            (let ((_%tl167226167915%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e167224167910%_)))
                                                  (_%hd167225167913%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e167224167910%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd167225167913%_))
                                                  (let ((_%e167227167918%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd167225167913%_))))
                                                    (let ((_%tl167229167923%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e167227167918%_)))
                                                          (_%hd167228167921%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e167227167918%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd167228167921%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#quote _%hd167228167921%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl167229167923%_))
                          (let ((_%e167230167926%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl167229167923%_))))
                            (let ((_%tl167232167931%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e167230167926%_)))
                                  (_%hd167231167929%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e167230167926%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl167232167931%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl167226167915%_))
                                      (let ((_%__splice171598171599%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl167226167915%_
                                                '0))))
                                        (let ((_%tl167235167936%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice171598171599%_
                                                  '1)))
                                              (_%target167233167934%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice171598171599%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl167235167936%_))
                                              (_%__match171805171806%_
                                               _%e167194167830%_
                                               _%hd167195167833%_
                                               _%tl167196167835%_
                                               _%e167197167838%_
                                               _%hd167198167841%_
                                               _%tl167199167843%_
                                               _%e167200167846%_
                                               _%hd167201167849%_
                                               _%tl167202167851%_
                                               _%e167203167854%_
                                               _%hd167204167857%_
                                               _%tl167205167859%_
                                               _%e167206167862%_
                                               _%hd167207167865%_
                                               _%tl167208167867%_
                                               _%e167209167870%_
                                               _%hd167210167873%_
                                               _%tl167211167875%_
                                               _%e167212167878%_
                                               _%hd167213167881%_
                                               _%tl167214167883%_
                                               _%e167215167886%_
                                               _%hd167216167889%_
                                               _%tl167217167891%_
                                               _%e167218167894%_
                                               _%hd167219167897%_
                                               _%tl167220167899%_
                                               _%e167221167902%_
                                               _%hd167222167905%_
                                               _%tl167223167907%_
                                               _%e167224167910%_
                                               _%hd167225167913%_
                                               _%tl167226167915%_
                                               _%e167227167918%_
                                               _%hd167228167921%_
                                               _%tl167229167923%_
                                               _%e167230167926%_
                                               _%hd167231167929%_
                                               _%tl167232167931%_
                                               _%__splice171598171599%_
                                               _%target167233167934%_
                                               _%tl167235167936%_)
                                              (_%__kont171608171609%_))))
                                      (_%__kont171608171609%_))
                                  (_%__kont171608171609%_))))
                          (_%__kont171608171609%_))
                      (_%__kont171608171609%_))
                  (_%__kont171608171609%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont171608171609%_))))
                                          (_%__match172087172088%_
                                           _%e167194167830%_
                                           _%hd167195167833%_
                                           _%tl167196167835%_
                                           _%e167197167838%_
                                           _%hd167198167841%_
                                           _%tl167199167843%_
                                           _%e167200167846%_
                                           _%hd167201167849%_
                                           _%tl167202167851%_
                                           _%e167203167854%_
                                           _%hd167204167857%_
                                           _%tl167205167859%_
                                           _%e167206167862%_
                                           _%hd167207167865%_
                                           _%tl167208167867%_
                                           _%e167209167870%_
                                           _%hd167210167873%_
                                           _%tl167211167875%_
                                           _%e167212167878%_
                                           _%hd167213167881%_
                                           _%tl167214167883%_
                                           _%e167215167886%_
                                           _%hd167216167889%_
                                           _%tl167217167891%_))
                                      (_%__match172087172088%_
                                       _%e167194167830%_
                                       _%hd167195167833%_
                                       _%tl167196167835%_
                                       _%e167197167838%_
                                       _%hd167198167841%_
                                       _%tl167199167843%_
                                       _%e167200167846%_
                                       _%hd167201167849%_
                                       _%tl167202167851%_
                                       _%e167203167854%_
                                       _%hd167204167857%_
                                       _%tl167205167859%_
                                       _%e167206167862%_
                                       _%hd167207167865%_
                                       _%tl167208167867%_
                                       _%e167209167870%_
                                       _%hd167210167873%_
                                       _%tl167211167875%_
                                       _%e167212167878%_
                                       _%hd167213167881%_
                                       _%tl167214167883%_
                                       _%e167215167886%_
                                       _%hd167216167889%_
                                       _%tl167217167891%_))))
                              (_%__match172087172088%_
                               _%e167194167830%_
                               _%hd167195167833%_
                               _%tl167196167835%_
                               _%e167197167838%_
                               _%hd167198167841%_
                               _%tl167199167843%_
                               _%e167200167846%_
                               _%hd167201167849%_
                               _%tl167202167851%_
                               _%e167203167854%_
                               _%hd167204167857%_
                               _%tl167205167859%_
                               _%e167206167862%_
                               _%hd167207167865%_
                               _%tl167208167867%_
                               _%e167209167870%_
                               _%hd167210167873%_
                               _%tl167211167875%_
                               _%e167212167878%_
                               _%hd167213167881%_
                               _%tl167214167883%_
                               _%e167215167886%_
                               _%hd167216167889%_
                               _%tl167217167891%_))
                          (_%__match171873171874%_
                           _%e167194167830%_
                           _%hd167195167833%_
                           _%tl167196167835%_
                           _%e167197167838%_
                           _%hd167198167841%_
                           _%tl167199167843%_
                           _%e167200167846%_
                           _%hd167201167849%_
                           _%tl167202167851%_
                           _%e167203167854%_
                           _%hd167204167857%_
                           _%tl167205167859%_
                           _%e167206167862%_
                           _%hd167207167865%_
                           _%tl167208167867%_
                           _%e167209167870%_
                           _%hd167210167873%_
                           _%tl167211167875%_
                           _%e167212167878%_
                           _%hd167213167881%_
                           _%tl167214167883%_
                           _%e167215167886%_
                           _%hd167216167889%_
                           _%tl167217167891%_
                           _%e167218167894%_
                           _%hd167219167897%_
                           _%tl167220167899%_))))
                   (_%__match171695171696%_
                    (lambda (_%e167150168019%_
                             _%hd167151168022%_
                             _%tl167152168024%_
                             _%e167153168027%_
                             _%hd167154168030%_
                             _%tl167155168032%_
                             _%e167156168035%_
                             _%hd167157168038%_
                             _%tl167158168040%_
                             _%e167159168043%_
                             _%hd167160168046%_
                             _%tl167161168048%_
                             _%e167162168051%_
                             _%hd167163168054%_
                             _%tl167164168056%_
                             _%e167165168059%_
                             _%hd167166168062%_
                             _%tl167167168064%_
                             _%e167168168067%_
                             _%hd167169168070%_
                             _%tl167170168072%_
                             _%e167171168075%_
                             _%hd167172168078%_
                             _%tl167173168080%_
                             _%e167174168083%_
                             _%hd167175168086%_
                             _%tl167176168088%_
                             _%e167177168091%_
                             _%hd167178168094%_
                             _%tl167179168096%_
                             _%__splice171594171595%_
                             _%target167180168099%_
                             _%tl167182168101%_)
                      (letrec ((_%loop167183168104%_
                                (lambda (_%hd167181168107%_
                                         _%args167187168109%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd167181168107%_))
                                      (let ((_%e167184168112%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd167181168107%_))))
                                        (let ((_%lp-tl167186168117%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e167184168112%_)))
                                              (_%lp-hd167185168115%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e167184168112%_))))
                                          (_%loop167183168104%_
                                           _%lp-tl167186168117%_
                                           (cons _%lp-hd167185168115%_
                                                 _%args167187168109%_))))
                                      (let ((_%args167188168120%_
                                             (reverse _%args167187168109%_)))
                                        (let ((_%L168123%_
                                               _%args167188168120%_)
                                              (_%L168124%_ _%hd167178168094%_)
                                              (_%L168125%_ _%hd167169168070%_)
                                              (_%L168126%_ _%hd167160168046%_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%L168126%_
                                                      'call-method))
                                                   (let ((__tmp172721
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self167135%_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%L168125%_
                                                      __tmp172721)))
                                              (_%__kont171592171593%_
                                               _%L168123%_
                                               _%L168124%_
                                               _%L168125%_
                                               _%L168126%_)
                                              (_%__match171883171884%_
                                               _%e167150168019%_
                                               _%hd167151168022%_
                                               _%tl167152168024%_
                                               _%e167153168027%_
                                               _%hd167154168030%_
                                               _%tl167155168032%_
                                               _%e167156168035%_
                                               _%hd167157168038%_
                                               _%tl167158168040%_
                                               _%e167159168043%_
                                               _%hd167160168046%_
                                               _%tl167161168048%_
                                               _%e167162168051%_
                                               _%hd167163168054%_
                                               _%tl167164168056%_
                                               _%e167165168059%_
                                               _%hd167166168062%_
                                               _%tl167167168064%_
                                               _%e167168168067%_
                                               _%hd167169168070%_
                                               _%tl167170168072%_
                                               _%e167171168075%_
                                               _%hd167172168078%_
                                               _%tl167173168080%_
                                               _%e167174168083%_
                                               _%hd167175168086%_
                                               _%tl167176168088%_
                                               _%e167177168091%_
                                               _%hd167178168094%_
                                               _%tl167179168096%_))))))))
                        (_%loop167183168104%_ _%target167180168099%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx171590171591%_))
                  (let ((_%e167150168019%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx171590171591%_))))
                    (let ((_%tl167152168024%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e167150168019%_)))
                          (_%hd167151168022%_
                           (let ()
                             (declare (not safe))
                             (##car _%e167150168019%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl167152168024%_))
                          (let ((_%e167153168027%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl167152168024%_))))
                            (let ((_%tl167155168032%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e167153168027%_)))
                                  (_%hd167154168030%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e167153168027%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd167154168030%_))
                                  (let ((_%e167156168035%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd167154168030%_))))
                                    (let ((_%tl167158168040%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e167156168035%_)))
                                          (_%hd167157168038%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e167156168035%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd167157168038%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd167157168038%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl167158168040%_))
                                                  (let ((_%e167159168043%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl167158168040%_))))
                                                    (let ((_%tl167161168048%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e167159168043%_)))
                                                          (_%hd167160168046%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e167159168043%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl167161168048%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl167155168032%_))
                      (let ((_%e167162168051%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl167155168032%_))))
                        (let ((_%tl167164168056%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e167162168051%_)))
                              (_%hd167163168054%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e167162168051%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd167163168054%_))
                              (let ((_%e167165168059%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd167163168054%_))))
                                (let ((_%tl167167168064%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e167165168059%_)))
                                      (_%hd167166168062%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e167165168059%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd167166168062%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd167166168062%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl167167168064%_))
                                              (let ((_%e167168168067%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl167167168064%_))))
                                                (let ((_%tl167170168072%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e167168168067%_)))
                                                      (_%hd167169168070%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e167168168067%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl167170168072%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl167164168056%_))
                                                          (let ((_%e167171168075%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl167164168056%_))))
                    (let ((_%tl167173168080%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e167171168075%_)))
                          (_%hd167172168078%_
                           (let ()
                             (declare (not safe))
                             (##car _%e167171168075%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd167172168078%_))
                          (let ((_%e167174168083%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd167172168078%_))))
                            (let ((_%tl167176168088%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e167174168083%_)))
                                  (_%hd167175168086%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e167174168083%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd167175168086%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%hd167175168086%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl167176168088%_))
                                          (let ((_%e167177168091%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl167176168088%_))))
                                            (let ((_%tl167179168096%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e167177168091%_)))
                                                  (_%hd167178168094%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e167177168091%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl167179168096%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl167173168080%_))
                                                      (let ((_%__splice171594171595%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%tl167173168080%_ '0))))
                (let ((_%tl167182168101%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice171594171595%_ '1)))
                      (_%target167180168099%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice171594171595%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl167182168101%_))
                      (_%__match171695171696%_
                       _%e167150168019%_
                       _%hd167151168022%_
                       _%tl167152168024%_
                       _%e167153168027%_
                       _%hd167154168030%_
                       _%tl167155168032%_
                       _%e167156168035%_
                       _%hd167157168038%_
                       _%tl167158168040%_
                       _%e167159168043%_
                       _%hd167160168046%_
                       _%tl167161168048%_
                       _%e167162168051%_
                       _%hd167163168054%_
                       _%tl167164168056%_
                       _%e167165168059%_
                       _%hd167166168062%_
                       _%tl167167168064%_
                       _%e167168168067%_
                       _%hd167169168070%_
                       _%tl167170168072%_
                       _%e167171168075%_
                       _%hd167172168078%_
                       _%tl167173168080%_
                       _%e167174168083%_
                       _%hd167175168086%_
                       _%tl167176168088%_
                       _%e167177168091%_
                       _%hd167178168094%_
                       _%tl167179168096%_
                       _%__splice171594171595%_
                       _%target167180168099%_
                       _%tl167182168101%_)
                      (_%__match171883171884%_
                       _%e167150168019%_
                       _%hd167151168022%_
                       _%tl167152168024%_
                       _%e167153168027%_
                       _%hd167154168030%_
                       _%tl167155168032%_
                       _%e167156168035%_
                       _%hd167157168038%_
                       _%tl167158168040%_
                       _%e167159168043%_
                       _%hd167160168046%_
                       _%tl167161168048%_
                       _%e167162168051%_
                       _%hd167163168054%_
                       _%tl167164168056%_
                       _%e167165168059%_
                       _%hd167166168062%_
                       _%tl167167168064%_
                       _%e167168168067%_
                       _%hd167169168070%_
                       _%tl167170168072%_
                       _%e167171168075%_
                       _%hd167172168078%_
                       _%tl167173168080%_
                       _%e167174168083%_
                       _%hd167175168086%_
                       _%tl167176168088%_
                       _%e167177168091%_
                       _%hd167178168094%_
                       _%tl167179168096%_))))
              (_%__match171883171884%_
               _%e167150168019%_
               _%hd167151168022%_
               _%tl167152168024%_
               _%e167153168027%_
               _%hd167154168030%_
               _%tl167155168032%_
               _%e167156168035%_
               _%hd167157168038%_
               _%tl167158168040%_
               _%e167159168043%_
               _%hd167160168046%_
               _%tl167161168048%_
               _%e167162168051%_
               _%hd167163168054%_
               _%tl167164168056%_
               _%e167165168059%_
               _%hd167166168062%_
               _%tl167167168064%_
               _%e167168168067%_
               _%hd167169168070%_
               _%tl167170168072%_
               _%e167171168075%_
               _%hd167172168078%_
               _%tl167173168080%_
               _%e167174168083%_
               _%hd167175168086%_
               _%tl167176168088%_
               _%e167177168091%_
               _%hd167178168094%_
               _%tl167179168096%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__match172087172088%_
                                                   _%e167150168019%_
                                                   _%hd167151168022%_
                                                   _%tl167152168024%_
                                                   _%e167153168027%_
                                                   _%hd167154168030%_
                                                   _%tl167155168032%_
                                                   _%e167156168035%_
                                                   _%hd167157168038%_
                                                   _%tl167158168040%_
                                                   _%e167159168043%_
                                                   _%hd167160168046%_
                                                   _%tl167161168048%_
                                                   _%e167162168051%_
                                                   _%hd167163168054%_
                                                   _%tl167164168056%_
                                                   _%e167165168059%_
                                                   _%hd167166168062%_
                                                   _%tl167167168064%_
                                                   _%e167168168067%_
                                                   _%hd167169168070%_
                                                   _%tl167170168072%_
                                                   _%e167171168075%_
                                                   _%hd167172168078%_
                                                   _%tl167173168080%_))))
                                          (_%__match172087172088%_
                                           _%e167150168019%_
                                           _%hd167151168022%_
                                           _%tl167152168024%_
                                           _%e167153168027%_
                                           _%hd167154168030%_
                                           _%tl167155168032%_
                                           _%e167156168035%_
                                           _%hd167157168038%_
                                           _%tl167158168040%_
                                           _%e167159168043%_
                                           _%hd167160168046%_
                                           _%tl167161168048%_
                                           _%e167162168051%_
                                           _%hd167163168054%_
                                           _%tl167164168056%_
                                           _%e167165168059%_
                                           _%hd167166168062%_
                                           _%tl167167168064%_
                                           _%e167168168067%_
                                           _%hd167169168070%_
                                           _%tl167170168072%_
                                           _%e167171168075%_
                                           _%hd167172168078%_
                                           _%tl167173168080%_))
                                      (_%__match171763171764%_
                                       _%e167150168019%_
                                       _%hd167151168022%_
                                       _%tl167152168024%_
                                       _%e167153168027%_
                                       _%hd167154168030%_
                                       _%tl167155168032%_
                                       _%e167156168035%_
                                       _%hd167157168038%_
                                       _%tl167158168040%_
                                       _%e167159168043%_
                                       _%hd167160168046%_
                                       _%tl167161168048%_
                                       _%e167162168051%_
                                       _%hd167163168054%_
                                       _%tl167164168056%_
                                       _%e167165168059%_
                                       _%hd167166168062%_
                                       _%tl167167168064%_
                                       _%e167168168067%_
                                       _%hd167169168070%_
                                       _%tl167170168072%_
                                       _%e167171168075%_
                                       _%hd167172168078%_
                                       _%tl167173168080%_
                                       _%e167174168083%_
                                       _%hd167175168086%_
                                       _%tl167176168088%_))
                                  (_%__match172087172088%_
                                   _%e167150168019%_
                                   _%hd167151168022%_
                                   _%tl167152168024%_
                                   _%e167153168027%_
                                   _%hd167154168030%_
                                   _%tl167155168032%_
                                   _%e167156168035%_
                                   _%hd167157168038%_
                                   _%tl167158168040%_
                                   _%e167159168043%_
                                   _%hd167160168046%_
                                   _%tl167161168048%_
                                   _%e167162168051%_
                                   _%hd167163168054%_
                                   _%tl167164168056%_
                                   _%e167165168059%_
                                   _%hd167166168062%_
                                   _%tl167167168064%_
                                   _%e167168168067%_
                                   _%hd167169168070%_
                                   _%tl167170168072%_
                                   _%e167171168075%_
                                   _%hd167172168078%_
                                   _%tl167173168080%_))))
                          (_%__match172087172088%_
                           _%e167150168019%_
                           _%hd167151168022%_
                           _%tl167152168024%_
                           _%e167153168027%_
                           _%hd167154168030%_
                           _%tl167155168032%_
                           _%e167156168035%_
                           _%hd167157168038%_
                           _%tl167158168040%_
                           _%e167159168043%_
                           _%hd167160168046%_
                           _%tl167161168048%_
                           _%e167162168051%_
                           _%hd167163168054%_
                           _%tl167164168056%_
                           _%e167165168059%_
                           _%hd167166168062%_
                           _%tl167167168064%_
                           _%e167168168067%_
                           _%hd167169168070%_
                           _%tl167170168072%_
                           _%e167171168075%_
                           _%hd167172168078%_
                           _%tl167173168080%_))))
                  (_%__match172025172026%_
                   _%e167150168019%_
                   _%hd167151168022%_
                   _%tl167152168024%_
                   _%e167153168027%_
                   _%hd167154168030%_
                   _%tl167155168032%_
                   _%e167156168035%_
                   _%hd167157168038%_
                   _%tl167158168040%_
                   _%e167159168043%_
                   _%hd167160168046%_
                   _%tl167161168048%_
                   _%e167162168051%_
                   _%hd167163168054%_
                   _%tl167164168056%_
                   _%e167165168059%_
                   _%hd167166168062%_
                   _%tl167167168064%_
                   _%e167168168067%_
                   _%hd167169168070%_
                   _%tl167170168072%_))
              (_%__kont171608171609%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont171608171609%_))
                                          (_%__kont171608171609%_))
                                      (_%__kont171608171609%_))))
                              (_%__kont171608171609%_))))
                      (_%__kont171608171609%_))
                  (_%__kont171608171609%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont171608171609%_))
                                              (_%__kont171608171609%_))
                                          (_%__kont171608171609%_))))
                                  (_%__kont171608171609%_))))
                          (_%__kont171608171609%_))))
                  (_%__kont171608171609%_)))))))
    (define gxc#subst-object-refs-call%
      (lambda (_%self166074%_ _%stx166075%_)
        (letrec ((_%force-e166077%_
                  (lambda (_%target167133%_)
                    (cons '%#call
                          (cons (cons '%#ref (cons 'force '()))
                                (cons (cons '%#ref (cons _%target167133%_ '()))
                                      '()))))))
          (let* ((_%__stx172092172093%_ _%stx166075%_)
                 (_%g166085166307%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx172092172093%_)))))
            (let ((_%__kont172094172095%_
                   (lambda (_%L167079%_ _%L167080%_ _%L167081%_ _%L167082%_)
                     (let ((_%$method167127%_
                            (let ((__tmp172723
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self166074%_ 'methods)))
                                  (__tmp172722
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L167080%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp172723 __tmp172722)))
                           (_%args167128%_
                            (map (lambda (_%g167115167117%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self166074%_
                                      _%g167115167117%_)))
                                 (let ((__tmp172724
                                        (lambda (_%g167119167122%_
                                                 _%g167120167124%_)
                                          (cons _%g167119167122%_
                                                _%g167120167124%_))))
                                   (declare (not safe))
                                   (__foldr1 __tmp172724 '() _%L167079%_)))))
                       (let ((__tmp172725
                              (cons '%#call
                                    (cons (_%force-e166077%_ _%$method167127%_)
                                          (cons (cons '%#ref
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self166074%_
                                                               'receiver))
                                                            '()))
                                                _%args167128%_)))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp172725 _%stx166075%_)))))
                  (_%__kont172098172099%_
                   (lambda (_%L166911%_
                            _%L166912%_
                            _%L166913%_
                            _%L166914%_
                            _%L166915%_)
                     (let ((_%$method166967%_
                            (let ((__tmp172727
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self166074%_ 'methods)))
                                  (__tmp172726
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L166912%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp172727 __tmp172726)))
                           (_%args166968%_
                            (map (lambda (_%g166955166957%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self166074%_
                                      _%g166955166957%_)))
                                 (let ((__tmp172728
                                        (lambda (_%g166959166962%_
                                                 _%g166960166964%_)
                                          (cons _%g166959166962%_
                                                _%g166960166964%_))))
                                   (declare (not safe))
                                   (__foldr1 __tmp172728 '() _%L166911%_)))))
                       (let ((__tmp172729
                              (cons '%#call
                                    (cons (cons '%#ref (cons 'apply '()))
                                          (cons (_%force-e166077%_
                                                 _%$method166967%_)
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (slot-ref__0 _%self166074%_ 'receiver))
                          '()))
              _%args166968%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp172729 _%stx166075%_)))))
                  (_%__kont172102172103%_
                   (lambda (_%L166742%_ _%L166743%_ _%L166744%_)
                     (let* ((_%$field166776%_
                             (let ((__tmp172731
                                    (let ()
                                      (declare (not safe))
                                      (slot-ref__0 _%self166074%_ 'slots)))
                                   (__tmp172730
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%L166742%_))))
                               (declare (not safe))
                               (hash-ref__0 __tmp172731 __tmp172730)))
                            (__tmp172732
                             (cons '%#struct-unchecked-ref
                                   (cons (cons '%#ref
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (slot-ref__0
                                                        _%self166074%_
                                                        'klass))
                                                     '()))
                                         (cons (cons '%#ref
                                                     (cons _%$field166776%_
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (slot-ref__0 _%self166074%_ 'receiver))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp172732 _%stx166075%_))))
                  (_%__kont172104172105%_
                   (lambda (_%L166616%_ _%L166617%_ _%L166618%_ _%L166619%_)
                     (let ((_%$field166654%_
                            (let ((__tmp172734
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self166074%_ 'slots)))
                                  (__tmp172733
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L166617%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp172734 __tmp172733)))
                           (_%expr166655%_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-e__1 _%self166074%_ _%L166616%_))))
                       (let ((__tmp172735
                              (cons '%#struct-unchecked-set!
                                    (cons (cons '%#ref
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (slot-ref__0
                                                         _%self166074%_
                                                         'klass))
                                                      '()))
                                          (cons (cons '%#ref
                                                      (cons _%$field166654%_
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (slot-ref__0 _%self166074%_ 'receiver))
                          '()))
              (cons _%expr166655%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp172735 _%stx166075%_)))))
                  (_%__kont172106172107%_
                   (lambda (_%L166488%_ _%L166489%_)
                     (let* ((_%accessor166511%_
                             (let ((__tmp172736
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _%L166489%_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp172736)))
                            (_%klass166513%_
                             (let ((__tmp172737
                                    (##structure-ref
                                     _%accessor166511%_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _%stx166075%_
                                __tmp172737)))
                            (_%slot166515%_
                             (##structure-ref
                              _%accessor166511%_
                              '3
                              gxc#!accessor::t
                              '#f)))
                       (if (and (not (##structure-ref
                                      _%accessor166511%_
                                      '4
                                      gxc#!accessor::t
                                      '#f))
                                (or (let ()
                                      (declare (not safe))
                                      (gxc#!class-struct-slot?
                                       _%klass166513%_
                                       _%slot166515%_))
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%klass166513%_
                                       '8
                                       '#f
                                       '#f))))
                           _%stx166075%_
                           (let* ((_%$field166521%_
                                   (let ((__tmp172738
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self166074%_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp172738 _%slot166515%_)))
                                  (__tmp172739
                                   (cons '%#struct-unchecked-ref
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (slot-ref__0
                                                              _%self166074%_
                                                              'klass))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$field166521%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _%self166074%_ 'receiver))
                               '()))
                   '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp172739
                              _%stx166075%_))))))
                  (_%__kont172108172109%_
                   (lambda (_%L166383%_ _%L166384%_ _%L166385%_)
                     (let* ((_%mutator166413%_
                             (let ((__tmp172740
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _%L166385%_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp172740)))
                            (_%klass166415%_
                             (let ((__tmp172741
                                    (##structure-ref
                                     _%mutator166413%_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _%stx166075%_
                                __tmp172741)))
                            (_%slot166417%_
                             (##structure-ref
                              _%mutator166413%_
                              '3
                              gxc#!mutator::t
                              '#f))
                            (_%expr166419%_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-e__1 _%self166074%_ _%L166383%_))))
                       (if (and (not (##structure-ref
                                      _%mutator166413%_
                                      '4
                                      gxc#!mutator::t
                                      '#f))
                                (or (let ()
                                      (declare (not safe))
                                      (gxc#!class-struct-slot?
                                       _%klass166415%_
                                       _%slot166417%_))
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%klass166415%_
                                       '8
                                       '#f
                                       '#f))))
                           (let ((__tmp172742
                                  (cons '%#call
                                        (cons (cons (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       '%#ref))
                                                    (cons _%L166385%_ '()))
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#ref))
                                                          (cons _%L166384%_
                                                                '()))
                                                    (cons _%expr166419%_
                                                          '()))))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp172742 _%stx166075%_))
                           (let* ((_%$field166425%_
                                   (let ((__tmp172743
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self166074%_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp172743 _%slot166417%_)))
                                  (__tmp172744
                                   (cons '%#struct-unchecked-set!
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (slot-ref__0
                                                              _%self166074%_
                                                              'klass))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$field166425%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _%self166074%_ 'receiver))
                               '()))
                   (cons _%expr166419%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp172744
                              _%stx166075%_))))))
                  (_%__kont172110172111%_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-operands _%self166074%_ _%stx166075%_)))))
              (let* ((_%__match172591172592%_
                      (lambda (_%e166279166319%_
                               _%hd166280166322%_
                               _%tl166281166324%_
                               _%e166282166327%_
                               _%hd166283166330%_
                               _%tl166284166332%_
                               _%e166285166335%_
                               _%hd166286166338%_
                               _%tl166287166340%_
                               _%e166288166343%_
                               _%hd166289166346%_
                               _%tl166290166348%_
                               _%e166291166351%_
                               _%hd166292166354%_
                               _%tl166293166356%_
                               _%e166294166359%_
                               _%hd166295166362%_
                               _%tl166296166364%_
                               _%e166297166367%_
                               _%hd166298166370%_
                               _%tl166299166372%_
                               _%e166300166375%_
                               _%hd166301166378%_
                               _%tl166302166380%_)
                        (let ((_%L166383%_ _%hd166301166378%_)
                              (_%L166384%_ _%hd166298166370%_)
                              (_%L166385%_ _%hd166289166346%_))
                          (if (and (let ((__tmp172745
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self166074%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L166384%_
                                      __tmp172745))
                                   (let ((__tmp172746
                                          (let ((__tmp172747
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%L166385%_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp172747))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp172746
                                      'gxc#!mutator::t)))
                              (_%__kont172108172109%_
                               _%L166383%_
                               _%L166384%_
                               _%L166385%_)
                              (_%__kont172110172111%_)))))
                     (_%__match172589172590%_
                      (lambda (_%e166279166319%_
                               _%hd166280166322%_
                               _%tl166281166324%_
                               _%e166282166327%_
                               _%hd166283166330%_
                               _%tl166284166332%_
                               _%e166285166335%_
                               _%hd166286166338%_
                               _%tl166287166340%_
                               _%e166288166343%_
                               _%hd166289166346%_
                               _%tl166290166348%_
                               _%e166291166351%_
                               _%hd166292166354%_
                               _%tl166293166356%_
                               _%e166294166359%_
                               _%hd166295166362%_
                               _%tl166296166364%_
                               _%e166297166367%_
                               _%hd166298166370%_
                               _%tl166299166372%_
                               _%e166300166375%_
                               _%hd166301166378%_
                               _%tl166302166380%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl166302166380%_))
                            (_%__match172591172592%_
                             _%e166279166319%_
                             _%hd166280166322%_
                             _%tl166281166324%_
                             _%e166282166327%_
                             _%hd166283166330%_
                             _%tl166284166332%_
                             _%e166285166335%_
                             _%hd166286166338%_
                             _%tl166287166340%_
                             _%e166288166343%_
                             _%hd166289166346%_
                             _%tl166290166348%_
                             _%e166291166351%_
                             _%hd166292166354%_
                             _%tl166293166356%_
                             _%e166294166359%_
                             _%hd166295166362%_
                             _%tl166296166364%_
                             _%e166297166367%_
                             _%hd166298166370%_
                             _%tl166299166372%_
                             _%e166300166375%_
                             _%hd166301166378%_
                             _%tl166302166380%_)
                            (_%__kont172110172111%_))))
                     (_%__match172583172584%_
                      (lambda (_%e166279166319%_
                               _%hd166280166322%_
                               _%tl166281166324%_
                               _%e166282166327%_
                               _%hd166283166330%_
                               _%tl166284166332%_
                               _%e166285166335%_
                               _%hd166286166338%_
                               _%tl166287166340%_
                               _%e166288166343%_
                               _%hd166289166346%_
                               _%tl166290166348%_
                               _%e166291166351%_
                               _%hd166292166354%_
                               _%tl166293166356%_
                               _%e166294166359%_
                               _%hd166295166362%_
                               _%tl166296166364%_
                               _%e166297166367%_
                               _%hd166298166370%_
                               _%tl166299166372%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl166293166356%_))
                            (let ((_%e166300166375%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl166293166356%_))))
                              (let ((_%tl166302166380%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e166300166375%_)))
                                    (_%hd166301166378%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e166300166375%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl166302166380%_))
                                    (_%__match172591172592%_
                                     _%e166279166319%_
                                     _%hd166280166322%_
                                     _%tl166281166324%_
                                     _%e166282166327%_
                                     _%hd166283166330%_
                                     _%tl166284166332%_
                                     _%e166285166335%_
                                     _%hd166286166338%_
                                     _%tl166287166340%_
                                     _%e166288166343%_
                                     _%hd166289166346%_
                                     _%tl166290166348%_
                                     _%e166291166351%_
                                     _%hd166292166354%_
                                     _%tl166293166356%_
                                     _%e166294166359%_
                                     _%hd166295166362%_
                                     _%tl166296166364%_
                                     _%e166297166367%_
                                     _%hd166298166370%_
                                     _%tl166299166372%_
                                     _%e166300166375%_
                                     _%hd166301166378%_
                                     _%tl166302166380%_)
                                    (_%__kont172110172111%_))))
                            (_%__kont172110172111%_))))
                     (_%__match172529172530%_
                      (lambda (_%e166255166432%_
                               _%hd166256166435%_
                               _%tl166257166437%_
                               _%e166258166440%_
                               _%hd166259166443%_
                               _%tl166260166445%_
                               _%e166261166448%_
                               _%hd166262166451%_
                               _%tl166263166453%_
                               _%e166264166456%_
                               _%hd166265166459%_
                               _%tl166266166461%_
                               _%e166267166464%_
                               _%hd166268166467%_
                               _%tl166269166469%_
                               _%e166270166472%_
                               _%hd166271166475%_
                               _%tl166272166477%_
                               _%e166273166480%_
                               _%hd166274166483%_
                               _%tl166275166485%_)
                        (let ((_%L166488%_ _%hd166274166483%_)
                              (_%L166489%_ _%hd166265166459%_))
                          (if (and (let ((__tmp172748
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self166074%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L166488%_
                                      __tmp172748))
                                   (let ((__tmp172749
                                          (let ((__tmp172750
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%L166489%_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp172750))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp172749
                                      'gxc#!accessor::t)))
                              (_%__kont172106172107%_ _%L166488%_ _%L166489%_)
                              (_%__kont172110172111%_)))))
                     (_%__match172527172528%_
                      (lambda (_%e166255166432%_
                               _%hd166256166435%_
                               _%tl166257166437%_
                               _%e166258166440%_
                               _%hd166259166443%_
                               _%tl166260166445%_
                               _%e166261166448%_
                               _%hd166262166451%_
                               _%tl166263166453%_
                               _%e166264166456%_
                               _%hd166265166459%_
                               _%tl166266166461%_
                               _%e166267166464%_
                               _%hd166268166467%_
                               _%tl166269166469%_
                               _%e166270166472%_
                               _%hd166271166475%_
                               _%tl166272166477%_
                               _%e166273166480%_
                               _%hd166274166483%_
                               _%tl166275166485%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl166269166469%_))
                            (_%__match172529172530%_
                             _%e166255166432%_
                             _%hd166256166435%_
                             _%tl166257166437%_
                             _%e166258166440%_
                             _%hd166259166443%_
                             _%tl166260166445%_
                             _%e166261166448%_
                             _%hd166262166451%_
                             _%tl166263166453%_
                             _%e166264166456%_
                             _%hd166265166459%_
                             _%tl166266166461%_
                             _%e166267166464%_
                             _%hd166268166467%_
                             _%tl166269166469%_
                             _%e166270166472%_
                             _%hd166271166475%_
                             _%tl166272166477%_
                             _%e166273166480%_
                             _%hd166274166483%_
                             _%tl166275166485%_)
                            (_%__match172583172584%_
                             _%e166255166432%_
                             _%hd166256166435%_
                             _%tl166257166437%_
                             _%e166258166440%_
                             _%hd166259166443%_
                             _%tl166260166445%_
                             _%e166261166448%_
                             _%hd166262166451%_
                             _%tl166263166453%_
                             _%e166264166456%_
                             _%hd166265166459%_
                             _%tl166266166461%_
                             _%e166267166464%_
                             _%hd166268166467%_
                             _%tl166269166469%_
                             _%e166270166472%_
                             _%hd166271166475%_
                             _%tl166272166477%_
                             _%e166273166480%_
                             _%hd166274166483%_
                             _%tl166275166485%_))))
                     (_%__match172473172474%_
                      (lambda (_%e166220166528%_
                               _%hd166221166531%_
                               _%tl166222166533%_
                               _%e166223166536%_
                               _%hd166224166539%_
                               _%tl166225166541%_
                               _%e166226166544%_
                               _%hd166227166547%_
                               _%tl166228166549%_
                               _%e166229166552%_
                               _%hd166230166555%_
                               _%tl166231166557%_
                               _%e166232166560%_
                               _%hd166233166563%_
                               _%tl166234166565%_
                               _%e166235166568%_
                               _%hd166236166571%_
                               _%tl166237166573%_
                               _%e166238166576%_
                               _%hd166239166579%_
                               _%tl166240166581%_
                               _%e166241166584%_
                               _%hd166242166587%_
                               _%tl166243166589%_
                               _%e166244166592%_
                               _%hd166245166595%_
                               _%tl166246166597%_
                               _%e166247166600%_
                               _%hd166248166603%_
                               _%tl166249166605%_
                               _%e166250166608%_
                               _%hd166251166611%_
                               _%tl166252166613%_)
                        (let ((_%L166616%_ _%hd166251166611%_)
                              (_%L166617%_ _%hd166248166603%_)
                              (_%L166618%_ _%hd166239166579%_)
                              (_%L166619%_ _%hd166230166555%_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L166619%_
                                          'slot-set!))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L166619%_
                                          'unchecked-slot-set!)))
                                   (let ((__tmp172751
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self166074%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L166618%_
                                      __tmp172751)))
                              (_%__kont172104172105%_
                               _%L166616%_
                               _%L166617%_
                               _%L166618%_
                               _%L166619%_)
                              (_%__kont172110172111%_)))))
                     (_%__match172465172466%_
                      (lambda (_%e166220166528%_
                               _%hd166221166531%_
                               _%tl166222166533%_
                               _%e166223166536%_
                               _%hd166224166539%_
                               _%tl166225166541%_
                               _%e166226166544%_
                               _%hd166227166547%_
                               _%tl166228166549%_
                               _%e166229166552%_
                               _%hd166230166555%_
                               _%tl166231166557%_
                               _%e166232166560%_
                               _%hd166233166563%_
                               _%tl166234166565%_
                               _%e166235166568%_
                               _%hd166236166571%_
                               _%tl166237166573%_
                               _%e166238166576%_
                               _%hd166239166579%_
                               _%tl166240166581%_
                               _%e166241166584%_
                               _%hd166242166587%_
                               _%tl166243166589%_
                               _%e166244166592%_
                               _%hd166245166595%_
                               _%tl166246166597%_
                               _%e166247166600%_
                               _%hd166248166603%_
                               _%tl166249166605%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl166243166589%_))
                            (let ((_%e166250166608%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl166243166589%_))))
                              (let ((_%tl166252166613%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e166250166608%_)))
                                    (_%hd166251166611%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e166250166608%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl166252166613%_))
                                    (_%__match172473172474%_
                                     _%e166220166528%_
                                     _%hd166221166531%_
                                     _%tl166222166533%_
                                     _%e166223166536%_
                                     _%hd166224166539%_
                                     _%tl166225166541%_
                                     _%e166226166544%_
                                     _%hd166227166547%_
                                     _%tl166228166549%_
                                     _%e166229166552%_
                                     _%hd166230166555%_
                                     _%tl166231166557%_
                                     _%e166232166560%_
                                     _%hd166233166563%_
                                     _%tl166234166565%_
                                     _%e166235166568%_
                                     _%hd166236166571%_
                                     _%tl166237166573%_
                                     _%e166238166576%_
                                     _%hd166239166579%_
                                     _%tl166240166581%_
                                     _%e166241166584%_
                                     _%hd166242166587%_
                                     _%tl166243166589%_
                                     _%e166244166592%_
                                     _%hd166245166595%_
                                     _%tl166246166597%_
                                     _%e166247166600%_
                                     _%hd166248166603%_
                                     _%tl166249166605%_
                                     _%e166250166608%_
                                     _%hd166251166611%_
                                     _%tl166252166613%_)
                                    (_%__kont172110172111%_))))
                            (_%__match172589172590%_
                             _%e166220166528%_
                             _%hd166221166531%_
                             _%tl166222166533%_
                             _%e166223166536%_
                             _%hd166224166539%_
                             _%tl166225166541%_
                             _%e166226166544%_
                             _%hd166227166547%_
                             _%tl166228166549%_
                             _%e166229166552%_
                             _%hd166230166555%_
                             _%tl166231166557%_
                             _%e166232166560%_
                             _%hd166233166563%_
                             _%tl166234166565%_
                             _%e166235166568%_
                             _%hd166236166571%_
                             _%tl166237166573%_
                             _%e166238166576%_
                             _%hd166239166579%_
                             _%tl166240166581%_
                             _%e166241166584%_
                             _%hd166242166587%_
                             _%tl166243166589%_))))
                     (_%__match172387172388%_
                      (lambda (_%e166186166662%_
                               _%hd166187166665%_
                               _%tl166188166667%_
                               _%e166189166670%_
                               _%hd166190166673%_
                               _%tl166191166675%_
                               _%e166192166678%_
                               _%hd166193166681%_
                               _%tl166194166683%_
                               _%e166195166686%_
                               _%hd166196166689%_
                               _%tl166197166691%_
                               _%e166198166694%_
                               _%hd166199166697%_
                               _%tl166200166699%_
                               _%e166201166702%_
                               _%hd166202166705%_
                               _%tl166203166707%_
                               _%e166204166710%_
                               _%hd166205166713%_
                               _%tl166206166715%_
                               _%e166207166718%_
                               _%hd166208166721%_
                               _%tl166209166723%_
                               _%e166210166726%_
                               _%hd166211166729%_
                               _%tl166212166731%_
                               _%e166213166734%_
                               _%hd166214166737%_
                               _%tl166215166739%_)
                        (let ((_%L166742%_ _%hd166214166737%_)
                              (_%L166743%_ _%hd166205166713%_)
                              (_%L166744%_ _%hd166196166689%_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L166744%_
                                          'slot-ref))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L166744%_
                                          'unchecked-slot-ref)))
                                   (let ((__tmp172752
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self166074%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L166743%_
                                      __tmp172752)))
                              (_%__kont172102172103%_
                               _%L166742%_
                               _%L166743%_
                               _%L166744%_)
                              (_%__match172591172592%_
                               _%e166186166662%_
                               _%hd166187166665%_
                               _%tl166188166667%_
                               _%e166189166670%_
                               _%hd166190166673%_
                               _%tl166191166675%_
                               _%e166192166678%_
                               _%hd166193166681%_
                               _%tl166194166683%_
                               _%e166195166686%_
                               _%hd166196166689%_
                               _%tl166197166691%_
                               _%e166198166694%_
                               _%hd166199166697%_
                               _%tl166200166699%_
                               _%e166201166702%_
                               _%hd166202166705%_
                               _%tl166203166707%_
                               _%e166204166710%_
                               _%hd166205166713%_
                               _%tl166206166715%_
                               _%e166207166718%_
                               _%hd166208166721%_
                               _%tl166209166723%_)))))
                     (_%__match172385172386%_
                      (lambda (_%e166186166662%_
                               _%hd166187166665%_
                               _%tl166188166667%_
                               _%e166189166670%_
                               _%hd166190166673%_
                               _%tl166191166675%_
                               _%e166192166678%_
                               _%hd166193166681%_
                               _%tl166194166683%_
                               _%e166195166686%_
                               _%hd166196166689%_
                               _%tl166197166691%_
                               _%e166198166694%_
                               _%hd166199166697%_
                               _%tl166200166699%_
                               _%e166201166702%_
                               _%hd166202166705%_
                               _%tl166203166707%_
                               _%e166204166710%_
                               _%hd166205166713%_
                               _%tl166206166715%_
                               _%e166207166718%_
                               _%hd166208166721%_
                               _%tl166209166723%_
                               _%e166210166726%_
                               _%hd166211166729%_
                               _%tl166212166731%_
                               _%e166213166734%_
                               _%hd166214166737%_
                               _%tl166215166739%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl166209166723%_))
                            (_%__match172387172388%_
                             _%e166186166662%_
                             _%hd166187166665%_
                             _%tl166188166667%_
                             _%e166189166670%_
                             _%hd166190166673%_
                             _%tl166191166675%_
                             _%e166192166678%_
                             _%hd166193166681%_
                             _%tl166194166683%_
                             _%e166195166686%_
                             _%hd166196166689%_
                             _%tl166197166691%_
                             _%e166198166694%_
                             _%hd166199166697%_
                             _%tl166200166699%_
                             _%e166201166702%_
                             _%hd166202166705%_
                             _%tl166203166707%_
                             _%e166204166710%_
                             _%hd166205166713%_
                             _%tl166206166715%_
                             _%e166207166718%_
                             _%hd166208166721%_
                             _%tl166209166723%_
                             _%e166210166726%_
                             _%hd166211166729%_
                             _%tl166212166731%_
                             _%e166213166734%_
                             _%hd166214166737%_
                             _%tl166215166739%_)
                            (_%__match172465172466%_
                             _%e166186166662%_
                             _%hd166187166665%_
                             _%tl166188166667%_
                             _%e166189166670%_
                             _%hd166190166673%_
                             _%tl166191166675%_
                             _%e166192166678%_
                             _%hd166193166681%_
                             _%tl166194166683%_
                             _%e166195166686%_
                             _%hd166196166689%_
                             _%tl166197166691%_
                             _%e166198166694%_
                             _%hd166199166697%_
                             _%tl166200166699%_
                             _%e166201166702%_
                             _%hd166202166705%_
                             _%tl166203166707%_
                             _%e166204166710%_
                             _%hd166205166713%_
                             _%tl166206166715%_
                             _%e166207166718%_
                             _%hd166208166721%_
                             _%tl166209166723%_
                             _%e166210166726%_
                             _%hd166211166729%_
                             _%tl166212166731%_
                             _%e166213166734%_
                             _%hd166214166737%_
                             _%tl166215166739%_))))
                     (_%__match172375172376%_
                      (lambda (_%e166186166662%_
                               _%hd166187166665%_
                               _%tl166188166667%_
                               _%e166189166670%_
                               _%hd166190166673%_
                               _%tl166191166675%_
                               _%e166192166678%_
                               _%hd166193166681%_
                               _%tl166194166683%_
                               _%e166195166686%_
                               _%hd166196166689%_
                               _%tl166197166691%_
                               _%e166198166694%_
                               _%hd166199166697%_
                               _%tl166200166699%_
                               _%e166201166702%_
                               _%hd166202166705%_
                               _%tl166203166707%_
                               _%e166204166710%_
                               _%hd166205166713%_
                               _%tl166206166715%_
                               _%e166207166718%_
                               _%hd166208166721%_
                               _%tl166209166723%_
                               _%e166210166726%_
                               _%hd166211166729%_
                               _%tl166212166731%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#quote _%hd166211166729%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl166212166731%_))
                                (let ((_%e166213166734%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl166212166731%_))))
                                  (let ((_%tl166215166739%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e166213166734%_)))
                                        (_%hd166214166737%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e166213166734%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl166215166739%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl166209166723%_))
                                            (_%__match172387172388%_
                                             _%e166186166662%_
                                             _%hd166187166665%_
                                             _%tl166188166667%_
                                             _%e166189166670%_
                                             _%hd166190166673%_
                                             _%tl166191166675%_
                                             _%e166192166678%_
                                             _%hd166193166681%_
                                             _%tl166194166683%_
                                             _%e166195166686%_
                                             _%hd166196166689%_
                                             _%tl166197166691%_
                                             _%e166198166694%_
                                             _%hd166199166697%_
                                             _%tl166200166699%_
                                             _%e166201166702%_
                                             _%hd166202166705%_
                                             _%tl166203166707%_
                                             _%e166204166710%_
                                             _%hd166205166713%_
                                             _%tl166206166715%_
                                             _%e166207166718%_
                                             _%hd166208166721%_
                                             _%tl166209166723%_
                                             _%e166210166726%_
                                             _%hd166211166729%_
                                             _%tl166212166731%_
                                             _%e166213166734%_
                                             _%hd166214166737%_
                                             _%tl166215166739%_)
                                            (_%__match172465172466%_
                                             _%e166186166662%_
                                             _%hd166187166665%_
                                             _%tl166188166667%_
                                             _%e166189166670%_
                                             _%hd166190166673%_
                                             _%tl166191166675%_
                                             _%e166192166678%_
                                             _%hd166193166681%_
                                             _%tl166194166683%_
                                             _%e166195166686%_
                                             _%hd166196166689%_
                                             _%tl166197166691%_
                                             _%e166198166694%_
                                             _%hd166199166697%_
                                             _%tl166200166699%_
                                             _%e166201166702%_
                                             _%hd166202166705%_
                                             _%tl166203166707%_
                                             _%e166204166710%_
                                             _%hd166205166713%_
                                             _%tl166206166715%_
                                             _%e166207166718%_
                                             _%hd166208166721%_
                                             _%tl166209166723%_
                                             _%e166210166726%_
                                             _%hd166211166729%_
                                             _%tl166212166731%_
                                             _%e166213166734%_
                                             _%hd166214166737%_
                                             _%tl166215166739%_))
                                        (_%__match172589172590%_
                                         _%e166186166662%_
                                         _%hd166187166665%_
                                         _%tl166188166667%_
                                         _%e166189166670%_
                                         _%hd166190166673%_
                                         _%tl166191166675%_
                                         _%e166192166678%_
                                         _%hd166193166681%_
                                         _%tl166194166683%_
                                         _%e166195166686%_
                                         _%hd166196166689%_
                                         _%tl166197166691%_
                                         _%e166198166694%_
                                         _%hd166199166697%_
                                         _%tl166200166699%_
                                         _%e166201166702%_
                                         _%hd166202166705%_
                                         _%tl166203166707%_
                                         _%e166204166710%_
                                         _%hd166205166713%_
                                         _%tl166206166715%_
                                         _%e166207166718%_
                                         _%hd166208166721%_
                                         _%tl166209166723%_))))
                                (_%__match172589172590%_
                                 _%e166186166662%_
                                 _%hd166187166665%_
                                 _%tl166188166667%_
                                 _%e166189166670%_
                                 _%hd166190166673%_
                                 _%tl166191166675%_
                                 _%e166192166678%_
                                 _%hd166193166681%_
                                 _%tl166194166683%_
                                 _%e166195166686%_
                                 _%hd166196166689%_
                                 _%tl166197166691%_
                                 _%e166198166694%_
                                 _%hd166199166697%_
                                 _%tl166200166699%_
                                 _%e166201166702%_
                                 _%hd166202166705%_
                                 _%tl166203166707%_
                                 _%e166204166710%_
                                 _%hd166205166713%_
                                 _%tl166206166715%_
                                 _%e166207166718%_
                                 _%hd166208166721%_
                                 _%tl166209166723%_))
                            (_%__match172589172590%_
                             _%e166186166662%_
                             _%hd166187166665%_
                             _%tl166188166667%_
                             _%e166189166670%_
                             _%hd166190166673%_
                             _%tl166191166675%_
                             _%e166192166678%_
                             _%hd166193166681%_
                             _%tl166194166683%_
                             _%e166195166686%_
                             _%hd166196166689%_
                             _%tl166197166691%_
                             _%e166198166694%_
                             _%hd166199166697%_
                             _%tl166200166699%_
                             _%e166201166702%_
                             _%hd166202166705%_
                             _%tl166203166707%_
                             _%e166204166710%_
                             _%hd166205166713%_
                             _%tl166206166715%_
                             _%e166207166718%_
                             _%hd166208166721%_
                             _%tl166209166723%_))))
                     (_%__match172307172308%_
                      (lambda (_%e166135166783%_
                               _%hd166136166786%_
                               _%tl166137166788%_
                               _%e166138166791%_
                               _%hd166139166794%_
                               _%tl166140166796%_
                               _%e166141166799%_
                               _%hd166142166802%_
                               _%tl166143166804%_
                               _%e166144166807%_
                               _%hd166145166810%_
                               _%tl166146166812%_
                               _%e166147166815%_
                               _%hd166148166818%_
                               _%tl166149166820%_
                               _%e166150166823%_
                               _%hd166151166826%_
                               _%tl166152166828%_
                               _%e166153166831%_
                               _%hd166154166834%_
                               _%tl166155166836%_
                               _%e166156166839%_
                               _%hd166157166842%_
                               _%tl166158166844%_
                               _%e166159166847%_
                               _%hd166160166850%_
                               _%tl166161166852%_
                               _%e166162166855%_
                               _%hd166163166858%_
                               _%tl166164166860%_
                               _%e166165166863%_
                               _%hd166166166866%_
                               _%tl166167166868%_
                               _%e166168166871%_
                               _%hd166169166874%_
                               _%tl166170166876%_
                               _%e166171166879%_
                               _%hd166172166882%_
                               _%tl166173166884%_
                               _%__splice172100172101%_
                               _%target166174166887%_
                               _%tl166176166889%_)
                        (letrec ((_%loop166177166892%_
                                  (lambda (_%hd166175166895%_
                                           _%args166181166897%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd166175166895%_))
                                        (let ((_%e166178166900%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd166175166895%_))))
                                          (let ((_%lp-tl166180166905%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e166178166900%_)))
                                                (_%lp-hd166179166903%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e166178166900%_))))
                                            (_%loop166177166892%_
                                             _%lp-tl166180166905%_
                                             (cons _%lp-hd166179166903%_
                                                   _%args166181166897%_))))
                                        (let ((_%args166182166908%_
                                               (reverse _%args166181166897%_)))
                                          (let ((_%L166911%_
                                                 _%args166182166908%_)
                                                (_%L166912%_
                                                 _%hd166172166882%_)
                                                (_%L166913%_
                                                 _%hd166163166858%_)
                                                (_%L166914%_
                                                 _%hd166154166834%_)
                                                (_%L166915%_
                                                 _%hd166145166810%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%L166915%_
                                                        'apply))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%L166914%_
                                                        'call-method))
                                                     (let ((__tmp172753
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self166074%_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _%L166913%_
                                                        __tmp172753)))
                                                (_%__kont172098172099%_
                                                 _%L166911%_
                                                 _%L166912%_
                                                 _%L166913%_
                                                 _%L166914%_
                                                 _%L166915%_)
                                                (_%__kont172110172111%_))))))))
                          (_%loop166177166892%_ _%target166174166887%_ '()))))
                     (_%__match172265172266%_
                      (lambda (_%e166135166783%_
                               _%hd166136166786%_
                               _%tl166137166788%_
                               _%e166138166791%_
                               _%hd166139166794%_
                               _%tl166140166796%_
                               _%e166141166799%_
                               _%hd166142166802%_
                               _%tl166143166804%_
                               _%e166144166807%_
                               _%hd166145166810%_
                               _%tl166146166812%_
                               _%e166147166815%_
                               _%hd166148166818%_
                               _%tl166149166820%_
                               _%e166150166823%_
                               _%hd166151166826%_
                               _%tl166152166828%_
                               _%e166153166831%_
                               _%hd166154166834%_
                               _%tl166155166836%_
                               _%e166156166839%_
                               _%hd166157166842%_
                               _%tl166158166844%_
                               _%e166159166847%_
                               _%hd166160166850%_
                               _%tl166161166852%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _%hd166160166850%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl166161166852%_))
                                (let ((_%e166162166855%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl166161166852%_))))
                                  (let ((_%tl166164166860%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e166162166855%_)))
                                        (_%hd166163166858%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e166162166855%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl166164166860%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl166158166844%_))
                                            (let ((_%e166165166863%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl166158166844%_))))
                                              (let ((_%tl166167166868%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e166165166863%_)))
                                                    (_%hd166166166866%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e166165166863%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%hd166166166866%_))
                                                    (let ((_%e166168166871%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd166166166866%_))))
                                                      (let ((_%tl166170166876%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e166168166871%_)))
                    (_%hd166169166874%_
                     (let () (declare (not safe)) (##car _%e166168166871%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _%hd166169166874%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _%hd166169166874%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl166170166876%_))
                            (let ((_%e166171166879%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl166170166876%_))))
                              (let ((_%tl166173166884%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e166171166879%_)))
                                    (_%hd166172166882%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e166171166879%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl166173166884%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl166167166868%_))
                                        (let ((_%__splice172100172101%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl166167166868%_
                                                  '0))))
                                          (let ((_%tl166176166889%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice172100172101%_
                                                    '1)))
                                                (_%target166174166887%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice172100172101%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl166176166889%_))
                                                (_%__match172307172308%_
                                                 _%e166135166783%_
                                                 _%hd166136166786%_
                                                 _%tl166137166788%_
                                                 _%e166138166791%_
                                                 _%hd166139166794%_
                                                 _%tl166140166796%_
                                                 _%e166141166799%_
                                                 _%hd166142166802%_
                                                 _%tl166143166804%_
                                                 _%e166144166807%_
                                                 _%hd166145166810%_
                                                 _%tl166146166812%_
                                                 _%e166147166815%_
                                                 _%hd166148166818%_
                                                 _%tl166149166820%_
                                                 _%e166150166823%_
                                                 _%hd166151166826%_
                                                 _%tl166152166828%_
                                                 _%e166153166831%_
                                                 _%hd166154166834%_
                                                 _%tl166155166836%_
                                                 _%e166156166839%_
                                                 _%hd166157166842%_
                                                 _%tl166158166844%_
                                                 _%e166159166847%_
                                                 _%hd166160166850%_
                                                 _%tl166161166852%_
                                                 _%e166162166855%_
                                                 _%hd166163166858%_
                                                 _%tl166164166860%_
                                                 _%e166165166863%_
                                                 _%hd166166166866%_
                                                 _%tl166167166868%_
                                                 _%e166168166871%_
                                                 _%hd166169166874%_
                                                 _%tl166170166876%_
                                                 _%e166171166879%_
                                                 _%hd166172166882%_
                                                 _%tl166173166884%_
                                                 _%__splice172100172101%_
                                                 _%target166174166887%_
                                                 _%tl166176166889%_)
                                                (_%__kont172110172111%_))))
                                        (_%__kont172110172111%_))
                                    (_%__kont172110172111%_))))
                            (_%__kont172110172111%_))
                        (_%__kont172110172111%_))
                    (_%__kont172110172111%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont172110172111%_))))
                                            (_%__match172589172590%_
                                             _%e166135166783%_
                                             _%hd166136166786%_
                                             _%tl166137166788%_
                                             _%e166138166791%_
                                             _%hd166139166794%_
                                             _%tl166140166796%_
                                             _%e166141166799%_
                                             _%hd166142166802%_
                                             _%tl166143166804%_
                                             _%e166144166807%_
                                             _%hd166145166810%_
                                             _%tl166146166812%_
                                             _%e166147166815%_
                                             _%hd166148166818%_
                                             _%tl166149166820%_
                                             _%e166150166823%_
                                             _%hd166151166826%_
                                             _%tl166152166828%_
                                             _%e166153166831%_
                                             _%hd166154166834%_
                                             _%tl166155166836%_
                                             _%e166156166839%_
                                             _%hd166157166842%_
                                             _%tl166158166844%_))
                                        (_%__match172589172590%_
                                         _%e166135166783%_
                                         _%hd166136166786%_
                                         _%tl166137166788%_
                                         _%e166138166791%_
                                         _%hd166139166794%_
                                         _%tl166140166796%_
                                         _%e166141166799%_
                                         _%hd166142166802%_
                                         _%tl166143166804%_
                                         _%e166144166807%_
                                         _%hd166145166810%_
                                         _%tl166146166812%_
                                         _%e166147166815%_
                                         _%hd166148166818%_
                                         _%tl166149166820%_
                                         _%e166150166823%_
                                         _%hd166151166826%_
                                         _%tl166152166828%_
                                         _%e166153166831%_
                                         _%hd166154166834%_
                                         _%tl166155166836%_
                                         _%e166156166839%_
                                         _%hd166157166842%_
                                         _%tl166158166844%_))))
                                (_%__match172589172590%_
                                 _%e166135166783%_
                                 _%hd166136166786%_
                                 _%tl166137166788%_
                                 _%e166138166791%_
                                 _%hd166139166794%_
                                 _%tl166140166796%_
                                 _%e166141166799%_
                                 _%hd166142166802%_
                                 _%tl166143166804%_
                                 _%e166144166807%_
                                 _%hd166145166810%_
                                 _%tl166146166812%_
                                 _%e166147166815%_
                                 _%hd166148166818%_
                                 _%tl166149166820%_
                                 _%e166150166823%_
                                 _%hd166151166826%_
                                 _%tl166152166828%_
                                 _%e166153166831%_
                                 _%hd166154166834%_
                                 _%tl166155166836%_
                                 _%e166156166839%_
                                 _%hd166157166842%_
                                 _%tl166158166844%_))
                            (_%__match172375172376%_
                             _%e166135166783%_
                             _%hd166136166786%_
                             _%tl166137166788%_
                             _%e166138166791%_
                             _%hd166139166794%_
                             _%tl166140166796%_
                             _%e166141166799%_
                             _%hd166142166802%_
                             _%tl166143166804%_
                             _%e166144166807%_
                             _%hd166145166810%_
                             _%tl166146166812%_
                             _%e166147166815%_
                             _%hd166148166818%_
                             _%tl166149166820%_
                             _%e166150166823%_
                             _%hd166151166826%_
                             _%tl166152166828%_
                             _%e166153166831%_
                             _%hd166154166834%_
                             _%tl166155166836%_
                             _%e166156166839%_
                             _%hd166157166842%_
                             _%tl166158166844%_
                             _%e166159166847%_
                             _%hd166160166850%_
                             _%tl166161166852%_))))
                     (_%__match172197172198%_
                      (lambda (_%e166091166975%_
                               _%hd166092166978%_
                               _%tl166093166980%_
                               _%e166094166983%_
                               _%hd166095166986%_
                               _%tl166096166988%_
                               _%e166097166991%_
                               _%hd166098166994%_
                               _%tl166099166996%_
                               _%e166100166999%_
                               _%hd166101167002%_
                               _%tl166102167004%_
                               _%e166103167007%_
                               _%hd166104167010%_
                               _%tl166105167012%_
                               _%e166106167015%_
                               _%hd166107167018%_
                               _%tl166108167020%_
                               _%e166109167023%_
                               _%hd166110167026%_
                               _%tl166111167028%_
                               _%e166112167031%_
                               _%hd166113167034%_
                               _%tl166114167036%_
                               _%e166115167039%_
                               _%hd166116167042%_
                               _%tl166117167044%_
                               _%e166118167047%_
                               _%hd166119167050%_
                               _%tl166120167052%_
                               _%__splice172096172097%_
                               _%target166121167055%_
                               _%tl166123167057%_)
                        (letrec ((_%loop166124167060%_
                                  (lambda (_%hd166122167063%_
                                           _%args166128167065%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd166122167063%_))
                                        (let ((_%e166125167068%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd166122167063%_))))
                                          (let ((_%lp-tl166127167073%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e166125167068%_)))
                                                (_%lp-hd166126167071%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e166125167068%_))))
                                            (_%loop166124167060%_
                                             _%lp-tl166127167073%_
                                             (cons _%lp-hd166126167071%_
                                                   _%args166128167065%_))))
                                        (let ((_%args166129167076%_
                                               (reverse _%args166128167065%_)))
                                          (let ((_%L167079%_
                                                 _%args166129167076%_)
                                                (_%L167080%_
                                                 _%hd166119167050%_)
                                                (_%L167081%_
                                                 _%hd166110167026%_)
                                                (_%L167082%_
                                                 _%hd166101167002%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%L167082%_
                                                        'call-method))
                                                     (let ((__tmp172754
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self166074%_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _%L167081%_
                                                        __tmp172754)))
                                                (_%__kont172094172095%_
                                                 _%L167079%_
                                                 _%L167080%_
                                                 _%L167081%_
                                                 _%L167082%_)
                                                (_%__match172385172386%_
                                                 _%e166091166975%_
                                                 _%hd166092166978%_
                                                 _%tl166093166980%_
                                                 _%e166094166983%_
                                                 _%hd166095166986%_
                                                 _%tl166096166988%_
                                                 _%e166097166991%_
                                                 _%hd166098166994%_
                                                 _%tl166099166996%_
                                                 _%e166100166999%_
                                                 _%hd166101167002%_
                                                 _%tl166102167004%_
                                                 _%e166103167007%_
                                                 _%hd166104167010%_
                                                 _%tl166105167012%_
                                                 _%e166106167015%_
                                                 _%hd166107167018%_
                                                 _%tl166108167020%_
                                                 _%e166109167023%_
                                                 _%hd166110167026%_
                                                 _%tl166111167028%_
                                                 _%e166112167031%_
                                                 _%hd166113167034%_
                                                 _%tl166114167036%_
                                                 _%e166115167039%_
                                                 _%hd166116167042%_
                                                 _%tl166117167044%_
                                                 _%e166118167047%_
                                                 _%hd166119167050%_
                                                 _%tl166120167052%_))))))))
                          (_%loop166124167060%_ _%target166121167055%_ '())))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx172092172093%_))
                    (let ((_%e166091166975%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx172092172093%_))))
                      (let ((_%tl166093166980%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e166091166975%_)))
                            (_%hd166092166978%_
                             (let ()
                               (declare (not safe))
                               (##car _%e166091166975%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl166093166980%_))
                            (let ((_%e166094166983%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl166093166980%_))))
                              (let ((_%tl166096166988%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e166094166983%_)))
                                    (_%hd166095166986%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e166094166983%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd166095166986%_))
                                    (let ((_%e166097166991%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd166095166986%_))))
                                      (let ((_%tl166099166996%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e166097166991%_)))
                                            (_%hd166098166994%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e166097166991%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _%hd166098166994%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _%hd166098166994%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl166099166996%_))
                                                    (let ((_%e166100166999%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl166099166996%_))))
                                                      (let ((_%tl166102167004%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e166100166999%_)))
                    (_%hd166101167002%_
                     (let () (declare (not safe)) (##car _%e166100166999%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl166102167004%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl166096166988%_))
                        (let ((_%e166103167007%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl166096166988%_))))
                          (let ((_%tl166105167012%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e166103167007%_)))
                                (_%hd166104167010%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e166103167007%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd166104167010%_))
                                (let ((_%e166106167015%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd166104167010%_))))
                                  (let ((_%tl166108167020%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e166106167015%_)))
                                        (_%hd166107167018%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e166106167015%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd166107167018%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _%hd166107167018%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl166108167020%_))
                                                (let ((_%e166109167023%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl166108167020%_))))
                                                  (let ((_%tl166111167028%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e166109167023%_)))
                                                        (_%hd166110167026%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e166109167023%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl166111167028%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl166105167012%_))
                                                            (let ((_%e166112167031%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl166105167012%_))))
                      (let ((_%tl166114167036%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e166112167031%_)))
                            (_%hd166113167034%_
                             (let ()
                               (declare (not safe))
                               (##car _%e166112167031%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd166113167034%_))
                            (let ((_%e166115167039%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd166113167034%_))))
                              (let ((_%tl166117167044%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e166115167039%_)))
                                    (_%hd166116167042%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e166115167039%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd166116167042%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd166116167042%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl166117167044%_))
                                            (let ((_%e166118167047%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl166117167044%_))))
                                              (let ((_%tl166120167052%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e166118167047%_)))
                                                    (_%hd166119167050%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e166118167047%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl166120167052%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair/null?
                                                           _%tl166114167036%_))
                                                        (let ((_%__splice172096172097%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-split-splice _%tl166114167036%_ '0))))
                  (let ((_%tl166123167057%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice172096172097%_ '1)))
                        (_%target166121167055%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice172096172097%_ '0))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl166123167057%_))
                        (_%__match172197172198%_
                         _%e166091166975%_
                         _%hd166092166978%_
                         _%tl166093166980%_
                         _%e166094166983%_
                         _%hd166095166986%_
                         _%tl166096166988%_
                         _%e166097166991%_
                         _%hd166098166994%_
                         _%tl166099166996%_
                         _%e166100166999%_
                         _%hd166101167002%_
                         _%tl166102167004%_
                         _%e166103167007%_
                         _%hd166104167010%_
                         _%tl166105167012%_
                         _%e166106167015%_
                         _%hd166107167018%_
                         _%tl166108167020%_
                         _%e166109167023%_
                         _%hd166110167026%_
                         _%tl166111167028%_
                         _%e166112167031%_
                         _%hd166113167034%_
                         _%tl166114167036%_
                         _%e166115167039%_
                         _%hd166116167042%_
                         _%tl166117167044%_
                         _%e166118167047%_
                         _%hd166119167050%_
                         _%tl166120167052%_
                         _%__splice172096172097%_
                         _%target166121167055%_
                         _%tl166123167057%_)
                        (_%__match172385172386%_
                         _%e166091166975%_
                         _%hd166092166978%_
                         _%tl166093166980%_
                         _%e166094166983%_
                         _%hd166095166986%_
                         _%tl166096166988%_
                         _%e166097166991%_
                         _%hd166098166994%_
                         _%tl166099166996%_
                         _%e166100166999%_
                         _%hd166101167002%_
                         _%tl166102167004%_
                         _%e166103167007%_
                         _%hd166104167010%_
                         _%tl166105167012%_
                         _%e166106167015%_
                         _%hd166107167018%_
                         _%tl166108167020%_
                         _%e166109167023%_
                         _%hd166110167026%_
                         _%tl166111167028%_
                         _%e166112167031%_
                         _%hd166113167034%_
                         _%tl166114167036%_
                         _%e166115167039%_
                         _%hd166116167042%_
                         _%tl166117167044%_
                         _%e166118167047%_
                         _%hd166119167050%_
                         _%tl166120167052%_))))
                (_%__match172385172386%_
                 _%e166091166975%_
                 _%hd166092166978%_
                 _%tl166093166980%_
                 _%e166094166983%_
                 _%hd166095166986%_
                 _%tl166096166988%_
                 _%e166097166991%_
                 _%hd166098166994%_
                 _%tl166099166996%_
                 _%e166100166999%_
                 _%hd166101167002%_
                 _%tl166102167004%_
                 _%e166103167007%_
                 _%hd166104167010%_
                 _%tl166105167012%_
                 _%e166106167015%_
                 _%hd166107167018%_
                 _%tl166108167020%_
                 _%e166109167023%_
                 _%hd166110167026%_
                 _%tl166111167028%_
                 _%e166112167031%_
                 _%hd166113167034%_
                 _%tl166114167036%_
                 _%e166115167039%_
                 _%hd166116167042%_
                 _%tl166117167044%_
                 _%e166118167047%_
                 _%hd166119167050%_
                 _%tl166120167052%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match172589172590%_
                                                     _%e166091166975%_
                                                     _%hd166092166978%_
                                                     _%tl166093166980%_
                                                     _%e166094166983%_
                                                     _%hd166095166986%_
                                                     _%tl166096166988%_
                                                     _%e166097166991%_
                                                     _%hd166098166994%_
                                                     _%tl166099166996%_
                                                     _%e166100166999%_
                                                     _%hd166101167002%_
                                                     _%tl166102167004%_
                                                     _%e166103167007%_
                                                     _%hd166104167010%_
                                                     _%tl166105167012%_
                                                     _%e166106167015%_
                                                     _%hd166107167018%_
                                                     _%tl166108167020%_
                                                     _%e166109167023%_
                                                     _%hd166110167026%_
                                                     _%tl166111167028%_
                                                     _%e166112167031%_
                                                     _%hd166113167034%_
                                                     _%tl166114167036%_))))
                                            (_%__match172589172590%_
                                             _%e166091166975%_
                                             _%hd166092166978%_
                                             _%tl166093166980%_
                                             _%e166094166983%_
                                             _%hd166095166986%_
                                             _%tl166096166988%_
                                             _%e166097166991%_
                                             _%hd166098166994%_
                                             _%tl166099166996%_
                                             _%e166100166999%_
                                             _%hd166101167002%_
                                             _%tl166102167004%_
                                             _%e166103167007%_
                                             _%hd166104167010%_
                                             _%tl166105167012%_
                                             _%e166106167015%_
                                             _%hd166107167018%_
                                             _%tl166108167020%_
                                             _%e166109167023%_
                                             _%hd166110167026%_
                                             _%tl166111167028%_
                                             _%e166112167031%_
                                             _%hd166113167034%_
                                             _%tl166114167036%_))
                                        (_%__match172265172266%_
                                         _%e166091166975%_
                                         _%hd166092166978%_
                                         _%tl166093166980%_
                                         _%e166094166983%_
                                         _%hd166095166986%_
                                         _%tl166096166988%_
                                         _%e166097166991%_
                                         _%hd166098166994%_
                                         _%tl166099166996%_
                                         _%e166100166999%_
                                         _%hd166101167002%_
                                         _%tl166102167004%_
                                         _%e166103167007%_
                                         _%hd166104167010%_
                                         _%tl166105167012%_
                                         _%e166106167015%_
                                         _%hd166107167018%_
                                         _%tl166108167020%_
                                         _%e166109167023%_
                                         _%hd166110167026%_
                                         _%tl166111167028%_
                                         _%e166112167031%_
                                         _%hd166113167034%_
                                         _%tl166114167036%_
                                         _%e166115167039%_
                                         _%hd166116167042%_
                                         _%tl166117167044%_))
                                    (_%__match172589172590%_
                                     _%e166091166975%_
                                     _%hd166092166978%_
                                     _%tl166093166980%_
                                     _%e166094166983%_
                                     _%hd166095166986%_
                                     _%tl166096166988%_
                                     _%e166097166991%_
                                     _%hd166098166994%_
                                     _%tl166099166996%_
                                     _%e166100166999%_
                                     _%hd166101167002%_
                                     _%tl166102167004%_
                                     _%e166103167007%_
                                     _%hd166104167010%_
                                     _%tl166105167012%_
                                     _%e166106167015%_
                                     _%hd166107167018%_
                                     _%tl166108167020%_
                                     _%e166109167023%_
                                     _%hd166110167026%_
                                     _%tl166111167028%_
                                     _%e166112167031%_
                                     _%hd166113167034%_
                                     _%tl166114167036%_))))
                            (_%__match172589172590%_
                             _%e166091166975%_
                             _%hd166092166978%_
                             _%tl166093166980%_
                             _%e166094166983%_
                             _%hd166095166986%_
                             _%tl166096166988%_
                             _%e166097166991%_
                             _%hd166098166994%_
                             _%tl166099166996%_
                             _%e166100166999%_
                             _%hd166101167002%_
                             _%tl166102167004%_
                             _%e166103167007%_
                             _%hd166104167010%_
                             _%tl166105167012%_
                             _%e166106167015%_
                             _%hd166107167018%_
                             _%tl166108167020%_
                             _%e166109167023%_
                             _%hd166110167026%_
                             _%tl166111167028%_
                             _%e166112167031%_
                             _%hd166113167034%_
                             _%tl166114167036%_))))
                    (_%__match172527172528%_
                     _%e166091166975%_
                     _%hd166092166978%_
                     _%tl166093166980%_
                     _%e166094166983%_
                     _%hd166095166986%_
                     _%tl166096166988%_
                     _%e166097166991%_
                     _%hd166098166994%_
                     _%tl166099166996%_
                     _%e166100166999%_
                     _%hd166101167002%_
                     _%tl166102167004%_
                     _%e166103167007%_
                     _%hd166104167010%_
                     _%tl166105167012%_
                     _%e166106167015%_
                     _%hd166107167018%_
                     _%tl166108167020%_
                     _%e166109167023%_
                     _%hd166110167026%_
                     _%tl166111167028%_))
                (_%__kont172110172111%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont172110172111%_))
                                            (_%__kont172110172111%_))
                                        (_%__kont172110172111%_))))
                                (_%__kont172110172111%_))))
                        (_%__kont172110172111%_))
                    (_%__kont172110172111%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont172110172111%_))
                                                (_%__kont172110172111%_))
                                            (_%__kont172110172111%_))))
                                    (_%__kont172110172111%_))))
                            (_%__kont172110172111%_))))
                    (_%__kont172110172111%_))))))))))
