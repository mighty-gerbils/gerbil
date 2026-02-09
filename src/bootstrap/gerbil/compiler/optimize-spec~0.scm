(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-spec::timestamp 1770607527)
  (begin
    (define gxc#::generate-method-specializers::t
      (let ((__tmp233334 (list gxc#::identity::t))
            (__tmp233333 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-method-specializers::t
         '::generate-method-specializers
         __tmp233334
         '()
         __tmp233333
         '#f)))
    (define gxc#::generate-method-specializers?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-method-specializers::t)))
    (define gxc#make-::generate-method-specializers
      (lambda _%$args232131%_
        (apply make-instance
               gxc#::generate-method-specializers::t
               _%$args232131%_)))
    (define gxc#::generate-method-specializers-bind-methods!
      (let ((__tmp233335
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
        (__make-atomic-promise __tmp233335)))
    (define gxc#apply-generate-method-specializers
      (lambda (_%stx232123%_)
        (force gxc#::generate-method-specializers-bind-methods!)
        (let* ((_%self232126%_
                (let ((__obj233326
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-method-specializers::t))))
                  __obj233326))
               (__tmp233336
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self232126%_ _%stx232123%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp233336
           gxc#current-compile-method
           _%self232126%_))))
    (define gxc#::extract-receiver::t
      (let ((__tmp233338 (list gxc#::false::t))
            (__tmp233337 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::extract-receiver::t
         '::extract-receiver
         __tmp233338
         '()
         __tmp233337
         '#f)))
    (define gxc#::extract-receiver?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::extract-receiver::t)))
    (define gxc#make-::extract-receiver
      (lambda _%$args232120%_
        (apply make-instance gxc#::extract-receiver::t _%$args232120%_)))
    (define gxc#::extract-receiver-bind-methods!
      (let ((__tmp233339
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
        (__make-atomic-promise __tmp233339)))
    (define gxc#apply-extract-receiver
      (lambda (_%stx232112%_)
        (force gxc#::extract-receiver-bind-methods!)
        (let* ((_%self232115%_
                (let ((__obj233328
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::extract-receiver::t))))
                  __obj233328))
               (__tmp233340
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self232115%_ _%stx232112%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp233340
           gxc#current-compile-method
           _%self232115%_))))
    (define gxc#::collect-object-refs::t
      (let ((__tmp233342 (list gxc#::void::t))
            (__tmp233341 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-object-refs::t
         '::collect-object-refs
         __tmp233342
         '(receiver methods slots)
         __tmp233341
         '#f)))
    (define gxc#::collect-object-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-object-refs::t)))
    (define gxc#make-::collect-object-refs
      (lambda _%$args232109%_
        (apply make-instance gxc#::collect-object-refs::t _%$args232109%_)))
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
      (let ((__tmp233343
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
        (__make-atomic-promise __tmp233343)))
    (define gxc#apply-collect-object-refs__%
      (lambda (_%@@keywords232078%_
               _%receiver232073232079%_
               _%methods232074232080%_
               _%slots232075232081%_
               _%stx232082%_)
        (let* ((_%receiver232085%_
                (if (eq? _%receiver232073232079%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _%receiver232073232079%_))
               (_%methods232087%_
                (if (eq? _%methods232074232080%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _%methods232074232080%_))
               (_%slots232089%_
                (if (eq? _%slots232075232081%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _%slots232075232081%_)))
          (force gxc#::collect-object-refs-bind-methods!)
          (let* ((_%self232091%_
                  (let ((__obj233330
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
                       __obj233330
                       _%receiver232085%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj233330
                       _%methods232087%_
                       '2
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj233330
                       _%slots232089%_
                       '3
                       '#f
                       '#f))
                    __obj233330))
                 (__tmp233344
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self232091%_ _%stx232082%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp233344
             gxc#current-compile-method
             _%self232091%_)))))
    (define gxc#apply-collect-object-refs__@
      (lambda (_%@@keywords232098%_ . _%args232099%_)
        (apply gxc#apply-collect-object-refs__%
               _%@@keywords232098%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords232098%_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords232098%_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords232098%_
                  'slots:
                  absent-value))
               _%args232099%_)))
    (define gxc#apply-collect-object-refs
      (lambda _%args232076232105%_
        (apply keyword-dispatch
               '#(receiver: slots: methods:)
               gxc#apply-collect-object-refs__@
               _%args232076232105%_)))
    (define gxc#::subst-object-refs::t
      (let ((__tmp233346 (list gxc#::basic-xform-expression::t))
            (__tmp233345 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::subst-object-refs::t
         '::subst-object-refs
         __tmp233346
         '(receiver klass methods slots)
         __tmp233345
         '#f)))
    (define gxc#::subst-object-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::subst-object-refs::t)))
    (define gxc#make-::subst-object-refs
      (lambda _%$args232069%_
        (apply make-instance gxc#::subst-object-refs::t _%$args232069%_)))
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
      (let ((__tmp233347
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
        (__make-atomic-promise __tmp233347)))
    (define gxc#apply-subst-object-refs__%
      (lambda (_%@@keywords232035%_
               _%receiver232029232036%_
               _%klass232030232037%_
               _%methods232031232038%_
               _%slots232032232039%_
               _%stx232040%_)
        (let* ((_%receiver232043%_
                (if (eq? _%receiver232029232036%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _%receiver232029232036%_))
               (_%klass232045%_
                (if (eq? _%klass232030232037%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'klass:))
                    _%klass232030232037%_))
               (_%methods232047%_
                (if (eq? _%methods232031232038%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _%methods232031232038%_))
               (_%slots232049%_
                (if (eq? _%slots232032232039%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _%slots232032232039%_)))
          (force gxc#::subst-object-refs-bind-methods!)
          (let* ((_%self232051%_
                  (let ((__obj233332
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
                       __obj233332
                       _%receiver232043%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj233332
                       _%klass232045%_
                       '2
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj233332
                       _%methods232047%_
                       '3
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj233332
                       _%slots232049%_
                       '4
                       '#f
                       '#f))
                    __obj233332))
                 (__tmp233348
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self232051%_ _%stx232040%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp233348
             gxc#current-compile-method
             _%self232051%_)))))
    (define gxc#apply-subst-object-refs__@
      (lambda (_%@@keywords232058%_ . _%args232059%_)
        (apply gxc#apply-subst-object-refs__%
               _%@@keywords232058%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords232058%_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords232058%_
                  'klass:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords232058%_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords232058%_
                  'slots:
                  absent-value))
               _%args232059%_)))
    (define gxc#apply-subst-object-refs
      (lambda _%args232033232065%_
        (apply keyword-dispatch
               '#(receiver: methods: slots: klass:)
               gxc#apply-subst-object-refs__@
               _%args232033232065%_)))
    (define gxc#generate-method-specializers-define-values%
      (lambda (_%self229160%_ _%stx229161%_)
        (letrec ((_%generate-method-bind229163%_
                  (lambda (_%$klass232021%_
                           _%$method-table232022%_
                           _%id232023%_
                           _%$id232024%_)
                    (let ((_%$tmp232026%_
                           (let ((__tmp233349
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__method))))
                             (declare (not safe))
                             (make-symbol__0 __tmp233349))))
                      (cons (cons _%$id232024%_ '())
                            (cons (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons 'make-promise '()))
                                              (cons (cons '%#lambda
                                                          (cons '()
                                                                (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons (cons (cons _%$tmp232026%_ '())
                                                      (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#ref (cons 'symbolic-table-ref '()))
                                (cons (cons '%#ref
                                            (cons _%$method-table232022%_ '()))
                                      (cons (cons '%#quote
                                                  (cons _%id232023%_ '()))
                                            (cons (cons '%#quote
                                                        (cons '#f '()))
                                                  '())))))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())
                                          (cons (cons '%#if
                                                      (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%$tmp232026%_ '()))
                    (cons (cons '%#ref (cons _%$tmp232026%_ '()))
                          (cons (cons '%#call
                                      (cons (cons '%#ref (cons 'error '()))
                                            (cons (cons '%#quote
                                                        (cons '"Missing method"
                                                              '()))
                                                  (cons (cons '%#quote
                                                              (cons _%id232023%_
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
                 (_%generate-slot-bind229164%_
                  (lambda (_%$klass232015%_ _%id232016%_ _%$id232017%_)
                    (let ((_%$tmp232019%_
                           (let ((__tmp233350
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__slot))))
                             (declare (not safe))
                             (make-symbol__0 __tmp233350))))
                      (cons (cons _%$id232017%_ '())
                            (cons (cons '%#let-values
                                        (cons (cons (cons (cons _%$tmp232019%_
                                                                '())
                                                          (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '%#ref (cons 'class-slot-offset '()))
                                    (cons (cons '%#ref
                                                (cons _%$klass232015%_ '()))
                                          (cons (cons '%#quote
                                                      (cons _%id232016%_ '()))
                                                '()))))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())
                                              (cons (cons '%#if
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$tmp232019%_ '()))
                        (cons (cons '%#ref (cons _%$tmp232019%_ '()))
                              (cons (cons '%#call
                                          (cons (cons '%#ref (cons 'error '()))
                                                (cons (cons '%#quote
                                                            (cons '"Unknown slot"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#quote (cons _%id232016%_ '())) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '())))))
                 (_%generate-specializer-impl229165%_
                  (lambda (_%$klass232009%_
                           _%$method-table232010%_
                           _%methods-bind232011%_
                           _%slots-bind232012%_
                           _%specializer-impl232013%_)
                    (let ((__tmp233351
                           (cons '%#lambda
                                 (cons (cons _%$klass232009%_
                                             (cons _%$method-table232010%_
                                                   '()))
                                       (cons (cons '%#let-values
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (foldr__0
                                                            cons
                                                            _%slots-bind232012%_
                                                            _%methods-bind232011%_))
                                                         (cons _%specializer-impl232013%_
                                                               '())))
                                             '())))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp233351 _%stx229161%_))))
                 (_%generate-specializer-def229166%_
                  (lambda (_%id232005%_
                           _%specializer-id232006%_
                           _%specializer-impl232007%_)
                    (let ((__tmp233352
                           (cons '%#begin
                                 (cons _%stx229161%_
                                       (cons (let ((__tmp233353
                                                    (cons '%#define-values
                                                          (cons (cons _%specializer-id232006%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons _%specializer-impl232007%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp233353
                                                _%stx229161%_))
                                             (cons (let ((__tmp233354
                                                          (cons '%#call
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons 'bind-specializer! '()))
                              (cons (cons '%#ref (cons _%id232005%_ '()))
                                    (cons (cons '%#ref
                                                (cons _%specializer-id232006%_
                                                      '()))
                                          '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp233354
                                                      _%stx229161%_))
                                                   '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp233352 _%stx229161%_)))))
          (let* ((_%__stx232220232221%_ _%stx229161%_)
                 (_%g229169229189%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx232220232221%_)))))
            (let ((_%__kont232222232223%_
                   (lambda (_%g229171229233%_ _%g229172229234%_)
                     (let ((_%method-calls229253%_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_%slot-refs229254%_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_%empty229255%_
                            (let ()
                              (declare (not safe))
                              (make-hash-table-eq))))
                       (letrec ((_%no-specializer?229257%_
                                 (lambda ()
                                   (if (let ((__tmp233355
                                              (let ()
                                                (declare (not safe))
                                                (__hash-length
                                                 _%method-calls229253%_))))
                                         (declare (not safe))
                                         (##fxzero? __tmp233355))
                                       (let ((__tmp233356
                                              (let ()
                                                (declare (not safe))
                                                (__hash-length
                                                 _%slot-refs229254%_))))
                                         (declare (not safe))
                                         (##fxzero? __tmp233356))
                                       '#f))))
                         (if (let ()
                               (declare (not safe))
                               (gxc#lambda-expr? _%g229171229233%_))
                             (let* ((_%__stx232134232135%_ _%g229171229233%_)
                                    (_%g229641229659%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx232134232135%_)))))
                               (let ((_%__kont232136232137%_
                                      (lambda (_%g229643229695%_
                                               _%g229644229696%_
                                               _%g229645229697%_)
                                        (let ((_%receiver229717%_
                                               (let ((_%$e229714%_
                                                      (gxc#apply-extract-receiver
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f '%#begin))
                     _%g229643229695%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e229714%_
                                                     _%$e229714%_
                                                     _%g229645229697%_))))
                                          (for-each
                                           (lambda (_%g229718229720%_)
                                             (gxc#apply-collect-object-refs__%
                                              '#f
                                              _%receiver229717%_
                                              _%method-calls229253%_
                                              _%slot-refs229254%_
                                              _%g229718229720%_))
                                           _%g229643229695%_)
                                          (if (_%no-specializer?229257%_)
                                              _%stx229161%_
                                              (let* ((_%specializer-id229729%_
                                                      (let* ((_%id229723%_
                                                              (let ((__tmp233357
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g229172229234%_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp233357 '"::specialize")))
                     (_%specializer-id229726%_
                      (let ((__tmp233358
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _%stx229161%_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _%id229723%_ __tmp233358))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _%specializer-id229726%_))
                _%specializer-id229726%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$klass229731%_
                                                      (let ((__tmp233359
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__klass))))
                (declare (not safe))
                (make-symbol__0 __tmp233359)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$method-table229733%_
                                                      (let ((__tmp233360
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__method-table))))
                (declare (not safe))
                (make-symbol__0 __tmp233360)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods229735%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%method-calls229253%_)))
                                                     (_%$methods229739%_
                                                      (let ((__tmp233361
                                                             (lambda (_%id229737%_)
                                                               (let ((__tmp233362
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gensym _%id229737%_)))
                         (declare (not safe))
                         (make-symbol__1 '"__" __tmp233362)))))
                (declare (not safe))
                (##map __tmp233361 _%methods229735%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_229748%_
                                                      (let ((__tmp233363
                                                             (lambda (_%g229740229743%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g229741229745%_)
                       (let ()
                         (declare (not safe))
                         (__hash-put!
                          _%method-calls229253%_
                          _%g229740229743%_
                          _%g229741229745%_)))))
                (declare (not safe))
                (##for-each __tmp233363 _%methods229735%_ _%$methods229739%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods-bind229758%_
                                                      (let ((__tmp233364
                                                             (lambda (_%g229750229753%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g229751229755%_)
                       (_%generate-method-bind229163%_
                        _%$klass229731%_
                        _%$method-table229733%_
                        _%g229750229753%_
                        _%g229751229755%_))))
                (declare (not safe))
                (##map __tmp233364 _%methods229735%_ _%$methods229739%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots229760%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%slot-refs229254%_)))
                                                     (_%$slots229764%_
                                                      (let ((__tmp233365
                                                             (lambda (_%id229762%_)
                                                               (let ((__tmp233366
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gensym _%id229762%_)))
                         (declare (not safe))
                         (make-symbol__1 '"__" __tmp233366)))))
                (declare (not safe))
                (##map __tmp233365 _%slots229760%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_229773%_
                                                      (let ((__tmp233367
                                                             (lambda (_%g229765229768%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g229766229770%_)
                       (let ()
                         (declare (not safe))
                         (__hash-put!
                          _%slot-refs229254%_
                          _%g229765229768%_
                          _%g229766229770%_)))))
                (declare (not safe))
                (##for-each __tmp233367 _%slots229760%_ _%$slots229764%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots-bind229782%_
                                                      (let ((__tmp233368
                                                             (lambda (_%g229774229777%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g229775229779%_)
                       (_%generate-slot-bind229164%_
                        _%$klass229731%_
                        _%g229774229777%_
                        _%g229775229779%_))))
                (declare (not safe))
                (##map __tmp233368 _%slots229760%_ _%$slots229764%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-body229788%_
                                                      (map (lambda (_%g229783229785%_)
                                                             (gxc#apply-subst-object-refs__%
                                                              '#f
                                                              _%receiver229717%_
                                                              _%$klass229731%_
                                                              _%method-calls229253%_
                                                              _%slot-refs229254%_
                                                              _%g229783229785%_))
                                                           _%g229643229695%_))
                                                     (_%specializer-impl229790%_
                                                      (let ((__tmp233369
                                                             (cons '%#lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons _%g229645229697%_ _%g229644229696%_)
                                 _%specializer-body229788%_))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp233369 _%stx229161%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl229792%_
                                                      (_%generate-specializer-impl229165%_
                                                       _%$klass229731%_
                                                       _%$method-table229733%_
                                                       _%methods-bind229758%_
                                                       _%slots-bind229782%_
                                                       _%specializer-impl229790%_)))
                                                (let ((__tmp233371
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%g229172229234%_)))
                                                      (__tmp233370
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%specializer-id229729%_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp233371
                                                   '" => "
                                                   __tmp233370))
                                                (_%generate-specializer-def229166%_
                                                 _%g229172229234%_
                                                 _%specializer-id229729%_
                                                 _%specializer-impl229792%_))))))
                                     (_%__kont232138232139%_
                                      (lambda () _%stx229161%_)))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%__stx232134232135%_))
                                     (let ((_%e229646229671%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e
                                               _%__stx232134232135%_))))
                                       (let ((_%tl229648229676%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e229646229671%_)))
                                             (_%hd229647229674%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e229646229671%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl229648229676%_))
                                             (let ((_%e229649229679%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%tl229648229676%_))))
                                               (let ((_%tl229651229684%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e229649229679%_)))
                                                     (_%hd229650229682%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e229649229679%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%hd229650229682%_))
                                                     (let ((_%e229652229687%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%hd229650229682%_))))
                                                       (let ((_%tl229654229692%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e229652229687%_)))
                     (_%hd229653229690%_
                      (let () (declare (not safe)) (##car _%e229652229687%_))))
                 (_%__kont232136232137%_
                  _%tl229651229684%_
                  _%tl229654229692%_
                  _%hd229653229690%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont232138232139%_))))
                                             (_%__kont232138232139%_))))
                                     (_%__kont232138232139%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gxc#case-lambda-expr? _%g229171229233%_))
                                 (let* ((_%g229799229818%_
                                         (lambda (_%g229800229815%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g229800229815%_))))
                                        (_%g229798230114%_
                                         (lambda (_%g229800229821%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g229800229821%_))
                                               (let ((_%e229802229823%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%g229800229821%_))))
                                                 (let ((_%hd229803229826%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e229802229823%_)))
                                                       (_%tl229804229828%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e229802229823%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair/null?
                                                          _%tl229804229828%_))
                                                       (let ((_g233372_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-split-splice _%tl229804229828%_ '0))))
                 (begin
                   (let ((_g233373_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g233372_)
                                (##values-length _g233372_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g233373_ 2)))
                         (error "Context expects 2 values" _g233373_)))
                   (let ((_%target229805229831%_
                          (let ()
                            (declare (not safe))
                            (##values-ref _g233372_ 0)))
                         (_%tl229807229833%_
                          (let ()
                            (declare (not safe))
                            (##values-ref _g233372_ 1))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl229807229833%_))
                         (letrec ((_%loop229808229836%_
                                   (lambda (_%hd229806229839%_
                                            _%clause229812229841%_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd229806229839%_))
                                         (let ((_%e229809229843%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd229806229839%_))))
                                           (let ((_%lp-hd229810229846%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e229809229843%_)))
                                                 (_%lp-tl229811229848%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e229809229843%_))))
                                             (_%loop229808229836%_
                                              _%lp-tl229811229848%_
                                              (cons _%lp-hd229810229846%_
                                                    _%clause229812229841%_))))
                                         (let ((_%clause229813229851%_
                                                (reverse _%clause229812229841%_)))
                                           ((lambda (_%g229801229853%_)
                                              (for-each
                                               (lambda (_%clause229867%_)
                                                 (let* ((_%__stx232160232161%_
                                                         _%clause229867%_)
                                                        (_%g229870229885%_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%__stx232160232161%_)))))
                                                   (let ((_%__kont232162232163%_
                                                          (lambda (_%g229872229913%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g229873229914%_
                           _%g229874229915%_)
                    (let ((_%receiver229934%_
                           (let ((_%$e229931%_
                                  (gxc#apply-extract-receiver
                                   (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f '%#begin))
                                         _%g229872229913%_))))
                             (if _%$e229931%_
                                 _%$e229931%_
                                 _%g229874229915%_))))
                      (for-each
                       (lambda (_%g229935229937%_)
                         (gxc#apply-collect-object-refs__%
                          '#f
                          _%receiver229934%_
                          _%method-calls229253%_
                          _%slot-refs229254%_
                          _%g229935229937%_))
                       _%g229872229913%_))))
                 (_%__kont232164232165%_ (lambda () '#!void)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%__stx232160232161%_))
                                                         (let ((_%e229875229897%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%__stx232160232161%_))))
                   (let ((_%tl229877229902%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e229875229897%_)))
                         (_%hd229876229900%_
                          (let ()
                            (declare (not safe))
                            (##car _%e229875229897%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%hd229876229900%_))
                         (let ((_%e229878229905%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd229876229900%_))))
                           (let ((_%tl229880229910%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e229878229905%_)))
                                 (_%hd229879229908%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e229878229905%_))))
                             (_%__kont232162232163%_
                              _%tl229877229902%_
                              _%tl229880229910%_
                              _%hd229879229908%_)))
                         (_%__kont232164232165%_))))
                 (_%__kont232164232165%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((__tmp233374
                                                      (lambda (_%g229942229945%_
                                                               _%g229943229947%_)
                                                        (cons _%g229942229945%_
                                                              _%g229943229947%_))))
                                                 (declare (not safe))
                                                 (foldr__0
                                                  __tmp233374
                                                  '()
                                                  _%g229801229853%_)))
                                              (if (_%no-specializer?229257%_)
                                                  _%stx229161%_
                                                  (let* ((_%specializer-id229956%_
                                                          (let* ((_%id229950%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp233375
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%g229172229234%_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp233375 '"::specialize")))
                         (_%specializer-id229953%_
                          (let ((__tmp233376
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _%stx229161%_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _%id229950%_
                             __tmp233376))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _%specializer-id229953%_))
                    _%specializer-id229953%_))
                 (_%$klass229958%_
                  (let ((__tmp233377
                         (let () (declare (not safe)) (##gensym '__klass))))
                    (declare (not safe))
                    (make-symbol__0 __tmp233377)))
                 (_%$method-table229960%_
                  (let ((__tmp233378
                         (let ()
                           (declare (not safe))
                           (##gensym '__method-table))))
                    (declare (not safe))
                    (make-symbol__0 __tmp233378)))
                 (_%methods229962%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%method-calls229253%_)))
                 (_%$methods229966%_
                  (let ((__tmp233379
                         (lambda (_%id229964%_)
                           (let ((__tmp233380 (gensym _%id229964%_)))
                             (declare (not safe))
                             (make-symbol__1 '"__" __tmp233380)))))
                    (declare (not safe))
                    (##map __tmp233379 _%methods229962%_)))
                 (_%_229975%_
                  (let ((__tmp233381
                         (lambda (_%g229967229970%_ _%g229968229972%_)
                           (let ()
                             (declare (not safe))
                             (__hash-put!
                              _%method-calls229253%_
                              _%g229967229970%_
                              _%g229968229972%_)))))
                    (declare (not safe))
                    (##for-each
                     __tmp233381
                     _%methods229962%_
                     _%$methods229966%_)))
                 (_%methods-bind229985%_
                  (let ((__tmp233382
                         (lambda (_%g229977229980%_ _%g229978229982%_)
                           (_%generate-method-bind229163%_
                            _%$klass229958%_
                            _%$method-table229960%_
                            _%g229977229980%_
                            _%g229978229982%_))))
                    (declare (not safe))
                    (##map __tmp233382 _%methods229962%_ _%$methods229966%_)))
                 (_%slots229987%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%slot-refs229254%_)))
                 (_%$slots229991%_
                  (let ((__tmp233383
                         (lambda (_%id229989%_)
                           (let ((__tmp233384 (gensym _%id229989%_)))
                             (declare (not safe))
                             (make-symbol__1 '"__" __tmp233384)))))
                    (declare (not safe))
                    (##map __tmp233383 _%slots229987%_)))
                 (_%_230000%_
                  (let ((__tmp233385
                         (lambda (_%g229992229995%_ _%g229993229997%_)
                           (let ()
                             (declare (not safe))
                             (__hash-put!
                              _%slot-refs229254%_
                              _%g229992229995%_
                              _%g229993229997%_)))))
                    (declare (not safe))
                    (##for-each __tmp233385 _%slots229987%_ _%$slots229991%_)))
                 (_%slots-bind230009%_
                  (let ((__tmp233386
                         (lambda (_%g230001230004%_ _%g230002230006%_)
                           (_%generate-slot-bind229164%_
                            _%$klass229958%_
                            _%g230001230004%_
                            _%g230002230006%_))))
                    (declare (not safe))
                    (##map __tmp233386 _%slots229987%_ _%$slots229991%_)))
                 (_%specializer-clauses230107%_
                  (map (lambda (_%clause230011%_)
                         (let* ((_%__stx232180232181%_ _%clause230011%_)
                                (_%g230014230029%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx232180232181%_)))))
                           (let ((_%__kont232182232183%_
                                  (lambda (_%g230016230057%_
                                           _%g230017230058%_
                                           _%g230018230059%_)
                                    (let* ((_%receiver230088%_
                                            (let ((_%$e230085%_
                                                   (gxc#apply-extract-receiver
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#begin))
                                                          _%g230016230057%_))))
                                              (if _%$e230085%_
                                                  _%$e230085%_
                                                  _%g230018230059%_)))
                                           (_%body230094%_
                                            (map (lambda (_%g230089230091%_)
                                                   (gxc#apply-subst-object-refs__%
                                                    '#f
                                                    _%receiver230088%_
                                                    _%$klass229958%_
                                                    _%method-calls229253%_
                                                    _%slot-refs229254%_
                                                    _%g230089230091%_))
                                                 _%g230016230057%_)))
                                      (cons (cons _%g230018230059%_
                                                  _%g230017230058%_)
                                            _%body230094%_))))
                                 (_%__kont232184232185%_
                                  (lambda () _%clause230011%_)))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx232180232181%_))
                                 (let ((_%e230019230041%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx232180232181%_))))
                                   (let ((_%tl230021230046%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e230019230041%_)))
                                         (_%hd230020230044%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e230019230041%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd230020230044%_))
                                         (let ((_%e230022230049%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd230020230044%_))))
                                           (let ((_%tl230024230054%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e230022230049%_)))
                                                 (_%hd230023230052%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e230022230049%_))))
                                             (_%__kont232182232183%_
                                              _%tl230021230046%_
                                              _%tl230024230054%_
                                              _%hd230023230052%_)))
                                         (_%__kont232184232185%_))))
                                 (_%__kont232184232185%_)))))
                       (let ((__tmp233387
                              (lambda (_%g230099230102%_ _%g230100230104%_)
                                (cons _%g230099230102%_ _%g230100230104%_))))
                         (declare (not safe))
                         (foldr__0 __tmp233387 '() _%g229801229853%_))))
                 (_%specializer-impl230109%_
                  (let ((__tmp233388
                         (cons '%#case-lambda _%specializer-clauses230107%_)))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp233388 _%stx229161%_)))
                 (_%specializer-impl230111%_
                  (_%generate-specializer-impl229165%_
                   _%$klass229958%_
                   _%$method-table229960%_
                   _%methods-bind229985%_
                   _%slots-bind230009%_
                   _%specializer-impl230109%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp233390
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%g229172229234%_)))
                                                          (__tmp233389
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%specializer-id229956%_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp233390
                                                       '" => "
                                                       __tmp233389))
                                                    (_%generate-specializer-def229166%_
                                                     _%g229172229234%_
                                                     _%specializer-id229956%_
                                                     _%specializer-impl230111%_))))
                                            _%clause229813229851%_))))))
                           (_%loop229808229836%_ _%target229805229831%_ '()))
                         (_%g229799229818%_ _%g229800229821%_)))))
               (_%g229799229818%_ _%g229800229821%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g229799229818%_
                                                _%g229800229821%_)))))
                                   (_%g229798230114%_ _%g229171229233%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#opt-lambda-expr?
                                        _%g229171229233%_))
                                     (let* ((_%g230118230148%_
                                             (lambda (_%g230119230145%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g230119230145%_))))
                                            (_%g230117230775%_
                                             (lambda (_%g230119230151%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%g230119230151%_))
                                                   (let ((_%e230123230153%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%g230119230151%_))))
                                                     (let ((_%hd230124230156%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e230123230153%_)))
                                                           (_%tl230125230158%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e230123230153%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl230125230158%_))
                                                           (let ((_%e230126230161%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl230125230158%_))))
                     (let ((_%hd230127230164%_
                            (let ()
                              (declare (not safe))
                              (##car _%e230126230161%_)))
                           (_%tl230128230166%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e230126230161%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%hd230127230164%_))
                           (let ((_%e230129230169%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd230127230164%_))))
                             (let ((_%hd230130230172%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e230129230169%_)))
                                   (_%tl230131230174%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e230129230169%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd230130230172%_))
                                   (let ((_%e230132230177%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd230130230172%_))))
                                     (let ((_%hd230133230180%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e230132230177%_)))
                                           (_%tl230134230182%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e230132230177%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%hd230133230180%_))
                                           (let ((_%e230135230185%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%hd230133230180%_))))
                                             (let ((_%hd230136230188%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e230135230185%_)))
                                                   (_%tl230137230190%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e230135230185%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl230137230190%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl230134230182%_))
                                                       (let ((_%e230138230193%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%tl230134230182%_))))
                 (let ((_%hd230139230196%_
                        (let ()
                          (declare (not safe))
                          (##car _%e230138230193%_)))
                       (_%tl230140230198%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e230138230193%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl230140230198%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl230131230174%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl230128230166%_))
                               (let ((_%e230141230201%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%tl230128230166%_))))
                                 (let ((_%hd230142230204%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e230141230201%_)))
                                       (_%tl230143230206%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e230141230201%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%tl230143230206%_))
                                       ((lambda (_%g230120230209%_
                                                 _%g230121230210%_
                                                 _%g230122230211%_)
                                          (let* ((_%g230235230253%_
                                                  (lambda (_%g230236230250%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g230236230250%_))))
                                                 (_%g230234230309%_
                                                  (lambda (_%g230236230256%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%g230236230256%_))
                                                        (let ((_%e230240230258%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%g230236230256%_))))
                  (let ((_%hd230241230261%_
                         (let ()
                           (declare (not safe))
                           (##car _%e230240230258%_)))
                        (_%tl230242230263%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e230240230258%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl230242230263%_))
                        (let ((_%e230243230266%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl230242230263%_))))
                          (let ((_%hd230244230269%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e230243230266%_)))
                                (_%tl230245230271%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e230243230266%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd230244230269%_))
                                (let ((_%e230246230274%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd230244230269%_))))
                                  (let ((_%hd230247230277%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e230246230274%_)))
                                        (_%tl230248230279%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e230246230274%_))))
                                    ((lambda (_%g230237230282%_
                                              _%g230238230283%_
                                              _%g230239230284%_)
                                       (let ((_%receiver230303%_
                                              (let ((_%$e230300%_
                                                     (gxc#apply-extract-receiver
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               '%#begin))
                                                            _%g230237230282%_))))
                                                (if _%$e230300%_
                                                    _%$e230300%_
                                                    _%g230239230284%_))))
                                         (for-each
                                          (lambda (_%g230304230306%_)
                                            (gxc#apply-collect-object-refs__%
                                             '#f
                                             _%receiver230303%_
                                             _%method-calls229253%_
                                             _%slot-refs229254%_
                                             _%g230304230306%_))
                                          _%g230237230282%_)))
                                     _%tl230245230271%_
                                     _%tl230248230279%_
                                     _%hd230247230277%_)))
                                (_%g230235230253%_ _%g230236230256%_))))
                        (_%g230235230253%_ _%g230236230256%_))))
                (_%g230235230253%_ _%g230236230256%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g230234230309%_
                                             _%g230121230210%_))
                                          (let* ((_%g230312230331%_
                                                  (lambda (_%g230313230328%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g230313230328%_))))
                                                 (_%g230311230453%_
                                                  (lambda (_%g230313230334%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%g230313230334%_))
                                                        (let ((_%e230315230336%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%g230313230334%_))))
                  (let ((_%hd230316230339%_
                         (let ()
                           (declare (not safe))
                           (##car _%e230315230336%_)))
                        (_%tl230317230341%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e230315230336%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%tl230317230341%_))
                        (let ((_g233391_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _%tl230317230341%_
                                  '0))))
                          (begin
                            (let ((_g233392_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g233391_)
                                         (##values-length _g233391_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g233392_ 2)))
                                  (error "Context expects 2 values"
                                         _g233392_)))
                            (let ((_%target230318230344%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g233391_ 0)))
                                  (_%tl230320230346%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g233391_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl230320230346%_))
                                  (letrec ((_%loop230321230349%_
                                            (lambda (_%hd230319230352%_
                                                     _%clause230325230354%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd230319230352%_))
                                                  (let ((_%e230322230356%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd230319230352%_))))
                                                    (let ((_%lp-hd230323230359%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e230322230356%_)))
                                                          (_%lp-tl230324230361%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e230322230356%_))))
                                                      (_%loop230321230349%_
                                                       _%lp-tl230324230361%_
                                                       (cons _%lp-hd230323230359%_
                                                             _%clause230325230354%_))))
                                                  (let ((_%clause230326230364%_
                                                         (reverse _%clause230325230354%_)))
                                                    ((lambda (_%g230314230366%_)
                                                       (for-each
                                                        (lambda (_%clause230379%_)
                                                          (let* ((_%g230381230396%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%g230382230393%_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g230382230393%_))))
                         (_%g230380230443%_
                          (lambda (_%g230382230399%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%g230382230399%_))
                                (let ((_%e230386230401%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%g230382230399%_))))
                                  (let ((_%hd230387230404%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e230386230401%_)))
                                        (_%tl230388230406%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e230386230401%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd230387230404%_))
                                        (let ((_%e230389230409%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd230387230404%_))))
                                          (let ((_%hd230390230412%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e230389230409%_)))
                                                (_%tl230391230414%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e230389230409%_))))
                                            ((lambda (_%g230383230417%_
                                                      _%g230384230418%_
                                                      _%g230385230419%_)
                                               (let ((_%receiver230437%_
                                                      (let ((_%$e230434%_
                                                             (gxc#apply-extract-receiver
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f '%#begin))
                            _%g230383230417%_))))
                (if _%$e230434%_ _%$e230434%_ _%g230385230419%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (for-each
                                                  (lambda (_%g230438230440%_)
                                                    (gxc#apply-collect-object-refs__%
                                                     '#f
                                                     _%receiver230437%_
                                                     _%method-calls229253%_
                                                     _%slot-refs229254%_
                                                     _%g230438230440%_))
                                                  _%g230383230417%_)))
                                             _%tl230388230406%_
                                             _%tl230391230414%_
                                             _%hd230390230412%_)))
                                        (_%g230381230396%_
                                         _%g230382230399%_))))
                                (_%g230381230396%_ _%g230382230399%_)))))
                    (_%g230380230443%_ _%clause230379%_)))
                (let ((__tmp233393
                       (lambda (_%g230445230448%_ _%g230446230450%_)
                         (cons _%g230445230448%_ _%g230446230450%_))))
                  (declare (not safe))
                  (foldr__0 __tmp233393 '() _%g230314230366%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%clause230326230364%_))))))
                                    (_%loop230321230349%_
                                     _%target230318230344%_
                                     '()))
                                  (_%g230312230331%_ _%g230313230334%_)))))
                        (_%g230312230331%_ _%g230313230334%_))))
                (_%g230312230331%_ _%g230313230334%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g230311230453%_
                                             _%g230120230209%_))
                                          (if (_%no-specializer?229257%_)
                                              _%stx229161%_
                                              (let* ((_%specializer-id230462%_
                                                      (let* ((_%id230456%_
                                                              (let ((__tmp233394
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g229172229234%_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp233394 '"::specialize")))
                     (_%specializer-id230459%_
                      (let ((__tmp233395
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _%stx229161%_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _%id230456%_ __tmp233395))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _%specializer-id230459%_))
                _%specializer-id230459%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$klass230464%_
                                                      (let ((__tmp233396
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__klass))))
                (declare (not safe))
                (make-symbol__0 __tmp233396)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$method-table230466%_
                                                      (let ((__tmp233397
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__method-table))))
                (declare (not safe))
                (make-symbol__0 __tmp233397)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods230468%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%method-calls229253%_)))
                                                     (_%$methods230472%_
                                                      (let ((__tmp233398
                                                             (lambda (_%id230470%_)
                                                               (let ((__tmp233399
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gensym _%id230470%_)))
                         (declare (not safe))
                         (make-symbol__1 '"__" __tmp233399)))))
                (declare (not safe))
                (##map __tmp233398 _%methods230468%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_230481%_
                                                      (let ((__tmp233400
                                                             (lambda (_%g230473230476%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g230474230478%_)
                       (let ()
                         (declare (not safe))
                         (__hash-put!
                          _%method-calls229253%_
                          _%g230473230476%_
                          _%g230474230478%_)))))
                (declare (not safe))
                (##for-each __tmp233400 _%methods230468%_ _%$methods230472%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods-bind230491%_
                                                      (let ((__tmp233401
                                                             (lambda (_%g230483230486%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g230484230488%_)
                       (_%generate-method-bind229163%_
                        _%$klass230464%_
                        _%$method-table230466%_
                        _%g230483230486%_
                        _%g230484230488%_))))
                (declare (not safe))
                (##map __tmp233401 _%methods230468%_ _%$methods230472%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots230493%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%slot-refs229254%_)))
                                                     (_%$slots230497%_
                                                      (let ((__tmp233402
                                                             (lambda (_%id230495%_)
                                                               (let ((__tmp233403
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gensym _%id230495%_)))
                         (declare (not safe))
                         (make-symbol__1 '"__" __tmp233403)))))
                (declare (not safe))
                (##map __tmp233402 _%slots230493%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_230506%_
                                                      (let ((__tmp233404
                                                             (lambda (_%g230498230501%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g230499230503%_)
                       (let ()
                         (declare (not safe))
                         (__hash-put!
                          _%slot-refs229254%_
                          _%g230498230501%_
                          _%g230499230503%_)))))
                (declare (not safe))
                (##for-each __tmp233404 _%slots230493%_ _%$slots230497%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots-bind230515%_
                                                      (let ((__tmp233405
                                                             (lambda (_%g230507230510%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g230508230512%_)
                       (_%generate-slot-bind229164%_
                        _%$klass230464%_
                        _%g230507230510%_
                        _%g230508230512%_))))
                (declare (not safe))
                (##map __tmp233405 _%slots230493%_ _%$slots230497%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-lambda-expr230607%_
                                                      (let* ((_%g230517230535%_
                                                              (lambda (_%g230518230532%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g230518230532%_))))
                     (_%g230516230604%_
                      (lambda (_%g230518230538%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g230518230538%_))
                            (let ((_%e230522230540%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g230518230538%_))))
                              (let ((_%hd230523230543%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e230522230540%_)))
                                    (_%tl230524230545%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e230522230540%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl230524230545%_))
                                    (let ((_%e230525230548%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl230524230545%_))))
                                      (let ((_%hd230526230551%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e230525230548%_)))
                                            (_%tl230527230553%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e230525230548%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd230526230551%_))
                                            (let ((_%e230528230556%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd230526230551%_))))
                                              (let ((_%hd230529230559%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e230528230556%_)))
                                                    (_%tl230530230561%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e230528230556%_))))
                                                ((lambda (_%g230519230564%_
                                                          _%g230520230565%_
                                                          _%g230521230566%_)
                                                   (let* ((_%receiver230595%_
                                                           (let ((_%$e230592%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gxc#apply-extract-receiver
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '%#begin))
                                 _%g230519230564%_))))
                     (if _%$e230592%_ _%$e230592%_ _%g230521230566%_)))
                  (_%body230601%_
                   (map (lambda (_%g230596230598%_)
                          (gxc#apply-subst-object-refs__%
                           '#f
                           _%receiver230595%_
                           _%$klass230464%_
                           _%method-calls229253%_
                           _%slot-refs229254%_
                           _%g230596230598%_))
                        _%g230519230564%_))
                  (__tmp233406
                   (cons '%#lambda
                         (cons (cons _%g230521230566%_ _%g230520230565%_)
                               _%body230601%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp233406
                                                      _%g230121230210%_)))
                                                 _%tl230527230553%_
                                                 _%tl230530230561%_
                                                 _%hd230529230559%_)))
                                            (_%g230517230535%_
                                             _%g230518230538%_))))
                                    (_%g230517230535%_ _%g230518230538%_))))
                            (_%g230517230535%_ _%g230518230538%_)))))
                (_%g230516230604%_ _%g230121230210%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-case-lambda-expr230768%_
                                                      (let* ((_%g230609230628%_
                                                              (lambda (_%g230610230625%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g230610230625%_))))
                     (_%g230608230765%_
                      (lambda (_%g230610230631%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g230610230631%_))
                            (let ((_%e230612230633%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g230610230631%_))))
                              (let ((_%hd230613230636%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e230612230633%_)))
                                    (_%tl230614230638%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e230612230633%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl230614230638%_))
                                    (let ((_g233407_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _%tl230614230638%_
                                              '0))))
                                      (begin
                                        (let ((_g233408_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g233407_)
                                                     (##values-length
                                                      _g233407_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g233408_ 2)))
                                              (error "Context expects 2 values"
                                                     _g233408_)))
                                        (let ((_%target230615230641%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g233407_ 0)))
                                              (_%tl230617230643%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g233407_ 1))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl230617230643%_))
                                              (letrec ((_%loop230618230646%_
                                                        (lambda (_%hd230616230649%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%clause230622230651%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd230616230649%_))
                      (let ((_%e230619230653%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd230616230649%_))))
                        (let ((_%lp-hd230620230656%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e230619230653%_)))
                              (_%lp-tl230621230658%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e230619230653%_))))
                          (_%loop230618230646%_
                           _%lp-tl230621230658%_
                           (cons _%lp-hd230620230656%_
                                 _%clause230622230651%_))))
                      (let ((_%clause230623230661%_
                             (reverse _%clause230622230651%_)))
                        ((lambda (_%g230611230663%_)
                           (let* ((_%clauses230763%_
                                   (map (lambda (_%clause230677%_)
                                          (let* ((_%__stx232200232201%_
                                                  _%clause230677%_)
                                                 (_%g230680230695%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx232200232201%_)))))
                                            (let ((_%__kont232202232203%_
                                                   (lambda (_%g230682230723%_
                                                            _%g230683230724%_
                                                            _%g230684230725%_)
                                                     (let* ((_%receiver230744%_
                                                             (let ((_%$e230741%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gxc#apply-extract-receiver
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f '%#begin))
                                   _%g230682230723%_))))
                       (if _%$e230741%_ _%$e230741%_ _%g230684230725%_)))
                    (_%body230750%_
                     (map (lambda (_%g230745230747%_)
                            (gxc#apply-subst-object-refs__%
                             '#f
                             _%receiver230744%_
                             _%$klass230464%_
                             _%method-calls229253%_
                             _%slot-refs229254%_
                             _%g230745230747%_))
                          _%g230682230723%_)))
               (cons (cons _%g230684230725%_ _%g230683230724%_)
                     _%body230750%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont232204232205%_
                                                   (lambda ()
                                                     _%clause230677%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%__stx232200232201%_))
                                                  (let ((_%e230685230707%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%__stx232200232201%_))))
                                                    (let ((_%tl230687230712%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e230685230707%_)))
                                                          (_%hd230686230710%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e230685230707%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd230686230710%_))
                                                          (let ((_%e230688230715%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd230686230710%_))))
                    (let ((_%tl230690230720%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e230688230715%_)))
                          (_%hd230689230718%_
                           (let ()
                             (declare (not safe))
                             (##car _%e230688230715%_))))
                      (_%__kont232202232203%_
                       _%tl230687230712%_
                       _%tl230690230720%_
                       _%hd230689230718%_)))
                  (_%__kont232204232205%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont232204232205%_)))))
                                        (let ((__tmp233409
                                               (lambda (_%g230755230758%_
                                                        _%g230756230760%_)
                                                 (cons _%g230755230758%_
                                                       _%g230756230760%_))))
                                          (declare (not safe))
                                          (foldr__0
                                           __tmp233409
                                           '()
                                           _%g230611230663%_))))
                                  (__tmp233410
                                   (cons '%#case-lambda _%clauses230763%_)))
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp233410
                              _%g230120230209%_)))
                         _%clause230623230661%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop230618230646%_
                                                 _%target230615230641%_
                                                 '()))
                                              (_%g230609230628%_
                                               _%g230610230631%_)))))
                                    (_%g230609230628%_ _%g230610230631%_))))
                            (_%g230609230628%_ _%g230610230631%_)))))
                (_%g230608230765%_ _%g230120230209%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl230770%_
                                                      (let ((__tmp233411
                                                             (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (cons (cons _%g230122230211%_ '())
                                             (cons _%specializer-lambda-expr230607%_
                                                   '()))
                                       '())
                                 (cons _%specializer-case-lambda-expr230768%_
                                       '())))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp233411 _%stx229161%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl230772%_
                                                      (_%generate-specializer-impl229165%_
                                                       _%$klass230464%_
                                                       _%$method-table230466%_
                                                       _%methods-bind230491%_
                                                       _%slots-bind230515%_
                                                       _%specializer-impl230770%_)))
                                                (let ((__tmp233413
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%g229172229234%_)))
                                                      (__tmp233412
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%specializer-id230462%_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp233413
                                                   '" => "
                                                   __tmp233412))
                                                (_%generate-specializer-def229166%_
                                                 _%g229172229234%_
                                                 _%specializer-id230462%_
                                                 _%specializer-impl230772%_))))
                                        _%hd230142230204%_
                                        _%hd230139230196%_
                                        _%hd230136230188%_)
                                       (_%g230118230148%_ _%g230119230151%_))))
                               (_%g230118230148%_ _%g230119230151%_))
                           (_%g230118230148%_ _%g230119230151%_))
                       (_%g230118230148%_ _%g230119230151%_))))
               (_%g230118230148%_ _%g230119230151%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g230118230148%_
                                                    _%g230119230151%_))))
                                           (_%g230118230148%_
                                            _%g230119230151%_))))
                                   (_%g230118230148%_ _%g230119230151%_))))
                           (_%g230118230148%_ _%g230119230151%_))))
                   (_%g230118230148%_ _%g230119230151%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g230118230148%_
                                                    _%g230119230151%_)))))
                                       (_%g230117230775%_ _%g229171229233%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#kw-lambda-expr?
                                            _%g229171229233%_))
                                         (let* ((_%g230779230832%_
                                                 (lambda (_%g230780230829%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g230780230829%_))))
                                                (_%g230778231997%_
                                                 (lambda (_%g230780230835%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%g230780230835%_))
                                                       (let ((_%e230786230837%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%g230780230835%_))))
                 (let ((_%hd230787230840%_
                        (let ()
                          (declare (not safe))
                          (##car _%e230786230837%_)))
                       (_%tl230788230842%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e230786230837%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#identifier? _%hd230787230840%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-eq? '%#let-values _%hd230787230840%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl230788230842%_))
                               (let ((_%e230789230845%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%tl230788230842%_))))
                                 (let ((_%hd230790230848%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e230789230845%_)))
                                       (_%tl230791230850%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e230789230845%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd230790230848%_))
                                       (let ((_%e230792230853%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd230790230848%_))))
                                         (let ((_%hd230793230856%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e230792230853%_)))
                                               (_%tl230794230858%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e230792230853%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%hd230793230856%_))
                                               (let ((_%e230795230861%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%hd230793230856%_))))
                                                 (let ((_%hd230796230864%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e230795230861%_)))
                                                       (_%tl230797230866%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e230795230861%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%hd230796230864%_))
                                                       (let ((_%e230798230869%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%hd230796230864%_))))
                 (let ((_%hd230799230872%_
                        (let ()
                          (declare (not safe))
                          (##car _%e230798230869%_)))
                       (_%tl230800230874%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e230798230869%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl230800230874%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%tl230797230866%_))
                           (let ((_%e230801230877%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%tl230797230866%_))))
                             (let ((_%hd230802230880%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e230801230877%_)))
                                   (_%tl230803230882%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e230801230877%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd230802230880%_))
                                   (let ((_%e230804230885%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd230802230880%_))))
                                     (let ((_%hd230805230888%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e230804230885%_)))
                                           (_%tl230806230890%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e230804230885%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#identifier?
                                              _%hd230805230888%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-eq?
                                                  '%#let-values
                                                  _%hd230805230888%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%tl230806230890%_))
                                                   (let ((_%e230807230893%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%tl230806230890%_))))
                                                     (let ((_%hd230808230896%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e230807230893%_)))
                                                           (_%tl230809230898%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e230807230893%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%hd230808230896%_))
                                                           (let ((_%e230810230901%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%hd230808230896%_))))
                     (let ((_%hd230811230904%_
                            (let ()
                              (declare (not safe))
                              (##car _%e230810230901%_)))
                           (_%tl230812230906%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e230810230901%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%hd230811230904%_))
                           (let ((_%e230813230909%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd230811230904%_))))
                             (let ((_%hd230814230912%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e230813230909%_)))
                                   (_%tl230815230914%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e230813230909%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd230814230912%_))
                                   (let ((_%e230816230917%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd230814230912%_))))
                                     (let ((_%hd230817230920%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e230816230917%_)))
                                           (_%tl230818230922%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e230816230917%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl230818230922%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl230815230914%_))
                                               (let ((_%e230819230925%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%tl230815230914%_))))
                                                 (let ((_%hd230820230928%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e230819230925%_)))
                                                       (_%tl230821230930%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e230819230925%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl230821230930%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _%tl230812230906%_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _%tl230809230898%_))
                       (let ((_%e230822230933%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%tl230809230898%_))))
                         (let ((_%hd230823230936%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e230822230933%_)))
                               (_%tl230824230938%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e230822230933%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%tl230824230938%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl230803230882%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%tl230794230858%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%tl230791230850%_))
                                           (let ((_%e230825230941%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%tl230791230850%_))))
                                             (let ((_%hd230826230944%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e230825230941%_)))
                                                   (_%tl230827230946%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e230825230941%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl230827230946%_))
                                                   ((lambda (_%g230781230949%_
                                                             _%g230782230950%_
                                                             _%g230783230951%_
                                                             _%g230784230952%_
                                                             _%g230785230953%_)
                                                      (let* ((_%g230993231055%_
                                                              (lambda (_%g230994231052%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g230994231052%_))))
                     (_%g230992231994%_
                      (lambda (_%g230994231058%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g230994231058%_))
                            (let ((_%e231000231060%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g230994231058%_))))
                              (let ((_%hd231001231063%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e231000231060%_)))
                                    (_%tl231002231065%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e231000231060%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd231001231063%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _%hd231001231063%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl231002231065%_))
                                            (let ((_%e231003231068%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl231002231065%_))))
                                              (let ((_%hd231004231071%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e231003231068%_)))
                                                    (_%tl231005231073%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e231003231068%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl231005231073%_))
                                                    (let ((_%e231006231076%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl231005231073%_))))
                                                      (let ((_%hd231007231079%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e231006231076%_)))
                    (_%tl231008231081%_
                     (let () (declare (not safe)) (##cdr _%e231006231076%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%hd231007231079%_))
                    (let ((_%e231009231084%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd231007231079%_))))
                      (let ((_%hd231010231087%_
                             (let ()
                               (declare (not safe))
                               (##car _%e231009231084%_)))
                            (_%tl231011231089%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e231009231084%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%hd231010231087%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#call _%hd231010231087%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl231011231089%_))
                                    (let ((_%e231012231092%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl231011231089%_))))
                                      (let ((_%hd231013231095%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e231012231092%_)))
                                            (_%tl231014231097%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e231012231092%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd231013231095%_))
                                            (let ((_%e231015231100%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd231013231095%_))))
                                              (let ((_%hd231016231103%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e231015231100%_)))
                                                    (_%tl231017231105%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e231015231100%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd231016231103%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd231016231103%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl231017231105%_))
                                                            (let ((_%e231018231108%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl231017231105%_))))
                      (let ((_%hd231019231111%_
                             (let ()
                               (declare (not safe))
                               (##car _%e231018231108%_)))
                            (_%tl231020231113%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e231018231108%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl231020231113%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl231014231097%_))
                                (let ((_%e231021231116%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl231014231097%_))))
                                  (let ((_%hd231022231119%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e231021231116%_)))
                                        (_%tl231023231121%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e231021231116%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd231022231119%_))
                                        (let ((_%e231024231124%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd231022231119%_))))
                                          (let ((_%hd231025231127%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e231024231124%_)))
                                                (_%tl231026231129%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e231024231124%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _%hd231025231127%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _%hd231025231127%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl231026231129%_))
                                                        (let ((_%e231027231132%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl231026231129%_))))
                  (let ((_%hd231028231135%_
                         (let ()
                           (declare (not safe))
                           (##car _%e231027231132%_)))
                        (_%tl231029231137%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e231027231132%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl231029231137%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl231023231121%_))
                            (let ((_%e231030231140%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl231023231121%_))))
                              (let ((_%hd231031231143%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e231030231140%_)))
                                    (_%tl231032231145%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e231030231140%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd231031231143%_))
                                    (let ((_%e231033231148%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd231031231143%_))))
                                      (let ((_%hd231034231151%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e231033231148%_)))
                                            (_%tl231035231153%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e231033231148%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _%hd231034231151%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _%hd231034231151%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl231035231153%_))
                                                    (let ((_%e231036231156%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl231035231153%_))))
                                                      (let ((_%hd231037231159%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e231036231156%_)))
                    (_%tl231038231161%_
                     (let () (declare (not safe)) (##cdr _%e231036231156%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl231038231161%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%tl231032231145%_))
                        (if (let ((__tmp233414
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-length _%tl231032231145%_))))
                              (declare (not safe))
                              (##fx>= __tmp233414 '1))
                            (let ((_g233415_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _%tl231032231145%_
                                      '1))))
                              (begin
                                (let ((_g233416_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g233415_)
                                             (##values-length _g233415_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g233416_ 2)))
                                      (error "Context expects 2 values"
                                             _g233416_)))
                                (let ((_%target231039231164%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g233415_ 0)))
                                      (_%tl231041231166%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g233415_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl231041231166%_))
                                      (let ((_%e231048231169%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl231041231166%_))))
                                        (let ((_%hd231049231172%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e231048231169%_)))
                                              (_%tl231050231174%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e231048231169%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl231050231174%_))
                                              (letrec ((_%loop231042231177%_
                                                        (lambda (_%hd231040231180%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%kw-ref231046231182%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd231040231180%_))
                      (let ((_%e231043231184%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd231040231180%_))))
                        (let ((_%lp-hd231044231187%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e231043231184%_)))
                              (_%lp-tl231045231189%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e231043231184%_))))
                          (_%loop231042231177%_
                           _%lp-tl231045231189%_
                           (cons _%lp-hd231044231187%_
                                 _%kw-ref231046231182%_))))
                      (let ((_%kw-ref231047231192%_
                             (reverse _%kw-ref231046231182%_)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl231008231081%_))
                            ((lambda (_%g230995231194%_
                                      _%g230996231195%_
                                      _%g230997231196%_
                                      _%g230998231197%_
                                      _%g230999231198%_)
                               (let* ((_%kw-count231249%_
                                       (length (let ((__tmp233417
                                                      (lambda (_%g231241231244%_
                                                               _%g231242231246%_)
                                                        (cons _%g231241231244%_
                                                              _%g231242231246%_))))
                                                 (declare (not safe))
                                                 (foldr__0
                                                  __tmp233417
                                                  '()
                                                  _%g230996231195%_))))
                                      (_%self-index231251%_
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _%kw-count231249%_ '1))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#lambda-expr? _%g230783230951%_))
                                     (let* ((_%g231255231269%_
                                             (lambda (_%g231256231266%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g231256231266%_))))
                                            (_%g231254231392%_
                                             (lambda (_%g231256231272%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%g231256231272%_))
                                                   (let ((_%e231259231274%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%g231256231272%_))))
                                                     (let ((_%hd231260231277%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e231259231274%_)))
                                                           (_%tl231261231279%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e231259231274%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl231261231279%_))
                                                           (let ((_%e231262231282%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl231261231279%_))))
                     (let ((_%hd231263231285%_
                            (let ()
                              (declare (not safe))
                              (##car _%e231262231282%_)))
                           (_%tl231264231287%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e231262231282%_))))
                       ((lambda (_%g231257231290%_ _%g231258231291%_)
                          (let* ((_%self231308%_
                                  (list-ref
                                   _%g231258231291%_
                                   _%self-index231251%_))
                                 (_%receiver231313%_
                                  (let ((_%$e231310%_
                                         (gxc#apply-extract-receiver
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   '%#begin))
                                                _%g231257231290%_))))
                                    (if _%$e231310%_
                                        _%$e231310%_
                                        _%self231308%_))))
                            (for-each
                             (lambda (_%g231315231317%_)
                               (gxc#apply-collect-object-refs__%
                                '#f
                                _%receiver231313%_
                                _%method-calls229253%_
                                _%slot-refs229254%_
                                _%g231315231317%_))
                             _%g231257231290%_)
                            (if (_%no-specializer?229257%_)
                                _%stx229161%_
                                (let* ((_%specializer-id231326%_
                                        (let* ((_%id231320%_
                                                (let ((__tmp233418
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%g229172229234%_))))
                                                  (declare (not safe))
                                                  (make-symbol__1
                                                   __tmp233418
                                                   '"::specialize")))
                                               (_%specializer-id231323%_
                                                (let ((__tmp233419
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-source
                                                          _%stx229161%_))))
                                                  (declare (not safe))
                                                  (gx#core-quote-syntax__1
                                                   _%id231320%_
                                                   __tmp233419))))
                                          (let ()
                                            (declare (not safe))
                                            (gx#core-bind-runtime!__0
                                             _%specializer-id231323%_))
                                          _%specializer-id231323%_))
                                       (_%$klass231328%_
                                        (let ((__tmp233420
                                               (let ()
                                                 (declare (not safe))
                                                 (##gensym '__klass))))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp233420)))
                                       (_%$method-table231330%_
                                        (let ((__tmp233421
                                               (let ()
                                                 (declare (not safe))
                                                 (##gensym '__method-table))))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp233421)))
                                       (_%methods231332%_
                                        (let ()
                                          (declare (not safe))
                                          (__hash-keys
                                           _%method-calls229253%_)))
                                       (_%$methods231336%_
                                        (let ((__tmp233422
                                               (lambda (_%id231334%_)
                                                 (let ((__tmp233423
                                                        (gensym _%id231334%_)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    '"__"
                                                    __tmp233423)))))
                                          (declare (not safe))
                                          (##map __tmp233422
                                                 _%methods231332%_)))
                                       (_%_231345%_
                                        (let ((__tmp233424
                                               (lambda (_%g231337231340%_
                                                        _%g231338231342%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (__hash-put!
                                                    _%method-calls229253%_
                                                    _%g231337231340%_
                                                    _%g231338231342%_)))))
                                          (declare (not safe))
                                          (##for-each
                                           __tmp233424
                                           _%methods231332%_
                                           _%$methods231336%_)))
                                       (_%methods-bind231355%_
                                        (let ((__tmp233425
                                               (lambda (_%g231347231350%_
                                                        _%g231348231352%_)
                                                 (_%generate-method-bind229163%_
                                                  _%$klass231328%_
                                                  _%$method-table231330%_
                                                  _%g231347231350%_
                                                  _%g231348231352%_))))
                                          (declare (not safe))
                                          (##map __tmp233425
                                                 _%methods231332%_
                                                 _%$methods231336%_)))
                                       (_%slots231357%_
                                        (let ()
                                          (declare (not safe))
                                          (__hash-keys _%slot-refs229254%_)))
                                       (_%$slots231361%_
                                        (let ((__tmp233426
                                               (lambda (_%id231359%_)
                                                 (let ((__tmp233427
                                                        (gensym _%id231359%_)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    '"__"
                                                    __tmp233427)))))
                                          (declare (not safe))
                                          (##map __tmp233426 _%slots231357%_)))
                                       (_%_231370%_
                                        (let ((__tmp233428
                                               (lambda (_%g231362231365%_
                                                        _%g231363231367%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (__hash-put!
                                                    _%slot-refs229254%_
                                                    _%g231362231365%_
                                                    _%g231363231367%_)))))
                                          (declare (not safe))
                                          (##for-each
                                           __tmp233428
                                           _%slots231357%_
                                           _%$slots231361%_)))
                                       (_%slots-bind231379%_
                                        (let ((__tmp233429
                                               (lambda (_%g231371231374%_
                                                        _%g231372231376%_)
                                                 (_%generate-slot-bind229164%_
                                                  _%$klass231328%_
                                                  _%g231371231374%_
                                                  _%g231372231376%_))))
                                          (declare (not safe))
                                          (##map __tmp233429
                                                 _%slots231357%_
                                                 _%$slots231361%_)))
                                       (_%specializer-impl231387%_
                                        (let* ((_%specializer-body231385%_
                                                (map (lambda (_%g231380231382%_)
                                                       (gxc#apply-subst-object-refs__%
                                                        '#f
                                                        _%receiver231313%_
                                                        _%$klass231328%_
                                                        _%method-calls229253%_
                                                        _%slot-refs229254%_
                                                        _%g231380231382%_))
                                                     _%g231257231290%_))
                                               (__tmp233430
                                                (cons '%#let-values
                                                      (cons (cons (cons (cons _%g230785230953%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      '())
                                (cons (cons '%#let-values
                                            (cons (cons (cons (cons _%g230784230952%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())
                      (cons (let ((__tmp233431
                                   (cons '%#lambda
                                         (cons _%g231258231291%_
                                               _%specializer-body231385%_))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp233431
                               _%g230783230951%_))
                            '()))
                '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons _%g230782230950%_
                                                        '())))
                                      '()))
                          '())
                    (cons _%g230781230949%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp233430
                                           _%stx229161%_)))
                                       (_%specializer-impl231389%_
                                        (_%generate-specializer-impl229165%_
                                         _%$klass231328%_
                                         _%$method-table231330%_
                                         _%methods-bind231355%_
                                         _%slots-bind231379%_
                                         _%specializer-impl231387%_)))
                                  (let ((__tmp233433
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%g229172229234%_)))
                                        (__tmp233432
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e
                                            _%specializer-id231326%_))))
                                    (declare (not safe))
                                    (gxc#verbose
                                     '"generate method specializer "
                                     __tmp233433
                                     '" => "
                                     __tmp233432))
                                  (_%generate-specializer-def229166%_
                                   _%g229172229234%_
                                   _%specializer-id231326%_
                                   _%specializer-impl231389%_)))))
                        _%tl231264231287%_
                        _%hd231263231285%_)))
                   (_%g231255231269%_ _%g231256231272%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g231255231269%_
                                                    _%g231256231272%_)))))
                                       (_%g231254231392%_ _%g230783230951%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#opt-lambda-expr?
                                            _%g230783230951%_))
                                         (let* ((_%g231396231426%_
                                                 (lambda (_%g231397231423%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g231397231423%_))))
                                                (_%g231395231990%_
                                                 (lambda (_%g231397231429%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%g231397231429%_))
                                                       (let ((_%e231401231431%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%g231397231429%_))))
                 (let ((_%hd231402231434%_
                        (let ()
                          (declare (not safe))
                          (##car _%e231401231431%_)))
                       (_%tl231403231436%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e231401231431%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%tl231403231436%_))
                       (let ((_%e231404231439%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%tl231403231436%_))))
                         (let ((_%hd231405231442%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e231404231439%_)))
                               (_%tl231406231444%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e231404231439%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%hd231405231442%_))
                               (let ((_%e231407231447%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%hd231405231442%_))))
                                 (let ((_%hd231408231450%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e231407231447%_)))
                                       (_%tl231409231452%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e231407231447%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd231408231450%_))
                                       (let ((_%e231410231455%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd231408231450%_))))
                                         (let ((_%hd231411231458%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e231410231455%_)))
                                               (_%tl231412231460%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e231410231455%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%hd231411231458%_))
                                               (let ((_%e231413231463%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%hd231411231458%_))))
                                                 (let ((_%hd231414231466%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e231413231463%_)))
                                                       (_%tl231415231468%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e231413231463%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl231415231468%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl231412231460%_))
                                                           (let ((_%e231416231471%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl231412231460%_))))
                     (let ((_%hd231417231474%_
                            (let ()
                              (declare (not safe))
                              (##car _%e231416231471%_)))
                           (_%tl231418231476%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e231416231471%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl231418231476%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%tl231409231452%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%tl231406231444%_))
                                   (let ((_%e231419231479%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%tl231406231444%_))))
                                     (let ((_%hd231420231482%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e231419231479%_)))
                                           (_%tl231421231484%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e231419231479%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl231421231484%_))
                                           ((lambda (_%g231398231487%_
                                                     _%g231399231488%_
                                                     _%g231400231489%_)
                                              (let* ((_%g231513231527%_
                                                      (lambda (_%g231514231524%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g231514231524%_))))
                                                     (_%g231512231574%_
                                                      (lambda (_%g231514231530%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g231514231530%_))
                                                            (let ((_%e231517231532%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%g231514231530%_))))
                      (let ((_%hd231518231535%_
                             (let ()
                               (declare (not safe))
                               (##car _%e231517231532%_)))
                            (_%tl231519231537%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e231517231532%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl231519231537%_))
                            (let ((_%e231520231540%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl231519231537%_))))
                              (let ((_%hd231521231543%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e231520231540%_)))
                                    (_%tl231522231545%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e231520231540%_))))
                                ((lambda (_%g231515231548%_ _%g231516231549%_)
                                   (let* ((_%self231562%_
                                           (list-ref
                                            _%g231516231549%_
                                            _%self-index231251%_))
                                          (_%receiver231567%_
                                           (let ((_%$e231564%_
                                                  (gxc#apply-extract-receiver
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gx#datum->syntax__0
                                                            '#f
                                                            '%#begin))
                                                         _%g231515231548%_))))
                                             (if _%$e231564%_
                                                 _%$e231564%_
                                                 _%self231562%_))))
                                     (for-each
                                      (lambda (_%g231569231571%_)
                                        (gxc#apply-collect-object-refs__%
                                         '#f
                                         _%receiver231567%_
                                         _%method-calls229253%_
                                         _%slot-refs229254%_
                                         _%g231569231571%_))
                                      _%g231515231548%_)))
                                 _%tl231522231545%_
                                 _%hd231521231543%_)))
                            (_%g231513231527%_ _%g231514231530%_))))
                    (_%g231513231527%_ _%g231514231530%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g231512231574%_
                                                 _%g231399231488%_))
                                              (let* ((_%g231577231596%_
                                                      (lambda (_%g231578231593%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g231578231593%_))))
                                                     (_%g231576231705%_
                                                      (lambda (_%g231578231599%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g231578231599%_))
                                                            (let ((_%e231580231601%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%g231578231599%_))))
                      (let ((_%hd231581231604%_
                             (let ()
                               (declare (not safe))
                               (##car _%e231580231601%_)))
                            (_%tl231582231606%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e231580231601%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _%tl231582231606%_))
                            (let ((_g233434_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _%tl231582231606%_
                                      '0))))
                              (begin
                                (let ((_g233435_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g233434_)
                                             (##values-length _g233434_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g233435_ 2)))
                                      (error "Context expects 2 values"
                                             _g233435_)))
                                (let ((_%target231583231609%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g233434_ 0)))
                                      (_%tl231585231611%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g233434_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl231585231611%_))
                                      (letrec ((_%loop231586231614%_
                                                (lambda (_%hd231584231617%_
                                                         _%clause231590231619%_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%hd231584231617%_))
                                                      (let ((_%e231587231621%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd231584231617%_))))
                (let ((_%lp-hd231588231624%_
                       (let () (declare (not safe)) (##car _%e231587231621%_)))
                      (_%lp-tl231589231626%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e231587231621%_))))
                  (_%loop231586231614%_
                   _%lp-tl231589231626%_
                   (cons _%lp-hd231588231624%_ _%clause231590231619%_))))
              (let ((_%clause231591231629%_ (reverse _%clause231590231619%_)))
                ((lambda (_%g231579231631%_)
                   (for-each
                    (lambda (_%clause231644%_)
                      (let* ((_%g231646231657%_
                              (lambda (_%g231647231654%_)
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g231647231654%_))))
                             (_%g231645231695%_
                              (lambda (_%g231647231660%_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%g231647231660%_))
                                    (let ((_%e231650231662%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%g231647231660%_))))
                                      (let ((_%hd231651231665%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e231650231662%_)))
                                            (_%tl231652231667%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e231650231662%_))))
                                        ((lambda (_%g231648231670%_
                                                  _%g231649231671%_)
                                           (let* ((_%self231683%_
                                                   (list-ref
                                                    _%g231649231671%_
                                                    _%self-index231251%_))
                                                  (_%receiver231688%_
                                                   (let ((_%$e231685%_
                                                          (gxc#apply-extract-receiver
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '%#begin))
                         _%g231648231670%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _%$e231685%_
                                                         _%$e231685%_
                                                         _%self231683%_))))
                                             (for-each
                                              (lambda (_%g231690231692%_)
                                                (gxc#apply-collect-object-refs__%
                                                 '#f
                                                 _%receiver231688%_
                                                 _%method-calls229253%_
                                                 _%slot-refs229254%_
                                                 _%g231690231692%_))
                                              _%g231648231670%_)))
                                         _%tl231652231667%_
                                         _%hd231651231665%_)))
                                    (_%g231646231657%_ _%g231647231660%_)))))
                        (_%g231645231695%_ _%clause231644%_)))
                    (let ((__tmp233436
                           (lambda (_%g231697231700%_ _%g231698231702%_)
                             (cons _%g231697231700%_ _%g231698231702%_))))
                      (declare (not safe))
                      (foldr__0 __tmp233436 '() _%g231579231631%_))))
                 _%clause231591231629%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_%loop231586231614%_
                                         _%target231583231609%_
                                         '()))
                                      (_%g231577231596%_ _%g231578231599%_)))))
                            (_%g231577231596%_ _%g231578231599%_))))
                    (_%g231577231596%_ _%g231578231599%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g231576231705%_
                                                 _%g231398231487%_))
                                              (if (_%no-specializer?229257%_)
                                                  _%stx229161%_
                                                  (let* ((_%specializer-id231714%_
                                                          (let* ((_%id231708%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp233437
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%g229172229234%_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp233437 '"::specialize")))
                         (_%specializer-id231711%_
                          (let ((__tmp233438
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _%stx229161%_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _%id231708%_
                             __tmp233438))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _%specializer-id231711%_))
                    _%specializer-id231711%_))
                 (_%$klass231716%_
                  (let ((__tmp233439
                         (let () (declare (not safe)) (##gensym '__klass))))
                    (declare (not safe))
                    (make-symbol__0 __tmp233439)))
                 (_%$method-table231718%_
                  (let ((__tmp233440
                         (let ()
                           (declare (not safe))
                           (##gensym '__method-table))))
                    (declare (not safe))
                    (make-symbol__0 __tmp233440)))
                 (_%methods231720%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%method-calls229253%_)))
                 (_%$methods231724%_
                  (let ((__tmp233441
                         (lambda (_%id231722%_)
                           (let ((__tmp233442 (gensym _%id231722%_)))
                             (declare (not safe))
                             (make-symbol__1 '"__" __tmp233442)))))
                    (declare (not safe))
                    (##map __tmp233441 _%methods231720%_)))
                 (_%_231733%_
                  (let ((__tmp233443
                         (lambda (_%g231725231728%_ _%g231726231730%_)
                           (let ()
                             (declare (not safe))
                             (__hash-put!
                              _%method-calls229253%_
                              _%g231725231728%_
                              _%g231726231730%_)))))
                    (declare (not safe))
                    (##for-each
                     __tmp233443
                     _%methods231720%_
                     _%$methods231724%_)))
                 (_%methods-bind231743%_
                  (let ((__tmp233444
                         (lambda (_%g231735231738%_ _%g231736231740%_)
                           (_%generate-method-bind229163%_
                            _%$klass231716%_
                            _%$method-table231718%_
                            _%g231735231738%_
                            _%g231736231740%_))))
                    (declare (not safe))
                    (##map __tmp233444 _%methods231720%_ _%$methods231724%_)))
                 (_%slots231745%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%slot-refs229254%_)))
                 (_%$slots231749%_
                  (let ((__tmp233445
                         (lambda (_%id231747%_)
                           (let ((__tmp233446 (gensym _%id231747%_)))
                             (declare (not safe))
                             (make-symbol__1 '"__" __tmp233446)))))
                    (declare (not safe))
                    (##map __tmp233445 _%slots231745%_)))
                 (_%_231758%_
                  (let ((__tmp233447
                         (lambda (_%g231750231753%_ _%g231751231755%_)
                           (let ()
                             (declare (not safe))
                             (__hash-put!
                              _%slot-refs229254%_
                              _%g231750231753%_
                              _%g231751231755%_)))))
                    (declare (not safe))
                    (##for-each __tmp233447 _%slots231745%_ _%$slots231749%_)))
                 (_%slots-bind231767%_
                  (let ((__tmp233448
                         (lambda (_%g231759231762%_ _%g231760231764%_)
                           (_%generate-slot-bind229164%_
                            _%$klass231716%_
                            _%g231759231762%_
                            _%g231760231764%_))))
                    (declare (not safe))
                    (##map __tmp233448 _%slots231745%_ _%$slots231749%_)))
                 (_%specializer-lambda-expr231845%_
                  (let* ((_%g231769231783%_
                          (lambda (_%g231770231780%_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g231770231780%_))))
                         (_%g231768231842%_
                          (lambda (_%g231770231786%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%g231770231786%_))
                                (let ((_%e231773231788%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%g231770231786%_))))
                                  (let ((_%hd231774231791%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e231773231788%_)))
                                        (_%tl231775231793%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e231773231788%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl231775231793%_))
                                        (let ((_%e231776231796%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl231775231793%_))))
                                          (let ((_%hd231777231799%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e231776231796%_)))
                                                (_%tl231778231801%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e231776231796%_))))
                                            ((lambda (_%g231771231804%_
                                                      _%g231772231805%_)
                                               (let* ((_%self231828%_
                                                       (list-ref
                                                        _%g231772231805%_
                                                        _%self-index231251%_))
                                                      (_%receiver231833%_
                                                       (let ((_%$e231830%_
                                                              (gxc#apply-extract-receiver
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f '%#begin))
                             _%g231771231804%_))))
                 (if _%$e231830%_ _%$e231830%_ _%self231828%_)))
              (_%body231839%_
               (map (lambda (_%g231834231836%_)
                      (gxc#apply-subst-object-refs__%
                       '#f
                       _%receiver231833%_
                       _%$klass231716%_
                       _%method-calls229253%_
                       _%slot-refs229254%_
                       _%g231834231836%_))
                    _%g231771231804%_))
              (__tmp233449
               (cons '%#lambda (cons _%g231772231805%_ _%body231839%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp233449
                                                  _%g231399231488%_)))
                                             _%tl231778231801%_
                                             _%hd231777231799%_)))
                                        (_%g231769231783%_
                                         _%g231770231786%_))))
                                (_%g231769231783%_ _%g231770231786%_)))))
                    (_%g231768231842%_ _%g231399231488%_)))
                 (_%specializer-case-lambda-expr231983%_
                  (let* ((_%g231847231866%_
                          (lambda (_%g231848231863%_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g231848231863%_))))
                         (_%g231846231980%_
                          (lambda (_%g231848231869%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%g231848231869%_))
                                (let ((_%e231850231871%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%g231848231869%_))))
                                  (let ((_%hd231851231874%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e231850231871%_)))
                                        (_%tl231852231876%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e231850231871%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl231852231876%_))
                                        (let ((_g233450_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl231852231876%_
                                                  '0))))
                                          (begin
                                            (let ((_g233451_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g233450_)
                                                         (##values-length
                                                          _g233450_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g233451_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g233451_)))
                                            (let ((_%target231853231879%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g233450_
                                                      0)))
                                                  (_%tl231855231881%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g233450_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl231855231881%_))
                                                  (letrec ((_%loop231856231884%_
                                                            (lambda (_%hd231854231887%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%clause231860231889%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd231854231887%_))
                          (let ((_%e231857231891%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd231854231887%_))))
                            (let ((_%lp-hd231858231894%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e231857231891%_)))
                                  (_%lp-tl231859231896%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e231857231891%_))))
                              (_%loop231856231884%_
                               _%lp-tl231859231896%_
                               (cons _%lp-hd231858231894%_
                                     _%clause231860231889%_))))
                          (let ((_%clause231861231899%_
                                 (reverse _%clause231860231889%_)))
                            ((lambda (_%g231849231901%_)
                               (let* ((_%clauses231978%_
                                       (map (lambda (_%clause231915%_)
                                              (let* ((_%g231917231928%_
                                                      (lambda (_%g231918231925%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g231918231925%_))))
                                                     (_%g231916231968%_
                                                      (lambda (_%g231918231931%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g231918231931%_))
                                                            (let ((_%e231921231933%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%g231918231931%_))))
                      (let ((_%hd231922231936%_
                             (let ()
                               (declare (not safe))
                               (##car _%e231921231933%_)))
                            (_%tl231923231938%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e231921231933%_))))
                        ((lambda (_%g231919231941%_ _%g231920231942%_)
                           (let* ((_%self231954%_
                                   (list-ref
                                    _%g231920231942%_
                                    _%self-index231251%_))
                                  (_%receiver231959%_
                                   (let ((_%$e231956%_
                                          (gxc#apply-extract-receiver
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    '%#begin))
                                                 _%g231919231941%_))))
                                     (if _%$e231956%_
                                         _%$e231956%_
                                         _%self231954%_)))
                                  (_%body231965%_
                                   (map (lambda (_%g231960231962%_)
                                          (gxc#apply-subst-object-refs__%
                                           '#f
                                           _%receiver231959%_
                                           _%$klass231716%_
                                           _%method-calls229253%_
                                           _%slot-refs229254%_
                                           _%g231960231962%_))
                                        _%g231919231941%_)))
                             (cons _%g231920231942%_ _%body231965%_)))
                         _%tl231923231938%_
                         _%hd231922231936%_)))
                    (_%g231917231928%_ _%g231918231931%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g231916231968%_
                                                 _%clause231915%_)))
                                            (let ((__tmp233452
                                                   (lambda (_%g231970231973%_
                                                            _%g231971231975%_)
                                                     (cons _%g231970231973%_
                                                           _%g231971231975%_))))
                                              (declare (not safe))
                                              (foldr__0
                                               __tmp233452
                                               '()
                                               _%g231849231901%_))))
                                      (__tmp233453
                                       (cons '%#case-lambda
                                             _%clauses231978%_)))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp233453
                                  _%g231398231487%_)))
                             _%clause231861231899%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop231856231884%_
                                                     _%target231853231879%_
                                                     '()))
                                                  (_%g231847231866%_
                                                   _%g231848231869%_)))))
                                        (_%g231847231866%_
                                         _%g231848231869%_))))
                                (_%g231847231866%_ _%g231848231869%_)))))
                    (_%g231846231980%_ _%g231398231487%_)))
                 (_%specializer-impl231985%_
                  (let ((__tmp233454
                         (cons '%#let-values
                               (cons (cons (cons (cons _%g230785230953%_ '())
                                                 (cons (cons '%#let-values
                                                             (cons (cons (cons (cons _%g230784230952%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                             '())
                                       (cons (let ((__tmp233455
                                                    (cons '%#let-values
                                                          (cons (cons (cons (cons _%g231400231489%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                          '())
                                    (cons _%specializer-lambda-expr231845%_
                                          '()))
                              '())
                        (cons _%specializer-case-lambda-expr231983%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp233455
                                                _%stx229161%_))
                                             '()))
                                 '())
                           (cons _%g230782230950%_ '())))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())
                                     (cons _%g230781230949%_ '())))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp233454 _%stx229161%_)))
                 (_%specializer-impl231987%_
                  (_%generate-specializer-impl229165%_
                   _%$klass231716%_
                   _%$method-table231718%_
                   _%methods-bind231743%_
                   _%slots-bind231767%_
                   _%specializer-impl231985%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp233457
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%g229172229234%_)))
                                                          (__tmp233456
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%specializer-id231714%_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp233457
                                                       '" => "
                                                       __tmp233456))
                                                    (_%generate-specializer-def229166%_
                                                     _%g229172229234%_
                                                     _%specializer-id231714%_
                                                     _%specializer-impl231987%_))))
                                            _%hd231420231482%_
                                            _%hd231417231474%_
                                            _%hd231414231466%_)
                                           (_%g231396231426%_
                                            _%g231397231429%_))))
                                   (_%g231396231426%_ _%g231397231429%_))
                               (_%g231396231426%_ _%g231397231429%_))
                           (_%g231396231426%_ _%g231397231429%_))))
                   (_%g231396231426%_ _%g231397231429%_))
               (_%g231396231426%_ _%g231397231429%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g231396231426%_
                                                _%g231397231429%_))))
                                       (_%g231396231426%_ _%g231397231429%_))))
                               (_%g231396231426%_ _%g231397231429%_))))
                       (_%g231396231426%_ _%g231397231429%_))))
               (_%g231396231426%_ _%g231397231429%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g231395231990%_
                                            _%g230783230951%_))
                                         _%stx229161%_))))
                             _%hd231049231172%_
                             _%kw-ref231047231192%_
                             _%hd231037231159%_
                             _%hd231028231135%_
                             _%hd231019231111%_)
                            (_%g230993231055%_ _%g230994231058%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop231042231177%_
                                                 _%target231039231164%_
                                                 '()))
                                              (_%g230993231055%_
                                               _%g230994231058%_))))
                                      (_%g230993231055%_ _%g230994231058%_)))))
                            (_%g230993231055%_ _%g230994231058%_))
                        (_%g230993231055%_ _%g230994231058%_))
                    (_%g230993231055%_ _%g230994231058%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g230993231055%_
                                                     _%g230994231058%_))
                                                (_%g230993231055%_
                                                 _%g230994231058%_))
                                            (_%g230993231055%_
                                             _%g230994231058%_))))
                                    (_%g230993231055%_ _%g230994231058%_))))
                            (_%g230993231055%_ _%g230994231058%_))
                        (_%g230993231055%_ _%g230994231058%_))))
                (_%g230993231055%_ _%g230994231058%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g230993231055%_
                                                     _%g230994231058%_))
                                                (_%g230993231055%_
                                                 _%g230994231058%_))))
                                        (_%g230993231055%_
                                         _%g230994231058%_))))
                                (_%g230993231055%_ _%g230994231058%_))
                            (_%g230993231055%_ _%g230994231058%_))))
                    (_%g230993231055%_ _%g230994231058%_))
                (_%g230993231055%_ _%g230994231058%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g230993231055%_
                                                     _%g230994231058%_))))
                                            (_%g230993231055%_
                                             _%g230994231058%_))))
                                    (_%g230993231055%_ _%g230994231058%_))
                                (_%g230993231055%_ _%g230994231058%_))
                            (_%g230993231055%_ _%g230994231058%_))))
                    (_%g230993231055%_ _%g230994231058%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g230993231055%_
                                                     _%g230994231058%_))))
                                            (_%g230993231055%_
                                             _%g230994231058%_))
                                        (_%g230993231055%_ _%g230994231058%_))
                                    (_%g230993231055%_ _%g230994231058%_))))
                            (_%g230993231055%_ _%g230994231058%_)))))
                (_%g230992231994%_ _%g230782230950%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%hd230826230944%_
                                                    _%hd230823230936%_
                                                    _%hd230820230928%_
                                                    _%hd230817230920%_
                                                    _%hd230799230872%_)
                                                   (_%g230779230832%_
                                                    _%g230780230835%_))))
                                           (_%g230779230832%_
                                            _%g230780230835%_))
                                       (_%g230779230832%_ _%g230780230835%_))
                                   (_%g230779230832%_ _%g230780230835%_))
                               (_%g230779230832%_ _%g230780230835%_))))
                       (_%g230779230832%_ _%g230780230835%_))
                   (_%g230779230832%_ _%g230780230835%_))
               (_%g230779230832%_ _%g230780230835%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g230779230832%_
                                                _%g230780230835%_))
                                           (_%g230779230832%_
                                            _%g230780230835%_))))
                                   (_%g230779230832%_ _%g230780230835%_))))
                           (_%g230779230832%_ _%g230780230835%_))))
                   (_%g230779230832%_ _%g230780230835%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g230779230832%_
                                                    _%g230780230835%_))
                                               (_%g230779230832%_
                                                _%g230780230835%_))
                                           (_%g230779230832%_
                                            _%g230780230835%_))))
                                   (_%g230779230832%_ _%g230780230835%_))))
                           (_%g230779230832%_ _%g230780230835%_))
                       (_%g230779230832%_ _%g230780230835%_))))
               (_%g230779230832%_ _%g230780230835%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g230779230832%_
                                                _%g230780230835%_))))
                                       (_%g230779230832%_ _%g230780230835%_))))
                               (_%g230779230832%_ _%g230780230835%_))
                           (_%g230779230832%_ _%g230780230835%_))
                       (_%g230779230832%_ _%g230780230835%_))))
               (_%g230779230832%_ _%g230780230835%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g230778231997%_
                                            _%g229171229233%_))
                                         _%stx229161%_))))))))
                  (_%__kont232224232225%_ (lambda () _%stx229161%_)))
              (let ((_%__match232253232254%_
                     (lambda (_%e229173229201%_
                              _%hd229174229204%_
                              _%tl229175229206%_
                              _%e229176229209%_
                              _%hd229177229212%_
                              _%tl229178229214%_
                              _%e229179229217%_
                              _%hd229180229220%_
                              _%tl229181229222%_
                              _%e229182229225%_
                              _%hd229183229228%_
                              _%tl229184229230%_)
                       (let ((_%g229171229233%_ _%hd229183229228%_)
                             (_%g229172229234%_ _%hd229180229220%_))
                         (if (let ((__tmp233458
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol
                                       _%g229172229234%_))))
                               (declare (not safe))
                               (gxc#optimizer-top-level-method? __tmp233458))
                             (_%__kont232222232223%_
                              _%g229171229233%_
                              _%g229172229234%_)
                             (_%__kont232224232225%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx232220232221%_))
                    (let ((_%e229173229201%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx232220232221%_))))
                      (let ((_%tl229175229206%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e229173229201%_)))
                            (_%hd229174229204%_
                             (let ()
                               (declare (not safe))
                               (##car _%e229173229201%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl229175229206%_))
                            (let ((_%e229176229209%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl229175229206%_))))
                              (let ((_%tl229178229214%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e229176229209%_)))
                                    (_%hd229177229212%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e229176229209%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd229177229212%_))
                                    (let ((_%e229179229217%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd229177229212%_))))
                                      (let ((_%tl229181229222%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e229179229217%_)))
                                            (_%hd229180229220%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e229179229217%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl229181229222%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl229178229214%_))
                                                (let ((_%e229182229225%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl229178229214%_))))
                                                  (let ((_%tl229184229230%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e229182229225%_)))
                                                        (_%hd229183229228%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e229182229225%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl229184229230%_))
                                                        (_%__match232253232254%_
                                                         _%e229173229201%_
                                                         _%hd229174229204%_
                                                         _%tl229175229206%_
                                                         _%e229176229209%_
                                                         _%hd229177229212%_
                                                         _%tl229178229214%_
                                                         _%e229179229217%_
                                                         _%hd229180229220%_
                                                         _%tl229181229222%_
                                                         _%e229182229225%_
                                                         _%hd229183229228%_
                                                         _%tl229184229230%_)
                                                        (_%__kont232224232225%_))))
                                                (_%__kont232224232225%_))
                                            (_%__kont232224232225%_))))
                                    (_%__kont232224232225%_))))
                            (_%__kont232224232225%_))))
                    (_%__kont232224232225%_))))))))
    (define gxc#extract-receiver-begin-annotation%
      (lambda (_%self229013%_ _%stx229014%_)
        (let* ((_%__stx232256232257%_ _%stx229014%_)
               (_%g229017229050%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx232256232257%_)))))
          (let ((_%__kont232258232259%_
                 (lambda (_%g229019229140%_) _%g229019229140%_))
                (_%__kont232260232261%_
                 (lambda (_%g229035229079%_ _%g229036229080%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self229013%_ _%g229035229079%_)))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx232256232257%_))
                (let ((_%e229020229100%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%__stx232256232257%_))))
                  (let ((_%tl229022229105%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e229020229100%_)))
                        (_%hd229021229103%_
                         (let ()
                           (declare (not safe))
                           (##car _%e229020229100%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl229022229105%_))
                        (let ((_%e229023229108%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl229022229105%_))))
                          (let ((_%tl229025229113%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e229023229108%_)))
                                (_%hd229024229111%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e229023229108%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd229024229111%_))
                                (let ((_%e229026229116%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd229024229111%_))))
                                  (let ((_%tl229028229121%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e229026229116%_)))
                                        (_%hd229027229119%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e229026229116%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd229027229119%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '@receiver
                                               _%hd229027229119%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl229028229121%_))
                                                (let ((_%e229029229124%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl229028229121%_))))
                                                  (let ((_%tl229031229129%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e229029229124%_)))
                                                        (_%hd229030229127%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e229029229124%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl229031229129%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl229025229113%_))
                                                            (let ((_%e229032229132%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl229025229113%_))))
                      (let ((_%tl229034229137%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e229032229132%_)))
                            (_%hd229033229135%_
                             (let ()
                               (declare (not safe))
                               (##car _%e229032229132%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl229034229137%_))
                            (_%__kont232258232259%_ _%hd229030229127%_)
                            (let ()
                              (declare (not safe))
                              (_%g229017229050%_)))))
                    (let () (declare (not safe)) (_%g229017229050%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl229025229113%_))
                    (let ((_%e229043229071%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl229025229113%_))))
                      (let ((_%tl229045229076%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e229043229071%_)))
                            (_%hd229044229074%_
                             (let ()
                               (declare (not safe))
                               (##car _%e229043229071%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl229045229076%_))
                            (_%__kont232260232261%_
                             _%hd229044229074%_
                             _%hd229024229111%_)
                            (let ()
                              (declare (not safe))
                              (_%g229017229050%_)))))
                    (let () (declare (not safe)) (_%g229017229050%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl229025229113%_))
                                                    (let ((_%e229043229071%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl229025229113%_))))
                                                      (let ((_%tl229045229076%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e229043229071%_)))
                    (_%hd229044229074%_
                     (let () (declare (not safe)) (##car _%e229043229071%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl229045229076%_))
                    (_%__kont232260232261%_
                     _%hd229044229074%_
                     _%hd229024229111%_)
                    (let () (declare (not safe)) (_%g229017229050%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g229017229050%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl229025229113%_))
                                                (let ((_%e229043229071%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl229025229113%_))))
                                                  (let ((_%tl229045229076%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e229043229071%_)))
                                                        (_%hd229044229074%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e229043229071%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl229045229076%_))
                                                        (_%__kont232260232261%_
                                                         _%hd229044229074%_
                                                         _%hd229024229111%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g229017229050%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g229017229050%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl229025229113%_))
                                            (let ((_%e229043229071%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl229025229113%_))))
                                              (let ((_%tl229045229076%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e229043229071%_)))
                                                    (_%hd229044229074%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e229043229071%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl229045229076%_))
                                                    (_%__kont232260232261%_
                                                     _%hd229044229074%_
                                                     _%hd229024229111%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g229017229050%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g229017229050%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl229025229113%_))
                                    (let ((_%e229043229071%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl229025229113%_))))
                                      (let ((_%tl229045229076%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e229043229071%_)))
                                            (_%hd229044229074%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e229043229071%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl229045229076%_))
                                            (_%__kont232260232261%_
                                             _%hd229044229074%_
                                             _%hd229024229111%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g229017229050%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g229017229050%_))))))
                        (let () (declare (not safe)) (_%g229017229050%_)))))
                (let () (declare (not safe)) (_%g229017229050%_)))))))
    (define gxc#extract-receiver-if%
      (lambda (_%self228929%_ _%stx228930%_)
        (let* ((_%g228932228953%_
                (lambda (_%g228933228950%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g228933228950%_))))
               (_%g228931229010%_
                (lambda (_%g228933228956%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g228933228956%_))
                      (let ((_%e228937228958%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g228933228956%_))))
                        (let ((_%hd228938228961%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e228937228958%_)))
                              (_%tl228939228963%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e228937228958%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl228939228963%_))
                              (let ((_%e228940228966%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl228939228963%_))))
                                (let ((_%hd228941228969%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e228940228966%_)))
                                      (_%tl228942228971%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e228940228966%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl228942228971%_))
                                      (let ((_%e228943228974%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl228942228971%_))))
                                        (let ((_%hd228944228977%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e228943228974%_)))
                                              (_%tl228945228979%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e228943228974%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl228945228979%_))
                                              (let ((_%e228946228982%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl228945228979%_))))
                                                (let ((_%hd228947228985%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e228946228982%_)))
                                                      (_%tl228948228987%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e228946228982%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl228948228987%_))
                                                      ((lambda (_%g228934228990%_
                                                                _%g228935228991%_
                                                                _%g228936228992%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%self228929%_
                                                            _%g228935228991%_)))
                                                       _%hd228947228985%_
                                                       _%hd228944228977%_
                                                       _%hd228941228969%_)
                                                      (_%g228932228953%_
                                                       _%g228933228956%_))))
                                              (_%g228932228953%_
                                               _%g228933228956%_))))
                                      (_%g228932228953%_ _%g228933228956%_))))
                              (_%g228932228953%_ _%g228933228956%_))))
                      (_%g228932228953%_ _%g228933228956%_)))))
          (_%g228931229010%_ _%stx228930%_))))
    (define gxc#collect-object-refs-call%
      (lambda (_%self227894%_ _%stx227895%_)
        (let* ((_%__stx232322232323%_ _%stx227895%_)
               (_%g227903228125%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx232322232323%_)))))
          (let ((_%__kont232324232325%_
                 (lambda (_%g227905228878%_
                          _%g227906228879%_
                          _%g227907228880%_
                          _%g227908228881%_)
                   (let ((__tmp233460
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self227894%_ 'methods)))
                         (__tmp233459
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%g227906228879%_))))
                     (declare (not safe))
                     (hash-put! __tmp233460 __tmp233459 '#t))
                   (for-each
                    (lambda (_%g228914228916%_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self227894%_ _%g228914228916%_)))
                    (let ((__tmp233461
                           (lambda (_%g228918228921%_ _%g228919228923%_)
                             (cons _%g228918228921%_ _%g228919228923%_))))
                      (declare (not safe))
                      (foldr__0 __tmp233461 '() _%g227905228878%_)))))
                (_%__kont232328232329%_
                 (lambda (_%g227948228715%_
                          _%g227949228716%_
                          _%g227950228717%_
                          _%g227951228718%_
                          _%g227952228719%_)
                   (let ((__tmp233463
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self227894%_ 'methods)))
                         (__tmp233462
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%g227949228716%_))))
                     (declare (not safe))
                     (hash-put! __tmp233463 __tmp233462 '#t))
                   (for-each
                    (lambda (_%g228759228761%_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self227894%_ _%g228759228761%_)))
                    (let ((__tmp233464
                           (lambda (_%g228763228766%_ _%g228764228768%_)
                             (cons _%g228763228766%_ _%g228764228768%_))))
                      (declare (not safe))
                      (foldr__0 __tmp233464 '() _%g227948228715%_)))))
                (_%__kont232332232333%_
                 (lambda (_%g228001228550%_
                          _%g228002228551%_
                          _%g228003228552%_)
                   (let ((__tmp233466
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self227894%_ 'slots)))
                         (__tmp233465
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%g228001228550%_))))
                     (declare (not safe))
                     (hash-put! __tmp233466 __tmp233465 '#t))))
                (_%__kont232334232335%_
                 (lambda (_%g228034228427%_
                          _%g228035228428%_
                          _%g228036228429%_
                          _%g228037228430%_)
                   (let ((__tmp233468
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self227894%_ 'slots)))
                         (__tmp233467
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%g228035228428%_))))
                     (declare (not safe))
                     (hash-put! __tmp233468 __tmp233467 '#t))
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self227894%_ _%g228034228427%_))))
                (_%__kont232336232337%_
                 (lambda (_%g228071228301%_ _%g228072228302%_)
                   (let* ((_%accessor228324%_
                           (let ((__tmp233469
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol
                                     _%g228072228302%_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp233469)))
                          (_%klass228326%_
                           (let ((__tmp233470
                                  (##structure-ref
                                   _%accessor228324%_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _%stx227895%_
                              __tmp233470)))
                          (_%slot228328%_
                           (##structure-ref
                            _%accessor228324%_
                            '3
                            gxc#!accessor::t
                            '#f)))
                     (if (if (##structure-ref
                              _%accessor228324%_
                              '4
                              gxc#!accessor::t
                              '#f)
                             '#f
                             (or (let ()
                                   (declare (not safe))
                                   (gxc#!class-struct-slot?
                                    _%klass228326%_
                                    _%slot228328%_))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%klass228326%_
                                    '8
                                    '#f
                                    '#f))))
                         '#!void
                         (let ((__tmp233472
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _%self227894%_ 'slots)))
                               (__tmp233471
                                (##structure-ref
                                 _%accessor228324%_
                                 '3
                                 gxc#!accessor::t
                                 '#f)))
                           (declare (not safe))
                           (hash-put! __tmp233472 __tmp233471 '#t))))))
                (_%__kont232338232339%_
                 (lambda (_%g228094228201%_
                          _%g228095228202%_
                          _%g228096228203%_)
                   (let* ((_%mutator228230%_
                           (let ((__tmp233473
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol
                                     _%g228096228203%_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp233473)))
                          (_%klass228232%_
                           (let ((__tmp233474
                                  (##structure-ref
                                   _%mutator228230%_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _%stx227895%_
                              __tmp233474)))
                          (_%slot228234%_
                           (##structure-ref
                            _%mutator228230%_
                            '3
                            gxc#!mutator::t
                            '#f)))
                     (if (if (##structure-ref
                              _%mutator228230%_
                              '4
                              gxc#!mutator::t
                              '#f)
                             '#f
                             (or (let ()
                                   (declare (not safe))
                                   (gxc#!class-struct-slot?
                                    _%klass228232%_
                                    _%slot228234%_))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%klass228232%_
                                    '8
                                    '#f
                                    '#f))))
                         '#!void
                         (let ((__tmp233475
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _%self227894%_ 'slots))))
                           (declare (not safe))
                           (hash-put! __tmp233475 _%slot228234%_ '#t)))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-e__1 _%self227894%_ _%g228094228201%_)))))
                (_%__kont232340232341%_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#apply-operands _%self227894%_ _%stx227895%_)))))
            (let* ((_%__match232821232822%_
                    (lambda (_%e228097228137%_
                             _%hd228098228140%_
                             _%tl228099228142%_
                             _%e228100228145%_
                             _%hd228101228148%_
                             _%tl228102228150%_
                             _%e228103228153%_
                             _%hd228104228156%_
                             _%tl228105228158%_
                             _%e228106228161%_
                             _%hd228107228164%_
                             _%tl228108228166%_
                             _%e228109228169%_
                             _%hd228110228172%_
                             _%tl228111228174%_
                             _%e228112228177%_
                             _%hd228113228180%_
                             _%tl228114228182%_
                             _%e228115228185%_
                             _%hd228116228188%_
                             _%tl228117228190%_
                             _%e228118228193%_
                             _%hd228119228196%_
                             _%tl228120228198%_)
                      (let ((_%g228094228201%_ _%hd228119228196%_)
                            (_%g228095228202%_ _%hd228116228188%_)
                            (_%g228096228203%_ _%hd228107228164%_))
                        (if (and (let ((__tmp233476
                                        (let ((__tmp233477
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _%g228096228203%_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp233477))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp233476
                                    'gxc#!mutator::t))
                                 (let ((__tmp233478
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self227894%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%g228095228202%_
                                    __tmp233478)))
                            (_%__kont232338232339%_
                             _%g228094228201%_
                             _%g228095228202%_
                             _%g228096228203%_)
                            (_%__kont232340232341%_)))))
                   (_%__match232819232820%_
                    (lambda (_%e228097228137%_
                             _%hd228098228140%_
                             _%tl228099228142%_
                             _%e228100228145%_
                             _%hd228101228148%_
                             _%tl228102228150%_
                             _%e228103228153%_
                             _%hd228104228156%_
                             _%tl228105228158%_
                             _%e228106228161%_
                             _%hd228107228164%_
                             _%tl228108228166%_
                             _%e228109228169%_
                             _%hd228110228172%_
                             _%tl228111228174%_
                             _%e228112228177%_
                             _%hd228113228180%_
                             _%tl228114228182%_
                             _%e228115228185%_
                             _%hd228116228188%_
                             _%tl228117228190%_
                             _%e228118228193%_
                             _%hd228119228196%_
                             _%tl228120228198%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl228120228198%_))
                          (_%__match232821232822%_
                           _%e228097228137%_
                           _%hd228098228140%_
                           _%tl228099228142%_
                           _%e228100228145%_
                           _%hd228101228148%_
                           _%tl228102228150%_
                           _%e228103228153%_
                           _%hd228104228156%_
                           _%tl228105228158%_
                           _%e228106228161%_
                           _%hd228107228164%_
                           _%tl228108228166%_
                           _%e228109228169%_
                           _%hd228110228172%_
                           _%tl228111228174%_
                           _%e228112228177%_
                           _%hd228113228180%_
                           _%tl228114228182%_
                           _%e228115228185%_
                           _%hd228116228188%_
                           _%tl228117228190%_
                           _%e228118228193%_
                           _%hd228119228196%_
                           _%tl228120228198%_)
                          (_%__kont232340232341%_))))
                   (_%__match232813232814%_
                    (lambda (_%e228097228137%_
                             _%hd228098228140%_
                             _%tl228099228142%_
                             _%e228100228145%_
                             _%hd228101228148%_
                             _%tl228102228150%_
                             _%e228103228153%_
                             _%hd228104228156%_
                             _%tl228105228158%_
                             _%e228106228161%_
                             _%hd228107228164%_
                             _%tl228108228166%_
                             _%e228109228169%_
                             _%hd228110228172%_
                             _%tl228111228174%_
                             _%e228112228177%_
                             _%hd228113228180%_
                             _%tl228114228182%_
                             _%e228115228185%_
                             _%hd228116228188%_
                             _%tl228117228190%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl228111228174%_))
                          (let ((_%e228118228193%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl228111228174%_))))
                            (let ((_%tl228120228198%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e228118228193%_)))
                                  (_%hd228119228196%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e228118228193%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl228120228198%_))
                                  (_%__match232821232822%_
                                   _%e228097228137%_
                                   _%hd228098228140%_
                                   _%tl228099228142%_
                                   _%e228100228145%_
                                   _%hd228101228148%_
                                   _%tl228102228150%_
                                   _%e228103228153%_
                                   _%hd228104228156%_
                                   _%tl228105228158%_
                                   _%e228106228161%_
                                   _%hd228107228164%_
                                   _%tl228108228166%_
                                   _%e228109228169%_
                                   _%hd228110228172%_
                                   _%tl228111228174%_
                                   _%e228112228177%_
                                   _%hd228113228180%_
                                   _%tl228114228182%_
                                   _%e228115228185%_
                                   _%hd228116228188%_
                                   _%tl228117228190%_
                                   _%e228118228193%_
                                   _%hd228119228196%_
                                   _%tl228120228198%_)
                                  (_%__kont232340232341%_))))
                          (_%__kont232340232341%_))))
                   (_%__match232759232760%_
                    (lambda (_%e228073228245%_
                             _%hd228074228248%_
                             _%tl228075228250%_
                             _%e228076228253%_
                             _%hd228077228256%_
                             _%tl228078228258%_
                             _%e228079228261%_
                             _%hd228080228264%_
                             _%tl228081228266%_
                             _%e228082228269%_
                             _%hd228083228272%_
                             _%tl228084228274%_
                             _%e228085228277%_
                             _%hd228086228280%_
                             _%tl228087228282%_
                             _%e228088228285%_
                             _%hd228089228288%_
                             _%tl228090228290%_
                             _%e228091228293%_
                             _%hd228092228296%_
                             _%tl228093228298%_)
                      (let ((_%g228071228301%_ _%hd228092228296%_)
                            (_%g228072228302%_ _%hd228083228272%_))
                        (if (and (let ((__tmp233479
                                        (let ((__tmp233480
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _%g228072228302%_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp233480))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp233479
                                    'gxc#!accessor::t))
                                 (let ((__tmp233481
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self227894%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%g228071228301%_
                                    __tmp233481)))
                            (_%__kont232336232337%_
                             _%g228071228301%_
                             _%g228072228302%_)
                            (_%__kont232340232341%_)))))
                   (_%__match232757232758%_
                    (lambda (_%e228073228245%_
                             _%hd228074228248%_
                             _%tl228075228250%_
                             _%e228076228253%_
                             _%hd228077228256%_
                             _%tl228078228258%_
                             _%e228079228261%_
                             _%hd228080228264%_
                             _%tl228081228266%_
                             _%e228082228269%_
                             _%hd228083228272%_
                             _%tl228084228274%_
                             _%e228085228277%_
                             _%hd228086228280%_
                             _%tl228087228282%_
                             _%e228088228285%_
                             _%hd228089228288%_
                             _%tl228090228290%_
                             _%e228091228293%_
                             _%hd228092228296%_
                             _%tl228093228298%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl228087228282%_))
                          (_%__match232759232760%_
                           _%e228073228245%_
                           _%hd228074228248%_
                           _%tl228075228250%_
                           _%e228076228253%_
                           _%hd228077228256%_
                           _%tl228078228258%_
                           _%e228079228261%_
                           _%hd228080228264%_
                           _%tl228081228266%_
                           _%e228082228269%_
                           _%hd228083228272%_
                           _%tl228084228274%_
                           _%e228085228277%_
                           _%hd228086228280%_
                           _%tl228087228282%_
                           _%e228088228285%_
                           _%hd228089228288%_
                           _%tl228090228290%_
                           _%e228091228293%_
                           _%hd228092228296%_
                           _%tl228093228298%_)
                          (_%__match232813232814%_
                           _%e228073228245%_
                           _%hd228074228248%_
                           _%tl228075228250%_
                           _%e228076228253%_
                           _%hd228077228256%_
                           _%tl228078228258%_
                           _%e228079228261%_
                           _%hd228080228264%_
                           _%tl228081228266%_
                           _%e228082228269%_
                           _%hd228083228272%_
                           _%tl228084228274%_
                           _%e228085228277%_
                           _%hd228086228280%_
                           _%tl228087228282%_
                           _%e228088228285%_
                           _%hd228089228288%_
                           _%tl228090228290%_
                           _%e228091228293%_
                           _%hd228092228296%_
                           _%tl228093228298%_))))
                   (_%__match232703232704%_
                    (lambda (_%e228038228339%_
                             _%hd228039228342%_
                             _%tl228040228344%_
                             _%e228041228347%_
                             _%hd228042228350%_
                             _%tl228043228352%_
                             _%e228044228355%_
                             _%hd228045228358%_
                             _%tl228046228360%_
                             _%e228047228363%_
                             _%hd228048228366%_
                             _%tl228049228368%_
                             _%e228050228371%_
                             _%hd228051228374%_
                             _%tl228052228376%_
                             _%e228053228379%_
                             _%hd228054228382%_
                             _%tl228055228384%_
                             _%e228056228387%_
                             _%hd228057228390%_
                             _%tl228058228392%_
                             _%e228059228395%_
                             _%hd228060228398%_
                             _%tl228061228400%_
                             _%e228062228403%_
                             _%hd228063228406%_
                             _%tl228064228408%_
                             _%e228065228411%_
                             _%hd228066228414%_
                             _%tl228067228416%_
                             _%e228068228419%_
                             _%hd228069228422%_
                             _%tl228070228424%_)
                      (let ((_%g228034228427%_ _%hd228069228422%_)
                            (_%g228035228428%_ _%hd228066228414%_)
                            (_%g228036228429%_ _%hd228057228390%_)
                            (_%g228037228430%_ _%hd228048228366%_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%g228037228430%_
                                        'slot-set!))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%g228037228430%_
                                        'unchecked-slot-set!)))
                                 (let ((__tmp233482
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self227894%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%g228036228429%_
                                    __tmp233482)))
                            (_%__kont232334232335%_
                             _%g228034228427%_
                             _%g228035228428%_
                             _%g228036228429%_
                             _%g228037228430%_)
                            (_%__kont232340232341%_)))))
                   (_%__match232695232696%_
                    (lambda (_%e228038228339%_
                             _%hd228039228342%_
                             _%tl228040228344%_
                             _%e228041228347%_
                             _%hd228042228350%_
                             _%tl228043228352%_
                             _%e228044228355%_
                             _%hd228045228358%_
                             _%tl228046228360%_
                             _%e228047228363%_
                             _%hd228048228366%_
                             _%tl228049228368%_
                             _%e228050228371%_
                             _%hd228051228374%_
                             _%tl228052228376%_
                             _%e228053228379%_
                             _%hd228054228382%_
                             _%tl228055228384%_
                             _%e228056228387%_
                             _%hd228057228390%_
                             _%tl228058228392%_
                             _%e228059228395%_
                             _%hd228060228398%_
                             _%tl228061228400%_
                             _%e228062228403%_
                             _%hd228063228406%_
                             _%tl228064228408%_
                             _%e228065228411%_
                             _%hd228066228414%_
                             _%tl228067228416%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl228061228400%_))
                          (let ((_%e228068228419%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl228061228400%_))))
                            (let ((_%tl228070228424%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e228068228419%_)))
                                  (_%hd228069228422%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e228068228419%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl228070228424%_))
                                  (_%__match232703232704%_
                                   _%e228038228339%_
                                   _%hd228039228342%_
                                   _%tl228040228344%_
                                   _%e228041228347%_
                                   _%hd228042228350%_
                                   _%tl228043228352%_
                                   _%e228044228355%_
                                   _%hd228045228358%_
                                   _%tl228046228360%_
                                   _%e228047228363%_
                                   _%hd228048228366%_
                                   _%tl228049228368%_
                                   _%e228050228371%_
                                   _%hd228051228374%_
                                   _%tl228052228376%_
                                   _%e228053228379%_
                                   _%hd228054228382%_
                                   _%tl228055228384%_
                                   _%e228056228387%_
                                   _%hd228057228390%_
                                   _%tl228058228392%_
                                   _%e228059228395%_
                                   _%hd228060228398%_
                                   _%tl228061228400%_
                                   _%e228062228403%_
                                   _%hd228063228406%_
                                   _%tl228064228408%_
                                   _%e228065228411%_
                                   _%hd228066228414%_
                                   _%tl228067228416%_
                                   _%e228068228419%_
                                   _%hd228069228422%_
                                   _%tl228070228424%_)
                                  (_%__kont232340232341%_))))
                          (_%__match232819232820%_
                           _%e228038228339%_
                           _%hd228039228342%_
                           _%tl228040228344%_
                           _%e228041228347%_
                           _%hd228042228350%_
                           _%tl228043228352%_
                           _%e228044228355%_
                           _%hd228045228358%_
                           _%tl228046228360%_
                           _%e228047228363%_
                           _%hd228048228366%_
                           _%tl228049228368%_
                           _%e228050228371%_
                           _%hd228051228374%_
                           _%tl228052228376%_
                           _%e228053228379%_
                           _%hd228054228382%_
                           _%tl228055228384%_
                           _%e228056228387%_
                           _%hd228057228390%_
                           _%tl228058228392%_
                           _%e228059228395%_
                           _%hd228060228398%_
                           _%tl228061228400%_))))
                   (_%__match232617232618%_
                    (lambda (_%e228004228470%_
                             _%hd228005228473%_
                             _%tl228006228475%_
                             _%e228007228478%_
                             _%hd228008228481%_
                             _%tl228009228483%_
                             _%e228010228486%_
                             _%hd228011228489%_
                             _%tl228012228491%_
                             _%e228013228494%_
                             _%hd228014228497%_
                             _%tl228015228499%_
                             _%e228016228502%_
                             _%hd228017228505%_
                             _%tl228018228507%_
                             _%e228019228510%_
                             _%hd228020228513%_
                             _%tl228021228515%_
                             _%e228022228518%_
                             _%hd228023228521%_
                             _%tl228024228523%_
                             _%e228025228526%_
                             _%hd228026228529%_
                             _%tl228027228531%_
                             _%e228028228534%_
                             _%hd228029228537%_
                             _%tl228030228539%_
                             _%e228031228542%_
                             _%hd228032228545%_
                             _%tl228033228547%_)
                      (let ((_%g228001228550%_ _%hd228032228545%_)
                            (_%g228002228551%_ _%hd228023228521%_)
                            (_%g228003228552%_ _%hd228014228497%_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%g228003228552%_
                                        'slot-ref))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%g228003228552%_
                                        'unchecked-slot-ref)))
                                 (let ((__tmp233483
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self227894%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%g228002228551%_
                                    __tmp233483)))
                            (_%__kont232332232333%_
                             _%g228001228550%_
                             _%g228002228551%_
                             _%g228003228552%_)
                            (_%__match232821232822%_
                             _%e228004228470%_
                             _%hd228005228473%_
                             _%tl228006228475%_
                             _%e228007228478%_
                             _%hd228008228481%_
                             _%tl228009228483%_
                             _%e228010228486%_
                             _%hd228011228489%_
                             _%tl228012228491%_
                             _%e228013228494%_
                             _%hd228014228497%_
                             _%tl228015228499%_
                             _%e228016228502%_
                             _%hd228017228505%_
                             _%tl228018228507%_
                             _%e228019228510%_
                             _%hd228020228513%_
                             _%tl228021228515%_
                             _%e228022228518%_
                             _%hd228023228521%_
                             _%tl228024228523%_
                             _%e228025228526%_
                             _%hd228026228529%_
                             _%tl228027228531%_)))))
                   (_%__match232615232616%_
                    (lambda (_%e228004228470%_
                             _%hd228005228473%_
                             _%tl228006228475%_
                             _%e228007228478%_
                             _%hd228008228481%_
                             _%tl228009228483%_
                             _%e228010228486%_
                             _%hd228011228489%_
                             _%tl228012228491%_
                             _%e228013228494%_
                             _%hd228014228497%_
                             _%tl228015228499%_
                             _%e228016228502%_
                             _%hd228017228505%_
                             _%tl228018228507%_
                             _%e228019228510%_
                             _%hd228020228513%_
                             _%tl228021228515%_
                             _%e228022228518%_
                             _%hd228023228521%_
                             _%tl228024228523%_
                             _%e228025228526%_
                             _%hd228026228529%_
                             _%tl228027228531%_
                             _%e228028228534%_
                             _%hd228029228537%_
                             _%tl228030228539%_
                             _%e228031228542%_
                             _%hd228032228545%_
                             _%tl228033228547%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl228027228531%_))
                          (_%__match232617232618%_
                           _%e228004228470%_
                           _%hd228005228473%_
                           _%tl228006228475%_
                           _%e228007228478%_
                           _%hd228008228481%_
                           _%tl228009228483%_
                           _%e228010228486%_
                           _%hd228011228489%_
                           _%tl228012228491%_
                           _%e228013228494%_
                           _%hd228014228497%_
                           _%tl228015228499%_
                           _%e228016228502%_
                           _%hd228017228505%_
                           _%tl228018228507%_
                           _%e228019228510%_
                           _%hd228020228513%_
                           _%tl228021228515%_
                           _%e228022228518%_
                           _%hd228023228521%_
                           _%tl228024228523%_
                           _%e228025228526%_
                           _%hd228026228529%_
                           _%tl228027228531%_
                           _%e228028228534%_
                           _%hd228029228537%_
                           _%tl228030228539%_
                           _%e228031228542%_
                           _%hd228032228545%_
                           _%tl228033228547%_)
                          (_%__match232695232696%_
                           _%e228004228470%_
                           _%hd228005228473%_
                           _%tl228006228475%_
                           _%e228007228478%_
                           _%hd228008228481%_
                           _%tl228009228483%_
                           _%e228010228486%_
                           _%hd228011228489%_
                           _%tl228012228491%_
                           _%e228013228494%_
                           _%hd228014228497%_
                           _%tl228015228499%_
                           _%e228016228502%_
                           _%hd228017228505%_
                           _%tl228018228507%_
                           _%e228019228510%_
                           _%hd228020228513%_
                           _%tl228021228515%_
                           _%e228022228518%_
                           _%hd228023228521%_
                           _%tl228024228523%_
                           _%e228025228526%_
                           _%hd228026228529%_
                           _%tl228027228531%_
                           _%e228028228534%_
                           _%hd228029228537%_
                           _%tl228030228539%_
                           _%e228031228542%_
                           _%hd228032228545%_
                           _%tl228033228547%_))))
                   (_%__match232605232606%_
                    (lambda (_%e228004228470%_
                             _%hd228005228473%_
                             _%tl228006228475%_
                             _%e228007228478%_
                             _%hd228008228481%_
                             _%tl228009228483%_
                             _%e228010228486%_
                             _%hd228011228489%_
                             _%tl228012228491%_
                             _%e228013228494%_
                             _%hd228014228497%_
                             _%tl228015228499%_
                             _%e228016228502%_
                             _%hd228017228505%_
                             _%tl228018228507%_
                             _%e228019228510%_
                             _%hd228020228513%_
                             _%tl228021228515%_
                             _%e228022228518%_
                             _%hd228023228521%_
                             _%tl228024228523%_
                             _%e228025228526%_
                             _%hd228026228529%_
                             _%tl228027228531%_
                             _%e228028228534%_
                             _%hd228029228537%_
                             _%tl228030228539%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#quote _%hd228029228537%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl228030228539%_))
                              (let ((_%e228031228542%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl228030228539%_))))
                                (let ((_%tl228033228547%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e228031228542%_)))
                                      (_%hd228032228545%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e228031228542%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl228033228547%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl228027228531%_))
                                          (_%__match232617232618%_
                                           _%e228004228470%_
                                           _%hd228005228473%_
                                           _%tl228006228475%_
                                           _%e228007228478%_
                                           _%hd228008228481%_
                                           _%tl228009228483%_
                                           _%e228010228486%_
                                           _%hd228011228489%_
                                           _%tl228012228491%_
                                           _%e228013228494%_
                                           _%hd228014228497%_
                                           _%tl228015228499%_
                                           _%e228016228502%_
                                           _%hd228017228505%_
                                           _%tl228018228507%_
                                           _%e228019228510%_
                                           _%hd228020228513%_
                                           _%tl228021228515%_
                                           _%e228022228518%_
                                           _%hd228023228521%_
                                           _%tl228024228523%_
                                           _%e228025228526%_
                                           _%hd228026228529%_
                                           _%tl228027228531%_
                                           _%e228028228534%_
                                           _%hd228029228537%_
                                           _%tl228030228539%_
                                           _%e228031228542%_
                                           _%hd228032228545%_
                                           _%tl228033228547%_)
                                          (_%__match232695232696%_
                                           _%e228004228470%_
                                           _%hd228005228473%_
                                           _%tl228006228475%_
                                           _%e228007228478%_
                                           _%hd228008228481%_
                                           _%tl228009228483%_
                                           _%e228010228486%_
                                           _%hd228011228489%_
                                           _%tl228012228491%_
                                           _%e228013228494%_
                                           _%hd228014228497%_
                                           _%tl228015228499%_
                                           _%e228016228502%_
                                           _%hd228017228505%_
                                           _%tl228018228507%_
                                           _%e228019228510%_
                                           _%hd228020228513%_
                                           _%tl228021228515%_
                                           _%e228022228518%_
                                           _%hd228023228521%_
                                           _%tl228024228523%_
                                           _%e228025228526%_
                                           _%hd228026228529%_
                                           _%tl228027228531%_
                                           _%e228028228534%_
                                           _%hd228029228537%_
                                           _%tl228030228539%_
                                           _%e228031228542%_
                                           _%hd228032228545%_
                                           _%tl228033228547%_))
                                      (_%__match232819232820%_
                                       _%e228004228470%_
                                       _%hd228005228473%_
                                       _%tl228006228475%_
                                       _%e228007228478%_
                                       _%hd228008228481%_
                                       _%tl228009228483%_
                                       _%e228010228486%_
                                       _%hd228011228489%_
                                       _%tl228012228491%_
                                       _%e228013228494%_
                                       _%hd228014228497%_
                                       _%tl228015228499%_
                                       _%e228016228502%_
                                       _%hd228017228505%_
                                       _%tl228018228507%_
                                       _%e228019228510%_
                                       _%hd228020228513%_
                                       _%tl228021228515%_
                                       _%e228022228518%_
                                       _%hd228023228521%_
                                       _%tl228024228523%_
                                       _%e228025228526%_
                                       _%hd228026228529%_
                                       _%tl228027228531%_))))
                              (_%__match232819232820%_
                               _%e228004228470%_
                               _%hd228005228473%_
                               _%tl228006228475%_
                               _%e228007228478%_
                               _%hd228008228481%_
                               _%tl228009228483%_
                               _%e228010228486%_
                               _%hd228011228489%_
                               _%tl228012228491%_
                               _%e228013228494%_
                               _%hd228014228497%_
                               _%tl228015228499%_
                               _%e228016228502%_
                               _%hd228017228505%_
                               _%tl228018228507%_
                               _%e228019228510%_
                               _%hd228020228513%_
                               _%tl228021228515%_
                               _%e228022228518%_
                               _%hd228023228521%_
                               _%tl228024228523%_
                               _%e228025228526%_
                               _%hd228026228529%_
                               _%tl228027228531%_))
                          (_%__match232819232820%_
                           _%e228004228470%_
                           _%hd228005228473%_
                           _%tl228006228475%_
                           _%e228007228478%_
                           _%hd228008228481%_
                           _%tl228009228483%_
                           _%e228010228486%_
                           _%hd228011228489%_
                           _%tl228012228491%_
                           _%e228013228494%_
                           _%hd228014228497%_
                           _%tl228015228499%_
                           _%e228016228502%_
                           _%hd228017228505%_
                           _%tl228018228507%_
                           _%e228019228510%_
                           _%hd228020228513%_
                           _%tl228021228515%_
                           _%e228022228518%_
                           _%hd228023228521%_
                           _%tl228024228523%_
                           _%e228025228526%_
                           _%hd228026228529%_
                           _%tl228027228531%_))))
                   (_%__match232537232538%_
                    (lambda (_%e227953228589%_
                             _%hd227954228592%_
                             _%tl227955228594%_
                             _%e227956228597%_
                             _%hd227957228600%_
                             _%tl227958228602%_
                             _%e227959228605%_
                             _%hd227960228608%_
                             _%tl227961228610%_
                             _%e227962228613%_
                             _%hd227963228616%_
                             _%tl227964228618%_
                             _%e227965228621%_
                             _%hd227966228624%_
                             _%tl227967228626%_
                             _%e227968228629%_
                             _%hd227969228632%_
                             _%tl227970228634%_
                             _%e227971228637%_
                             _%hd227972228640%_
                             _%tl227973228642%_
                             _%e227974228645%_
                             _%hd227975228648%_
                             _%tl227976228650%_
                             _%e227977228653%_
                             _%hd227978228656%_
                             _%tl227979228658%_
                             _%e227980228661%_
                             _%hd227981228664%_
                             _%tl227982228666%_
                             _%e227983228669%_
                             _%hd227984228672%_
                             _%tl227985228674%_
                             _%e227986228677%_
                             _%hd227987228680%_
                             _%tl227988228682%_
                             _%e227989228685%_
                             _%hd227990228688%_
                             _%tl227991228690%_
                             _%__splice232330232331%_
                             _%target227992228693%_
                             _%tl227994228695%_)
                      (letrec ((_%loop227995228698%_
                                (lambda (_%hd227993228701%_
                                         _%args227999228703%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd227993228701%_))
                                      (let ((_%e227996228705%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd227993228701%_))))
                                        (let ((_%lp-tl227998228710%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e227996228705%_)))
                                              (_%lp-hd227997228708%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e227996228705%_))))
                                          (_%loop227995228698%_
                                           _%lp-tl227998228710%_
                                           (cons _%lp-hd227997228708%_
                                                 _%args227999228703%_))))
                                      (let ((_%args228000228713%_
                                             (reverse _%args227999228703%_)))
                                        (let ((_%g227948228715%_
                                               _%args228000228713%_)
                                              (_%g227949228716%_
                                               _%hd227990228688%_)
                                              (_%g227950228717%_
                                               _%hd227981228664%_)
                                              (_%g227951228718%_
                                               _%hd227972228640%_)
                                              (_%g227952228719%_
                                               _%hd227963228616%_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%g227952228719%_
                                                      'apply))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%g227951228718%_
                                                      'call-method))
                                                   (let ((__tmp233484
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self227894%_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%g227950228717%_
                                                      __tmp233484)))
                                              (_%__kont232328232329%_
                                               _%g227948228715%_
                                               _%g227949228716%_
                                               _%g227950228717%_
                                               _%g227951228718%_
                                               _%g227952228719%_)
                                              (_%__kont232340232341%_))))))))
                        (_%loop227995228698%_ _%target227992228693%_ '()))))
                   (_%__match232495232496%_
                    (lambda (_%e227953228589%_
                             _%hd227954228592%_
                             _%tl227955228594%_
                             _%e227956228597%_
                             _%hd227957228600%_
                             _%tl227958228602%_
                             _%e227959228605%_
                             _%hd227960228608%_
                             _%tl227961228610%_
                             _%e227962228613%_
                             _%hd227963228616%_
                             _%tl227964228618%_
                             _%e227965228621%_
                             _%hd227966228624%_
                             _%tl227967228626%_
                             _%e227968228629%_
                             _%hd227969228632%_
                             _%tl227970228634%_
                             _%e227971228637%_
                             _%hd227972228640%_
                             _%tl227973228642%_
                             _%e227974228645%_
                             _%hd227975228648%_
                             _%tl227976228650%_
                             _%e227977228653%_
                             _%hd227978228656%_
                             _%tl227979228658%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _%hd227978228656%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl227979228658%_))
                              (let ((_%e227980228661%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl227979228658%_))))
                                (let ((_%tl227982228666%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e227980228661%_)))
                                      (_%hd227981228664%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e227980228661%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl227982228666%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl227976228650%_))
                                          (let ((_%e227983228669%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl227976228650%_))))
                                            (let ((_%tl227985228674%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e227983228669%_)))
                                                  (_%hd227984228672%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e227983228669%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd227984228672%_))
                                                  (let ((_%e227986228677%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd227984228672%_))))
                                                    (let ((_%tl227988228682%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e227986228677%_)))
                                                          (_%hd227987228680%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e227986228677%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd227987228680%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#quote _%hd227987228680%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl227988228682%_))
                          (let ((_%e227989228685%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl227988228682%_))))
                            (let ((_%tl227991228690%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e227989228685%_)))
                                  (_%hd227990228688%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e227989228685%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl227991228690%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl227985228674%_))
                                      (let ((_%__splice232330232331%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%tl227985228674%_
                                                '0))))
                                        (let ((_%tl227994228695%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice232330232331%_
                                                  '1)))
                                              (_%target227992228693%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice232330232331%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl227994228695%_))
                                              (_%__match232537232538%_
                                               _%e227953228589%_
                                               _%hd227954228592%_
                                               _%tl227955228594%_
                                               _%e227956228597%_
                                               _%hd227957228600%_
                                               _%tl227958228602%_
                                               _%e227959228605%_
                                               _%hd227960228608%_
                                               _%tl227961228610%_
                                               _%e227962228613%_
                                               _%hd227963228616%_
                                               _%tl227964228618%_
                                               _%e227965228621%_
                                               _%hd227966228624%_
                                               _%tl227967228626%_
                                               _%e227968228629%_
                                               _%hd227969228632%_
                                               _%tl227970228634%_
                                               _%e227971228637%_
                                               _%hd227972228640%_
                                               _%tl227973228642%_
                                               _%e227974228645%_
                                               _%hd227975228648%_
                                               _%tl227976228650%_
                                               _%e227977228653%_
                                               _%hd227978228656%_
                                               _%tl227979228658%_
                                               _%e227980228661%_
                                               _%hd227981228664%_
                                               _%tl227982228666%_
                                               _%e227983228669%_
                                               _%hd227984228672%_
                                               _%tl227985228674%_
                                               _%e227986228677%_
                                               _%hd227987228680%_
                                               _%tl227988228682%_
                                               _%e227989228685%_
                                               _%hd227990228688%_
                                               _%tl227991228690%_
                                               _%__splice232330232331%_
                                               _%target227992228693%_
                                               _%tl227994228695%_)
                                              (_%__kont232340232341%_))))
                                      (_%__kont232340232341%_))
                                  (_%__kont232340232341%_))))
                          (_%__kont232340232341%_))
                      (_%__kont232340232341%_))
                  (_%__kont232340232341%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont232340232341%_))))
                                          (_%__match232819232820%_
                                           _%e227953228589%_
                                           _%hd227954228592%_
                                           _%tl227955228594%_
                                           _%e227956228597%_
                                           _%hd227957228600%_
                                           _%tl227958228602%_
                                           _%e227959228605%_
                                           _%hd227960228608%_
                                           _%tl227961228610%_
                                           _%e227962228613%_
                                           _%hd227963228616%_
                                           _%tl227964228618%_
                                           _%e227965228621%_
                                           _%hd227966228624%_
                                           _%tl227967228626%_
                                           _%e227968228629%_
                                           _%hd227969228632%_
                                           _%tl227970228634%_
                                           _%e227971228637%_
                                           _%hd227972228640%_
                                           _%tl227973228642%_
                                           _%e227974228645%_
                                           _%hd227975228648%_
                                           _%tl227976228650%_))
                                      (_%__match232819232820%_
                                       _%e227953228589%_
                                       _%hd227954228592%_
                                       _%tl227955228594%_
                                       _%e227956228597%_
                                       _%hd227957228600%_
                                       _%tl227958228602%_
                                       _%e227959228605%_
                                       _%hd227960228608%_
                                       _%tl227961228610%_
                                       _%e227962228613%_
                                       _%hd227963228616%_
                                       _%tl227964228618%_
                                       _%e227965228621%_
                                       _%hd227966228624%_
                                       _%tl227967228626%_
                                       _%e227968228629%_
                                       _%hd227969228632%_
                                       _%tl227970228634%_
                                       _%e227971228637%_
                                       _%hd227972228640%_
                                       _%tl227973228642%_
                                       _%e227974228645%_
                                       _%hd227975228648%_
                                       _%tl227976228650%_))))
                              (_%__match232819232820%_
                               _%e227953228589%_
                               _%hd227954228592%_
                               _%tl227955228594%_
                               _%e227956228597%_
                               _%hd227957228600%_
                               _%tl227958228602%_
                               _%e227959228605%_
                               _%hd227960228608%_
                               _%tl227961228610%_
                               _%e227962228613%_
                               _%hd227963228616%_
                               _%tl227964228618%_
                               _%e227965228621%_
                               _%hd227966228624%_
                               _%tl227967228626%_
                               _%e227968228629%_
                               _%hd227969228632%_
                               _%tl227970228634%_
                               _%e227971228637%_
                               _%hd227972228640%_
                               _%tl227973228642%_
                               _%e227974228645%_
                               _%hd227975228648%_
                               _%tl227976228650%_))
                          (_%__match232605232606%_
                           _%e227953228589%_
                           _%hd227954228592%_
                           _%tl227955228594%_
                           _%e227956228597%_
                           _%hd227957228600%_
                           _%tl227958228602%_
                           _%e227959228605%_
                           _%hd227960228608%_
                           _%tl227961228610%_
                           _%e227962228613%_
                           _%hd227963228616%_
                           _%tl227964228618%_
                           _%e227965228621%_
                           _%hd227966228624%_
                           _%tl227967228626%_
                           _%e227968228629%_
                           _%hd227969228632%_
                           _%tl227970228634%_
                           _%e227971228637%_
                           _%hd227972228640%_
                           _%tl227973228642%_
                           _%e227974228645%_
                           _%hd227975228648%_
                           _%tl227976228650%_
                           _%e227977228653%_
                           _%hd227978228656%_
                           _%tl227979228658%_))))
                   (_%__match232427232428%_
                    (lambda (_%e227909228776%_
                             _%hd227910228779%_
                             _%tl227911228781%_
                             _%e227912228784%_
                             _%hd227913228787%_
                             _%tl227914228789%_
                             _%e227915228792%_
                             _%hd227916228795%_
                             _%tl227917228797%_
                             _%e227918228800%_
                             _%hd227919228803%_
                             _%tl227920228805%_
                             _%e227921228808%_
                             _%hd227922228811%_
                             _%tl227923228813%_
                             _%e227924228816%_
                             _%hd227925228819%_
                             _%tl227926228821%_
                             _%e227927228824%_
                             _%hd227928228827%_
                             _%tl227929228829%_
                             _%e227930228832%_
                             _%hd227931228835%_
                             _%tl227932228837%_
                             _%e227933228840%_
                             _%hd227934228843%_
                             _%tl227935228845%_
                             _%e227936228848%_
                             _%hd227937228851%_
                             _%tl227938228853%_
                             _%__splice232326232327%_
                             _%target227939228856%_
                             _%tl227941228858%_)
                      (letrec ((_%loop227942228861%_
                                (lambda (_%hd227940228864%_
                                         _%args227946228866%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd227940228864%_))
                                      (let ((_%e227943228868%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd227940228864%_))))
                                        (let ((_%lp-tl227945228873%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e227943228868%_)))
                                              (_%lp-hd227944228871%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e227943228868%_))))
                                          (_%loop227942228861%_
                                           _%lp-tl227945228873%_
                                           (cons _%lp-hd227944228871%_
                                                 _%args227946228866%_))))
                                      (let ((_%args227947228876%_
                                             (reverse _%args227946228866%_)))
                                        (let ((_%g227905228878%_
                                               _%args227947228876%_)
                                              (_%g227906228879%_
                                               _%hd227937228851%_)
                                              (_%g227907228880%_
                                               _%hd227928228827%_)
                                              (_%g227908228881%_
                                               _%hd227919228803%_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%g227908228881%_
                                                      'call-method))
                                                   (let ((__tmp233485
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self227894%_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%g227907228880%_
                                                      __tmp233485)))
                                              (_%__kont232324232325%_
                                               _%g227905228878%_
                                               _%g227906228879%_
                                               _%g227907228880%_
                                               _%g227908228881%_)
                                              (_%__match232615232616%_
                                               _%e227909228776%_
                                               _%hd227910228779%_
                                               _%tl227911228781%_
                                               _%e227912228784%_
                                               _%hd227913228787%_
                                               _%tl227914228789%_
                                               _%e227915228792%_
                                               _%hd227916228795%_
                                               _%tl227917228797%_
                                               _%e227918228800%_
                                               _%hd227919228803%_
                                               _%tl227920228805%_
                                               _%e227921228808%_
                                               _%hd227922228811%_
                                               _%tl227923228813%_
                                               _%e227924228816%_
                                               _%hd227925228819%_
                                               _%tl227926228821%_
                                               _%e227927228824%_
                                               _%hd227928228827%_
                                               _%tl227929228829%_
                                               _%e227930228832%_
                                               _%hd227931228835%_
                                               _%tl227932228837%_
                                               _%e227933228840%_
                                               _%hd227934228843%_
                                               _%tl227935228845%_
                                               _%e227936228848%_
                                               _%hd227937228851%_
                                               _%tl227938228853%_))))))))
                        (_%loop227942228861%_ _%target227939228856%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx232322232323%_))
                  (let ((_%e227909228776%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx232322232323%_))))
                    (let ((_%tl227911228781%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e227909228776%_)))
                          (_%hd227910228779%_
                           (let ()
                             (declare (not safe))
                             (##car _%e227909228776%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl227911228781%_))
                          (let ((_%e227912228784%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl227911228781%_))))
                            (let ((_%tl227914228789%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e227912228784%_)))
                                  (_%hd227913228787%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e227912228784%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd227913228787%_))
                                  (let ((_%e227915228792%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd227913228787%_))))
                                    (let ((_%tl227917228797%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e227915228792%_)))
                                          (_%hd227916228795%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e227915228792%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd227916228795%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd227916228795%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl227917228797%_))
                                                  (let ((_%e227918228800%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl227917228797%_))))
                                                    (let ((_%tl227920228805%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e227918228800%_)))
                                                          (_%hd227919228803%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e227918228800%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl227920228805%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl227914228789%_))
                      (let ((_%e227921228808%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl227914228789%_))))
                        (let ((_%tl227923228813%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e227921228808%_)))
                              (_%hd227922228811%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e227921228808%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd227922228811%_))
                              (let ((_%e227924228816%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd227922228811%_))))
                                (let ((_%tl227926228821%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e227924228816%_)))
                                      (_%hd227925228819%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e227924228816%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd227925228819%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd227925228819%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl227926228821%_))
                                              (let ((_%e227927228824%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl227926228821%_))))
                                                (let ((_%tl227929228829%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e227927228824%_)))
                                                      (_%hd227928228827%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e227927228824%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl227929228829%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl227923228813%_))
                                                          (let ((_%e227930228832%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl227923228813%_))))
                    (let ((_%tl227932228837%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e227930228832%_)))
                          (_%hd227931228835%_
                           (let ()
                             (declare (not safe))
                             (##car _%e227930228832%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd227931228835%_))
                          (let ((_%e227933228840%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd227931228835%_))))
                            (let ((_%tl227935228845%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e227933228840%_)))
                                  (_%hd227934228843%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e227933228840%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd227934228843%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%hd227934228843%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl227935228845%_))
                                          (let ((_%e227936228848%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl227935228845%_))))
                                            (let ((_%tl227938228853%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e227936228848%_)))
                                                  (_%hd227937228851%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e227936228848%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl227938228853%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl227932228837%_))
                                                      (let ((_%__splice232326232327%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%tl227932228837%_
                        '0))))
                (let ((_%tl227941228858%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice232326232327%_ '1)))
                      (_%target227939228856%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice232326232327%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl227941228858%_))
                      (_%__match232427232428%_
                       _%e227909228776%_
                       _%hd227910228779%_
                       _%tl227911228781%_
                       _%e227912228784%_
                       _%hd227913228787%_
                       _%tl227914228789%_
                       _%e227915228792%_
                       _%hd227916228795%_
                       _%tl227917228797%_
                       _%e227918228800%_
                       _%hd227919228803%_
                       _%tl227920228805%_
                       _%e227921228808%_
                       _%hd227922228811%_
                       _%tl227923228813%_
                       _%e227924228816%_
                       _%hd227925228819%_
                       _%tl227926228821%_
                       _%e227927228824%_
                       _%hd227928228827%_
                       _%tl227929228829%_
                       _%e227930228832%_
                       _%hd227931228835%_
                       _%tl227932228837%_
                       _%e227933228840%_
                       _%hd227934228843%_
                       _%tl227935228845%_
                       _%e227936228848%_
                       _%hd227937228851%_
                       _%tl227938228853%_
                       _%__splice232326232327%_
                       _%target227939228856%_
                       _%tl227941228858%_)
                      (_%__match232615232616%_
                       _%e227909228776%_
                       _%hd227910228779%_
                       _%tl227911228781%_
                       _%e227912228784%_
                       _%hd227913228787%_
                       _%tl227914228789%_
                       _%e227915228792%_
                       _%hd227916228795%_
                       _%tl227917228797%_
                       _%e227918228800%_
                       _%hd227919228803%_
                       _%tl227920228805%_
                       _%e227921228808%_
                       _%hd227922228811%_
                       _%tl227923228813%_
                       _%e227924228816%_
                       _%hd227925228819%_
                       _%tl227926228821%_
                       _%e227927228824%_
                       _%hd227928228827%_
                       _%tl227929228829%_
                       _%e227930228832%_
                       _%hd227931228835%_
                       _%tl227932228837%_
                       _%e227933228840%_
                       _%hd227934228843%_
                       _%tl227935228845%_
                       _%e227936228848%_
                       _%hd227937228851%_
                       _%tl227938228853%_))))
              (_%__match232615232616%_
               _%e227909228776%_
               _%hd227910228779%_
               _%tl227911228781%_
               _%e227912228784%_
               _%hd227913228787%_
               _%tl227914228789%_
               _%e227915228792%_
               _%hd227916228795%_
               _%tl227917228797%_
               _%e227918228800%_
               _%hd227919228803%_
               _%tl227920228805%_
               _%e227921228808%_
               _%hd227922228811%_
               _%tl227923228813%_
               _%e227924228816%_
               _%hd227925228819%_
               _%tl227926228821%_
               _%e227927228824%_
               _%hd227928228827%_
               _%tl227929228829%_
               _%e227930228832%_
               _%hd227931228835%_
               _%tl227932228837%_
               _%e227933228840%_
               _%hd227934228843%_
               _%tl227935228845%_
               _%e227936228848%_
               _%hd227937228851%_
               _%tl227938228853%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__match232819232820%_
                                                   _%e227909228776%_
                                                   _%hd227910228779%_
                                                   _%tl227911228781%_
                                                   _%e227912228784%_
                                                   _%hd227913228787%_
                                                   _%tl227914228789%_
                                                   _%e227915228792%_
                                                   _%hd227916228795%_
                                                   _%tl227917228797%_
                                                   _%e227918228800%_
                                                   _%hd227919228803%_
                                                   _%tl227920228805%_
                                                   _%e227921228808%_
                                                   _%hd227922228811%_
                                                   _%tl227923228813%_
                                                   _%e227924228816%_
                                                   _%hd227925228819%_
                                                   _%tl227926228821%_
                                                   _%e227927228824%_
                                                   _%hd227928228827%_
                                                   _%tl227929228829%_
                                                   _%e227930228832%_
                                                   _%hd227931228835%_
                                                   _%tl227932228837%_))))
                                          (_%__match232819232820%_
                                           _%e227909228776%_
                                           _%hd227910228779%_
                                           _%tl227911228781%_
                                           _%e227912228784%_
                                           _%hd227913228787%_
                                           _%tl227914228789%_
                                           _%e227915228792%_
                                           _%hd227916228795%_
                                           _%tl227917228797%_
                                           _%e227918228800%_
                                           _%hd227919228803%_
                                           _%tl227920228805%_
                                           _%e227921228808%_
                                           _%hd227922228811%_
                                           _%tl227923228813%_
                                           _%e227924228816%_
                                           _%hd227925228819%_
                                           _%tl227926228821%_
                                           _%e227927228824%_
                                           _%hd227928228827%_
                                           _%tl227929228829%_
                                           _%e227930228832%_
                                           _%hd227931228835%_
                                           _%tl227932228837%_))
                                      (_%__match232495232496%_
                                       _%e227909228776%_
                                       _%hd227910228779%_
                                       _%tl227911228781%_
                                       _%e227912228784%_
                                       _%hd227913228787%_
                                       _%tl227914228789%_
                                       _%e227915228792%_
                                       _%hd227916228795%_
                                       _%tl227917228797%_
                                       _%e227918228800%_
                                       _%hd227919228803%_
                                       _%tl227920228805%_
                                       _%e227921228808%_
                                       _%hd227922228811%_
                                       _%tl227923228813%_
                                       _%e227924228816%_
                                       _%hd227925228819%_
                                       _%tl227926228821%_
                                       _%e227927228824%_
                                       _%hd227928228827%_
                                       _%tl227929228829%_
                                       _%e227930228832%_
                                       _%hd227931228835%_
                                       _%tl227932228837%_
                                       _%e227933228840%_
                                       _%hd227934228843%_
                                       _%tl227935228845%_))
                                  (_%__match232819232820%_
                                   _%e227909228776%_
                                   _%hd227910228779%_
                                   _%tl227911228781%_
                                   _%e227912228784%_
                                   _%hd227913228787%_
                                   _%tl227914228789%_
                                   _%e227915228792%_
                                   _%hd227916228795%_
                                   _%tl227917228797%_
                                   _%e227918228800%_
                                   _%hd227919228803%_
                                   _%tl227920228805%_
                                   _%e227921228808%_
                                   _%hd227922228811%_
                                   _%tl227923228813%_
                                   _%e227924228816%_
                                   _%hd227925228819%_
                                   _%tl227926228821%_
                                   _%e227927228824%_
                                   _%hd227928228827%_
                                   _%tl227929228829%_
                                   _%e227930228832%_
                                   _%hd227931228835%_
                                   _%tl227932228837%_))))
                          (_%__match232819232820%_
                           _%e227909228776%_
                           _%hd227910228779%_
                           _%tl227911228781%_
                           _%e227912228784%_
                           _%hd227913228787%_
                           _%tl227914228789%_
                           _%e227915228792%_
                           _%hd227916228795%_
                           _%tl227917228797%_
                           _%e227918228800%_
                           _%hd227919228803%_
                           _%tl227920228805%_
                           _%e227921228808%_
                           _%hd227922228811%_
                           _%tl227923228813%_
                           _%e227924228816%_
                           _%hd227925228819%_
                           _%tl227926228821%_
                           _%e227927228824%_
                           _%hd227928228827%_
                           _%tl227929228829%_
                           _%e227930228832%_
                           _%hd227931228835%_
                           _%tl227932228837%_))))
                  (_%__match232757232758%_
                   _%e227909228776%_
                   _%hd227910228779%_
                   _%tl227911228781%_
                   _%e227912228784%_
                   _%hd227913228787%_
                   _%tl227914228789%_
                   _%e227915228792%_
                   _%hd227916228795%_
                   _%tl227917228797%_
                   _%e227918228800%_
                   _%hd227919228803%_
                   _%tl227920228805%_
                   _%e227921228808%_
                   _%hd227922228811%_
                   _%tl227923228813%_
                   _%e227924228816%_
                   _%hd227925228819%_
                   _%tl227926228821%_
                   _%e227927228824%_
                   _%hd227928228827%_
                   _%tl227929228829%_))
              (_%__kont232340232341%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont232340232341%_))
                                          (_%__kont232340232341%_))
                                      (_%__kont232340232341%_))))
                              (_%__kont232340232341%_))))
                      (_%__kont232340232341%_))
                  (_%__kont232340232341%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont232340232341%_))
                                              (_%__kont232340232341%_))
                                          (_%__kont232340232341%_))))
                                  (_%__kont232340232341%_))))
                          (_%__kont232340232341%_))))
                  (_%__kont232340232341%_)))))))
    (define gxc#subst-object-refs-call%
      (lambda (_%self226837%_ _%stx226838%_)
        (letrec ((_%force-e226840%_
                  (lambda (_%target227892%_)
                    (cons '%#call
                          (cons (cons '%#ref (cons 'force '()))
                                (cons (cons '%#ref (cons _%target227892%_ '()))
                                      '()))))))
          (let* ((_%__stx232824232825%_ _%stx226838%_)
                 (_%g226848227070%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx232824232825%_)))))
            (let ((_%__kont232826232827%_
                   (lambda (_%g226850227838%_
                            _%g226851227839%_
                            _%g226852227840%_
                            _%g226853227841%_)
                     (let ((_%$method227886%_
                            (let ((__tmp233487
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self226837%_ 'methods)))
                                  (__tmp233486
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g226851227839%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp233487 __tmp233486)))
                           (_%args227887%_
                            (map (lambda (_%g227874227876%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self226837%_
                                      _%g227874227876%_)))
                                 (let ((__tmp233488
                                        (lambda (_%g227878227881%_
                                                 _%g227879227883%_)
                                          (cons _%g227878227881%_
                                                _%g227879227883%_))))
                                   (declare (not safe))
                                   (foldr__0
                                    __tmp233488
                                    '()
                                    _%g226850227838%_)))))
                       (let ((__tmp233489
                              (cons '%#call
                                    (cons (_%force-e226840%_ _%$method227886%_)
                                          (cons (cons '%#ref
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self226837%_
                                                               'receiver))
                                                            '()))
                                                _%args227887%_)))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp233489 _%stx226838%_)))))
                  (_%__kont232830232831%_
                   (lambda (_%g226893227672%_
                            _%g226894227673%_
                            _%g226895227674%_
                            _%g226896227675%_
                            _%g226897227676%_)
                     (let ((_%$method227728%_
                            (let ((__tmp233491
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self226837%_ 'methods)))
                                  (__tmp233490
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g226894227673%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp233491 __tmp233490)))
                           (_%args227729%_
                            (map (lambda (_%g227716227718%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self226837%_
                                      _%g227716227718%_)))
                                 (let ((__tmp233492
                                        (lambda (_%g227720227723%_
                                                 _%g227721227725%_)
                                          (cons _%g227720227723%_
                                                _%g227721227725%_))))
                                   (declare (not safe))
                                   (foldr__0
                                    __tmp233492
                                    '()
                                    _%g226893227672%_)))))
                       (let ((__tmp233493
                              (cons '%#call
                                    (cons (cons '%#ref (cons 'apply '()))
                                          (cons (_%force-e226840%_
                                                 _%$method227728%_)
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (slot-ref__0 _%self226837%_ 'receiver))
                          '()))
              _%args227729%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp233493 _%stx226838%_)))))
                  (_%__kont232834232835%_
                   (lambda (_%g226946227505%_
                            _%g226947227506%_
                            _%g226948227507%_)
                     (let* ((_%$field227539%_
                             (let ((__tmp233495
                                    (let ()
                                      (declare (not safe))
                                      (slot-ref__0 _%self226837%_ 'slots)))
                                   (__tmp233494
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%g226946227505%_))))
                               (declare (not safe))
                               (hash-ref__0 __tmp233495 __tmp233494)))
                            (__tmp233496
                             (cons '%#struct-unchecked-ref
                                   (cons (cons '%#ref
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (slot-ref__0
                                                        _%self226837%_
                                                        'klass))
                                                     '()))
                                         (cons (cons '%#ref
                                                     (cons _%$field227539%_
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (slot-ref__0 _%self226837%_ 'receiver))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp233496 _%stx226838%_))))
                  (_%__kont232836232837%_
                   (lambda (_%g226979227379%_
                            _%g226980227380%_
                            _%g226981227381%_
                            _%g226982227382%_)
                     (let ((_%$field227417%_
                            (let ((__tmp233498
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self226837%_ 'slots)))
                                  (__tmp233497
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g226980227380%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp233498 __tmp233497)))
                           (_%expr227418%_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-e__1
                               _%self226837%_
                               _%g226979227379%_))))
                       (let ((__tmp233499
                              (cons '%#struct-unchecked-set!
                                    (cons (cons '%#ref
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (slot-ref__0
                                                         _%self226837%_
                                                         'klass))
                                                      '()))
                                          (cons (cons '%#ref
                                                      (cons _%$field227417%_
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (slot-ref__0 _%self226837%_ 'receiver))
                          '()))
              (cons _%expr227418%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp233499 _%stx226838%_)))))
                  (_%__kont232838232839%_
                   (lambda (_%g227016227251%_ _%g227017227252%_)
                     (let* ((_%accessor227274%_
                             (let ((__tmp233500
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol
                                       _%g227017227252%_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp233500)))
                            (_%klass227276%_
                             (let ((__tmp233501
                                    (##structure-ref
                                     _%accessor227274%_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _%stx226838%_
                                __tmp233501)))
                            (_%slot227278%_
                             (##structure-ref
                              _%accessor227274%_
                              '3
                              gxc#!accessor::t
                              '#f)))
                       (if (if (##structure-ref
                                _%accessor227274%_
                                '4
                                gxc#!accessor::t
                                '#f)
                               '#f
                               (or (let ()
                                     (declare (not safe))
                                     (gxc#!class-struct-slot?
                                      _%klass227276%_
                                      _%slot227278%_))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass227276%_
                                      '8
                                      '#f
                                      '#f))))
                           _%stx226838%_
                           (let* ((_%$field227284%_
                                   (let ((__tmp233502
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self226837%_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp233502 _%slot227278%_)))
                                  (__tmp233503
                                   (cons '%#struct-unchecked-ref
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (slot-ref__0
                                                              _%self226837%_
                                                              'klass))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$field227284%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _%self226837%_ 'receiver))
                               '()))
                   '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp233503
                              _%stx226838%_))))))
                  (_%__kont232840232841%_
                   (lambda (_%g227039227146%_
                            _%g227040227147%_
                            _%g227041227148%_)
                     (let* ((_%mutator227176%_
                             (let ((__tmp233504
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol
                                       _%g227041227148%_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp233504)))
                            (_%klass227178%_
                             (let ((__tmp233505
                                    (##structure-ref
                                     _%mutator227176%_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _%stx226838%_
                                __tmp233505)))
                            (_%slot227180%_
                             (##structure-ref
                              _%mutator227176%_
                              '3
                              gxc#!mutator::t
                              '#f))
                            (_%expr227182%_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-e__1
                                _%self226837%_
                                _%g227039227146%_))))
                       (if (if (##structure-ref
                                _%mutator227176%_
                                '4
                                gxc#!mutator::t
                                '#f)
                               '#f
                               (or (let ()
                                     (declare (not safe))
                                     (gxc#!class-struct-slot?
                                      _%klass227178%_
                                      _%slot227180%_))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass227178%_
                                      '8
                                      '#f
                                      '#f))))
                           (let ((__tmp233506
                                  (cons '%#call
                                        (cons (cons (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       '%#ref))
                                                    (cons _%g227041227148%_
                                                          '()))
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#ref))
                                                          (cons _%g227040227147%_
                                                                '()))
                                                    (cons _%expr227182%_
                                                          '()))))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp233506 _%stx226838%_))
                           (let* ((_%$field227188%_
                                   (let ((__tmp233507
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self226837%_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp233507 _%slot227180%_)))
                                  (__tmp233508
                                   (cons '%#struct-unchecked-set!
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (slot-ref__0
                                                              _%self226837%_
                                                              'klass))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$field227188%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _%self226837%_ 'receiver))
                               '()))
                   (cons _%expr227182%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp233508
                              _%stx226838%_))))))
                  (_%__kont232842232843%_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-operands _%self226837%_ _%stx226838%_)))))
              (let* ((_%__match233323233324%_
                      (lambda (_%e227042227082%_
                               _%hd227043227085%_
                               _%tl227044227087%_
                               _%e227045227090%_
                               _%hd227046227093%_
                               _%tl227047227095%_
                               _%e227048227098%_
                               _%hd227049227101%_
                               _%tl227050227103%_
                               _%e227051227106%_
                               _%hd227052227109%_
                               _%tl227053227111%_
                               _%e227054227114%_
                               _%hd227055227117%_
                               _%tl227056227119%_
                               _%e227057227122%_
                               _%hd227058227125%_
                               _%tl227059227127%_
                               _%e227060227130%_
                               _%hd227061227133%_
                               _%tl227062227135%_
                               _%e227063227138%_
                               _%hd227064227141%_
                               _%tl227065227143%_)
                        (let ((_%g227039227146%_ _%hd227064227141%_)
                              (_%g227040227147%_ _%hd227061227133%_)
                              (_%g227041227148%_ _%hd227052227109%_))
                          (if (and (let ((__tmp233509
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self226837%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%g227040227147%_
                                      __tmp233509))
                                   (let ((__tmp233510
                                          (let ((__tmp233511
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%g227041227148%_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp233511))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp233510
                                      'gxc#!mutator::t)))
                              (_%__kont232840232841%_
                               _%g227039227146%_
                               _%g227040227147%_
                               _%g227041227148%_)
                              (_%__kont232842232843%_)))))
                     (_%__match233321233322%_
                      (lambda (_%e227042227082%_
                               _%hd227043227085%_
                               _%tl227044227087%_
                               _%e227045227090%_
                               _%hd227046227093%_
                               _%tl227047227095%_
                               _%e227048227098%_
                               _%hd227049227101%_
                               _%tl227050227103%_
                               _%e227051227106%_
                               _%hd227052227109%_
                               _%tl227053227111%_
                               _%e227054227114%_
                               _%hd227055227117%_
                               _%tl227056227119%_
                               _%e227057227122%_
                               _%hd227058227125%_
                               _%tl227059227127%_
                               _%e227060227130%_
                               _%hd227061227133%_
                               _%tl227062227135%_
                               _%e227063227138%_
                               _%hd227064227141%_
                               _%tl227065227143%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl227065227143%_))
                            (_%__match233323233324%_
                             _%e227042227082%_
                             _%hd227043227085%_
                             _%tl227044227087%_
                             _%e227045227090%_
                             _%hd227046227093%_
                             _%tl227047227095%_
                             _%e227048227098%_
                             _%hd227049227101%_
                             _%tl227050227103%_
                             _%e227051227106%_
                             _%hd227052227109%_
                             _%tl227053227111%_
                             _%e227054227114%_
                             _%hd227055227117%_
                             _%tl227056227119%_
                             _%e227057227122%_
                             _%hd227058227125%_
                             _%tl227059227127%_
                             _%e227060227130%_
                             _%hd227061227133%_
                             _%tl227062227135%_
                             _%e227063227138%_
                             _%hd227064227141%_
                             _%tl227065227143%_)
                            (_%__kont232842232843%_))))
                     (_%__match233315233316%_
                      (lambda (_%e227042227082%_
                               _%hd227043227085%_
                               _%tl227044227087%_
                               _%e227045227090%_
                               _%hd227046227093%_
                               _%tl227047227095%_
                               _%e227048227098%_
                               _%hd227049227101%_
                               _%tl227050227103%_
                               _%e227051227106%_
                               _%hd227052227109%_
                               _%tl227053227111%_
                               _%e227054227114%_
                               _%hd227055227117%_
                               _%tl227056227119%_
                               _%e227057227122%_
                               _%hd227058227125%_
                               _%tl227059227127%_
                               _%e227060227130%_
                               _%hd227061227133%_
                               _%tl227062227135%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl227056227119%_))
                            (let ((_%e227063227138%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl227056227119%_))))
                              (let ((_%tl227065227143%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e227063227138%_)))
                                    (_%hd227064227141%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e227063227138%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl227065227143%_))
                                    (_%__match233323233324%_
                                     _%e227042227082%_
                                     _%hd227043227085%_
                                     _%tl227044227087%_
                                     _%e227045227090%_
                                     _%hd227046227093%_
                                     _%tl227047227095%_
                                     _%e227048227098%_
                                     _%hd227049227101%_
                                     _%tl227050227103%_
                                     _%e227051227106%_
                                     _%hd227052227109%_
                                     _%tl227053227111%_
                                     _%e227054227114%_
                                     _%hd227055227117%_
                                     _%tl227056227119%_
                                     _%e227057227122%_
                                     _%hd227058227125%_
                                     _%tl227059227127%_
                                     _%e227060227130%_
                                     _%hd227061227133%_
                                     _%tl227062227135%_
                                     _%e227063227138%_
                                     _%hd227064227141%_
                                     _%tl227065227143%_)
                                    (_%__kont232842232843%_))))
                            (_%__kont232842232843%_))))
                     (_%__match233261233262%_
                      (lambda (_%e227018227195%_
                               _%hd227019227198%_
                               _%tl227020227200%_
                               _%e227021227203%_
                               _%hd227022227206%_
                               _%tl227023227208%_
                               _%e227024227211%_
                               _%hd227025227214%_
                               _%tl227026227216%_
                               _%e227027227219%_
                               _%hd227028227222%_
                               _%tl227029227224%_
                               _%e227030227227%_
                               _%hd227031227230%_
                               _%tl227032227232%_
                               _%e227033227235%_
                               _%hd227034227238%_
                               _%tl227035227240%_
                               _%e227036227243%_
                               _%hd227037227246%_
                               _%tl227038227248%_)
                        (let ((_%g227016227251%_ _%hd227037227246%_)
                              (_%g227017227252%_ _%hd227028227222%_))
                          (if (and (let ((__tmp233512
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self226837%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%g227016227251%_
                                      __tmp233512))
                                   (let ((__tmp233513
                                          (let ((__tmp233514
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%g227017227252%_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp233514))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp233513
                                      'gxc#!accessor::t)))
                              (_%__kont232838232839%_
                               _%g227016227251%_
                               _%g227017227252%_)
                              (_%__kont232842232843%_)))))
                     (_%__match233259233260%_
                      (lambda (_%e227018227195%_
                               _%hd227019227198%_
                               _%tl227020227200%_
                               _%e227021227203%_
                               _%hd227022227206%_
                               _%tl227023227208%_
                               _%e227024227211%_
                               _%hd227025227214%_
                               _%tl227026227216%_
                               _%e227027227219%_
                               _%hd227028227222%_
                               _%tl227029227224%_
                               _%e227030227227%_
                               _%hd227031227230%_
                               _%tl227032227232%_
                               _%e227033227235%_
                               _%hd227034227238%_
                               _%tl227035227240%_
                               _%e227036227243%_
                               _%hd227037227246%_
                               _%tl227038227248%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl227032227232%_))
                            (_%__match233261233262%_
                             _%e227018227195%_
                             _%hd227019227198%_
                             _%tl227020227200%_
                             _%e227021227203%_
                             _%hd227022227206%_
                             _%tl227023227208%_
                             _%e227024227211%_
                             _%hd227025227214%_
                             _%tl227026227216%_
                             _%e227027227219%_
                             _%hd227028227222%_
                             _%tl227029227224%_
                             _%e227030227227%_
                             _%hd227031227230%_
                             _%tl227032227232%_
                             _%e227033227235%_
                             _%hd227034227238%_
                             _%tl227035227240%_
                             _%e227036227243%_
                             _%hd227037227246%_
                             _%tl227038227248%_)
                            (_%__match233315233316%_
                             _%e227018227195%_
                             _%hd227019227198%_
                             _%tl227020227200%_
                             _%e227021227203%_
                             _%hd227022227206%_
                             _%tl227023227208%_
                             _%e227024227211%_
                             _%hd227025227214%_
                             _%tl227026227216%_
                             _%e227027227219%_
                             _%hd227028227222%_
                             _%tl227029227224%_
                             _%e227030227227%_
                             _%hd227031227230%_
                             _%tl227032227232%_
                             _%e227033227235%_
                             _%hd227034227238%_
                             _%tl227035227240%_
                             _%e227036227243%_
                             _%hd227037227246%_
                             _%tl227038227248%_))))
                     (_%__match233205233206%_
                      (lambda (_%e226983227291%_
                               _%hd226984227294%_
                               _%tl226985227296%_
                               _%e226986227299%_
                               _%hd226987227302%_
                               _%tl226988227304%_
                               _%e226989227307%_
                               _%hd226990227310%_
                               _%tl226991227312%_
                               _%e226992227315%_
                               _%hd226993227318%_
                               _%tl226994227320%_
                               _%e226995227323%_
                               _%hd226996227326%_
                               _%tl226997227328%_
                               _%e226998227331%_
                               _%hd226999227334%_
                               _%tl227000227336%_
                               _%e227001227339%_
                               _%hd227002227342%_
                               _%tl227003227344%_
                               _%e227004227347%_
                               _%hd227005227350%_
                               _%tl227006227352%_
                               _%e227007227355%_
                               _%hd227008227358%_
                               _%tl227009227360%_
                               _%e227010227363%_
                               _%hd227011227366%_
                               _%tl227012227368%_
                               _%e227013227371%_
                               _%hd227014227374%_
                               _%tl227015227376%_)
                        (let ((_%g226979227379%_ _%hd227014227374%_)
                              (_%g226980227380%_ _%hd227011227366%_)
                              (_%g226981227381%_ _%hd227002227342%_)
                              (_%g226982227382%_ _%hd226993227318%_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%g226982227382%_
                                          'slot-set!))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%g226982227382%_
                                          'unchecked-slot-set!)))
                                   (let ((__tmp233515
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self226837%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%g226981227381%_
                                      __tmp233515)))
                              (_%__kont232836232837%_
                               _%g226979227379%_
                               _%g226980227380%_
                               _%g226981227381%_
                               _%g226982227382%_)
                              (_%__kont232842232843%_)))))
                     (_%__match233197233198%_
                      (lambda (_%e226983227291%_
                               _%hd226984227294%_
                               _%tl226985227296%_
                               _%e226986227299%_
                               _%hd226987227302%_
                               _%tl226988227304%_
                               _%e226989227307%_
                               _%hd226990227310%_
                               _%tl226991227312%_
                               _%e226992227315%_
                               _%hd226993227318%_
                               _%tl226994227320%_
                               _%e226995227323%_
                               _%hd226996227326%_
                               _%tl226997227328%_
                               _%e226998227331%_
                               _%hd226999227334%_
                               _%tl227000227336%_
                               _%e227001227339%_
                               _%hd227002227342%_
                               _%tl227003227344%_
                               _%e227004227347%_
                               _%hd227005227350%_
                               _%tl227006227352%_
                               _%e227007227355%_
                               _%hd227008227358%_
                               _%tl227009227360%_
                               _%e227010227363%_
                               _%hd227011227366%_
                               _%tl227012227368%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl227006227352%_))
                            (let ((_%e227013227371%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl227006227352%_))))
                              (let ((_%tl227015227376%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e227013227371%_)))
                                    (_%hd227014227374%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e227013227371%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl227015227376%_))
                                    (_%__match233205233206%_
                                     _%e226983227291%_
                                     _%hd226984227294%_
                                     _%tl226985227296%_
                                     _%e226986227299%_
                                     _%hd226987227302%_
                                     _%tl226988227304%_
                                     _%e226989227307%_
                                     _%hd226990227310%_
                                     _%tl226991227312%_
                                     _%e226992227315%_
                                     _%hd226993227318%_
                                     _%tl226994227320%_
                                     _%e226995227323%_
                                     _%hd226996227326%_
                                     _%tl226997227328%_
                                     _%e226998227331%_
                                     _%hd226999227334%_
                                     _%tl227000227336%_
                                     _%e227001227339%_
                                     _%hd227002227342%_
                                     _%tl227003227344%_
                                     _%e227004227347%_
                                     _%hd227005227350%_
                                     _%tl227006227352%_
                                     _%e227007227355%_
                                     _%hd227008227358%_
                                     _%tl227009227360%_
                                     _%e227010227363%_
                                     _%hd227011227366%_
                                     _%tl227012227368%_
                                     _%e227013227371%_
                                     _%hd227014227374%_
                                     _%tl227015227376%_)
                                    (_%__kont232842232843%_))))
                            (_%__match233321233322%_
                             _%e226983227291%_
                             _%hd226984227294%_
                             _%tl226985227296%_
                             _%e226986227299%_
                             _%hd226987227302%_
                             _%tl226988227304%_
                             _%e226989227307%_
                             _%hd226990227310%_
                             _%tl226991227312%_
                             _%e226992227315%_
                             _%hd226993227318%_
                             _%tl226994227320%_
                             _%e226995227323%_
                             _%hd226996227326%_
                             _%tl226997227328%_
                             _%e226998227331%_
                             _%hd226999227334%_
                             _%tl227000227336%_
                             _%e227001227339%_
                             _%hd227002227342%_
                             _%tl227003227344%_
                             _%e227004227347%_
                             _%hd227005227350%_
                             _%tl227006227352%_))))
                     (_%__match233119233120%_
                      (lambda (_%e226949227425%_
                               _%hd226950227428%_
                               _%tl226951227430%_
                               _%e226952227433%_
                               _%hd226953227436%_
                               _%tl226954227438%_
                               _%e226955227441%_
                               _%hd226956227444%_
                               _%tl226957227446%_
                               _%e226958227449%_
                               _%hd226959227452%_
                               _%tl226960227454%_
                               _%e226961227457%_
                               _%hd226962227460%_
                               _%tl226963227462%_
                               _%e226964227465%_
                               _%hd226965227468%_
                               _%tl226966227470%_
                               _%e226967227473%_
                               _%hd226968227476%_
                               _%tl226969227478%_
                               _%e226970227481%_
                               _%hd226971227484%_
                               _%tl226972227486%_
                               _%e226973227489%_
                               _%hd226974227492%_
                               _%tl226975227494%_
                               _%e226976227497%_
                               _%hd226977227500%_
                               _%tl226978227502%_)
                        (let ((_%g226946227505%_ _%hd226977227500%_)
                              (_%g226947227506%_ _%hd226968227476%_)
                              (_%g226948227507%_ _%hd226959227452%_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%g226948227507%_
                                          'slot-ref))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%g226948227507%_
                                          'unchecked-slot-ref)))
                                   (let ((__tmp233516
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self226837%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%g226947227506%_
                                      __tmp233516)))
                              (_%__kont232834232835%_
                               _%g226946227505%_
                               _%g226947227506%_
                               _%g226948227507%_)
                              (_%__match233323233324%_
                               _%e226949227425%_
                               _%hd226950227428%_
                               _%tl226951227430%_
                               _%e226952227433%_
                               _%hd226953227436%_
                               _%tl226954227438%_
                               _%e226955227441%_
                               _%hd226956227444%_
                               _%tl226957227446%_
                               _%e226958227449%_
                               _%hd226959227452%_
                               _%tl226960227454%_
                               _%e226961227457%_
                               _%hd226962227460%_
                               _%tl226963227462%_
                               _%e226964227465%_
                               _%hd226965227468%_
                               _%tl226966227470%_
                               _%e226967227473%_
                               _%hd226968227476%_
                               _%tl226969227478%_
                               _%e226970227481%_
                               _%hd226971227484%_
                               _%tl226972227486%_)))))
                     (_%__match233117233118%_
                      (lambda (_%e226949227425%_
                               _%hd226950227428%_
                               _%tl226951227430%_
                               _%e226952227433%_
                               _%hd226953227436%_
                               _%tl226954227438%_
                               _%e226955227441%_
                               _%hd226956227444%_
                               _%tl226957227446%_
                               _%e226958227449%_
                               _%hd226959227452%_
                               _%tl226960227454%_
                               _%e226961227457%_
                               _%hd226962227460%_
                               _%tl226963227462%_
                               _%e226964227465%_
                               _%hd226965227468%_
                               _%tl226966227470%_
                               _%e226967227473%_
                               _%hd226968227476%_
                               _%tl226969227478%_
                               _%e226970227481%_
                               _%hd226971227484%_
                               _%tl226972227486%_
                               _%e226973227489%_
                               _%hd226974227492%_
                               _%tl226975227494%_
                               _%e226976227497%_
                               _%hd226977227500%_
                               _%tl226978227502%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl226972227486%_))
                            (_%__match233119233120%_
                             _%e226949227425%_
                             _%hd226950227428%_
                             _%tl226951227430%_
                             _%e226952227433%_
                             _%hd226953227436%_
                             _%tl226954227438%_
                             _%e226955227441%_
                             _%hd226956227444%_
                             _%tl226957227446%_
                             _%e226958227449%_
                             _%hd226959227452%_
                             _%tl226960227454%_
                             _%e226961227457%_
                             _%hd226962227460%_
                             _%tl226963227462%_
                             _%e226964227465%_
                             _%hd226965227468%_
                             _%tl226966227470%_
                             _%e226967227473%_
                             _%hd226968227476%_
                             _%tl226969227478%_
                             _%e226970227481%_
                             _%hd226971227484%_
                             _%tl226972227486%_
                             _%e226973227489%_
                             _%hd226974227492%_
                             _%tl226975227494%_
                             _%e226976227497%_
                             _%hd226977227500%_
                             _%tl226978227502%_)
                            (_%__match233197233198%_
                             _%e226949227425%_
                             _%hd226950227428%_
                             _%tl226951227430%_
                             _%e226952227433%_
                             _%hd226953227436%_
                             _%tl226954227438%_
                             _%e226955227441%_
                             _%hd226956227444%_
                             _%tl226957227446%_
                             _%e226958227449%_
                             _%hd226959227452%_
                             _%tl226960227454%_
                             _%e226961227457%_
                             _%hd226962227460%_
                             _%tl226963227462%_
                             _%e226964227465%_
                             _%hd226965227468%_
                             _%tl226966227470%_
                             _%e226967227473%_
                             _%hd226968227476%_
                             _%tl226969227478%_
                             _%e226970227481%_
                             _%hd226971227484%_
                             _%tl226972227486%_
                             _%e226973227489%_
                             _%hd226974227492%_
                             _%tl226975227494%_
                             _%e226976227497%_
                             _%hd226977227500%_
                             _%tl226978227502%_))))
                     (_%__match233107233108%_
                      (lambda (_%e226949227425%_
                               _%hd226950227428%_
                               _%tl226951227430%_
                               _%e226952227433%_
                               _%hd226953227436%_
                               _%tl226954227438%_
                               _%e226955227441%_
                               _%hd226956227444%_
                               _%tl226957227446%_
                               _%e226958227449%_
                               _%hd226959227452%_
                               _%tl226960227454%_
                               _%e226961227457%_
                               _%hd226962227460%_
                               _%tl226963227462%_
                               _%e226964227465%_
                               _%hd226965227468%_
                               _%tl226966227470%_
                               _%e226967227473%_
                               _%hd226968227476%_
                               _%tl226969227478%_
                               _%e226970227481%_
                               _%hd226971227484%_
                               _%tl226972227486%_
                               _%e226973227489%_
                               _%hd226974227492%_
                               _%tl226975227494%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#quote _%hd226974227492%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl226975227494%_))
                                (let ((_%e226976227497%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl226975227494%_))))
                                  (let ((_%tl226978227502%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e226976227497%_)))
                                        (_%hd226977227500%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e226976227497%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl226978227502%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl226972227486%_))
                                            (_%__match233119233120%_
                                             _%e226949227425%_
                                             _%hd226950227428%_
                                             _%tl226951227430%_
                                             _%e226952227433%_
                                             _%hd226953227436%_
                                             _%tl226954227438%_
                                             _%e226955227441%_
                                             _%hd226956227444%_
                                             _%tl226957227446%_
                                             _%e226958227449%_
                                             _%hd226959227452%_
                                             _%tl226960227454%_
                                             _%e226961227457%_
                                             _%hd226962227460%_
                                             _%tl226963227462%_
                                             _%e226964227465%_
                                             _%hd226965227468%_
                                             _%tl226966227470%_
                                             _%e226967227473%_
                                             _%hd226968227476%_
                                             _%tl226969227478%_
                                             _%e226970227481%_
                                             _%hd226971227484%_
                                             _%tl226972227486%_
                                             _%e226973227489%_
                                             _%hd226974227492%_
                                             _%tl226975227494%_
                                             _%e226976227497%_
                                             _%hd226977227500%_
                                             _%tl226978227502%_)
                                            (_%__match233197233198%_
                                             _%e226949227425%_
                                             _%hd226950227428%_
                                             _%tl226951227430%_
                                             _%e226952227433%_
                                             _%hd226953227436%_
                                             _%tl226954227438%_
                                             _%e226955227441%_
                                             _%hd226956227444%_
                                             _%tl226957227446%_
                                             _%e226958227449%_
                                             _%hd226959227452%_
                                             _%tl226960227454%_
                                             _%e226961227457%_
                                             _%hd226962227460%_
                                             _%tl226963227462%_
                                             _%e226964227465%_
                                             _%hd226965227468%_
                                             _%tl226966227470%_
                                             _%e226967227473%_
                                             _%hd226968227476%_
                                             _%tl226969227478%_
                                             _%e226970227481%_
                                             _%hd226971227484%_
                                             _%tl226972227486%_
                                             _%e226973227489%_
                                             _%hd226974227492%_
                                             _%tl226975227494%_
                                             _%e226976227497%_
                                             _%hd226977227500%_
                                             _%tl226978227502%_))
                                        (_%__match233321233322%_
                                         _%e226949227425%_
                                         _%hd226950227428%_
                                         _%tl226951227430%_
                                         _%e226952227433%_
                                         _%hd226953227436%_
                                         _%tl226954227438%_
                                         _%e226955227441%_
                                         _%hd226956227444%_
                                         _%tl226957227446%_
                                         _%e226958227449%_
                                         _%hd226959227452%_
                                         _%tl226960227454%_
                                         _%e226961227457%_
                                         _%hd226962227460%_
                                         _%tl226963227462%_
                                         _%e226964227465%_
                                         _%hd226965227468%_
                                         _%tl226966227470%_
                                         _%e226967227473%_
                                         _%hd226968227476%_
                                         _%tl226969227478%_
                                         _%e226970227481%_
                                         _%hd226971227484%_
                                         _%tl226972227486%_))))
                                (_%__match233321233322%_
                                 _%e226949227425%_
                                 _%hd226950227428%_
                                 _%tl226951227430%_
                                 _%e226952227433%_
                                 _%hd226953227436%_
                                 _%tl226954227438%_
                                 _%e226955227441%_
                                 _%hd226956227444%_
                                 _%tl226957227446%_
                                 _%e226958227449%_
                                 _%hd226959227452%_
                                 _%tl226960227454%_
                                 _%e226961227457%_
                                 _%hd226962227460%_
                                 _%tl226963227462%_
                                 _%e226964227465%_
                                 _%hd226965227468%_
                                 _%tl226966227470%_
                                 _%e226967227473%_
                                 _%hd226968227476%_
                                 _%tl226969227478%_
                                 _%e226970227481%_
                                 _%hd226971227484%_
                                 _%tl226972227486%_))
                            (_%__match233321233322%_
                             _%e226949227425%_
                             _%hd226950227428%_
                             _%tl226951227430%_
                             _%e226952227433%_
                             _%hd226953227436%_
                             _%tl226954227438%_
                             _%e226955227441%_
                             _%hd226956227444%_
                             _%tl226957227446%_
                             _%e226958227449%_
                             _%hd226959227452%_
                             _%tl226960227454%_
                             _%e226961227457%_
                             _%hd226962227460%_
                             _%tl226963227462%_
                             _%e226964227465%_
                             _%hd226965227468%_
                             _%tl226966227470%_
                             _%e226967227473%_
                             _%hd226968227476%_
                             _%tl226969227478%_
                             _%e226970227481%_
                             _%hd226971227484%_
                             _%tl226972227486%_))))
                     (_%__match233039233040%_
                      (lambda (_%e226898227546%_
                               _%hd226899227549%_
                               _%tl226900227551%_
                               _%e226901227554%_
                               _%hd226902227557%_
                               _%tl226903227559%_
                               _%e226904227562%_
                               _%hd226905227565%_
                               _%tl226906227567%_
                               _%e226907227570%_
                               _%hd226908227573%_
                               _%tl226909227575%_
                               _%e226910227578%_
                               _%hd226911227581%_
                               _%tl226912227583%_
                               _%e226913227586%_
                               _%hd226914227589%_
                               _%tl226915227591%_
                               _%e226916227594%_
                               _%hd226917227597%_
                               _%tl226918227599%_
                               _%e226919227602%_
                               _%hd226920227605%_
                               _%tl226921227607%_
                               _%e226922227610%_
                               _%hd226923227613%_
                               _%tl226924227615%_
                               _%e226925227618%_
                               _%hd226926227621%_
                               _%tl226927227623%_
                               _%e226928227626%_
                               _%hd226929227629%_
                               _%tl226930227631%_
                               _%e226931227634%_
                               _%hd226932227637%_
                               _%tl226933227639%_
                               _%e226934227642%_
                               _%hd226935227645%_
                               _%tl226936227647%_
                               _%__splice232832232833%_
                               _%target226937227650%_
                               _%tl226939227652%_)
                        (letrec ((_%loop226940227655%_
                                  (lambda (_%hd226938227658%_
                                           _%args226944227660%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd226938227658%_))
                                        (let ((_%e226941227662%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd226938227658%_))))
                                          (let ((_%lp-tl226943227667%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e226941227662%_)))
                                                (_%lp-hd226942227665%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e226941227662%_))))
                                            (_%loop226940227655%_
                                             _%lp-tl226943227667%_
                                             (cons _%lp-hd226942227665%_
                                                   _%args226944227660%_))))
                                        (let ((_%args226945227670%_
                                               (reverse _%args226944227660%_)))
                                          (let ((_%g226893227672%_
                                                 _%args226945227670%_)
                                                (_%g226894227673%_
                                                 _%hd226935227645%_)
                                                (_%g226895227674%_
                                                 _%hd226926227621%_)
                                                (_%g226896227675%_
                                                 _%hd226917227597%_)
                                                (_%g226897227676%_
                                                 _%hd226908227573%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%g226897227676%_
                                                        'apply))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%g226896227675%_
                                                        'call-method))
                                                     (let ((__tmp233517
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self226837%_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _%g226895227674%_
                                                        __tmp233517)))
                                                (_%__kont232830232831%_
                                                 _%g226893227672%_
                                                 _%g226894227673%_
                                                 _%g226895227674%_
                                                 _%g226896227675%_
                                                 _%g226897227676%_)
                                                (_%__kont232842232843%_))))))))
                          (_%loop226940227655%_ _%target226937227650%_ '()))))
                     (_%__match232997232998%_
                      (lambda (_%e226898227546%_
                               _%hd226899227549%_
                               _%tl226900227551%_
                               _%e226901227554%_
                               _%hd226902227557%_
                               _%tl226903227559%_
                               _%e226904227562%_
                               _%hd226905227565%_
                               _%tl226906227567%_
                               _%e226907227570%_
                               _%hd226908227573%_
                               _%tl226909227575%_
                               _%e226910227578%_
                               _%hd226911227581%_
                               _%tl226912227583%_
                               _%e226913227586%_
                               _%hd226914227589%_
                               _%tl226915227591%_
                               _%e226916227594%_
                               _%hd226917227597%_
                               _%tl226918227599%_
                               _%e226919227602%_
                               _%hd226920227605%_
                               _%tl226921227607%_
                               _%e226922227610%_
                               _%hd226923227613%_
                               _%tl226924227615%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _%hd226923227613%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl226924227615%_))
                                (let ((_%e226925227618%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl226924227615%_))))
                                  (let ((_%tl226927227623%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e226925227618%_)))
                                        (_%hd226926227621%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e226925227618%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl226927227623%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl226921227607%_))
                                            (let ((_%e226928227626%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl226921227607%_))))
                                              (let ((_%tl226930227631%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e226928227626%_)))
                                                    (_%hd226929227629%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e226928227626%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%hd226929227629%_))
                                                    (let ((_%e226931227634%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd226929227629%_))))
                                                      (let ((_%tl226933227639%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e226931227634%_)))
                    (_%hd226932227637%_
                     (let () (declare (not safe)) (##car _%e226931227634%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _%hd226932227637%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _%hd226932227637%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl226933227639%_))
                            (let ((_%e226934227642%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl226933227639%_))))
                              (let ((_%tl226936227647%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e226934227642%_)))
                                    (_%hd226935227645%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e226934227642%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl226936227647%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl226930227631%_))
                                        (let ((_%__splice232832232833%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice->vector
                                                  _%tl226930227631%_
                                                  '0))))
                                          (let ((_%tl226939227652%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice232832232833%_
                                                    '1)))
                                                (_%target226937227650%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice232832232833%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl226939227652%_))
                                                (_%__match233039233040%_
                                                 _%e226898227546%_
                                                 _%hd226899227549%_
                                                 _%tl226900227551%_
                                                 _%e226901227554%_
                                                 _%hd226902227557%_
                                                 _%tl226903227559%_
                                                 _%e226904227562%_
                                                 _%hd226905227565%_
                                                 _%tl226906227567%_
                                                 _%e226907227570%_
                                                 _%hd226908227573%_
                                                 _%tl226909227575%_
                                                 _%e226910227578%_
                                                 _%hd226911227581%_
                                                 _%tl226912227583%_
                                                 _%e226913227586%_
                                                 _%hd226914227589%_
                                                 _%tl226915227591%_
                                                 _%e226916227594%_
                                                 _%hd226917227597%_
                                                 _%tl226918227599%_
                                                 _%e226919227602%_
                                                 _%hd226920227605%_
                                                 _%tl226921227607%_
                                                 _%e226922227610%_
                                                 _%hd226923227613%_
                                                 _%tl226924227615%_
                                                 _%e226925227618%_
                                                 _%hd226926227621%_
                                                 _%tl226927227623%_
                                                 _%e226928227626%_
                                                 _%hd226929227629%_
                                                 _%tl226930227631%_
                                                 _%e226931227634%_
                                                 _%hd226932227637%_
                                                 _%tl226933227639%_
                                                 _%e226934227642%_
                                                 _%hd226935227645%_
                                                 _%tl226936227647%_
                                                 _%__splice232832232833%_
                                                 _%target226937227650%_
                                                 _%tl226939227652%_)
                                                (_%__kont232842232843%_))))
                                        (_%__kont232842232843%_))
                                    (_%__kont232842232843%_))))
                            (_%__kont232842232843%_))
                        (_%__kont232842232843%_))
                    (_%__kont232842232843%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont232842232843%_))))
                                            (_%__match233321233322%_
                                             _%e226898227546%_
                                             _%hd226899227549%_
                                             _%tl226900227551%_
                                             _%e226901227554%_
                                             _%hd226902227557%_
                                             _%tl226903227559%_
                                             _%e226904227562%_
                                             _%hd226905227565%_
                                             _%tl226906227567%_
                                             _%e226907227570%_
                                             _%hd226908227573%_
                                             _%tl226909227575%_
                                             _%e226910227578%_
                                             _%hd226911227581%_
                                             _%tl226912227583%_
                                             _%e226913227586%_
                                             _%hd226914227589%_
                                             _%tl226915227591%_
                                             _%e226916227594%_
                                             _%hd226917227597%_
                                             _%tl226918227599%_
                                             _%e226919227602%_
                                             _%hd226920227605%_
                                             _%tl226921227607%_))
                                        (_%__match233321233322%_
                                         _%e226898227546%_
                                         _%hd226899227549%_
                                         _%tl226900227551%_
                                         _%e226901227554%_
                                         _%hd226902227557%_
                                         _%tl226903227559%_
                                         _%e226904227562%_
                                         _%hd226905227565%_
                                         _%tl226906227567%_
                                         _%e226907227570%_
                                         _%hd226908227573%_
                                         _%tl226909227575%_
                                         _%e226910227578%_
                                         _%hd226911227581%_
                                         _%tl226912227583%_
                                         _%e226913227586%_
                                         _%hd226914227589%_
                                         _%tl226915227591%_
                                         _%e226916227594%_
                                         _%hd226917227597%_
                                         _%tl226918227599%_
                                         _%e226919227602%_
                                         _%hd226920227605%_
                                         _%tl226921227607%_))))
                                (_%__match233321233322%_
                                 _%e226898227546%_
                                 _%hd226899227549%_
                                 _%tl226900227551%_
                                 _%e226901227554%_
                                 _%hd226902227557%_
                                 _%tl226903227559%_
                                 _%e226904227562%_
                                 _%hd226905227565%_
                                 _%tl226906227567%_
                                 _%e226907227570%_
                                 _%hd226908227573%_
                                 _%tl226909227575%_
                                 _%e226910227578%_
                                 _%hd226911227581%_
                                 _%tl226912227583%_
                                 _%e226913227586%_
                                 _%hd226914227589%_
                                 _%tl226915227591%_
                                 _%e226916227594%_
                                 _%hd226917227597%_
                                 _%tl226918227599%_
                                 _%e226919227602%_
                                 _%hd226920227605%_
                                 _%tl226921227607%_))
                            (_%__match233107233108%_
                             _%e226898227546%_
                             _%hd226899227549%_
                             _%tl226900227551%_
                             _%e226901227554%_
                             _%hd226902227557%_
                             _%tl226903227559%_
                             _%e226904227562%_
                             _%hd226905227565%_
                             _%tl226906227567%_
                             _%e226907227570%_
                             _%hd226908227573%_
                             _%tl226909227575%_
                             _%e226910227578%_
                             _%hd226911227581%_
                             _%tl226912227583%_
                             _%e226913227586%_
                             _%hd226914227589%_
                             _%tl226915227591%_
                             _%e226916227594%_
                             _%hd226917227597%_
                             _%tl226918227599%_
                             _%e226919227602%_
                             _%hd226920227605%_
                             _%tl226921227607%_
                             _%e226922227610%_
                             _%hd226923227613%_
                             _%tl226924227615%_))))
                     (_%__match232929232930%_
                      (lambda (_%e226854227736%_
                               _%hd226855227739%_
                               _%tl226856227741%_
                               _%e226857227744%_
                               _%hd226858227747%_
                               _%tl226859227749%_
                               _%e226860227752%_
                               _%hd226861227755%_
                               _%tl226862227757%_
                               _%e226863227760%_
                               _%hd226864227763%_
                               _%tl226865227765%_
                               _%e226866227768%_
                               _%hd226867227771%_
                               _%tl226868227773%_
                               _%e226869227776%_
                               _%hd226870227779%_
                               _%tl226871227781%_
                               _%e226872227784%_
                               _%hd226873227787%_
                               _%tl226874227789%_
                               _%e226875227792%_
                               _%hd226876227795%_
                               _%tl226877227797%_
                               _%e226878227800%_
                               _%hd226879227803%_
                               _%tl226880227805%_
                               _%e226881227808%_
                               _%hd226882227811%_
                               _%tl226883227813%_
                               _%__splice232828232829%_
                               _%target226884227816%_
                               _%tl226886227818%_)
                        (letrec ((_%loop226887227821%_
                                  (lambda (_%hd226885227824%_
                                           _%args226891227826%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd226885227824%_))
                                        (let ((_%e226888227828%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd226885227824%_))))
                                          (let ((_%lp-tl226890227833%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e226888227828%_)))
                                                (_%lp-hd226889227831%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e226888227828%_))))
                                            (_%loop226887227821%_
                                             _%lp-tl226890227833%_
                                             (cons _%lp-hd226889227831%_
                                                   _%args226891227826%_))))
                                        (let ((_%args226892227836%_
                                               (reverse _%args226891227826%_)))
                                          (let ((_%g226850227838%_
                                                 _%args226892227836%_)
                                                (_%g226851227839%_
                                                 _%hd226882227811%_)
                                                (_%g226852227840%_
                                                 _%hd226873227787%_)
                                                (_%g226853227841%_
                                                 _%hd226864227763%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%g226853227841%_
                                                        'call-method))
                                                     (let ((__tmp233518
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self226837%_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _%g226852227840%_
                                                        __tmp233518)))
                                                (_%__kont232826232827%_
                                                 _%g226850227838%_
                                                 _%g226851227839%_
                                                 _%g226852227840%_
                                                 _%g226853227841%_)
                                                (_%__match233117233118%_
                                                 _%e226854227736%_
                                                 _%hd226855227739%_
                                                 _%tl226856227741%_
                                                 _%e226857227744%_
                                                 _%hd226858227747%_
                                                 _%tl226859227749%_
                                                 _%e226860227752%_
                                                 _%hd226861227755%_
                                                 _%tl226862227757%_
                                                 _%e226863227760%_
                                                 _%hd226864227763%_
                                                 _%tl226865227765%_
                                                 _%e226866227768%_
                                                 _%hd226867227771%_
                                                 _%tl226868227773%_
                                                 _%e226869227776%_
                                                 _%hd226870227779%_
                                                 _%tl226871227781%_
                                                 _%e226872227784%_
                                                 _%hd226873227787%_
                                                 _%tl226874227789%_
                                                 _%e226875227792%_
                                                 _%hd226876227795%_
                                                 _%tl226877227797%_
                                                 _%e226878227800%_
                                                 _%hd226879227803%_
                                                 _%tl226880227805%_
                                                 _%e226881227808%_
                                                 _%hd226882227811%_
                                                 _%tl226883227813%_))))))))
                          (_%loop226887227821%_ _%target226884227816%_ '())))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx232824232825%_))
                    (let ((_%e226854227736%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx232824232825%_))))
                      (let ((_%tl226856227741%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e226854227736%_)))
                            (_%hd226855227739%_
                             (let ()
                               (declare (not safe))
                               (##car _%e226854227736%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl226856227741%_))
                            (let ((_%e226857227744%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl226856227741%_))))
                              (let ((_%tl226859227749%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e226857227744%_)))
                                    (_%hd226858227747%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e226857227744%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd226858227747%_))
                                    (let ((_%e226860227752%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd226858227747%_))))
                                      (let ((_%tl226862227757%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e226860227752%_)))
                                            (_%hd226861227755%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e226860227752%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _%hd226861227755%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _%hd226861227755%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl226862227757%_))
                                                    (let ((_%e226863227760%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl226862227757%_))))
                                                      (let ((_%tl226865227765%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e226863227760%_)))
                    (_%hd226864227763%_
                     (let () (declare (not safe)) (##car _%e226863227760%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl226865227765%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl226859227749%_))
                        (let ((_%e226866227768%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl226859227749%_))))
                          (let ((_%tl226868227773%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e226866227768%_)))
                                (_%hd226867227771%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e226866227768%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd226867227771%_))
                                (let ((_%e226869227776%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd226867227771%_))))
                                  (let ((_%tl226871227781%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e226869227776%_)))
                                        (_%hd226870227779%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e226869227776%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd226870227779%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _%hd226870227779%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl226871227781%_))
                                                (let ((_%e226872227784%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl226871227781%_))))
                                                  (let ((_%tl226874227789%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e226872227784%_)))
                                                        (_%hd226873227787%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e226872227784%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl226874227789%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl226868227773%_))
                                                            (let ((_%e226875227792%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl226868227773%_))))
                      (let ((_%tl226877227797%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e226875227792%_)))
                            (_%hd226876227795%_
                             (let ()
                               (declare (not safe))
                               (##car _%e226875227792%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd226876227795%_))
                            (let ((_%e226878227800%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd226876227795%_))))
                              (let ((_%tl226880227805%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e226878227800%_)))
                                    (_%hd226879227803%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e226878227800%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd226879227803%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd226879227803%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl226880227805%_))
                                            (let ((_%e226881227808%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl226880227805%_))))
                                              (let ((_%tl226883227813%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e226881227808%_)))
                                                    (_%hd226882227811%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e226881227808%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl226883227813%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair/null?
                                                           _%tl226877227797%_))
                                                        (let ((_%__splice232828232829%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-split-splice->vector
                          _%tl226877227797%_
                          '0))))
                  (let ((_%tl226886227818%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice232828232829%_ '1)))
                        (_%target226884227816%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice232828232829%_ '0))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl226886227818%_))
                        (_%__match232929232930%_
                         _%e226854227736%_
                         _%hd226855227739%_
                         _%tl226856227741%_
                         _%e226857227744%_
                         _%hd226858227747%_
                         _%tl226859227749%_
                         _%e226860227752%_
                         _%hd226861227755%_
                         _%tl226862227757%_
                         _%e226863227760%_
                         _%hd226864227763%_
                         _%tl226865227765%_
                         _%e226866227768%_
                         _%hd226867227771%_
                         _%tl226868227773%_
                         _%e226869227776%_
                         _%hd226870227779%_
                         _%tl226871227781%_
                         _%e226872227784%_
                         _%hd226873227787%_
                         _%tl226874227789%_
                         _%e226875227792%_
                         _%hd226876227795%_
                         _%tl226877227797%_
                         _%e226878227800%_
                         _%hd226879227803%_
                         _%tl226880227805%_
                         _%e226881227808%_
                         _%hd226882227811%_
                         _%tl226883227813%_
                         _%__splice232828232829%_
                         _%target226884227816%_
                         _%tl226886227818%_)
                        (_%__match233117233118%_
                         _%e226854227736%_
                         _%hd226855227739%_
                         _%tl226856227741%_
                         _%e226857227744%_
                         _%hd226858227747%_
                         _%tl226859227749%_
                         _%e226860227752%_
                         _%hd226861227755%_
                         _%tl226862227757%_
                         _%e226863227760%_
                         _%hd226864227763%_
                         _%tl226865227765%_
                         _%e226866227768%_
                         _%hd226867227771%_
                         _%tl226868227773%_
                         _%e226869227776%_
                         _%hd226870227779%_
                         _%tl226871227781%_
                         _%e226872227784%_
                         _%hd226873227787%_
                         _%tl226874227789%_
                         _%e226875227792%_
                         _%hd226876227795%_
                         _%tl226877227797%_
                         _%e226878227800%_
                         _%hd226879227803%_
                         _%tl226880227805%_
                         _%e226881227808%_
                         _%hd226882227811%_
                         _%tl226883227813%_))))
                (_%__match233117233118%_
                 _%e226854227736%_
                 _%hd226855227739%_
                 _%tl226856227741%_
                 _%e226857227744%_
                 _%hd226858227747%_
                 _%tl226859227749%_
                 _%e226860227752%_
                 _%hd226861227755%_
                 _%tl226862227757%_
                 _%e226863227760%_
                 _%hd226864227763%_
                 _%tl226865227765%_
                 _%e226866227768%_
                 _%hd226867227771%_
                 _%tl226868227773%_
                 _%e226869227776%_
                 _%hd226870227779%_
                 _%tl226871227781%_
                 _%e226872227784%_
                 _%hd226873227787%_
                 _%tl226874227789%_
                 _%e226875227792%_
                 _%hd226876227795%_
                 _%tl226877227797%_
                 _%e226878227800%_
                 _%hd226879227803%_
                 _%tl226880227805%_
                 _%e226881227808%_
                 _%hd226882227811%_
                 _%tl226883227813%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match233321233322%_
                                                     _%e226854227736%_
                                                     _%hd226855227739%_
                                                     _%tl226856227741%_
                                                     _%e226857227744%_
                                                     _%hd226858227747%_
                                                     _%tl226859227749%_
                                                     _%e226860227752%_
                                                     _%hd226861227755%_
                                                     _%tl226862227757%_
                                                     _%e226863227760%_
                                                     _%hd226864227763%_
                                                     _%tl226865227765%_
                                                     _%e226866227768%_
                                                     _%hd226867227771%_
                                                     _%tl226868227773%_
                                                     _%e226869227776%_
                                                     _%hd226870227779%_
                                                     _%tl226871227781%_
                                                     _%e226872227784%_
                                                     _%hd226873227787%_
                                                     _%tl226874227789%_
                                                     _%e226875227792%_
                                                     _%hd226876227795%_
                                                     _%tl226877227797%_))))
                                            (_%__match233321233322%_
                                             _%e226854227736%_
                                             _%hd226855227739%_
                                             _%tl226856227741%_
                                             _%e226857227744%_
                                             _%hd226858227747%_
                                             _%tl226859227749%_
                                             _%e226860227752%_
                                             _%hd226861227755%_
                                             _%tl226862227757%_
                                             _%e226863227760%_
                                             _%hd226864227763%_
                                             _%tl226865227765%_
                                             _%e226866227768%_
                                             _%hd226867227771%_
                                             _%tl226868227773%_
                                             _%e226869227776%_
                                             _%hd226870227779%_
                                             _%tl226871227781%_
                                             _%e226872227784%_
                                             _%hd226873227787%_
                                             _%tl226874227789%_
                                             _%e226875227792%_
                                             _%hd226876227795%_
                                             _%tl226877227797%_))
                                        (_%__match232997232998%_
                                         _%e226854227736%_
                                         _%hd226855227739%_
                                         _%tl226856227741%_
                                         _%e226857227744%_
                                         _%hd226858227747%_
                                         _%tl226859227749%_
                                         _%e226860227752%_
                                         _%hd226861227755%_
                                         _%tl226862227757%_
                                         _%e226863227760%_
                                         _%hd226864227763%_
                                         _%tl226865227765%_
                                         _%e226866227768%_
                                         _%hd226867227771%_
                                         _%tl226868227773%_
                                         _%e226869227776%_
                                         _%hd226870227779%_
                                         _%tl226871227781%_
                                         _%e226872227784%_
                                         _%hd226873227787%_
                                         _%tl226874227789%_
                                         _%e226875227792%_
                                         _%hd226876227795%_
                                         _%tl226877227797%_
                                         _%e226878227800%_
                                         _%hd226879227803%_
                                         _%tl226880227805%_))
                                    (_%__match233321233322%_
                                     _%e226854227736%_
                                     _%hd226855227739%_
                                     _%tl226856227741%_
                                     _%e226857227744%_
                                     _%hd226858227747%_
                                     _%tl226859227749%_
                                     _%e226860227752%_
                                     _%hd226861227755%_
                                     _%tl226862227757%_
                                     _%e226863227760%_
                                     _%hd226864227763%_
                                     _%tl226865227765%_
                                     _%e226866227768%_
                                     _%hd226867227771%_
                                     _%tl226868227773%_
                                     _%e226869227776%_
                                     _%hd226870227779%_
                                     _%tl226871227781%_
                                     _%e226872227784%_
                                     _%hd226873227787%_
                                     _%tl226874227789%_
                                     _%e226875227792%_
                                     _%hd226876227795%_
                                     _%tl226877227797%_))))
                            (_%__match233321233322%_
                             _%e226854227736%_
                             _%hd226855227739%_
                             _%tl226856227741%_
                             _%e226857227744%_
                             _%hd226858227747%_
                             _%tl226859227749%_
                             _%e226860227752%_
                             _%hd226861227755%_
                             _%tl226862227757%_
                             _%e226863227760%_
                             _%hd226864227763%_
                             _%tl226865227765%_
                             _%e226866227768%_
                             _%hd226867227771%_
                             _%tl226868227773%_
                             _%e226869227776%_
                             _%hd226870227779%_
                             _%tl226871227781%_
                             _%e226872227784%_
                             _%hd226873227787%_
                             _%tl226874227789%_
                             _%e226875227792%_
                             _%hd226876227795%_
                             _%tl226877227797%_))))
                    (_%__match233259233260%_
                     _%e226854227736%_
                     _%hd226855227739%_
                     _%tl226856227741%_
                     _%e226857227744%_
                     _%hd226858227747%_
                     _%tl226859227749%_
                     _%e226860227752%_
                     _%hd226861227755%_
                     _%tl226862227757%_
                     _%e226863227760%_
                     _%hd226864227763%_
                     _%tl226865227765%_
                     _%e226866227768%_
                     _%hd226867227771%_
                     _%tl226868227773%_
                     _%e226869227776%_
                     _%hd226870227779%_
                     _%tl226871227781%_
                     _%e226872227784%_
                     _%hd226873227787%_
                     _%tl226874227789%_))
                (_%__kont232842232843%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont232842232843%_))
                                            (_%__kont232842232843%_))
                                        (_%__kont232842232843%_))))
                                (_%__kont232842232843%_))))
                        (_%__kont232842232843%_))
                    (_%__kont232842232843%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont232842232843%_))
                                                (_%__kont232842232843%_))
                                            (_%__kont232842232843%_))))
                                    (_%__kont232842232843%_))))
                            (_%__kont232842232843%_))))
                    (_%__kont232842232843%_))))))))))
