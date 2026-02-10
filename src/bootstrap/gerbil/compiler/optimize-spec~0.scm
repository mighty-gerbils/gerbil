(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-spec::timestamp 1770752340)
  (begin
    (define gxc#::generate-method-specializers::t
      (let ((__tmp233341 (list gxc#::identity::t))
            (__tmp233340 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-method-specializers::t
         '::generate-method-specializers
         __tmp233341
         '()
         __tmp233340
         '#f)))
    (define gxc#::generate-method-specializers?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-method-specializers::t)))
    (define gxc#make-::generate-method-specializers
      (lambda _%$args232138%_
        (apply make-instance
               gxc#::generate-method-specializers::t
               _%$args232138%_)))
    (define gxc#::generate-method-specializers-bind-methods!
      (let ((__tmp233342
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
        (__make-atomic-promise __tmp233342)))
    (define gxc#apply-generate-method-specializers
      (lambda (_%stx232130%_)
        (force gxc#::generate-method-specializers-bind-methods!)
        (let* ((_%self232133%_
                (let ((__obj233333
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-method-specializers::t))))
                  __obj233333))
               (__tmp233343
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self232133%_ _%stx232130%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp233343
           gxc#current-compile-method
           _%self232133%_))))
    (define gxc#::extract-receiver::t
      (let ((__tmp233345 (list gxc#::false::t))
            (__tmp233344 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::extract-receiver::t
         '::extract-receiver
         __tmp233345
         '()
         __tmp233344
         '#f)))
    (define gxc#::extract-receiver?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::extract-receiver::t)))
    (define gxc#make-::extract-receiver
      (lambda _%$args232127%_
        (apply make-instance gxc#::extract-receiver::t _%$args232127%_)))
    (define gxc#::extract-receiver-bind-methods!
      (let ((__tmp233346
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
        (__make-atomic-promise __tmp233346)))
    (define gxc#apply-extract-receiver
      (lambda (_%stx232119%_)
        (force gxc#::extract-receiver-bind-methods!)
        (let* ((_%self232122%_
                (let ((__obj233335
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::extract-receiver::t))))
                  __obj233335))
               (__tmp233347
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self232122%_ _%stx232119%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp233347
           gxc#current-compile-method
           _%self232122%_))))
    (define gxc#::collect-object-refs::t
      (let ((__tmp233349 (list gxc#::void::t))
            (__tmp233348 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-object-refs::t
         '::collect-object-refs
         __tmp233349
         '(receiver methods slots)
         __tmp233348
         '#f)))
    (define gxc#::collect-object-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-object-refs::t)))
    (define gxc#make-::collect-object-refs
      (lambda _%$args232116%_
        (apply make-instance gxc#::collect-object-refs::t _%$args232116%_)))
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
      (let ((__tmp233350
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
        (__make-atomic-promise __tmp233350)))
    (define gxc#apply-collect-object-refs__%
      (lambda (_%@@keywords232085%_
               _%receiver232080232086%_
               _%methods232081232087%_
               _%slots232082232088%_
               _%stx232089%_)
        (let* ((_%receiver232092%_
                (if (eq? _%receiver232080232086%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _%receiver232080232086%_))
               (_%methods232094%_
                (if (eq? _%methods232081232087%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _%methods232081232087%_))
               (_%slots232096%_
                (if (eq? _%slots232082232088%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _%slots232082232088%_)))
          (force gxc#::collect-object-refs-bind-methods!)
          (let* ((_%self232098%_
                  (let ((__obj233337
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
                       __obj233337
                       _%receiver232092%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj233337
                       _%methods232094%_
                       '2
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj233337
                       _%slots232096%_
                       '3
                       '#f
                       '#f))
                    __obj233337))
                 (__tmp233351
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self232098%_ _%stx232089%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp233351
             gxc#current-compile-method
             _%self232098%_)))))
    (define gxc#apply-collect-object-refs__@
      (lambda (_%@@keywords232105%_ . _%args232106%_)
        (apply gxc#apply-collect-object-refs__%
               _%@@keywords232105%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords232105%_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords232105%_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords232105%_
                  'slots:
                  absent-value))
               _%args232106%_)))
    (define gxc#apply-collect-object-refs
      (lambda _%args232083232112%_
        (apply keyword-dispatch
               '#(receiver: slots: methods:)
               gxc#apply-collect-object-refs__@
               _%args232083232112%_)))
    (define gxc#::subst-object-refs::t
      (let ((__tmp233353 (list gxc#::basic-xform-expression::t))
            (__tmp233352 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::subst-object-refs::t
         '::subst-object-refs
         __tmp233353
         '(receiver klass methods slots)
         __tmp233352
         '#f)))
    (define gxc#::subst-object-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::subst-object-refs::t)))
    (define gxc#make-::subst-object-refs
      (lambda _%$args232076%_
        (apply make-instance gxc#::subst-object-refs::t _%$args232076%_)))
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
      (let ((__tmp233354
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
        (__make-atomic-promise __tmp233354)))
    (define gxc#apply-subst-object-refs__%
      (lambda (_%@@keywords232042%_
               _%receiver232036232043%_
               _%klass232037232044%_
               _%methods232038232045%_
               _%slots232039232046%_
               _%stx232047%_)
        (let* ((_%receiver232050%_
                (if (eq? _%receiver232036232043%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _%receiver232036232043%_))
               (_%klass232052%_
                (if (eq? _%klass232037232044%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'klass:))
                    _%klass232037232044%_))
               (_%methods232054%_
                (if (eq? _%methods232038232045%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _%methods232038232045%_))
               (_%slots232056%_
                (if (eq? _%slots232039232046%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _%slots232039232046%_)))
          (force gxc#::subst-object-refs-bind-methods!)
          (let* ((_%self232058%_
                  (let ((__obj233339
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
                       __obj233339
                       _%receiver232050%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj233339
                       _%klass232052%_
                       '2
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj233339
                       _%methods232054%_
                       '3
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj233339
                       _%slots232056%_
                       '4
                       '#f
                       '#f))
                    __obj233339))
                 (__tmp233355
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self232058%_ _%stx232047%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp233355
             gxc#current-compile-method
             _%self232058%_)))))
    (define gxc#apply-subst-object-refs__@
      (lambda (_%@@keywords232065%_ . _%args232066%_)
        (apply gxc#apply-subst-object-refs__%
               _%@@keywords232065%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords232065%_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords232065%_
                  'klass:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords232065%_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords232065%_
                  'slots:
                  absent-value))
               _%args232066%_)))
    (define gxc#apply-subst-object-refs
      (lambda _%args232040232072%_
        (apply keyword-dispatch
               '#(receiver: methods: slots: klass:)
               gxc#apply-subst-object-refs__@
               _%args232040232072%_)))
    (define gxc#generate-method-specializers-define-values%
      (lambda (_%self229167%_ _%stx229168%_)
        (letrec ((_%generate-method-bind229170%_
                  (lambda (_%$klass232028%_
                           _%$method-table232029%_
                           _%id232030%_
                           _%$id232031%_)
                    (let ((_%$tmp232033%_
                           (let ((__tmp233356
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__method))))
                             (declare (not safe))
                             (make-symbol__0 __tmp233356))))
                      (cons (cons _%$id232031%_ '())
                            (cons (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons 'make-promise '()))
                                              (cons (cons '%#lambda
                                                          (cons '()
                                                                (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons (cons (cons _%$tmp232033%_ '())
                                                      (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#ref (cons 'symbolic-table-ref '()))
                                (cons (cons '%#ref
                                            (cons _%$method-table232029%_ '()))
                                      (cons (cons '%#quote
                                                  (cons _%id232030%_ '()))
                                            (cons (cons '%#quote
                                                        (cons '#f '()))
                                                  '())))))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())
                                          (cons (cons '%#if
                                                      (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%$tmp232033%_ '()))
                    (cons (cons '%#ref (cons _%$tmp232033%_ '()))
                          (cons (cons '%#call
                                      (cons (cons '%#ref (cons 'error '()))
                                            (cons (cons '%#quote
                                                        (cons '"Missing method"
                                                              '()))
                                                  (cons (cons '%#quote
                                                              (cons _%id232030%_
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
                 (_%generate-slot-bind229171%_
                  (lambda (_%$klass232022%_ _%id232023%_ _%$id232024%_)
                    (let ((_%$tmp232026%_
                           (let ((__tmp233357
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__slot))))
                             (declare (not safe))
                             (make-symbol__0 __tmp233357))))
                      (cons (cons _%$id232024%_ '())
                            (cons (cons '%#let-values
                                        (cons (cons (cons (cons _%$tmp232026%_
                                                                '())
                                                          (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '%#ref (cons 'class-slot-offset '()))
                                    (cons (cons '%#ref
                                                (cons _%$klass232022%_ '()))
                                          (cons (cons '%#quote
                                                      (cons _%id232023%_ '()))
                                                '()))))
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
                                                            (cons '"Unknown slot"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#quote (cons _%id232023%_ '())) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '())))))
                 (_%generate-specializer-impl229172%_
                  (lambda (_%$klass232016%_
                           _%$method-table232017%_
                           _%methods-bind232018%_
                           _%slots-bind232019%_
                           _%specializer-impl232020%_)
                    (let ((__tmp233358
                           (cons '%#lambda
                                 (cons (cons _%$klass232016%_
                                             (cons _%$method-table232017%_
                                                   '()))
                                       (cons (cons '%#let-values
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (foldr__0
                                                            cons
                                                            _%slots-bind232019%_
                                                            _%methods-bind232018%_))
                                                         (cons _%specializer-impl232020%_
                                                               '())))
                                             '())))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp233358 _%stx229168%_))))
                 (_%generate-specializer-def229173%_
                  (lambda (_%id232012%_
                           _%specializer-id232013%_
                           _%specializer-impl232014%_)
                    (let ((__tmp233359
                           (cons '%#begin
                                 (cons _%stx229168%_
                                       (cons (let ((__tmp233360
                                                    (cons '%#define-values
                                                          (cons (cons _%specializer-id232013%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons _%specializer-impl232014%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp233360
                                                _%stx229168%_))
                                             (cons (let ((__tmp233361
                                                          (cons '%#call
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons 'bind-specializer! '()))
                              (cons (cons '%#ref (cons _%id232012%_ '()))
                                    (cons (cons '%#ref
                                                (cons _%specializer-id232013%_
                                                      '()))
                                          '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp233361
                                                      _%stx229168%_))
                                                   '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp233359 _%stx229168%_)))))
          (let* ((_%__stx232227232228%_ _%stx229168%_)
                 (_%g229176229196%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx232227232228%_)))))
            (let ((_%__kont232229232230%_
                   (lambda (_%g229178229240%_ _%g229179229241%_)
                     (let ((_%method-calls229260%_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_%slot-refs229261%_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_%empty229262%_
                            (let ()
                              (declare (not safe))
                              (make-hash-table-eq))))
                       (letrec ((_%no-specializer?229264%_
                                 (lambda ()
                                   (if (let ((__tmp233362
                                              (let ()
                                                (declare (not safe))
                                                (__hash-length
                                                 _%method-calls229260%_))))
                                         (declare (not safe))
                                         (##fxzero? __tmp233362))
                                       (let ((__tmp233363
                                              (let ()
                                                (declare (not safe))
                                                (__hash-length
                                                 _%slot-refs229261%_))))
                                         (declare (not safe))
                                         (##fxzero? __tmp233363))
                                       '#f))))
                         (if (let ()
                               (declare (not safe))
                               (gxc#lambda-expr? _%g229178229240%_))
                             (let* ((_%__stx232141232142%_ _%g229178229240%_)
                                    (_%g229648229666%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx232141232142%_)))))
                               (let ((_%__kont232143232144%_
                                      (lambda (_%g229650229702%_
                                               _%g229651229703%_
                                               _%g229652229704%_)
                                        (let ((_%receiver229724%_
                                               (let ((_%$e229721%_
                                                      (gxc#apply-extract-receiver
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f '%#begin))
                     _%g229650229702%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e229721%_
                                                     _%$e229721%_
                                                     _%g229652229704%_))))
                                          (for-each
                                           (lambda (_%g229725229727%_)
                                             (gxc#apply-collect-object-refs__%
                                              '#f
                                              _%receiver229724%_
                                              _%method-calls229260%_
                                              _%slot-refs229261%_
                                              _%g229725229727%_))
                                           _%g229650229702%_)
                                          (if (_%no-specializer?229264%_)
                                              _%stx229168%_
                                              (let* ((_%specializer-id229736%_
                                                      (let* ((_%id229730%_
                                                              (let ((__tmp233364
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g229179229241%_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp233364 '"::specialize")))
                     (_%specializer-id229733%_
                      (let ((__tmp233365
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _%stx229168%_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _%id229730%_ __tmp233365))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _%specializer-id229733%_))
                _%specializer-id229733%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$klass229738%_
                                                      (let ((__tmp233366
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__klass))))
                (declare (not safe))
                (make-symbol__0 __tmp233366)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$method-table229740%_
                                                      (let ((__tmp233367
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__method-table))))
                (declare (not safe))
                (make-symbol__0 __tmp233367)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods229742%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%method-calls229260%_)))
                                                     (_%$methods229746%_
                                                      (let ((__tmp233368
                                                             (lambda (_%id229744%_)
                                                               (let ((__tmp233369
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gensym _%id229744%_)))
                         (declare (not safe))
                         (make-symbol__1 '"__" __tmp233369)))))
                (declare (not safe))
                (##map __tmp233368 _%methods229742%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_229755%_
                                                      (let ((__tmp233370
                                                             (lambda (_%g229747229750%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g229748229752%_)
                       (let ()
                         (declare (not safe))
                         (__hash-put!
                          _%method-calls229260%_
                          _%g229747229750%_
                          _%g229748229752%_)))))
                (declare (not safe))
                (##for-each __tmp233370 _%methods229742%_ _%$methods229746%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods-bind229765%_
                                                      (let ((__tmp233371
                                                             (lambda (_%g229757229760%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g229758229762%_)
                       (_%generate-method-bind229170%_
                        _%$klass229738%_
                        _%$method-table229740%_
                        _%g229757229760%_
                        _%g229758229762%_))))
                (declare (not safe))
                (##map __tmp233371 _%methods229742%_ _%$methods229746%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots229767%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%slot-refs229261%_)))
                                                     (_%$slots229771%_
                                                      (let ((__tmp233372
                                                             (lambda (_%id229769%_)
                                                               (let ((__tmp233373
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gensym _%id229769%_)))
                         (declare (not safe))
                         (make-symbol__1 '"__" __tmp233373)))))
                (declare (not safe))
                (##map __tmp233372 _%slots229767%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_229780%_
                                                      (let ((__tmp233374
                                                             (lambda (_%g229772229775%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g229773229777%_)
                       (let ()
                         (declare (not safe))
                         (__hash-put!
                          _%slot-refs229261%_
                          _%g229772229775%_
                          _%g229773229777%_)))))
                (declare (not safe))
                (##for-each __tmp233374 _%slots229767%_ _%$slots229771%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots-bind229789%_
                                                      (let ((__tmp233375
                                                             (lambda (_%g229781229784%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g229782229786%_)
                       (_%generate-slot-bind229171%_
                        _%$klass229738%_
                        _%g229781229784%_
                        _%g229782229786%_))))
                (declare (not safe))
                (##map __tmp233375 _%slots229767%_ _%$slots229771%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-body229795%_
                                                      (map (lambda (_%g229790229792%_)
                                                             (gxc#apply-subst-object-refs__%
                                                              '#f
                                                              _%receiver229724%_
                                                              _%$klass229738%_
                                                              _%method-calls229260%_
                                                              _%slot-refs229261%_
                                                              _%g229790229792%_))
                                                           _%g229650229702%_))
                                                     (_%specializer-impl229797%_
                                                      (let ((__tmp233376
                                                             (cons '%#lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons _%g229652229704%_ _%g229651229703%_)
                                 _%specializer-body229795%_))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp233376 _%stx229168%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl229799%_
                                                      (_%generate-specializer-impl229172%_
                                                       _%$klass229738%_
                                                       _%$method-table229740%_
                                                       _%methods-bind229765%_
                                                       _%slots-bind229789%_
                                                       _%specializer-impl229797%_)))
                                                (let ((__tmp233378
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%g229179229241%_)))
                                                      (__tmp233377
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%specializer-id229736%_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp233378
                                                   '" => "
                                                   __tmp233377))
                                                (_%generate-specializer-def229173%_
                                                 _%g229179229241%_
                                                 _%specializer-id229736%_
                                                 _%specializer-impl229799%_))))))
                                     (_%__kont232145232146%_
                                      (lambda () _%stx229168%_)))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%__stx232141232142%_))
                                     (let ((_%e229653229678%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e
                                               _%__stx232141232142%_))))
                                       (let ((_%tl229655229683%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e229653229678%_)))
                                             (_%hd229654229681%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e229653229678%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl229655229683%_))
                                             (let ((_%e229656229686%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%tl229655229683%_))))
                                               (let ((_%tl229658229691%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e229656229686%_)))
                                                     (_%hd229657229689%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e229656229686%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%hd229657229689%_))
                                                     (let ((_%e229659229694%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%hd229657229689%_))))
                                                       (let ((_%tl229661229699%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e229659229694%_)))
                     (_%hd229660229697%_
                      (let () (declare (not safe)) (##car _%e229659229694%_))))
                 (_%__kont232143232144%_
                  _%tl229658229691%_
                  _%tl229661229699%_
                  _%hd229660229697%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont232145232146%_))))
                                             (_%__kont232145232146%_))))
                                     (_%__kont232145232146%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gxc#case-lambda-expr? _%g229178229240%_))
                                 (let* ((_%g229806229825%_
                                         (lambda (_%g229807229822%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g229807229822%_))))
                                        (_%g229805230121%_
                                         (lambda (_%g229807229828%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g229807229828%_))
                                               (let ((_%e229809229830%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%g229807229828%_))))
                                                 (let ((_%hd229810229833%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e229809229830%_)))
                                                       (_%tl229811229835%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e229809229830%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair/null?
                                                          _%tl229811229835%_))
                                                       (let ((_g233379_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-split-splice _%tl229811229835%_ '0))))
                 (begin
                   (let ((_g233380_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g233379_)
                                (##values-length _g233379_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g233380_ 2)))
                         (error "Context expects 2 values" _g233380_)))
                   (let ((_%target229812229838%_
                          (let ()
                            (declare (not safe))
                            (##values-ref _g233379_ 0)))
                         (_%tl229814229840%_
                          (let ()
                            (declare (not safe))
                            (##values-ref _g233379_ 1))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl229814229840%_))
                         (letrec ((_%loop229815229843%_
                                   (lambda (_%hd229813229846%_
                                            _%clause229819229848%_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd229813229846%_))
                                         (let ((_%e229816229850%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd229813229846%_))))
                                           (let ((_%lp-hd229817229853%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e229816229850%_)))
                                                 (_%lp-tl229818229855%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e229816229850%_))))
                                             (_%loop229815229843%_
                                              _%lp-tl229818229855%_
                                              (cons _%lp-hd229817229853%_
                                                    _%clause229819229848%_))))
                                         (let ((_%clause229820229858%_
                                                (reverse _%clause229819229848%_)))
                                           ((lambda (_%g229808229860%_)
                                              (for-each
                                               (lambda (_%clause229874%_)
                                                 (let* ((_%__stx232167232168%_
                                                         _%clause229874%_)
                                                        (_%g229877229892%_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%__stx232167232168%_)))))
                                                   (let ((_%__kont232169232170%_
                                                          (lambda (_%g229879229920%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g229880229921%_
                           _%g229881229922%_)
                    (let ((_%receiver229941%_
                           (let ((_%$e229938%_
                                  (gxc#apply-extract-receiver
                                   (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f '%#begin))
                                         _%g229879229920%_))))
                             (if _%$e229938%_
                                 _%$e229938%_
                                 _%g229881229922%_))))
                      (for-each
                       (lambda (_%g229942229944%_)
                         (gxc#apply-collect-object-refs__%
                          '#f
                          _%receiver229941%_
                          _%method-calls229260%_
                          _%slot-refs229261%_
                          _%g229942229944%_))
                       _%g229879229920%_))))
                 (_%__kont232171232172%_ (lambda () '#!void)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%__stx232167232168%_))
                                                         (let ((_%e229882229904%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%__stx232167232168%_))))
                   (let ((_%tl229884229909%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e229882229904%_)))
                         (_%hd229883229907%_
                          (let ()
                            (declare (not safe))
                            (##car _%e229882229904%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%hd229883229907%_))
                         (let ((_%e229885229912%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd229883229907%_))))
                           (let ((_%tl229887229917%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e229885229912%_)))
                                 (_%hd229886229915%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e229885229912%_))))
                             (_%__kont232169232170%_
                              _%tl229884229909%_
                              _%tl229887229917%_
                              _%hd229886229915%_)))
                         (_%__kont232171232172%_))))
                 (_%__kont232171232172%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((__tmp233381
                                                      (lambda (_%g229949229952%_
                                                               _%g229950229954%_)
                                                        (cons _%g229949229952%_
                                                              _%g229950229954%_))))
                                                 (declare (not safe))
                                                 (foldr__0
                                                  __tmp233381
                                                  '()
                                                  _%g229808229860%_)))
                                              (if (_%no-specializer?229264%_)
                                                  _%stx229168%_
                                                  (let* ((_%specializer-id229963%_
                                                          (let* ((_%id229957%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp233382
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%g229179229241%_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp233382 '"::specialize")))
                         (_%specializer-id229960%_
                          (let ((__tmp233383
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _%stx229168%_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _%id229957%_
                             __tmp233383))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _%specializer-id229960%_))
                    _%specializer-id229960%_))
                 (_%$klass229965%_
                  (let ((__tmp233384
                         (let () (declare (not safe)) (##gensym '__klass))))
                    (declare (not safe))
                    (make-symbol__0 __tmp233384)))
                 (_%$method-table229967%_
                  (let ((__tmp233385
                         (let ()
                           (declare (not safe))
                           (##gensym '__method-table))))
                    (declare (not safe))
                    (make-symbol__0 __tmp233385)))
                 (_%methods229969%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%method-calls229260%_)))
                 (_%$methods229973%_
                  (let ((__tmp233386
                         (lambda (_%id229971%_)
                           (let ((__tmp233387 (gensym _%id229971%_)))
                             (declare (not safe))
                             (make-symbol__1 '"__" __tmp233387)))))
                    (declare (not safe))
                    (##map __tmp233386 _%methods229969%_)))
                 (_%_229982%_
                  (let ((__tmp233388
                         (lambda (_%g229974229977%_ _%g229975229979%_)
                           (let ()
                             (declare (not safe))
                             (__hash-put!
                              _%method-calls229260%_
                              _%g229974229977%_
                              _%g229975229979%_)))))
                    (declare (not safe))
                    (##for-each
                     __tmp233388
                     _%methods229969%_
                     _%$methods229973%_)))
                 (_%methods-bind229992%_
                  (let ((__tmp233389
                         (lambda (_%g229984229987%_ _%g229985229989%_)
                           (_%generate-method-bind229170%_
                            _%$klass229965%_
                            _%$method-table229967%_
                            _%g229984229987%_
                            _%g229985229989%_))))
                    (declare (not safe))
                    (##map __tmp233389 _%methods229969%_ _%$methods229973%_)))
                 (_%slots229994%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%slot-refs229261%_)))
                 (_%$slots229998%_
                  (let ((__tmp233390
                         (lambda (_%id229996%_)
                           (let ((__tmp233391 (gensym _%id229996%_)))
                             (declare (not safe))
                             (make-symbol__1 '"__" __tmp233391)))))
                    (declare (not safe))
                    (##map __tmp233390 _%slots229994%_)))
                 (_%_230007%_
                  (let ((__tmp233392
                         (lambda (_%g229999230002%_ _%g230000230004%_)
                           (let ()
                             (declare (not safe))
                             (__hash-put!
                              _%slot-refs229261%_
                              _%g229999230002%_
                              _%g230000230004%_)))))
                    (declare (not safe))
                    (##for-each __tmp233392 _%slots229994%_ _%$slots229998%_)))
                 (_%slots-bind230016%_
                  (let ((__tmp233393
                         (lambda (_%g230008230011%_ _%g230009230013%_)
                           (_%generate-slot-bind229171%_
                            _%$klass229965%_
                            _%g230008230011%_
                            _%g230009230013%_))))
                    (declare (not safe))
                    (##map __tmp233393 _%slots229994%_ _%$slots229998%_)))
                 (_%specializer-clauses230114%_
                  (map (lambda (_%clause230018%_)
                         (let* ((_%__stx232187232188%_ _%clause230018%_)
                                (_%g230021230036%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx232187232188%_)))))
                           (let ((_%__kont232189232190%_
                                  (lambda (_%g230023230064%_
                                           _%g230024230065%_
                                           _%g230025230066%_)
                                    (let* ((_%receiver230095%_
                                            (let ((_%$e230092%_
                                                   (gxc#apply-extract-receiver
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#begin))
                                                          _%g230023230064%_))))
                                              (if _%$e230092%_
                                                  _%$e230092%_
                                                  _%g230025230066%_)))
                                           (_%body230101%_
                                            (map (lambda (_%g230096230098%_)
                                                   (gxc#apply-subst-object-refs__%
                                                    '#f
                                                    _%receiver230095%_
                                                    _%$klass229965%_
                                                    _%method-calls229260%_
                                                    _%slot-refs229261%_
                                                    _%g230096230098%_))
                                                 _%g230023230064%_)))
                                      (cons (cons _%g230025230066%_
                                                  _%g230024230065%_)
                                            _%body230101%_))))
                                 (_%__kont232191232192%_
                                  (lambda () _%clause230018%_)))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx232187232188%_))
                                 (let ((_%e230026230048%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx232187232188%_))))
                                   (let ((_%tl230028230053%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e230026230048%_)))
                                         (_%hd230027230051%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e230026230048%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd230027230051%_))
                                         (let ((_%e230029230056%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd230027230051%_))))
                                           (let ((_%tl230031230061%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e230029230056%_)))
                                                 (_%hd230030230059%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e230029230056%_))))
                                             (_%__kont232189232190%_
                                              _%tl230028230053%_
                                              _%tl230031230061%_
                                              _%hd230030230059%_)))
                                         (_%__kont232191232192%_))))
                                 (_%__kont232191232192%_)))))
                       (let ((__tmp233394
                              (lambda (_%g230106230109%_ _%g230107230111%_)
                                (cons _%g230106230109%_ _%g230107230111%_))))
                         (declare (not safe))
                         (foldr__0 __tmp233394 '() _%g229808229860%_))))
                 (_%specializer-impl230116%_
                  (let ((__tmp233395
                         (cons '%#case-lambda _%specializer-clauses230114%_)))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp233395 _%stx229168%_)))
                 (_%specializer-impl230118%_
                  (_%generate-specializer-impl229172%_
                   _%$klass229965%_
                   _%$method-table229967%_
                   _%methods-bind229992%_
                   _%slots-bind230016%_
                   _%specializer-impl230116%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp233397
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%g229179229241%_)))
                                                          (__tmp233396
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%specializer-id229963%_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp233397
                                                       '" => "
                                                       __tmp233396))
                                                    (_%generate-specializer-def229173%_
                                                     _%g229179229241%_
                                                     _%specializer-id229963%_
                                                     _%specializer-impl230118%_))))
                                            _%clause229820229858%_))))))
                           (_%loop229815229843%_ _%target229812229838%_ '()))
                         (_%g229806229825%_ _%g229807229828%_)))))
               (_%g229806229825%_ _%g229807229828%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g229806229825%_
                                                _%g229807229828%_)))))
                                   (_%g229805230121%_ _%g229178229240%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#opt-lambda-expr?
                                        _%g229178229240%_))
                                     (let* ((_%g230125230155%_
                                             (lambda (_%g230126230152%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g230126230152%_))))
                                            (_%g230124230782%_
                                             (lambda (_%g230126230158%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%g230126230158%_))
                                                   (let ((_%e230130230160%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%g230126230158%_))))
                                                     (let ((_%hd230131230163%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e230130230160%_)))
                                                           (_%tl230132230165%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e230130230160%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl230132230165%_))
                                                           (let ((_%e230133230168%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl230132230165%_))))
                     (let ((_%hd230134230171%_
                            (let ()
                              (declare (not safe))
                              (##car _%e230133230168%_)))
                           (_%tl230135230173%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e230133230168%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%hd230134230171%_))
                           (let ((_%e230136230176%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd230134230171%_))))
                             (let ((_%hd230137230179%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e230136230176%_)))
                                   (_%tl230138230181%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e230136230176%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd230137230179%_))
                                   (let ((_%e230139230184%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd230137230179%_))))
                                     (let ((_%hd230140230187%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e230139230184%_)))
                                           (_%tl230141230189%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e230139230184%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%hd230140230187%_))
                                           (let ((_%e230142230192%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%hd230140230187%_))))
                                             (let ((_%hd230143230195%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e230142230192%_)))
                                                   (_%tl230144230197%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e230142230192%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl230144230197%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl230141230189%_))
                                                       (let ((_%e230145230200%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%tl230141230189%_))))
                 (let ((_%hd230146230203%_
                        (let ()
                          (declare (not safe))
                          (##car _%e230145230200%_)))
                       (_%tl230147230205%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e230145230200%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl230147230205%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl230138230181%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl230135230173%_))
                               (let ((_%e230148230208%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%tl230135230173%_))))
                                 (let ((_%hd230149230211%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e230148230208%_)))
                                       (_%tl230150230213%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e230148230208%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%tl230150230213%_))
                                       ((lambda (_%g230127230216%_
                                                 _%g230128230217%_
                                                 _%g230129230218%_)
                                          (let* ((_%g230242230260%_
                                                  (lambda (_%g230243230257%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g230243230257%_))))
                                                 (_%g230241230316%_
                                                  (lambda (_%g230243230263%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%g230243230263%_))
                                                        (let ((_%e230247230265%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%g230243230263%_))))
                  (let ((_%hd230248230268%_
                         (let ()
                           (declare (not safe))
                           (##car _%e230247230265%_)))
                        (_%tl230249230270%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e230247230265%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl230249230270%_))
                        (let ((_%e230250230273%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl230249230270%_))))
                          (let ((_%hd230251230276%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e230250230273%_)))
                                (_%tl230252230278%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e230250230273%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd230251230276%_))
                                (let ((_%e230253230281%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd230251230276%_))))
                                  (let ((_%hd230254230284%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e230253230281%_)))
                                        (_%tl230255230286%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e230253230281%_))))
                                    ((lambda (_%g230244230289%_
                                              _%g230245230290%_
                                              _%g230246230291%_)
                                       (let ((_%receiver230310%_
                                              (let ((_%$e230307%_
                                                     (gxc#apply-extract-receiver
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               '%#begin))
                                                            _%g230244230289%_))))
                                                (if _%$e230307%_
                                                    _%$e230307%_
                                                    _%g230246230291%_))))
                                         (for-each
                                          (lambda (_%g230311230313%_)
                                            (gxc#apply-collect-object-refs__%
                                             '#f
                                             _%receiver230310%_
                                             _%method-calls229260%_
                                             _%slot-refs229261%_
                                             _%g230311230313%_))
                                          _%g230244230289%_)))
                                     _%tl230252230278%_
                                     _%tl230255230286%_
                                     _%hd230254230284%_)))
                                (_%g230242230260%_ _%g230243230263%_))))
                        (_%g230242230260%_ _%g230243230263%_))))
                (_%g230242230260%_ _%g230243230263%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g230241230316%_
                                             _%g230128230217%_))
                                          (let* ((_%g230319230338%_
                                                  (lambda (_%g230320230335%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g230320230335%_))))
                                                 (_%g230318230460%_
                                                  (lambda (_%g230320230341%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%g230320230341%_))
                                                        (let ((_%e230322230343%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%g230320230341%_))))
                  (let ((_%hd230323230346%_
                         (let ()
                           (declare (not safe))
                           (##car _%e230322230343%_)))
                        (_%tl230324230348%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e230322230343%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%tl230324230348%_))
                        (let ((_g233398_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _%tl230324230348%_
                                  '0))))
                          (begin
                            (let ((_g233399_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g233398_)
                                         (##values-length _g233398_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g233399_ 2)))
                                  (error "Context expects 2 values"
                                         _g233399_)))
                            (let ((_%target230325230351%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g233398_ 0)))
                                  (_%tl230327230353%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g233398_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl230327230353%_))
                                  (letrec ((_%loop230328230356%_
                                            (lambda (_%hd230326230359%_
                                                     _%clause230332230361%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd230326230359%_))
                                                  (let ((_%e230329230363%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd230326230359%_))))
                                                    (let ((_%lp-hd230330230366%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e230329230363%_)))
                                                          (_%lp-tl230331230368%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e230329230363%_))))
                                                      (_%loop230328230356%_
                                                       _%lp-tl230331230368%_
                                                       (cons _%lp-hd230330230366%_
                                                             _%clause230332230361%_))))
                                                  (let ((_%clause230333230371%_
                                                         (reverse _%clause230332230361%_)))
                                                    ((lambda (_%g230321230373%_)
                                                       (for-each
                                                        (lambda (_%clause230386%_)
                                                          (let* ((_%g230388230403%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%g230389230400%_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g230389230400%_))))
                         (_%g230387230450%_
                          (lambda (_%g230389230406%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%g230389230406%_))
                                (let ((_%e230393230408%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%g230389230406%_))))
                                  (let ((_%hd230394230411%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e230393230408%_)))
                                        (_%tl230395230413%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e230393230408%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd230394230411%_))
                                        (let ((_%e230396230416%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd230394230411%_))))
                                          (let ((_%hd230397230419%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e230396230416%_)))
                                                (_%tl230398230421%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e230396230416%_))))
                                            ((lambda (_%g230390230424%_
                                                      _%g230391230425%_
                                                      _%g230392230426%_)
                                               (let ((_%receiver230444%_
                                                      (let ((_%$e230441%_
                                                             (gxc#apply-extract-receiver
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f '%#begin))
                            _%g230390230424%_))))
                (if _%$e230441%_ _%$e230441%_ _%g230392230426%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (for-each
                                                  (lambda (_%g230445230447%_)
                                                    (gxc#apply-collect-object-refs__%
                                                     '#f
                                                     _%receiver230444%_
                                                     _%method-calls229260%_
                                                     _%slot-refs229261%_
                                                     _%g230445230447%_))
                                                  _%g230390230424%_)))
                                             _%tl230395230413%_
                                             _%tl230398230421%_
                                             _%hd230397230419%_)))
                                        (_%g230388230403%_
                                         _%g230389230406%_))))
                                (_%g230388230403%_ _%g230389230406%_)))))
                    (_%g230387230450%_ _%clause230386%_)))
                (let ((__tmp233400
                       (lambda (_%g230452230455%_ _%g230453230457%_)
                         (cons _%g230452230455%_ _%g230453230457%_))))
                  (declare (not safe))
                  (foldr__0 __tmp233400 '() _%g230321230373%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%clause230333230371%_))))))
                                    (_%loop230328230356%_
                                     _%target230325230351%_
                                     '()))
                                  (_%g230319230338%_ _%g230320230341%_)))))
                        (_%g230319230338%_ _%g230320230341%_))))
                (_%g230319230338%_ _%g230320230341%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g230318230460%_
                                             _%g230127230216%_))
                                          (if (_%no-specializer?229264%_)
                                              _%stx229168%_
                                              (let* ((_%specializer-id230469%_
                                                      (let* ((_%id230463%_
                                                              (let ((__tmp233401
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g229179229241%_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp233401 '"::specialize")))
                     (_%specializer-id230466%_
                      (let ((__tmp233402
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _%stx229168%_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _%id230463%_ __tmp233402))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _%specializer-id230466%_))
                _%specializer-id230466%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$klass230471%_
                                                      (let ((__tmp233403
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__klass))))
                (declare (not safe))
                (make-symbol__0 __tmp233403)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$method-table230473%_
                                                      (let ((__tmp233404
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__method-table))))
                (declare (not safe))
                (make-symbol__0 __tmp233404)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods230475%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%method-calls229260%_)))
                                                     (_%$methods230479%_
                                                      (let ((__tmp233405
                                                             (lambda (_%id230477%_)
                                                               (let ((__tmp233406
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gensym _%id230477%_)))
                         (declare (not safe))
                         (make-symbol__1 '"__" __tmp233406)))))
                (declare (not safe))
                (##map __tmp233405 _%methods230475%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_230488%_
                                                      (let ((__tmp233407
                                                             (lambda (_%g230480230483%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g230481230485%_)
                       (let ()
                         (declare (not safe))
                         (__hash-put!
                          _%method-calls229260%_
                          _%g230480230483%_
                          _%g230481230485%_)))))
                (declare (not safe))
                (##for-each __tmp233407 _%methods230475%_ _%$methods230479%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods-bind230498%_
                                                      (let ((__tmp233408
                                                             (lambda (_%g230490230493%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g230491230495%_)
                       (_%generate-method-bind229170%_
                        _%$klass230471%_
                        _%$method-table230473%_
                        _%g230490230493%_
                        _%g230491230495%_))))
                (declare (not safe))
                (##map __tmp233408 _%methods230475%_ _%$methods230479%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots230500%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%slot-refs229261%_)))
                                                     (_%$slots230504%_
                                                      (let ((__tmp233409
                                                             (lambda (_%id230502%_)
                                                               (let ((__tmp233410
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gensym _%id230502%_)))
                         (declare (not safe))
                         (make-symbol__1 '"__" __tmp233410)))))
                (declare (not safe))
                (##map __tmp233409 _%slots230500%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_230513%_
                                                      (let ((__tmp233411
                                                             (lambda (_%g230505230508%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g230506230510%_)
                       (let ()
                         (declare (not safe))
                         (__hash-put!
                          _%slot-refs229261%_
                          _%g230505230508%_
                          _%g230506230510%_)))))
                (declare (not safe))
                (##for-each __tmp233411 _%slots230500%_ _%$slots230504%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots-bind230522%_
                                                      (let ((__tmp233412
                                                             (lambda (_%g230514230517%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g230515230519%_)
                       (_%generate-slot-bind229171%_
                        _%$klass230471%_
                        _%g230514230517%_
                        _%g230515230519%_))))
                (declare (not safe))
                (##map __tmp233412 _%slots230500%_ _%$slots230504%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-lambda-expr230614%_
                                                      (let* ((_%g230524230542%_
                                                              (lambda (_%g230525230539%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g230525230539%_))))
                     (_%g230523230611%_
                      (lambda (_%g230525230545%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g230525230545%_))
                            (let ((_%e230529230547%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g230525230545%_))))
                              (let ((_%hd230530230550%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e230529230547%_)))
                                    (_%tl230531230552%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e230529230547%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl230531230552%_))
                                    (let ((_%e230532230555%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl230531230552%_))))
                                      (let ((_%hd230533230558%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e230532230555%_)))
                                            (_%tl230534230560%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e230532230555%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd230533230558%_))
                                            (let ((_%e230535230563%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd230533230558%_))))
                                              (let ((_%hd230536230566%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e230535230563%_)))
                                                    (_%tl230537230568%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e230535230563%_))))
                                                ((lambda (_%g230526230571%_
                                                          _%g230527230572%_
                                                          _%g230528230573%_)
                                                   (let* ((_%receiver230602%_
                                                           (let ((_%$e230599%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gxc#apply-extract-receiver
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '%#begin))
                                 _%g230526230571%_))))
                     (if _%$e230599%_ _%$e230599%_ _%g230528230573%_)))
                  (_%body230608%_
                   (map (lambda (_%g230603230605%_)
                          (gxc#apply-subst-object-refs__%
                           '#f
                           _%receiver230602%_
                           _%$klass230471%_
                           _%method-calls229260%_
                           _%slot-refs229261%_
                           _%g230603230605%_))
                        _%g230526230571%_))
                  (__tmp233413
                   (cons '%#lambda
                         (cons (cons _%g230528230573%_ _%g230527230572%_)
                               _%body230608%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp233413
                                                      _%g230128230217%_)))
                                                 _%tl230534230560%_
                                                 _%tl230537230568%_
                                                 _%hd230536230566%_)))
                                            (_%g230524230542%_
                                             _%g230525230545%_))))
                                    (_%g230524230542%_ _%g230525230545%_))))
                            (_%g230524230542%_ _%g230525230545%_)))))
                (_%g230523230611%_ _%g230128230217%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-case-lambda-expr230775%_
                                                      (let* ((_%g230616230635%_
                                                              (lambda (_%g230617230632%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g230617230632%_))))
                     (_%g230615230772%_
                      (lambda (_%g230617230638%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g230617230638%_))
                            (let ((_%e230619230640%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g230617230638%_))))
                              (let ((_%hd230620230643%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e230619230640%_)))
                                    (_%tl230621230645%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e230619230640%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl230621230645%_))
                                    (let ((_g233414_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _%tl230621230645%_
                                              '0))))
                                      (begin
                                        (let ((_g233415_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g233414_)
                                                     (##values-length
                                                      _g233414_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g233415_ 2)))
                                              (error "Context expects 2 values"
                                                     _g233415_)))
                                        (let ((_%target230622230648%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g233414_ 0)))
                                              (_%tl230624230650%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g233414_ 1))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl230624230650%_))
                                              (letrec ((_%loop230625230653%_
                                                        (lambda (_%hd230623230656%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%clause230629230658%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd230623230656%_))
                      (let ((_%e230626230660%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd230623230656%_))))
                        (let ((_%lp-hd230627230663%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e230626230660%_)))
                              (_%lp-tl230628230665%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e230626230660%_))))
                          (_%loop230625230653%_
                           _%lp-tl230628230665%_
                           (cons _%lp-hd230627230663%_
                                 _%clause230629230658%_))))
                      (let ((_%clause230630230668%_
                             (reverse _%clause230629230658%_)))
                        ((lambda (_%g230618230670%_)
                           (let* ((_%clauses230770%_
                                   (map (lambda (_%clause230684%_)
                                          (let* ((_%__stx232207232208%_
                                                  _%clause230684%_)
                                                 (_%g230687230702%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx232207232208%_)))))
                                            (let ((_%__kont232209232210%_
                                                   (lambda (_%g230689230730%_
                                                            _%g230690230731%_
                                                            _%g230691230732%_)
                                                     (let* ((_%receiver230751%_
                                                             (let ((_%$e230748%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gxc#apply-extract-receiver
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f '%#begin))
                                   _%g230689230730%_))))
                       (if _%$e230748%_ _%$e230748%_ _%g230691230732%_)))
                    (_%body230757%_
                     (map (lambda (_%g230752230754%_)
                            (gxc#apply-subst-object-refs__%
                             '#f
                             _%receiver230751%_
                             _%$klass230471%_
                             _%method-calls229260%_
                             _%slot-refs229261%_
                             _%g230752230754%_))
                          _%g230689230730%_)))
               (cons (cons _%g230691230732%_ _%g230690230731%_)
                     _%body230757%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont232211232212%_
                                                   (lambda ()
                                                     _%clause230684%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%__stx232207232208%_))
                                                  (let ((_%e230692230714%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%__stx232207232208%_))))
                                                    (let ((_%tl230694230719%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e230692230714%_)))
                                                          (_%hd230693230717%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e230692230714%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd230693230717%_))
                                                          (let ((_%e230695230722%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd230693230717%_))))
                    (let ((_%tl230697230727%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e230695230722%_)))
                          (_%hd230696230725%_
                           (let ()
                             (declare (not safe))
                             (##car _%e230695230722%_))))
                      (_%__kont232209232210%_
                       _%tl230694230719%_
                       _%tl230697230727%_
                       _%hd230696230725%_)))
                  (_%__kont232211232212%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont232211232212%_)))))
                                        (let ((__tmp233416
                                               (lambda (_%g230762230765%_
                                                        _%g230763230767%_)
                                                 (cons _%g230762230765%_
                                                       _%g230763230767%_))))
                                          (declare (not safe))
                                          (foldr__0
                                           __tmp233416
                                           '()
                                           _%g230618230670%_))))
                                  (__tmp233417
                                   (cons '%#case-lambda _%clauses230770%_)))
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp233417
                              _%g230127230216%_)))
                         _%clause230630230668%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop230625230653%_
                                                 _%target230622230648%_
                                                 '()))
                                              (_%g230616230635%_
                                               _%g230617230638%_)))))
                                    (_%g230616230635%_ _%g230617230638%_))))
                            (_%g230616230635%_ _%g230617230638%_)))))
                (_%g230615230772%_ _%g230127230216%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl230777%_
                                                      (let ((__tmp233418
                                                             (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (cons (cons _%g230129230218%_ '())
                                             (cons _%specializer-lambda-expr230614%_
                                                   '()))
                                       '())
                                 (cons _%specializer-case-lambda-expr230775%_
                                       '())))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp233418 _%stx229168%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl230779%_
                                                      (_%generate-specializer-impl229172%_
                                                       _%$klass230471%_
                                                       _%$method-table230473%_
                                                       _%methods-bind230498%_
                                                       _%slots-bind230522%_
                                                       _%specializer-impl230777%_)))
                                                (let ((__tmp233420
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%g229179229241%_)))
                                                      (__tmp233419
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%specializer-id230469%_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp233420
                                                   '" => "
                                                   __tmp233419))
                                                (_%generate-specializer-def229173%_
                                                 _%g229179229241%_
                                                 _%specializer-id230469%_
                                                 _%specializer-impl230779%_))))
                                        _%hd230149230211%_
                                        _%hd230146230203%_
                                        _%hd230143230195%_)
                                       (_%g230125230155%_ _%g230126230158%_))))
                               (_%g230125230155%_ _%g230126230158%_))
                           (_%g230125230155%_ _%g230126230158%_))
                       (_%g230125230155%_ _%g230126230158%_))))
               (_%g230125230155%_ _%g230126230158%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g230125230155%_
                                                    _%g230126230158%_))))
                                           (_%g230125230155%_
                                            _%g230126230158%_))))
                                   (_%g230125230155%_ _%g230126230158%_))))
                           (_%g230125230155%_ _%g230126230158%_))))
                   (_%g230125230155%_ _%g230126230158%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g230125230155%_
                                                    _%g230126230158%_)))))
                                       (_%g230124230782%_ _%g229178229240%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#kw-lambda-expr?
                                            _%g229178229240%_))
                                         (let* ((_%g230786230839%_
                                                 (lambda (_%g230787230836%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g230787230836%_))))
                                                (_%g230785232004%_
                                                 (lambda (_%g230787230842%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%g230787230842%_))
                                                       (let ((_%e230793230844%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%g230787230842%_))))
                 (let ((_%hd230794230847%_
                        (let ()
                          (declare (not safe))
                          (##car _%e230793230844%_)))
                       (_%tl230795230849%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e230793230844%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#identifier? _%hd230794230847%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-eq? '%#let-values _%hd230794230847%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl230795230849%_))
                               (let ((_%e230796230852%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%tl230795230849%_))))
                                 (let ((_%hd230797230855%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e230796230852%_)))
                                       (_%tl230798230857%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e230796230852%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd230797230855%_))
                                       (let ((_%e230799230860%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd230797230855%_))))
                                         (let ((_%hd230800230863%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e230799230860%_)))
                                               (_%tl230801230865%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e230799230860%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%hd230800230863%_))
                                               (let ((_%e230802230868%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%hd230800230863%_))))
                                                 (let ((_%hd230803230871%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e230802230868%_)))
                                                       (_%tl230804230873%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e230802230868%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%hd230803230871%_))
                                                       (let ((_%e230805230876%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%hd230803230871%_))))
                 (let ((_%hd230806230879%_
                        (let ()
                          (declare (not safe))
                          (##car _%e230805230876%_)))
                       (_%tl230807230881%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e230805230876%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl230807230881%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%tl230804230873%_))
                           (let ((_%e230808230884%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%tl230804230873%_))))
                             (let ((_%hd230809230887%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e230808230884%_)))
                                   (_%tl230810230889%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e230808230884%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd230809230887%_))
                                   (let ((_%e230811230892%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd230809230887%_))))
                                     (let ((_%hd230812230895%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e230811230892%_)))
                                           (_%tl230813230897%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e230811230892%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#identifier?
                                              _%hd230812230895%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-eq?
                                                  '%#let-values
                                                  _%hd230812230895%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%tl230813230897%_))
                                                   (let ((_%e230814230900%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%tl230813230897%_))))
                                                     (let ((_%hd230815230903%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e230814230900%_)))
                                                           (_%tl230816230905%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e230814230900%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%hd230815230903%_))
                                                           (let ((_%e230817230908%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%hd230815230903%_))))
                     (let ((_%hd230818230911%_
                            (let ()
                              (declare (not safe))
                              (##car _%e230817230908%_)))
                           (_%tl230819230913%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e230817230908%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%hd230818230911%_))
                           (let ((_%e230820230916%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd230818230911%_))))
                             (let ((_%hd230821230919%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e230820230916%_)))
                                   (_%tl230822230921%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e230820230916%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd230821230919%_))
                                   (let ((_%e230823230924%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd230821230919%_))))
                                     (let ((_%hd230824230927%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e230823230924%_)))
                                           (_%tl230825230929%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e230823230924%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl230825230929%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl230822230921%_))
                                               (let ((_%e230826230932%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%tl230822230921%_))))
                                                 (let ((_%hd230827230935%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e230826230932%_)))
                                                       (_%tl230828230937%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e230826230932%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl230828230937%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _%tl230819230913%_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _%tl230816230905%_))
                       (let ((_%e230829230940%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%tl230816230905%_))))
                         (let ((_%hd230830230943%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e230829230940%_)))
                               (_%tl230831230945%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e230829230940%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%tl230831230945%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl230810230889%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%tl230801230865%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%tl230798230857%_))
                                           (let ((_%e230832230948%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%tl230798230857%_))))
                                             (let ((_%hd230833230951%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e230832230948%_)))
                                                   (_%tl230834230953%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e230832230948%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl230834230953%_))
                                                   ((lambda (_%g230788230956%_
                                                             _%g230789230957%_
                                                             _%g230790230958%_
                                                             _%g230791230959%_
                                                             _%g230792230960%_)
                                                      (let* ((_%g231000231062%_
                                                              (lambda (_%g231001231059%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g231001231059%_))))
                     (_%g230999232001%_
                      (lambda (_%g231001231065%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g231001231065%_))
                            (let ((_%e231007231067%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g231001231065%_))))
                              (let ((_%hd231008231070%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e231007231067%_)))
                                    (_%tl231009231072%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e231007231067%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd231008231070%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _%hd231008231070%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl231009231072%_))
                                            (let ((_%e231010231075%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl231009231072%_))))
                                              (let ((_%hd231011231078%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e231010231075%_)))
                                                    (_%tl231012231080%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e231010231075%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl231012231080%_))
                                                    (let ((_%e231013231083%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl231012231080%_))))
                                                      (let ((_%hd231014231086%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e231013231083%_)))
                    (_%tl231015231088%_
                     (let () (declare (not safe)) (##cdr _%e231013231083%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%hd231014231086%_))
                    (let ((_%e231016231091%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd231014231086%_))))
                      (let ((_%hd231017231094%_
                             (let ()
                               (declare (not safe))
                               (##car _%e231016231091%_)))
                            (_%tl231018231096%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e231016231091%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%hd231017231094%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#call _%hd231017231094%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl231018231096%_))
                                    (let ((_%e231019231099%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl231018231096%_))))
                                      (let ((_%hd231020231102%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e231019231099%_)))
                                            (_%tl231021231104%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e231019231099%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd231020231102%_))
                                            (let ((_%e231022231107%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd231020231102%_))))
                                              (let ((_%hd231023231110%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e231022231107%_)))
                                                    (_%tl231024231112%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e231022231107%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd231023231110%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd231023231110%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl231024231112%_))
                                                            (let ((_%e231025231115%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl231024231112%_))))
                      (let ((_%hd231026231118%_
                             (let ()
                               (declare (not safe))
                               (##car _%e231025231115%_)))
                            (_%tl231027231120%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e231025231115%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl231027231120%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl231021231104%_))
                                (let ((_%e231028231123%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl231021231104%_))))
                                  (let ((_%hd231029231126%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e231028231123%_)))
                                        (_%tl231030231128%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e231028231123%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd231029231126%_))
                                        (let ((_%e231031231131%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd231029231126%_))))
                                          (let ((_%hd231032231134%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e231031231131%_)))
                                                (_%tl231033231136%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e231031231131%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _%hd231032231134%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _%hd231032231134%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl231033231136%_))
                                                        (let ((_%e231034231139%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl231033231136%_))))
                  (let ((_%hd231035231142%_
                         (let ()
                           (declare (not safe))
                           (##car _%e231034231139%_)))
                        (_%tl231036231144%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e231034231139%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl231036231144%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl231030231128%_))
                            (let ((_%e231037231147%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl231030231128%_))))
                              (let ((_%hd231038231150%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e231037231147%_)))
                                    (_%tl231039231152%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e231037231147%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd231038231150%_))
                                    (let ((_%e231040231155%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd231038231150%_))))
                                      (let ((_%hd231041231158%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e231040231155%_)))
                                            (_%tl231042231160%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e231040231155%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _%hd231041231158%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _%hd231041231158%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl231042231160%_))
                                                    (let ((_%e231043231163%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl231042231160%_))))
                                                      (let ((_%hd231044231166%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e231043231163%_)))
                    (_%tl231045231168%_
                     (let () (declare (not safe)) (##cdr _%e231043231163%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl231045231168%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%tl231039231152%_))
                        (if (let ((__tmp233421
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-length _%tl231039231152%_))))
                              (declare (not safe))
                              (##fx>= __tmp233421 '1))
                            (let ((_g233422_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _%tl231039231152%_
                                      '1))))
                              (begin
                                (let ((_g233423_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g233422_)
                                             (##values-length _g233422_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g233423_ 2)))
                                      (error "Context expects 2 values"
                                             _g233423_)))
                                (let ((_%target231046231171%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g233422_ 0)))
                                      (_%tl231048231173%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g233422_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl231048231173%_))
                                      (let ((_%e231055231176%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl231048231173%_))))
                                        (let ((_%hd231056231179%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e231055231176%_)))
                                              (_%tl231057231181%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e231055231176%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl231057231181%_))
                                              (letrec ((_%loop231049231184%_
                                                        (lambda (_%hd231047231187%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%kw-ref231053231189%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd231047231187%_))
                      (let ((_%e231050231191%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd231047231187%_))))
                        (let ((_%lp-hd231051231194%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e231050231191%_)))
                              (_%lp-tl231052231196%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e231050231191%_))))
                          (_%loop231049231184%_
                           _%lp-tl231052231196%_
                           (cons _%lp-hd231051231194%_
                                 _%kw-ref231053231189%_))))
                      (let ((_%kw-ref231054231199%_
                             (reverse _%kw-ref231053231189%_)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl231015231088%_))
                            ((lambda (_%g231002231201%_
                                      _%g231003231202%_
                                      _%g231004231203%_
                                      _%g231005231204%_
                                      _%g231006231205%_)
                               (let* ((_%kw-count231256%_
                                       (length (let ((__tmp233424
                                                      (lambda (_%g231248231251%_
                                                               _%g231249231253%_)
                                                        (cons _%g231248231251%_
                                                              _%g231249231253%_))))
                                                 (declare (not safe))
                                                 (foldr__0
                                                  __tmp233424
                                                  '()
                                                  _%g231003231202%_))))
                                      (_%self-index231258%_
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _%kw-count231256%_ '1))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#lambda-expr? _%g230790230958%_))
                                     (let* ((_%g231262231276%_
                                             (lambda (_%g231263231273%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g231263231273%_))))
                                            (_%g231261231399%_
                                             (lambda (_%g231263231279%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%g231263231279%_))
                                                   (let ((_%e231266231281%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%g231263231279%_))))
                                                     (let ((_%hd231267231284%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e231266231281%_)))
                                                           (_%tl231268231286%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e231266231281%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl231268231286%_))
                                                           (let ((_%e231269231289%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl231268231286%_))))
                     (let ((_%hd231270231292%_
                            (let ()
                              (declare (not safe))
                              (##car _%e231269231289%_)))
                           (_%tl231271231294%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e231269231289%_))))
                       ((lambda (_%g231264231297%_ _%g231265231298%_)
                          (let* ((_%self231315%_
                                  (list-ref
                                   _%g231265231298%_
                                   _%self-index231258%_))
                                 (_%receiver231320%_
                                  (let ((_%$e231317%_
                                         (gxc#apply-extract-receiver
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   '%#begin))
                                                _%g231264231297%_))))
                                    (if _%$e231317%_
                                        _%$e231317%_
                                        _%self231315%_))))
                            (for-each
                             (lambda (_%g231322231324%_)
                               (gxc#apply-collect-object-refs__%
                                '#f
                                _%receiver231320%_
                                _%method-calls229260%_
                                _%slot-refs229261%_
                                _%g231322231324%_))
                             _%g231264231297%_)
                            (if (_%no-specializer?229264%_)
                                _%stx229168%_
                                (let* ((_%specializer-id231333%_
                                        (let* ((_%id231327%_
                                                (let ((__tmp233425
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%g229179229241%_))))
                                                  (declare (not safe))
                                                  (make-symbol__1
                                                   __tmp233425
                                                   '"::specialize")))
                                               (_%specializer-id231330%_
                                                (let ((__tmp233426
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-source
                                                          _%stx229168%_))))
                                                  (declare (not safe))
                                                  (gx#core-quote-syntax__1
                                                   _%id231327%_
                                                   __tmp233426))))
                                          (let ()
                                            (declare (not safe))
                                            (gx#core-bind-runtime!__0
                                             _%specializer-id231330%_))
                                          _%specializer-id231330%_))
                                       (_%$klass231335%_
                                        (let ((__tmp233427
                                               (let ()
                                                 (declare (not safe))
                                                 (##gensym '__klass))))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp233427)))
                                       (_%$method-table231337%_
                                        (let ((__tmp233428
                                               (let ()
                                                 (declare (not safe))
                                                 (##gensym '__method-table))))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp233428)))
                                       (_%methods231339%_
                                        (let ()
                                          (declare (not safe))
                                          (__hash-keys
                                           _%method-calls229260%_)))
                                       (_%$methods231343%_
                                        (let ((__tmp233429
                                               (lambda (_%id231341%_)
                                                 (let ((__tmp233430
                                                        (gensym _%id231341%_)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    '"__"
                                                    __tmp233430)))))
                                          (declare (not safe))
                                          (##map __tmp233429
                                                 _%methods231339%_)))
                                       (_%_231352%_
                                        (let ((__tmp233431
                                               (lambda (_%g231344231347%_
                                                        _%g231345231349%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (__hash-put!
                                                    _%method-calls229260%_
                                                    _%g231344231347%_
                                                    _%g231345231349%_)))))
                                          (declare (not safe))
                                          (##for-each
                                           __tmp233431
                                           _%methods231339%_
                                           _%$methods231343%_)))
                                       (_%methods-bind231362%_
                                        (let ((__tmp233432
                                               (lambda (_%g231354231357%_
                                                        _%g231355231359%_)
                                                 (_%generate-method-bind229170%_
                                                  _%$klass231335%_
                                                  _%$method-table231337%_
                                                  _%g231354231357%_
                                                  _%g231355231359%_))))
                                          (declare (not safe))
                                          (##map __tmp233432
                                                 _%methods231339%_
                                                 _%$methods231343%_)))
                                       (_%slots231364%_
                                        (let ()
                                          (declare (not safe))
                                          (__hash-keys _%slot-refs229261%_)))
                                       (_%$slots231368%_
                                        (let ((__tmp233433
                                               (lambda (_%id231366%_)
                                                 (let ((__tmp233434
                                                        (gensym _%id231366%_)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    '"__"
                                                    __tmp233434)))))
                                          (declare (not safe))
                                          (##map __tmp233433 _%slots231364%_)))
                                       (_%_231377%_
                                        (let ((__tmp233435
                                               (lambda (_%g231369231372%_
                                                        _%g231370231374%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (__hash-put!
                                                    _%slot-refs229261%_
                                                    _%g231369231372%_
                                                    _%g231370231374%_)))))
                                          (declare (not safe))
                                          (##for-each
                                           __tmp233435
                                           _%slots231364%_
                                           _%$slots231368%_)))
                                       (_%slots-bind231386%_
                                        (let ((__tmp233436
                                               (lambda (_%g231378231381%_
                                                        _%g231379231383%_)
                                                 (_%generate-slot-bind229171%_
                                                  _%$klass231335%_
                                                  _%g231378231381%_
                                                  _%g231379231383%_))))
                                          (declare (not safe))
                                          (##map __tmp233436
                                                 _%slots231364%_
                                                 _%$slots231368%_)))
                                       (_%specializer-impl231394%_
                                        (let* ((_%specializer-body231392%_
                                                (map (lambda (_%g231387231389%_)
                                                       (gxc#apply-subst-object-refs__%
                                                        '#f
                                                        _%receiver231320%_
                                                        _%$klass231335%_
                                                        _%method-calls229260%_
                                                        _%slot-refs229261%_
                                                        _%g231387231389%_))
                                                     _%g231264231297%_))
                                               (__tmp233437
                                                (cons '%#let-values
                                                      (cons (cons (cons (cons _%g230792230960%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      '())
                                (cons (cons '%#let-values
                                            (cons (cons (cons (cons _%g230791230959%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())
                      (cons (let ((__tmp233438
                                   (cons '%#lambda
                                         (cons _%g231265231298%_
                                               _%specializer-body231392%_))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp233438
                               _%g230790230958%_))
                            '()))
                '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons _%g230789230957%_
                                                        '())))
                                      '()))
                          '())
                    (cons _%g230788230956%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp233437
                                           _%stx229168%_)))
                                       (_%specializer-impl231396%_
                                        (_%generate-specializer-impl229172%_
                                         _%$klass231335%_
                                         _%$method-table231337%_
                                         _%methods-bind231362%_
                                         _%slots-bind231386%_
                                         _%specializer-impl231394%_)))
                                  (let ((__tmp233440
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%g229179229241%_)))
                                        (__tmp233439
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e
                                            _%specializer-id231333%_))))
                                    (declare (not safe))
                                    (gxc#verbose
                                     '"generate method specializer "
                                     __tmp233440
                                     '" => "
                                     __tmp233439))
                                  (_%generate-specializer-def229173%_
                                   _%g229179229241%_
                                   _%specializer-id231333%_
                                   _%specializer-impl231396%_)))))
                        _%tl231271231294%_
                        _%hd231270231292%_)))
                   (_%g231262231276%_ _%g231263231279%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g231262231276%_
                                                    _%g231263231279%_)))))
                                       (_%g231261231399%_ _%g230790230958%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#opt-lambda-expr?
                                            _%g230790230958%_))
                                         (let* ((_%g231403231433%_
                                                 (lambda (_%g231404231430%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g231404231430%_))))
                                                (_%g231402231997%_
                                                 (lambda (_%g231404231436%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%g231404231436%_))
                                                       (let ((_%e231408231438%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%g231404231436%_))))
                 (let ((_%hd231409231441%_
                        (let ()
                          (declare (not safe))
                          (##car _%e231408231438%_)))
                       (_%tl231410231443%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e231408231438%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%tl231410231443%_))
                       (let ((_%e231411231446%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%tl231410231443%_))))
                         (let ((_%hd231412231449%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e231411231446%_)))
                               (_%tl231413231451%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e231411231446%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%hd231412231449%_))
                               (let ((_%e231414231454%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%hd231412231449%_))))
                                 (let ((_%hd231415231457%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e231414231454%_)))
                                       (_%tl231416231459%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e231414231454%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd231415231457%_))
                                       (let ((_%e231417231462%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd231415231457%_))))
                                         (let ((_%hd231418231465%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e231417231462%_)))
                                               (_%tl231419231467%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e231417231462%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%hd231418231465%_))
                                               (let ((_%e231420231470%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%hd231418231465%_))))
                                                 (let ((_%hd231421231473%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e231420231470%_)))
                                                       (_%tl231422231475%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e231420231470%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl231422231475%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl231419231467%_))
                                                           (let ((_%e231423231478%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl231419231467%_))))
                     (let ((_%hd231424231481%_
                            (let ()
                              (declare (not safe))
                              (##car _%e231423231478%_)))
                           (_%tl231425231483%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e231423231478%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl231425231483%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%tl231416231459%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%tl231413231451%_))
                                   (let ((_%e231426231486%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%tl231413231451%_))))
                                     (let ((_%hd231427231489%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e231426231486%_)))
                                           (_%tl231428231491%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e231426231486%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl231428231491%_))
                                           ((lambda (_%g231405231494%_
                                                     _%g231406231495%_
                                                     _%g231407231496%_)
                                              (let* ((_%g231520231534%_
                                                      (lambda (_%g231521231531%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g231521231531%_))))
                                                     (_%g231519231581%_
                                                      (lambda (_%g231521231537%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g231521231537%_))
                                                            (let ((_%e231524231539%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%g231521231537%_))))
                      (let ((_%hd231525231542%_
                             (let ()
                               (declare (not safe))
                               (##car _%e231524231539%_)))
                            (_%tl231526231544%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e231524231539%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl231526231544%_))
                            (let ((_%e231527231547%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl231526231544%_))))
                              (let ((_%hd231528231550%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e231527231547%_)))
                                    (_%tl231529231552%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e231527231547%_))))
                                ((lambda (_%g231522231555%_ _%g231523231556%_)
                                   (let* ((_%self231569%_
                                           (list-ref
                                            _%g231523231556%_
                                            _%self-index231258%_))
                                          (_%receiver231574%_
                                           (let ((_%$e231571%_
                                                  (gxc#apply-extract-receiver
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gx#datum->syntax__0
                                                            '#f
                                                            '%#begin))
                                                         _%g231522231555%_))))
                                             (if _%$e231571%_
                                                 _%$e231571%_
                                                 _%self231569%_))))
                                     (for-each
                                      (lambda (_%g231576231578%_)
                                        (gxc#apply-collect-object-refs__%
                                         '#f
                                         _%receiver231574%_
                                         _%method-calls229260%_
                                         _%slot-refs229261%_
                                         _%g231576231578%_))
                                      _%g231522231555%_)))
                                 _%tl231529231552%_
                                 _%hd231528231550%_)))
                            (_%g231520231534%_ _%g231521231537%_))))
                    (_%g231520231534%_ _%g231521231537%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g231519231581%_
                                                 _%g231406231495%_))
                                              (let* ((_%g231584231603%_
                                                      (lambda (_%g231585231600%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g231585231600%_))))
                                                     (_%g231583231712%_
                                                      (lambda (_%g231585231606%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g231585231606%_))
                                                            (let ((_%e231587231608%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%g231585231606%_))))
                      (let ((_%hd231588231611%_
                             (let ()
                               (declare (not safe))
                               (##car _%e231587231608%_)))
                            (_%tl231589231613%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e231587231608%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _%tl231589231613%_))
                            (let ((_g233441_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _%tl231589231613%_
                                      '0))))
                              (begin
                                (let ((_g233442_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g233441_)
                                             (##values-length _g233441_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g233442_ 2)))
                                      (error "Context expects 2 values"
                                             _g233442_)))
                                (let ((_%target231590231616%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g233441_ 0)))
                                      (_%tl231592231618%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g233441_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl231592231618%_))
                                      (letrec ((_%loop231593231621%_
                                                (lambda (_%hd231591231624%_
                                                         _%clause231597231626%_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%hd231591231624%_))
                                                      (let ((_%e231594231628%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd231591231624%_))))
                (let ((_%lp-hd231595231631%_
                       (let () (declare (not safe)) (##car _%e231594231628%_)))
                      (_%lp-tl231596231633%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e231594231628%_))))
                  (_%loop231593231621%_
                   _%lp-tl231596231633%_
                   (cons _%lp-hd231595231631%_ _%clause231597231626%_))))
              (let ((_%clause231598231636%_ (reverse _%clause231597231626%_)))
                ((lambda (_%g231586231638%_)
                   (for-each
                    (lambda (_%clause231651%_)
                      (let* ((_%g231653231664%_
                              (lambda (_%g231654231661%_)
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g231654231661%_))))
                             (_%g231652231702%_
                              (lambda (_%g231654231667%_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%g231654231667%_))
                                    (let ((_%e231657231669%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%g231654231667%_))))
                                      (let ((_%hd231658231672%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e231657231669%_)))
                                            (_%tl231659231674%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e231657231669%_))))
                                        ((lambda (_%g231655231677%_
                                                  _%g231656231678%_)
                                           (let* ((_%self231690%_
                                                   (list-ref
                                                    _%g231656231678%_
                                                    _%self-index231258%_))
                                                  (_%receiver231695%_
                                                   (let ((_%$e231692%_
                                                          (gxc#apply-extract-receiver
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '%#begin))
                         _%g231655231677%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _%$e231692%_
                                                         _%$e231692%_
                                                         _%self231690%_))))
                                             (for-each
                                              (lambda (_%g231697231699%_)
                                                (gxc#apply-collect-object-refs__%
                                                 '#f
                                                 _%receiver231695%_
                                                 _%method-calls229260%_
                                                 _%slot-refs229261%_
                                                 _%g231697231699%_))
                                              _%g231655231677%_)))
                                         _%tl231659231674%_
                                         _%hd231658231672%_)))
                                    (_%g231653231664%_ _%g231654231667%_)))))
                        (_%g231652231702%_ _%clause231651%_)))
                    (let ((__tmp233443
                           (lambda (_%g231704231707%_ _%g231705231709%_)
                             (cons _%g231704231707%_ _%g231705231709%_))))
                      (declare (not safe))
                      (foldr__0 __tmp233443 '() _%g231586231638%_))))
                 _%clause231598231636%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_%loop231593231621%_
                                         _%target231590231616%_
                                         '()))
                                      (_%g231584231603%_ _%g231585231606%_)))))
                            (_%g231584231603%_ _%g231585231606%_))))
                    (_%g231584231603%_ _%g231585231606%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g231583231712%_
                                                 _%g231405231494%_))
                                              (if (_%no-specializer?229264%_)
                                                  _%stx229168%_
                                                  (let* ((_%specializer-id231721%_
                                                          (let* ((_%id231715%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp233444
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%g229179229241%_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp233444 '"::specialize")))
                         (_%specializer-id231718%_
                          (let ((__tmp233445
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _%stx229168%_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _%id231715%_
                             __tmp233445))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _%specializer-id231718%_))
                    _%specializer-id231718%_))
                 (_%$klass231723%_
                  (let ((__tmp233446
                         (let () (declare (not safe)) (##gensym '__klass))))
                    (declare (not safe))
                    (make-symbol__0 __tmp233446)))
                 (_%$method-table231725%_
                  (let ((__tmp233447
                         (let ()
                           (declare (not safe))
                           (##gensym '__method-table))))
                    (declare (not safe))
                    (make-symbol__0 __tmp233447)))
                 (_%methods231727%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%method-calls229260%_)))
                 (_%$methods231731%_
                  (let ((__tmp233448
                         (lambda (_%id231729%_)
                           (let ((__tmp233449 (gensym _%id231729%_)))
                             (declare (not safe))
                             (make-symbol__1 '"__" __tmp233449)))))
                    (declare (not safe))
                    (##map __tmp233448 _%methods231727%_)))
                 (_%_231740%_
                  (let ((__tmp233450
                         (lambda (_%g231732231735%_ _%g231733231737%_)
                           (let ()
                             (declare (not safe))
                             (__hash-put!
                              _%method-calls229260%_
                              _%g231732231735%_
                              _%g231733231737%_)))))
                    (declare (not safe))
                    (##for-each
                     __tmp233450
                     _%methods231727%_
                     _%$methods231731%_)))
                 (_%methods-bind231750%_
                  (let ((__tmp233451
                         (lambda (_%g231742231745%_ _%g231743231747%_)
                           (_%generate-method-bind229170%_
                            _%$klass231723%_
                            _%$method-table231725%_
                            _%g231742231745%_
                            _%g231743231747%_))))
                    (declare (not safe))
                    (##map __tmp233451 _%methods231727%_ _%$methods231731%_)))
                 (_%slots231752%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%slot-refs229261%_)))
                 (_%$slots231756%_
                  (let ((__tmp233452
                         (lambda (_%id231754%_)
                           (let ((__tmp233453 (gensym _%id231754%_)))
                             (declare (not safe))
                             (make-symbol__1 '"__" __tmp233453)))))
                    (declare (not safe))
                    (##map __tmp233452 _%slots231752%_)))
                 (_%_231765%_
                  (let ((__tmp233454
                         (lambda (_%g231757231760%_ _%g231758231762%_)
                           (let ()
                             (declare (not safe))
                             (__hash-put!
                              _%slot-refs229261%_
                              _%g231757231760%_
                              _%g231758231762%_)))))
                    (declare (not safe))
                    (##for-each __tmp233454 _%slots231752%_ _%$slots231756%_)))
                 (_%slots-bind231774%_
                  (let ((__tmp233455
                         (lambda (_%g231766231769%_ _%g231767231771%_)
                           (_%generate-slot-bind229171%_
                            _%$klass231723%_
                            _%g231766231769%_
                            _%g231767231771%_))))
                    (declare (not safe))
                    (##map __tmp233455 _%slots231752%_ _%$slots231756%_)))
                 (_%specializer-lambda-expr231852%_
                  (let* ((_%g231776231790%_
                          (lambda (_%g231777231787%_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g231777231787%_))))
                         (_%g231775231849%_
                          (lambda (_%g231777231793%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%g231777231793%_))
                                (let ((_%e231780231795%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%g231777231793%_))))
                                  (let ((_%hd231781231798%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e231780231795%_)))
                                        (_%tl231782231800%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e231780231795%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl231782231800%_))
                                        (let ((_%e231783231803%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl231782231800%_))))
                                          (let ((_%hd231784231806%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e231783231803%_)))
                                                (_%tl231785231808%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e231783231803%_))))
                                            ((lambda (_%g231778231811%_
                                                      _%g231779231812%_)
                                               (let* ((_%self231835%_
                                                       (list-ref
                                                        _%g231779231812%_
                                                        _%self-index231258%_))
                                                      (_%receiver231840%_
                                                       (let ((_%$e231837%_
                                                              (gxc#apply-extract-receiver
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f '%#begin))
                             _%g231778231811%_))))
                 (if _%$e231837%_ _%$e231837%_ _%self231835%_)))
              (_%body231846%_
               (map (lambda (_%g231841231843%_)
                      (gxc#apply-subst-object-refs__%
                       '#f
                       _%receiver231840%_
                       _%$klass231723%_
                       _%method-calls229260%_
                       _%slot-refs229261%_
                       _%g231841231843%_))
                    _%g231778231811%_))
              (__tmp233456
               (cons '%#lambda (cons _%g231779231812%_ _%body231846%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp233456
                                                  _%g231406231495%_)))
                                             _%tl231785231808%_
                                             _%hd231784231806%_)))
                                        (_%g231776231790%_
                                         _%g231777231793%_))))
                                (_%g231776231790%_ _%g231777231793%_)))))
                    (_%g231775231849%_ _%g231406231495%_)))
                 (_%specializer-case-lambda-expr231990%_
                  (let* ((_%g231854231873%_
                          (lambda (_%g231855231870%_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g231855231870%_))))
                         (_%g231853231987%_
                          (lambda (_%g231855231876%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%g231855231876%_))
                                (let ((_%e231857231878%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%g231855231876%_))))
                                  (let ((_%hd231858231881%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e231857231878%_)))
                                        (_%tl231859231883%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e231857231878%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl231859231883%_))
                                        (let ((_g233457_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl231859231883%_
                                                  '0))))
                                          (begin
                                            (let ((_g233458_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g233457_)
                                                         (##values-length
                                                          _g233457_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g233458_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g233458_)))
                                            (let ((_%target231860231886%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g233457_
                                                      0)))
                                                  (_%tl231862231888%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g233457_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl231862231888%_))
                                                  (letrec ((_%loop231863231891%_
                                                            (lambda (_%hd231861231894%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%clause231867231896%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd231861231894%_))
                          (let ((_%e231864231898%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd231861231894%_))))
                            (let ((_%lp-hd231865231901%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e231864231898%_)))
                                  (_%lp-tl231866231903%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e231864231898%_))))
                              (_%loop231863231891%_
                               _%lp-tl231866231903%_
                               (cons _%lp-hd231865231901%_
                                     _%clause231867231896%_))))
                          (let ((_%clause231868231906%_
                                 (reverse _%clause231867231896%_)))
                            ((lambda (_%g231856231908%_)
                               (let* ((_%clauses231985%_
                                       (map (lambda (_%clause231922%_)
                                              (let* ((_%g231924231935%_
                                                      (lambda (_%g231925231932%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g231925231932%_))))
                                                     (_%g231923231975%_
                                                      (lambda (_%g231925231938%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g231925231938%_))
                                                            (let ((_%e231928231940%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%g231925231938%_))))
                      (let ((_%hd231929231943%_
                             (let ()
                               (declare (not safe))
                               (##car _%e231928231940%_)))
                            (_%tl231930231945%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e231928231940%_))))
                        ((lambda (_%g231926231948%_ _%g231927231949%_)
                           (let* ((_%self231961%_
                                   (list-ref
                                    _%g231927231949%_
                                    _%self-index231258%_))
                                  (_%receiver231966%_
                                   (let ((_%$e231963%_
                                          (gxc#apply-extract-receiver
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    '%#begin))
                                                 _%g231926231948%_))))
                                     (if _%$e231963%_
                                         _%$e231963%_
                                         _%self231961%_)))
                                  (_%body231972%_
                                   (map (lambda (_%g231967231969%_)
                                          (gxc#apply-subst-object-refs__%
                                           '#f
                                           _%receiver231966%_
                                           _%$klass231723%_
                                           _%method-calls229260%_
                                           _%slot-refs229261%_
                                           _%g231967231969%_))
                                        _%g231926231948%_)))
                             (cons _%g231927231949%_ _%body231972%_)))
                         _%tl231930231945%_
                         _%hd231929231943%_)))
                    (_%g231924231935%_ _%g231925231938%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g231923231975%_
                                                 _%clause231922%_)))
                                            (let ((__tmp233459
                                                   (lambda (_%g231977231980%_
                                                            _%g231978231982%_)
                                                     (cons _%g231977231980%_
                                                           _%g231978231982%_))))
                                              (declare (not safe))
                                              (foldr__0
                                               __tmp233459
                                               '()
                                               _%g231856231908%_))))
                                      (__tmp233460
                                       (cons '%#case-lambda
                                             _%clauses231985%_)))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp233460
                                  _%g231405231494%_)))
                             _%clause231868231906%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop231863231891%_
                                                     _%target231860231886%_
                                                     '()))
                                                  (_%g231854231873%_
                                                   _%g231855231876%_)))))
                                        (_%g231854231873%_
                                         _%g231855231876%_))))
                                (_%g231854231873%_ _%g231855231876%_)))))
                    (_%g231853231987%_ _%g231405231494%_)))
                 (_%specializer-impl231992%_
                  (let ((__tmp233461
                         (cons '%#let-values
                               (cons (cons (cons (cons _%g230792230960%_ '())
                                                 (cons (cons '%#let-values
                                                             (cons (cons (cons (cons _%g230791230959%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                             '())
                                       (cons (let ((__tmp233462
                                                    (cons '%#let-values
                                                          (cons (cons (cons (cons _%g231407231496%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                          '())
                                    (cons _%specializer-lambda-expr231852%_
                                          '()))
                              '())
                        (cons _%specializer-case-lambda-expr231990%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp233462
                                                _%stx229168%_))
                                             '()))
                                 '())
                           (cons _%g230789230957%_ '())))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())
                                     (cons _%g230788230956%_ '())))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp233461 _%stx229168%_)))
                 (_%specializer-impl231994%_
                  (_%generate-specializer-impl229172%_
                   _%$klass231723%_
                   _%$method-table231725%_
                   _%methods-bind231750%_
                   _%slots-bind231774%_
                   _%specializer-impl231992%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp233464
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%g229179229241%_)))
                                                          (__tmp233463
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%specializer-id231721%_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp233464
                                                       '" => "
                                                       __tmp233463))
                                                    (_%generate-specializer-def229173%_
                                                     _%g229179229241%_
                                                     _%specializer-id231721%_
                                                     _%specializer-impl231994%_))))
                                            _%hd231427231489%_
                                            _%hd231424231481%_
                                            _%hd231421231473%_)
                                           (_%g231403231433%_
                                            _%g231404231436%_))))
                                   (_%g231403231433%_ _%g231404231436%_))
                               (_%g231403231433%_ _%g231404231436%_))
                           (_%g231403231433%_ _%g231404231436%_))))
                   (_%g231403231433%_ _%g231404231436%_))
               (_%g231403231433%_ _%g231404231436%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g231403231433%_
                                                _%g231404231436%_))))
                                       (_%g231403231433%_ _%g231404231436%_))))
                               (_%g231403231433%_ _%g231404231436%_))))
                       (_%g231403231433%_ _%g231404231436%_))))
               (_%g231403231433%_ _%g231404231436%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g231402231997%_
                                            _%g230790230958%_))
                                         _%stx229168%_))))
                             _%hd231056231179%_
                             _%kw-ref231054231199%_
                             _%hd231044231166%_
                             _%hd231035231142%_
                             _%hd231026231118%_)
                            (_%g231000231062%_ _%g231001231065%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop231049231184%_
                                                 _%target231046231171%_
                                                 '()))
                                              (_%g231000231062%_
                                               _%g231001231065%_))))
                                      (_%g231000231062%_ _%g231001231065%_)))))
                            (_%g231000231062%_ _%g231001231065%_))
                        (_%g231000231062%_ _%g231001231065%_))
                    (_%g231000231062%_ _%g231001231065%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g231000231062%_
                                                     _%g231001231065%_))
                                                (_%g231000231062%_
                                                 _%g231001231065%_))
                                            (_%g231000231062%_
                                             _%g231001231065%_))))
                                    (_%g231000231062%_ _%g231001231065%_))))
                            (_%g231000231062%_ _%g231001231065%_))
                        (_%g231000231062%_ _%g231001231065%_))))
                (_%g231000231062%_ _%g231001231065%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g231000231062%_
                                                     _%g231001231065%_))
                                                (_%g231000231062%_
                                                 _%g231001231065%_))))
                                        (_%g231000231062%_
                                         _%g231001231065%_))))
                                (_%g231000231062%_ _%g231001231065%_))
                            (_%g231000231062%_ _%g231001231065%_))))
                    (_%g231000231062%_ _%g231001231065%_))
                (_%g231000231062%_ _%g231001231065%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g231000231062%_
                                                     _%g231001231065%_))))
                                            (_%g231000231062%_
                                             _%g231001231065%_))))
                                    (_%g231000231062%_ _%g231001231065%_))
                                (_%g231000231062%_ _%g231001231065%_))
                            (_%g231000231062%_ _%g231001231065%_))))
                    (_%g231000231062%_ _%g231001231065%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g231000231062%_
                                                     _%g231001231065%_))))
                                            (_%g231000231062%_
                                             _%g231001231065%_))
                                        (_%g231000231062%_ _%g231001231065%_))
                                    (_%g231000231062%_ _%g231001231065%_))))
                            (_%g231000231062%_ _%g231001231065%_)))))
                (_%g230999232001%_ _%g230789230957%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%hd230833230951%_
                                                    _%hd230830230943%_
                                                    _%hd230827230935%_
                                                    _%hd230824230927%_
                                                    _%hd230806230879%_)
                                                   (_%g230786230839%_
                                                    _%g230787230842%_))))
                                           (_%g230786230839%_
                                            _%g230787230842%_))
                                       (_%g230786230839%_ _%g230787230842%_))
                                   (_%g230786230839%_ _%g230787230842%_))
                               (_%g230786230839%_ _%g230787230842%_))))
                       (_%g230786230839%_ _%g230787230842%_))
                   (_%g230786230839%_ _%g230787230842%_))
               (_%g230786230839%_ _%g230787230842%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g230786230839%_
                                                _%g230787230842%_))
                                           (_%g230786230839%_
                                            _%g230787230842%_))))
                                   (_%g230786230839%_ _%g230787230842%_))))
                           (_%g230786230839%_ _%g230787230842%_))))
                   (_%g230786230839%_ _%g230787230842%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g230786230839%_
                                                    _%g230787230842%_))
                                               (_%g230786230839%_
                                                _%g230787230842%_))
                                           (_%g230786230839%_
                                            _%g230787230842%_))))
                                   (_%g230786230839%_ _%g230787230842%_))))
                           (_%g230786230839%_ _%g230787230842%_))
                       (_%g230786230839%_ _%g230787230842%_))))
               (_%g230786230839%_ _%g230787230842%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g230786230839%_
                                                _%g230787230842%_))))
                                       (_%g230786230839%_ _%g230787230842%_))))
                               (_%g230786230839%_ _%g230787230842%_))
                           (_%g230786230839%_ _%g230787230842%_))
                       (_%g230786230839%_ _%g230787230842%_))))
               (_%g230786230839%_ _%g230787230842%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g230785232004%_
                                            _%g229178229240%_))
                                         _%stx229168%_))))))))
                  (_%__kont232231232232%_ (lambda () _%stx229168%_)))
              (let ((_%__match232260232261%_
                     (lambda (_%e229180229208%_
                              _%hd229181229211%_
                              _%tl229182229213%_
                              _%e229183229216%_
                              _%hd229184229219%_
                              _%tl229185229221%_
                              _%e229186229224%_
                              _%hd229187229227%_
                              _%tl229188229229%_
                              _%e229189229232%_
                              _%hd229190229235%_
                              _%tl229191229237%_)
                       (let ((_%g229178229240%_ _%hd229190229235%_)
                             (_%g229179229241%_ _%hd229187229227%_))
                         (if (let ((__tmp233465
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol
                                       _%g229179229241%_))))
                               (declare (not safe))
                               (gxc#optimizer-top-level-method? __tmp233465))
                             (_%__kont232229232230%_
                              _%g229178229240%_
                              _%g229179229241%_)
                             (_%__kont232231232232%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx232227232228%_))
                    (let ((_%e229180229208%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx232227232228%_))))
                      (let ((_%tl229182229213%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e229180229208%_)))
                            (_%hd229181229211%_
                             (let ()
                               (declare (not safe))
                               (##car _%e229180229208%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl229182229213%_))
                            (let ((_%e229183229216%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl229182229213%_))))
                              (let ((_%tl229185229221%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e229183229216%_)))
                                    (_%hd229184229219%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e229183229216%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd229184229219%_))
                                    (let ((_%e229186229224%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd229184229219%_))))
                                      (let ((_%tl229188229229%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e229186229224%_)))
                                            (_%hd229187229227%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e229186229224%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl229188229229%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl229185229221%_))
                                                (let ((_%e229189229232%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl229185229221%_))))
                                                  (let ((_%tl229191229237%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e229189229232%_)))
                                                        (_%hd229190229235%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e229189229232%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl229191229237%_))
                                                        (_%__match232260232261%_
                                                         _%e229180229208%_
                                                         _%hd229181229211%_
                                                         _%tl229182229213%_
                                                         _%e229183229216%_
                                                         _%hd229184229219%_
                                                         _%tl229185229221%_
                                                         _%e229186229224%_
                                                         _%hd229187229227%_
                                                         _%tl229188229229%_
                                                         _%e229189229232%_
                                                         _%hd229190229235%_
                                                         _%tl229191229237%_)
                                                        (_%__kont232231232232%_))))
                                                (_%__kont232231232232%_))
                                            (_%__kont232231232232%_))))
                                    (_%__kont232231232232%_))))
                            (_%__kont232231232232%_))))
                    (_%__kont232231232232%_))))))))
    (define gxc#extract-receiver-begin-annotation%
      (lambda (_%self229020%_ _%stx229021%_)
        (let* ((_%__stx232263232264%_ _%stx229021%_)
               (_%g229024229057%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx232263232264%_)))))
          (let ((_%__kont232265232266%_
                 (lambda (_%g229026229147%_) _%g229026229147%_))
                (_%__kont232267232268%_
                 (lambda (_%g229042229086%_ _%g229043229087%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self229020%_ _%g229042229086%_)))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx232263232264%_))
                (let ((_%e229027229107%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%__stx232263232264%_))))
                  (let ((_%tl229029229112%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e229027229107%_)))
                        (_%hd229028229110%_
                         (let ()
                           (declare (not safe))
                           (##car _%e229027229107%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl229029229112%_))
                        (let ((_%e229030229115%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl229029229112%_))))
                          (let ((_%tl229032229120%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e229030229115%_)))
                                (_%hd229031229118%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e229030229115%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd229031229118%_))
                                (let ((_%e229033229123%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd229031229118%_))))
                                  (let ((_%tl229035229128%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e229033229123%_)))
                                        (_%hd229034229126%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e229033229123%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd229034229126%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '@receiver
                                               _%hd229034229126%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl229035229128%_))
                                                (let ((_%e229036229131%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl229035229128%_))))
                                                  (let ((_%tl229038229136%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e229036229131%_)))
                                                        (_%hd229037229134%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e229036229131%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl229038229136%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl229032229120%_))
                                                            (let ((_%e229039229139%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl229032229120%_))))
                      (let ((_%tl229041229144%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e229039229139%_)))
                            (_%hd229040229142%_
                             (let ()
                               (declare (not safe))
                               (##car _%e229039229139%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl229041229144%_))
                            (_%__kont232265232266%_ _%hd229037229134%_)
                            (let ()
                              (declare (not safe))
                              (_%g229024229057%_)))))
                    (let () (declare (not safe)) (_%g229024229057%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl229032229120%_))
                    (let ((_%e229050229078%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl229032229120%_))))
                      (let ((_%tl229052229083%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e229050229078%_)))
                            (_%hd229051229081%_
                             (let ()
                               (declare (not safe))
                               (##car _%e229050229078%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl229052229083%_))
                            (_%__kont232267232268%_
                             _%hd229051229081%_
                             _%hd229031229118%_)
                            (let ()
                              (declare (not safe))
                              (_%g229024229057%_)))))
                    (let () (declare (not safe)) (_%g229024229057%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl229032229120%_))
                                                    (let ((_%e229050229078%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl229032229120%_))))
                                                      (let ((_%tl229052229083%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e229050229078%_)))
                    (_%hd229051229081%_
                     (let () (declare (not safe)) (##car _%e229050229078%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl229052229083%_))
                    (_%__kont232267232268%_
                     _%hd229051229081%_
                     _%hd229031229118%_)
                    (let () (declare (not safe)) (_%g229024229057%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g229024229057%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl229032229120%_))
                                                (let ((_%e229050229078%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl229032229120%_))))
                                                  (let ((_%tl229052229083%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e229050229078%_)))
                                                        (_%hd229051229081%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e229050229078%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl229052229083%_))
                                                        (_%__kont232267232268%_
                                                         _%hd229051229081%_
                                                         _%hd229031229118%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g229024229057%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g229024229057%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl229032229120%_))
                                            (let ((_%e229050229078%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl229032229120%_))))
                                              (let ((_%tl229052229083%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e229050229078%_)))
                                                    (_%hd229051229081%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e229050229078%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl229052229083%_))
                                                    (_%__kont232267232268%_
                                                     _%hd229051229081%_
                                                     _%hd229031229118%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g229024229057%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g229024229057%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl229032229120%_))
                                    (let ((_%e229050229078%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl229032229120%_))))
                                      (let ((_%tl229052229083%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e229050229078%_)))
                                            (_%hd229051229081%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e229050229078%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl229052229083%_))
                                            (_%__kont232267232268%_
                                             _%hd229051229081%_
                                             _%hd229031229118%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g229024229057%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g229024229057%_))))))
                        (let () (declare (not safe)) (_%g229024229057%_)))))
                (let () (declare (not safe)) (_%g229024229057%_)))))))
    (define gxc#extract-receiver-if%
      (lambda (_%self228936%_ _%stx228937%_)
        (let* ((_%g228939228960%_
                (lambda (_%g228940228957%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g228940228957%_))))
               (_%g228938229017%_
                (lambda (_%g228940228963%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g228940228963%_))
                      (let ((_%e228944228965%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g228940228963%_))))
                        (let ((_%hd228945228968%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e228944228965%_)))
                              (_%tl228946228970%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e228944228965%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl228946228970%_))
                              (let ((_%e228947228973%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl228946228970%_))))
                                (let ((_%hd228948228976%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e228947228973%_)))
                                      (_%tl228949228978%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e228947228973%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl228949228978%_))
                                      (let ((_%e228950228981%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl228949228978%_))))
                                        (let ((_%hd228951228984%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e228950228981%_)))
                                              (_%tl228952228986%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e228950228981%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl228952228986%_))
                                              (let ((_%e228953228989%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl228952228986%_))))
                                                (let ((_%hd228954228992%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e228953228989%_)))
                                                      (_%tl228955228994%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e228953228989%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl228955228994%_))
                                                      ((lambda (_%g228941228997%_
                                                                _%g228942228998%_
                                                                _%g228943228999%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%self228936%_
                                                            _%g228942228998%_)))
                                                       _%hd228954228992%_
                                                       _%hd228951228984%_
                                                       _%hd228948228976%_)
                                                      (_%g228939228960%_
                                                       _%g228940228963%_))))
                                              (_%g228939228960%_
                                               _%g228940228963%_))))
                                      (_%g228939228960%_ _%g228940228963%_))))
                              (_%g228939228960%_ _%g228940228963%_))))
                      (_%g228939228960%_ _%g228940228963%_)))))
          (_%g228938229017%_ _%stx228937%_))))
    (define gxc#collect-object-refs-call%
      (lambda (_%self227901%_ _%stx227902%_)
        (let* ((_%__stx232329232330%_ _%stx227902%_)
               (_%g227910228132%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx232329232330%_)))))
          (let ((_%__kont232331232332%_
                 (lambda (_%g227912228885%_
                          _%g227913228886%_
                          _%g227914228887%_
                          _%g227915228888%_)
                   (let ((__tmp233467
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self227901%_ 'methods)))
                         (__tmp233466
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%g227913228886%_))))
                     (declare (not safe))
                     (hash-put! __tmp233467 __tmp233466 '#t))
                   (for-each
                    (lambda (_%g228921228923%_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self227901%_ _%g228921228923%_)))
                    (let ((__tmp233468
                           (lambda (_%g228925228928%_ _%g228926228930%_)
                             (cons _%g228925228928%_ _%g228926228930%_))))
                      (declare (not safe))
                      (foldr__0 __tmp233468 '() _%g227912228885%_)))))
                (_%__kont232335232336%_
                 (lambda (_%g227955228722%_
                          _%g227956228723%_
                          _%g227957228724%_
                          _%g227958228725%_
                          _%g227959228726%_)
                   (let ((__tmp233470
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self227901%_ 'methods)))
                         (__tmp233469
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%g227956228723%_))))
                     (declare (not safe))
                     (hash-put! __tmp233470 __tmp233469 '#t))
                   (for-each
                    (lambda (_%g228766228768%_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self227901%_ _%g228766228768%_)))
                    (let ((__tmp233471
                           (lambda (_%g228770228773%_ _%g228771228775%_)
                             (cons _%g228770228773%_ _%g228771228775%_))))
                      (declare (not safe))
                      (foldr__0 __tmp233471 '() _%g227955228722%_)))))
                (_%__kont232339232340%_
                 (lambda (_%g228008228557%_
                          _%g228009228558%_
                          _%g228010228559%_)
                   (let ((__tmp233473
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self227901%_ 'slots)))
                         (__tmp233472
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%g228008228557%_))))
                     (declare (not safe))
                     (hash-put! __tmp233473 __tmp233472 '#t))))
                (_%__kont232341232342%_
                 (lambda (_%g228041228434%_
                          _%g228042228435%_
                          _%g228043228436%_
                          _%g228044228437%_)
                   (let ((__tmp233475
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self227901%_ 'slots)))
                         (__tmp233474
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%g228042228435%_))))
                     (declare (not safe))
                     (hash-put! __tmp233475 __tmp233474 '#t))
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self227901%_ _%g228041228434%_))))
                (_%__kont232343232344%_
                 (lambda (_%g228078228308%_ _%g228079228309%_)
                   (let* ((_%accessor228331%_
                           (let ((__tmp233476
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol
                                     _%g228079228309%_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp233476)))
                          (_%klass228333%_
                           (let ((__tmp233477
                                  (##structure-ref
                                   _%accessor228331%_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _%stx227902%_
                              __tmp233477)))
                          (_%slot228335%_
                           (##structure-ref
                            _%accessor228331%_
                            '3
                            gxc#!accessor::t
                            '#f)))
                     (if (if (##structure-ref
                              _%accessor228331%_
                              '4
                              gxc#!accessor::t
                              '#f)
                             '#f
                             (or (let ()
                                   (declare (not safe))
                                   (gxc#!class-struct-slot?
                                    _%klass228333%_
                                    _%slot228335%_))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%klass228333%_
                                    '8
                                    '#f
                                    '#f))))
                         '#!void
                         (let ((__tmp233479
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _%self227901%_ 'slots)))
                               (__tmp233478
                                (##structure-ref
                                 _%accessor228331%_
                                 '3
                                 gxc#!accessor::t
                                 '#f)))
                           (declare (not safe))
                           (hash-put! __tmp233479 __tmp233478 '#t))))))
                (_%__kont232345232346%_
                 (lambda (_%g228101228208%_
                          _%g228102228209%_
                          _%g228103228210%_)
                   (let* ((_%mutator228237%_
                           (let ((__tmp233480
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol
                                     _%g228103228210%_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp233480)))
                          (_%klass228239%_
                           (let ((__tmp233481
                                  (##structure-ref
                                   _%mutator228237%_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _%stx227902%_
                              __tmp233481)))
                          (_%slot228241%_
                           (##structure-ref
                            _%mutator228237%_
                            '3
                            gxc#!mutator::t
                            '#f)))
                     (if (if (##structure-ref
                              _%mutator228237%_
                              '4
                              gxc#!mutator::t
                              '#f)
                             '#f
                             (or (let ()
                                   (declare (not safe))
                                   (gxc#!class-struct-slot?
                                    _%klass228239%_
                                    _%slot228241%_))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%klass228239%_
                                    '8
                                    '#f
                                    '#f))))
                         '#!void
                         (let ((__tmp233482
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _%self227901%_ 'slots))))
                           (declare (not safe))
                           (hash-put! __tmp233482 _%slot228241%_ '#t)))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-e__1 _%self227901%_ _%g228101228208%_)))))
                (_%__kont232347232348%_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#apply-operands _%self227901%_ _%stx227902%_)))))
            (let* ((_%__match232828232829%_
                    (lambda (_%e228104228144%_
                             _%hd228105228147%_
                             _%tl228106228149%_
                             _%e228107228152%_
                             _%hd228108228155%_
                             _%tl228109228157%_
                             _%e228110228160%_
                             _%hd228111228163%_
                             _%tl228112228165%_
                             _%e228113228168%_
                             _%hd228114228171%_
                             _%tl228115228173%_
                             _%e228116228176%_
                             _%hd228117228179%_
                             _%tl228118228181%_
                             _%e228119228184%_
                             _%hd228120228187%_
                             _%tl228121228189%_
                             _%e228122228192%_
                             _%hd228123228195%_
                             _%tl228124228197%_
                             _%e228125228200%_
                             _%hd228126228203%_
                             _%tl228127228205%_)
                      (let ((_%g228101228208%_ _%hd228126228203%_)
                            (_%g228102228209%_ _%hd228123228195%_)
                            (_%g228103228210%_ _%hd228114228171%_))
                        (if (and (let ((__tmp233483
                                        (let ((__tmp233484
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _%g228103228210%_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp233484))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp233483
                                    'gxc#!mutator::t))
                                 (let ((__tmp233485
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self227901%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%g228102228209%_
                                    __tmp233485)))
                            (_%__kont232345232346%_
                             _%g228101228208%_
                             _%g228102228209%_
                             _%g228103228210%_)
                            (_%__kont232347232348%_)))))
                   (_%__match232826232827%_
                    (lambda (_%e228104228144%_
                             _%hd228105228147%_
                             _%tl228106228149%_
                             _%e228107228152%_
                             _%hd228108228155%_
                             _%tl228109228157%_
                             _%e228110228160%_
                             _%hd228111228163%_
                             _%tl228112228165%_
                             _%e228113228168%_
                             _%hd228114228171%_
                             _%tl228115228173%_
                             _%e228116228176%_
                             _%hd228117228179%_
                             _%tl228118228181%_
                             _%e228119228184%_
                             _%hd228120228187%_
                             _%tl228121228189%_
                             _%e228122228192%_
                             _%hd228123228195%_
                             _%tl228124228197%_
                             _%e228125228200%_
                             _%hd228126228203%_
                             _%tl228127228205%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl228127228205%_))
                          (_%__match232828232829%_
                           _%e228104228144%_
                           _%hd228105228147%_
                           _%tl228106228149%_
                           _%e228107228152%_
                           _%hd228108228155%_
                           _%tl228109228157%_
                           _%e228110228160%_
                           _%hd228111228163%_
                           _%tl228112228165%_
                           _%e228113228168%_
                           _%hd228114228171%_
                           _%tl228115228173%_
                           _%e228116228176%_
                           _%hd228117228179%_
                           _%tl228118228181%_
                           _%e228119228184%_
                           _%hd228120228187%_
                           _%tl228121228189%_
                           _%e228122228192%_
                           _%hd228123228195%_
                           _%tl228124228197%_
                           _%e228125228200%_
                           _%hd228126228203%_
                           _%tl228127228205%_)
                          (_%__kont232347232348%_))))
                   (_%__match232820232821%_
                    (lambda (_%e228104228144%_
                             _%hd228105228147%_
                             _%tl228106228149%_
                             _%e228107228152%_
                             _%hd228108228155%_
                             _%tl228109228157%_
                             _%e228110228160%_
                             _%hd228111228163%_
                             _%tl228112228165%_
                             _%e228113228168%_
                             _%hd228114228171%_
                             _%tl228115228173%_
                             _%e228116228176%_
                             _%hd228117228179%_
                             _%tl228118228181%_
                             _%e228119228184%_
                             _%hd228120228187%_
                             _%tl228121228189%_
                             _%e228122228192%_
                             _%hd228123228195%_
                             _%tl228124228197%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl228118228181%_))
                          (let ((_%e228125228200%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl228118228181%_))))
                            (let ((_%tl228127228205%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e228125228200%_)))
                                  (_%hd228126228203%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e228125228200%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl228127228205%_))
                                  (_%__match232828232829%_
                                   _%e228104228144%_
                                   _%hd228105228147%_
                                   _%tl228106228149%_
                                   _%e228107228152%_
                                   _%hd228108228155%_
                                   _%tl228109228157%_
                                   _%e228110228160%_
                                   _%hd228111228163%_
                                   _%tl228112228165%_
                                   _%e228113228168%_
                                   _%hd228114228171%_
                                   _%tl228115228173%_
                                   _%e228116228176%_
                                   _%hd228117228179%_
                                   _%tl228118228181%_
                                   _%e228119228184%_
                                   _%hd228120228187%_
                                   _%tl228121228189%_
                                   _%e228122228192%_
                                   _%hd228123228195%_
                                   _%tl228124228197%_
                                   _%e228125228200%_
                                   _%hd228126228203%_
                                   _%tl228127228205%_)
                                  (_%__kont232347232348%_))))
                          (_%__kont232347232348%_))))
                   (_%__match232766232767%_
                    (lambda (_%e228080228252%_
                             _%hd228081228255%_
                             _%tl228082228257%_
                             _%e228083228260%_
                             _%hd228084228263%_
                             _%tl228085228265%_
                             _%e228086228268%_
                             _%hd228087228271%_
                             _%tl228088228273%_
                             _%e228089228276%_
                             _%hd228090228279%_
                             _%tl228091228281%_
                             _%e228092228284%_
                             _%hd228093228287%_
                             _%tl228094228289%_
                             _%e228095228292%_
                             _%hd228096228295%_
                             _%tl228097228297%_
                             _%e228098228300%_
                             _%hd228099228303%_
                             _%tl228100228305%_)
                      (let ((_%g228078228308%_ _%hd228099228303%_)
                            (_%g228079228309%_ _%hd228090228279%_))
                        (if (and (let ((__tmp233486
                                        (let ((__tmp233487
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _%g228079228309%_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp233487))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp233486
                                    'gxc#!accessor::t))
                                 (let ((__tmp233488
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self227901%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%g228078228308%_
                                    __tmp233488)))
                            (_%__kont232343232344%_
                             _%g228078228308%_
                             _%g228079228309%_)
                            (_%__kont232347232348%_)))))
                   (_%__match232764232765%_
                    (lambda (_%e228080228252%_
                             _%hd228081228255%_
                             _%tl228082228257%_
                             _%e228083228260%_
                             _%hd228084228263%_
                             _%tl228085228265%_
                             _%e228086228268%_
                             _%hd228087228271%_
                             _%tl228088228273%_
                             _%e228089228276%_
                             _%hd228090228279%_
                             _%tl228091228281%_
                             _%e228092228284%_
                             _%hd228093228287%_
                             _%tl228094228289%_
                             _%e228095228292%_
                             _%hd228096228295%_
                             _%tl228097228297%_
                             _%e228098228300%_
                             _%hd228099228303%_
                             _%tl228100228305%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl228094228289%_))
                          (_%__match232766232767%_
                           _%e228080228252%_
                           _%hd228081228255%_
                           _%tl228082228257%_
                           _%e228083228260%_
                           _%hd228084228263%_
                           _%tl228085228265%_
                           _%e228086228268%_
                           _%hd228087228271%_
                           _%tl228088228273%_
                           _%e228089228276%_
                           _%hd228090228279%_
                           _%tl228091228281%_
                           _%e228092228284%_
                           _%hd228093228287%_
                           _%tl228094228289%_
                           _%e228095228292%_
                           _%hd228096228295%_
                           _%tl228097228297%_
                           _%e228098228300%_
                           _%hd228099228303%_
                           _%tl228100228305%_)
                          (_%__match232820232821%_
                           _%e228080228252%_
                           _%hd228081228255%_
                           _%tl228082228257%_
                           _%e228083228260%_
                           _%hd228084228263%_
                           _%tl228085228265%_
                           _%e228086228268%_
                           _%hd228087228271%_
                           _%tl228088228273%_
                           _%e228089228276%_
                           _%hd228090228279%_
                           _%tl228091228281%_
                           _%e228092228284%_
                           _%hd228093228287%_
                           _%tl228094228289%_
                           _%e228095228292%_
                           _%hd228096228295%_
                           _%tl228097228297%_
                           _%e228098228300%_
                           _%hd228099228303%_
                           _%tl228100228305%_))))
                   (_%__match232710232711%_
                    (lambda (_%e228045228346%_
                             _%hd228046228349%_
                             _%tl228047228351%_
                             _%e228048228354%_
                             _%hd228049228357%_
                             _%tl228050228359%_
                             _%e228051228362%_
                             _%hd228052228365%_
                             _%tl228053228367%_
                             _%e228054228370%_
                             _%hd228055228373%_
                             _%tl228056228375%_
                             _%e228057228378%_
                             _%hd228058228381%_
                             _%tl228059228383%_
                             _%e228060228386%_
                             _%hd228061228389%_
                             _%tl228062228391%_
                             _%e228063228394%_
                             _%hd228064228397%_
                             _%tl228065228399%_
                             _%e228066228402%_
                             _%hd228067228405%_
                             _%tl228068228407%_
                             _%e228069228410%_
                             _%hd228070228413%_
                             _%tl228071228415%_
                             _%e228072228418%_
                             _%hd228073228421%_
                             _%tl228074228423%_
                             _%e228075228426%_
                             _%hd228076228429%_
                             _%tl228077228431%_)
                      (let ((_%g228041228434%_ _%hd228076228429%_)
                            (_%g228042228435%_ _%hd228073228421%_)
                            (_%g228043228436%_ _%hd228064228397%_)
                            (_%g228044228437%_ _%hd228055228373%_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%g228044228437%_
                                        'slot-set!))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%g228044228437%_
                                        'unchecked-slot-set!)))
                                 (let ((__tmp233489
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self227901%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%g228043228436%_
                                    __tmp233489)))
                            (_%__kont232341232342%_
                             _%g228041228434%_
                             _%g228042228435%_
                             _%g228043228436%_
                             _%g228044228437%_)
                            (_%__kont232347232348%_)))))
                   (_%__match232702232703%_
                    (lambda (_%e228045228346%_
                             _%hd228046228349%_
                             _%tl228047228351%_
                             _%e228048228354%_
                             _%hd228049228357%_
                             _%tl228050228359%_
                             _%e228051228362%_
                             _%hd228052228365%_
                             _%tl228053228367%_
                             _%e228054228370%_
                             _%hd228055228373%_
                             _%tl228056228375%_
                             _%e228057228378%_
                             _%hd228058228381%_
                             _%tl228059228383%_
                             _%e228060228386%_
                             _%hd228061228389%_
                             _%tl228062228391%_
                             _%e228063228394%_
                             _%hd228064228397%_
                             _%tl228065228399%_
                             _%e228066228402%_
                             _%hd228067228405%_
                             _%tl228068228407%_
                             _%e228069228410%_
                             _%hd228070228413%_
                             _%tl228071228415%_
                             _%e228072228418%_
                             _%hd228073228421%_
                             _%tl228074228423%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl228068228407%_))
                          (let ((_%e228075228426%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl228068228407%_))))
                            (let ((_%tl228077228431%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e228075228426%_)))
                                  (_%hd228076228429%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e228075228426%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl228077228431%_))
                                  (_%__match232710232711%_
                                   _%e228045228346%_
                                   _%hd228046228349%_
                                   _%tl228047228351%_
                                   _%e228048228354%_
                                   _%hd228049228357%_
                                   _%tl228050228359%_
                                   _%e228051228362%_
                                   _%hd228052228365%_
                                   _%tl228053228367%_
                                   _%e228054228370%_
                                   _%hd228055228373%_
                                   _%tl228056228375%_
                                   _%e228057228378%_
                                   _%hd228058228381%_
                                   _%tl228059228383%_
                                   _%e228060228386%_
                                   _%hd228061228389%_
                                   _%tl228062228391%_
                                   _%e228063228394%_
                                   _%hd228064228397%_
                                   _%tl228065228399%_
                                   _%e228066228402%_
                                   _%hd228067228405%_
                                   _%tl228068228407%_
                                   _%e228069228410%_
                                   _%hd228070228413%_
                                   _%tl228071228415%_
                                   _%e228072228418%_
                                   _%hd228073228421%_
                                   _%tl228074228423%_
                                   _%e228075228426%_
                                   _%hd228076228429%_
                                   _%tl228077228431%_)
                                  (_%__kont232347232348%_))))
                          (_%__match232826232827%_
                           _%e228045228346%_
                           _%hd228046228349%_
                           _%tl228047228351%_
                           _%e228048228354%_
                           _%hd228049228357%_
                           _%tl228050228359%_
                           _%e228051228362%_
                           _%hd228052228365%_
                           _%tl228053228367%_
                           _%e228054228370%_
                           _%hd228055228373%_
                           _%tl228056228375%_
                           _%e228057228378%_
                           _%hd228058228381%_
                           _%tl228059228383%_
                           _%e228060228386%_
                           _%hd228061228389%_
                           _%tl228062228391%_
                           _%e228063228394%_
                           _%hd228064228397%_
                           _%tl228065228399%_
                           _%e228066228402%_
                           _%hd228067228405%_
                           _%tl228068228407%_))))
                   (_%__match232624232625%_
                    (lambda (_%e228011228477%_
                             _%hd228012228480%_
                             _%tl228013228482%_
                             _%e228014228485%_
                             _%hd228015228488%_
                             _%tl228016228490%_
                             _%e228017228493%_
                             _%hd228018228496%_
                             _%tl228019228498%_
                             _%e228020228501%_
                             _%hd228021228504%_
                             _%tl228022228506%_
                             _%e228023228509%_
                             _%hd228024228512%_
                             _%tl228025228514%_
                             _%e228026228517%_
                             _%hd228027228520%_
                             _%tl228028228522%_
                             _%e228029228525%_
                             _%hd228030228528%_
                             _%tl228031228530%_
                             _%e228032228533%_
                             _%hd228033228536%_
                             _%tl228034228538%_
                             _%e228035228541%_
                             _%hd228036228544%_
                             _%tl228037228546%_
                             _%e228038228549%_
                             _%hd228039228552%_
                             _%tl228040228554%_)
                      (let ((_%g228008228557%_ _%hd228039228552%_)
                            (_%g228009228558%_ _%hd228030228528%_)
                            (_%g228010228559%_ _%hd228021228504%_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%g228010228559%_
                                        'slot-ref))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%g228010228559%_
                                        'unchecked-slot-ref)))
                                 (let ((__tmp233490
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self227901%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%g228009228558%_
                                    __tmp233490)))
                            (_%__kont232339232340%_
                             _%g228008228557%_
                             _%g228009228558%_
                             _%g228010228559%_)
                            (_%__match232828232829%_
                             _%e228011228477%_
                             _%hd228012228480%_
                             _%tl228013228482%_
                             _%e228014228485%_
                             _%hd228015228488%_
                             _%tl228016228490%_
                             _%e228017228493%_
                             _%hd228018228496%_
                             _%tl228019228498%_
                             _%e228020228501%_
                             _%hd228021228504%_
                             _%tl228022228506%_
                             _%e228023228509%_
                             _%hd228024228512%_
                             _%tl228025228514%_
                             _%e228026228517%_
                             _%hd228027228520%_
                             _%tl228028228522%_
                             _%e228029228525%_
                             _%hd228030228528%_
                             _%tl228031228530%_
                             _%e228032228533%_
                             _%hd228033228536%_
                             _%tl228034228538%_)))))
                   (_%__match232622232623%_
                    (lambda (_%e228011228477%_
                             _%hd228012228480%_
                             _%tl228013228482%_
                             _%e228014228485%_
                             _%hd228015228488%_
                             _%tl228016228490%_
                             _%e228017228493%_
                             _%hd228018228496%_
                             _%tl228019228498%_
                             _%e228020228501%_
                             _%hd228021228504%_
                             _%tl228022228506%_
                             _%e228023228509%_
                             _%hd228024228512%_
                             _%tl228025228514%_
                             _%e228026228517%_
                             _%hd228027228520%_
                             _%tl228028228522%_
                             _%e228029228525%_
                             _%hd228030228528%_
                             _%tl228031228530%_
                             _%e228032228533%_
                             _%hd228033228536%_
                             _%tl228034228538%_
                             _%e228035228541%_
                             _%hd228036228544%_
                             _%tl228037228546%_
                             _%e228038228549%_
                             _%hd228039228552%_
                             _%tl228040228554%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl228034228538%_))
                          (_%__match232624232625%_
                           _%e228011228477%_
                           _%hd228012228480%_
                           _%tl228013228482%_
                           _%e228014228485%_
                           _%hd228015228488%_
                           _%tl228016228490%_
                           _%e228017228493%_
                           _%hd228018228496%_
                           _%tl228019228498%_
                           _%e228020228501%_
                           _%hd228021228504%_
                           _%tl228022228506%_
                           _%e228023228509%_
                           _%hd228024228512%_
                           _%tl228025228514%_
                           _%e228026228517%_
                           _%hd228027228520%_
                           _%tl228028228522%_
                           _%e228029228525%_
                           _%hd228030228528%_
                           _%tl228031228530%_
                           _%e228032228533%_
                           _%hd228033228536%_
                           _%tl228034228538%_
                           _%e228035228541%_
                           _%hd228036228544%_
                           _%tl228037228546%_
                           _%e228038228549%_
                           _%hd228039228552%_
                           _%tl228040228554%_)
                          (_%__match232702232703%_
                           _%e228011228477%_
                           _%hd228012228480%_
                           _%tl228013228482%_
                           _%e228014228485%_
                           _%hd228015228488%_
                           _%tl228016228490%_
                           _%e228017228493%_
                           _%hd228018228496%_
                           _%tl228019228498%_
                           _%e228020228501%_
                           _%hd228021228504%_
                           _%tl228022228506%_
                           _%e228023228509%_
                           _%hd228024228512%_
                           _%tl228025228514%_
                           _%e228026228517%_
                           _%hd228027228520%_
                           _%tl228028228522%_
                           _%e228029228525%_
                           _%hd228030228528%_
                           _%tl228031228530%_
                           _%e228032228533%_
                           _%hd228033228536%_
                           _%tl228034228538%_
                           _%e228035228541%_
                           _%hd228036228544%_
                           _%tl228037228546%_
                           _%e228038228549%_
                           _%hd228039228552%_
                           _%tl228040228554%_))))
                   (_%__match232612232613%_
                    (lambda (_%e228011228477%_
                             _%hd228012228480%_
                             _%tl228013228482%_
                             _%e228014228485%_
                             _%hd228015228488%_
                             _%tl228016228490%_
                             _%e228017228493%_
                             _%hd228018228496%_
                             _%tl228019228498%_
                             _%e228020228501%_
                             _%hd228021228504%_
                             _%tl228022228506%_
                             _%e228023228509%_
                             _%hd228024228512%_
                             _%tl228025228514%_
                             _%e228026228517%_
                             _%hd228027228520%_
                             _%tl228028228522%_
                             _%e228029228525%_
                             _%hd228030228528%_
                             _%tl228031228530%_
                             _%e228032228533%_
                             _%hd228033228536%_
                             _%tl228034228538%_
                             _%e228035228541%_
                             _%hd228036228544%_
                             _%tl228037228546%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#quote _%hd228036228544%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl228037228546%_))
                              (let ((_%e228038228549%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl228037228546%_))))
                                (let ((_%tl228040228554%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e228038228549%_)))
                                      (_%hd228039228552%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e228038228549%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl228040228554%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl228034228538%_))
                                          (_%__match232624232625%_
                                           _%e228011228477%_
                                           _%hd228012228480%_
                                           _%tl228013228482%_
                                           _%e228014228485%_
                                           _%hd228015228488%_
                                           _%tl228016228490%_
                                           _%e228017228493%_
                                           _%hd228018228496%_
                                           _%tl228019228498%_
                                           _%e228020228501%_
                                           _%hd228021228504%_
                                           _%tl228022228506%_
                                           _%e228023228509%_
                                           _%hd228024228512%_
                                           _%tl228025228514%_
                                           _%e228026228517%_
                                           _%hd228027228520%_
                                           _%tl228028228522%_
                                           _%e228029228525%_
                                           _%hd228030228528%_
                                           _%tl228031228530%_
                                           _%e228032228533%_
                                           _%hd228033228536%_
                                           _%tl228034228538%_
                                           _%e228035228541%_
                                           _%hd228036228544%_
                                           _%tl228037228546%_
                                           _%e228038228549%_
                                           _%hd228039228552%_
                                           _%tl228040228554%_)
                                          (_%__match232702232703%_
                                           _%e228011228477%_
                                           _%hd228012228480%_
                                           _%tl228013228482%_
                                           _%e228014228485%_
                                           _%hd228015228488%_
                                           _%tl228016228490%_
                                           _%e228017228493%_
                                           _%hd228018228496%_
                                           _%tl228019228498%_
                                           _%e228020228501%_
                                           _%hd228021228504%_
                                           _%tl228022228506%_
                                           _%e228023228509%_
                                           _%hd228024228512%_
                                           _%tl228025228514%_
                                           _%e228026228517%_
                                           _%hd228027228520%_
                                           _%tl228028228522%_
                                           _%e228029228525%_
                                           _%hd228030228528%_
                                           _%tl228031228530%_
                                           _%e228032228533%_
                                           _%hd228033228536%_
                                           _%tl228034228538%_
                                           _%e228035228541%_
                                           _%hd228036228544%_
                                           _%tl228037228546%_
                                           _%e228038228549%_
                                           _%hd228039228552%_
                                           _%tl228040228554%_))
                                      (_%__match232826232827%_
                                       _%e228011228477%_
                                       _%hd228012228480%_
                                       _%tl228013228482%_
                                       _%e228014228485%_
                                       _%hd228015228488%_
                                       _%tl228016228490%_
                                       _%e228017228493%_
                                       _%hd228018228496%_
                                       _%tl228019228498%_
                                       _%e228020228501%_
                                       _%hd228021228504%_
                                       _%tl228022228506%_
                                       _%e228023228509%_
                                       _%hd228024228512%_
                                       _%tl228025228514%_
                                       _%e228026228517%_
                                       _%hd228027228520%_
                                       _%tl228028228522%_
                                       _%e228029228525%_
                                       _%hd228030228528%_
                                       _%tl228031228530%_
                                       _%e228032228533%_
                                       _%hd228033228536%_
                                       _%tl228034228538%_))))
                              (_%__match232826232827%_
                               _%e228011228477%_
                               _%hd228012228480%_
                               _%tl228013228482%_
                               _%e228014228485%_
                               _%hd228015228488%_
                               _%tl228016228490%_
                               _%e228017228493%_
                               _%hd228018228496%_
                               _%tl228019228498%_
                               _%e228020228501%_
                               _%hd228021228504%_
                               _%tl228022228506%_
                               _%e228023228509%_
                               _%hd228024228512%_
                               _%tl228025228514%_
                               _%e228026228517%_
                               _%hd228027228520%_
                               _%tl228028228522%_
                               _%e228029228525%_
                               _%hd228030228528%_
                               _%tl228031228530%_
                               _%e228032228533%_
                               _%hd228033228536%_
                               _%tl228034228538%_))
                          (_%__match232826232827%_
                           _%e228011228477%_
                           _%hd228012228480%_
                           _%tl228013228482%_
                           _%e228014228485%_
                           _%hd228015228488%_
                           _%tl228016228490%_
                           _%e228017228493%_
                           _%hd228018228496%_
                           _%tl228019228498%_
                           _%e228020228501%_
                           _%hd228021228504%_
                           _%tl228022228506%_
                           _%e228023228509%_
                           _%hd228024228512%_
                           _%tl228025228514%_
                           _%e228026228517%_
                           _%hd228027228520%_
                           _%tl228028228522%_
                           _%e228029228525%_
                           _%hd228030228528%_
                           _%tl228031228530%_
                           _%e228032228533%_
                           _%hd228033228536%_
                           _%tl228034228538%_))))
                   (_%__match232544232545%_
                    (lambda (_%e227960228596%_
                             _%hd227961228599%_
                             _%tl227962228601%_
                             _%e227963228604%_
                             _%hd227964228607%_
                             _%tl227965228609%_
                             _%e227966228612%_
                             _%hd227967228615%_
                             _%tl227968228617%_
                             _%e227969228620%_
                             _%hd227970228623%_
                             _%tl227971228625%_
                             _%e227972228628%_
                             _%hd227973228631%_
                             _%tl227974228633%_
                             _%e227975228636%_
                             _%hd227976228639%_
                             _%tl227977228641%_
                             _%e227978228644%_
                             _%hd227979228647%_
                             _%tl227980228649%_
                             _%e227981228652%_
                             _%hd227982228655%_
                             _%tl227983228657%_
                             _%e227984228660%_
                             _%hd227985228663%_
                             _%tl227986228665%_
                             _%e227987228668%_
                             _%hd227988228671%_
                             _%tl227989228673%_
                             _%e227990228676%_
                             _%hd227991228679%_
                             _%tl227992228681%_
                             _%e227993228684%_
                             _%hd227994228687%_
                             _%tl227995228689%_
                             _%e227996228692%_
                             _%hd227997228695%_
                             _%tl227998228697%_
                             _%__splice232337232338%_
                             _%target227999228700%_
                             _%tl228001228702%_)
                      (letrec ((_%loop228002228705%_
                                (lambda (_%hd228000228708%_
                                         _%args228006228710%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd228000228708%_))
                                      (let ((_%e228003228712%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd228000228708%_))))
                                        (let ((_%lp-tl228005228717%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e228003228712%_)))
                                              (_%lp-hd228004228715%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e228003228712%_))))
                                          (_%loop228002228705%_
                                           _%lp-tl228005228717%_
                                           (cons _%lp-hd228004228715%_
                                                 _%args228006228710%_))))
                                      (let ((_%args228007228720%_
                                             (reverse _%args228006228710%_)))
                                        (let ((_%g227955228722%_
                                               _%args228007228720%_)
                                              (_%g227956228723%_
                                               _%hd227997228695%_)
                                              (_%g227957228724%_
                                               _%hd227988228671%_)
                                              (_%g227958228725%_
                                               _%hd227979228647%_)
                                              (_%g227959228726%_
                                               _%hd227970228623%_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%g227959228726%_
                                                      'apply))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%g227958228725%_
                                                      'call-method))
                                                   (let ((__tmp233491
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self227901%_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%g227957228724%_
                                                      __tmp233491)))
                                              (_%__kont232335232336%_
                                               _%g227955228722%_
                                               _%g227956228723%_
                                               _%g227957228724%_
                                               _%g227958228725%_
                                               _%g227959228726%_)
                                              (_%__kont232347232348%_))))))))
                        (_%loop228002228705%_ _%target227999228700%_ '()))))
                   (_%__match232502232503%_
                    (lambda (_%e227960228596%_
                             _%hd227961228599%_
                             _%tl227962228601%_
                             _%e227963228604%_
                             _%hd227964228607%_
                             _%tl227965228609%_
                             _%e227966228612%_
                             _%hd227967228615%_
                             _%tl227968228617%_
                             _%e227969228620%_
                             _%hd227970228623%_
                             _%tl227971228625%_
                             _%e227972228628%_
                             _%hd227973228631%_
                             _%tl227974228633%_
                             _%e227975228636%_
                             _%hd227976228639%_
                             _%tl227977228641%_
                             _%e227978228644%_
                             _%hd227979228647%_
                             _%tl227980228649%_
                             _%e227981228652%_
                             _%hd227982228655%_
                             _%tl227983228657%_
                             _%e227984228660%_
                             _%hd227985228663%_
                             _%tl227986228665%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _%hd227985228663%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl227986228665%_))
                              (let ((_%e227987228668%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl227986228665%_))))
                                (let ((_%tl227989228673%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e227987228668%_)))
                                      (_%hd227988228671%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e227987228668%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl227989228673%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl227983228657%_))
                                          (let ((_%e227990228676%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl227983228657%_))))
                                            (let ((_%tl227992228681%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e227990228676%_)))
                                                  (_%hd227991228679%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e227990228676%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd227991228679%_))
                                                  (let ((_%e227993228684%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd227991228679%_))))
                                                    (let ((_%tl227995228689%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e227993228684%_)))
                                                          (_%hd227994228687%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e227993228684%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd227994228687%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#quote _%hd227994228687%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl227995228689%_))
                          (let ((_%e227996228692%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl227995228689%_))))
                            (let ((_%tl227998228697%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e227996228692%_)))
                                  (_%hd227997228695%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e227996228692%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl227998228697%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl227992228681%_))
                                      (let ((_%__splice232337232338%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%tl227992228681%_
                                                '0))))
                                        (let ((_%tl228001228702%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice232337232338%_
                                                  '1)))
                                              (_%target227999228700%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice232337232338%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl228001228702%_))
                                              (_%__match232544232545%_
                                               _%e227960228596%_
                                               _%hd227961228599%_
                                               _%tl227962228601%_
                                               _%e227963228604%_
                                               _%hd227964228607%_
                                               _%tl227965228609%_
                                               _%e227966228612%_
                                               _%hd227967228615%_
                                               _%tl227968228617%_
                                               _%e227969228620%_
                                               _%hd227970228623%_
                                               _%tl227971228625%_
                                               _%e227972228628%_
                                               _%hd227973228631%_
                                               _%tl227974228633%_
                                               _%e227975228636%_
                                               _%hd227976228639%_
                                               _%tl227977228641%_
                                               _%e227978228644%_
                                               _%hd227979228647%_
                                               _%tl227980228649%_
                                               _%e227981228652%_
                                               _%hd227982228655%_
                                               _%tl227983228657%_
                                               _%e227984228660%_
                                               _%hd227985228663%_
                                               _%tl227986228665%_
                                               _%e227987228668%_
                                               _%hd227988228671%_
                                               _%tl227989228673%_
                                               _%e227990228676%_
                                               _%hd227991228679%_
                                               _%tl227992228681%_
                                               _%e227993228684%_
                                               _%hd227994228687%_
                                               _%tl227995228689%_
                                               _%e227996228692%_
                                               _%hd227997228695%_
                                               _%tl227998228697%_
                                               _%__splice232337232338%_
                                               _%target227999228700%_
                                               _%tl228001228702%_)
                                              (_%__kont232347232348%_))))
                                      (_%__kont232347232348%_))
                                  (_%__kont232347232348%_))))
                          (_%__kont232347232348%_))
                      (_%__kont232347232348%_))
                  (_%__kont232347232348%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont232347232348%_))))
                                          (_%__match232826232827%_
                                           _%e227960228596%_
                                           _%hd227961228599%_
                                           _%tl227962228601%_
                                           _%e227963228604%_
                                           _%hd227964228607%_
                                           _%tl227965228609%_
                                           _%e227966228612%_
                                           _%hd227967228615%_
                                           _%tl227968228617%_
                                           _%e227969228620%_
                                           _%hd227970228623%_
                                           _%tl227971228625%_
                                           _%e227972228628%_
                                           _%hd227973228631%_
                                           _%tl227974228633%_
                                           _%e227975228636%_
                                           _%hd227976228639%_
                                           _%tl227977228641%_
                                           _%e227978228644%_
                                           _%hd227979228647%_
                                           _%tl227980228649%_
                                           _%e227981228652%_
                                           _%hd227982228655%_
                                           _%tl227983228657%_))
                                      (_%__match232826232827%_
                                       _%e227960228596%_
                                       _%hd227961228599%_
                                       _%tl227962228601%_
                                       _%e227963228604%_
                                       _%hd227964228607%_
                                       _%tl227965228609%_
                                       _%e227966228612%_
                                       _%hd227967228615%_
                                       _%tl227968228617%_
                                       _%e227969228620%_
                                       _%hd227970228623%_
                                       _%tl227971228625%_
                                       _%e227972228628%_
                                       _%hd227973228631%_
                                       _%tl227974228633%_
                                       _%e227975228636%_
                                       _%hd227976228639%_
                                       _%tl227977228641%_
                                       _%e227978228644%_
                                       _%hd227979228647%_
                                       _%tl227980228649%_
                                       _%e227981228652%_
                                       _%hd227982228655%_
                                       _%tl227983228657%_))))
                              (_%__match232826232827%_
                               _%e227960228596%_
                               _%hd227961228599%_
                               _%tl227962228601%_
                               _%e227963228604%_
                               _%hd227964228607%_
                               _%tl227965228609%_
                               _%e227966228612%_
                               _%hd227967228615%_
                               _%tl227968228617%_
                               _%e227969228620%_
                               _%hd227970228623%_
                               _%tl227971228625%_
                               _%e227972228628%_
                               _%hd227973228631%_
                               _%tl227974228633%_
                               _%e227975228636%_
                               _%hd227976228639%_
                               _%tl227977228641%_
                               _%e227978228644%_
                               _%hd227979228647%_
                               _%tl227980228649%_
                               _%e227981228652%_
                               _%hd227982228655%_
                               _%tl227983228657%_))
                          (_%__match232612232613%_
                           _%e227960228596%_
                           _%hd227961228599%_
                           _%tl227962228601%_
                           _%e227963228604%_
                           _%hd227964228607%_
                           _%tl227965228609%_
                           _%e227966228612%_
                           _%hd227967228615%_
                           _%tl227968228617%_
                           _%e227969228620%_
                           _%hd227970228623%_
                           _%tl227971228625%_
                           _%e227972228628%_
                           _%hd227973228631%_
                           _%tl227974228633%_
                           _%e227975228636%_
                           _%hd227976228639%_
                           _%tl227977228641%_
                           _%e227978228644%_
                           _%hd227979228647%_
                           _%tl227980228649%_
                           _%e227981228652%_
                           _%hd227982228655%_
                           _%tl227983228657%_
                           _%e227984228660%_
                           _%hd227985228663%_
                           _%tl227986228665%_))))
                   (_%__match232434232435%_
                    (lambda (_%e227916228783%_
                             _%hd227917228786%_
                             _%tl227918228788%_
                             _%e227919228791%_
                             _%hd227920228794%_
                             _%tl227921228796%_
                             _%e227922228799%_
                             _%hd227923228802%_
                             _%tl227924228804%_
                             _%e227925228807%_
                             _%hd227926228810%_
                             _%tl227927228812%_
                             _%e227928228815%_
                             _%hd227929228818%_
                             _%tl227930228820%_
                             _%e227931228823%_
                             _%hd227932228826%_
                             _%tl227933228828%_
                             _%e227934228831%_
                             _%hd227935228834%_
                             _%tl227936228836%_
                             _%e227937228839%_
                             _%hd227938228842%_
                             _%tl227939228844%_
                             _%e227940228847%_
                             _%hd227941228850%_
                             _%tl227942228852%_
                             _%e227943228855%_
                             _%hd227944228858%_
                             _%tl227945228860%_
                             _%__splice232333232334%_
                             _%target227946228863%_
                             _%tl227948228865%_)
                      (letrec ((_%loop227949228868%_
                                (lambda (_%hd227947228871%_
                                         _%args227953228873%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd227947228871%_))
                                      (let ((_%e227950228875%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd227947228871%_))))
                                        (let ((_%lp-tl227952228880%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e227950228875%_)))
                                              (_%lp-hd227951228878%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e227950228875%_))))
                                          (_%loop227949228868%_
                                           _%lp-tl227952228880%_
                                           (cons _%lp-hd227951228878%_
                                                 _%args227953228873%_))))
                                      (let ((_%args227954228883%_
                                             (reverse _%args227953228873%_)))
                                        (let ((_%g227912228885%_
                                               _%args227954228883%_)
                                              (_%g227913228886%_
                                               _%hd227944228858%_)
                                              (_%g227914228887%_
                                               _%hd227935228834%_)
                                              (_%g227915228888%_
                                               _%hd227926228810%_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%g227915228888%_
                                                      'call-method))
                                                   (let ((__tmp233492
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self227901%_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%g227914228887%_
                                                      __tmp233492)))
                                              (_%__kont232331232332%_
                                               _%g227912228885%_
                                               _%g227913228886%_
                                               _%g227914228887%_
                                               _%g227915228888%_)
                                              (_%__match232622232623%_
                                               _%e227916228783%_
                                               _%hd227917228786%_
                                               _%tl227918228788%_
                                               _%e227919228791%_
                                               _%hd227920228794%_
                                               _%tl227921228796%_
                                               _%e227922228799%_
                                               _%hd227923228802%_
                                               _%tl227924228804%_
                                               _%e227925228807%_
                                               _%hd227926228810%_
                                               _%tl227927228812%_
                                               _%e227928228815%_
                                               _%hd227929228818%_
                                               _%tl227930228820%_
                                               _%e227931228823%_
                                               _%hd227932228826%_
                                               _%tl227933228828%_
                                               _%e227934228831%_
                                               _%hd227935228834%_
                                               _%tl227936228836%_
                                               _%e227937228839%_
                                               _%hd227938228842%_
                                               _%tl227939228844%_
                                               _%e227940228847%_
                                               _%hd227941228850%_
                                               _%tl227942228852%_
                                               _%e227943228855%_
                                               _%hd227944228858%_
                                               _%tl227945228860%_))))))))
                        (_%loop227949228868%_ _%target227946228863%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx232329232330%_))
                  (let ((_%e227916228783%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx232329232330%_))))
                    (let ((_%tl227918228788%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e227916228783%_)))
                          (_%hd227917228786%_
                           (let ()
                             (declare (not safe))
                             (##car _%e227916228783%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl227918228788%_))
                          (let ((_%e227919228791%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl227918228788%_))))
                            (let ((_%tl227921228796%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e227919228791%_)))
                                  (_%hd227920228794%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e227919228791%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd227920228794%_))
                                  (let ((_%e227922228799%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd227920228794%_))))
                                    (let ((_%tl227924228804%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e227922228799%_)))
                                          (_%hd227923228802%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e227922228799%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd227923228802%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd227923228802%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl227924228804%_))
                                                  (let ((_%e227925228807%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl227924228804%_))))
                                                    (let ((_%tl227927228812%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e227925228807%_)))
                                                          (_%hd227926228810%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e227925228807%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl227927228812%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl227921228796%_))
                      (let ((_%e227928228815%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl227921228796%_))))
                        (let ((_%tl227930228820%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e227928228815%_)))
                              (_%hd227929228818%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e227928228815%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd227929228818%_))
                              (let ((_%e227931228823%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd227929228818%_))))
                                (let ((_%tl227933228828%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e227931228823%_)))
                                      (_%hd227932228826%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e227931228823%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd227932228826%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd227932228826%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl227933228828%_))
                                              (let ((_%e227934228831%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl227933228828%_))))
                                                (let ((_%tl227936228836%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e227934228831%_)))
                                                      (_%hd227935228834%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e227934228831%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl227936228836%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl227930228820%_))
                                                          (let ((_%e227937228839%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl227930228820%_))))
                    (let ((_%tl227939228844%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e227937228839%_)))
                          (_%hd227938228842%_
                           (let ()
                             (declare (not safe))
                             (##car _%e227937228839%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd227938228842%_))
                          (let ((_%e227940228847%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd227938228842%_))))
                            (let ((_%tl227942228852%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e227940228847%_)))
                                  (_%hd227941228850%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e227940228847%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd227941228850%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%hd227941228850%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl227942228852%_))
                                          (let ((_%e227943228855%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl227942228852%_))))
                                            (let ((_%tl227945228860%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e227943228855%_)))
                                                  (_%hd227944228858%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e227943228855%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl227945228860%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl227939228844%_))
                                                      (let ((_%__splice232333232334%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%tl227939228844%_
                        '0))))
                (let ((_%tl227948228865%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice232333232334%_ '1)))
                      (_%target227946228863%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice232333232334%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl227948228865%_))
                      (_%__match232434232435%_
                       _%e227916228783%_
                       _%hd227917228786%_
                       _%tl227918228788%_
                       _%e227919228791%_
                       _%hd227920228794%_
                       _%tl227921228796%_
                       _%e227922228799%_
                       _%hd227923228802%_
                       _%tl227924228804%_
                       _%e227925228807%_
                       _%hd227926228810%_
                       _%tl227927228812%_
                       _%e227928228815%_
                       _%hd227929228818%_
                       _%tl227930228820%_
                       _%e227931228823%_
                       _%hd227932228826%_
                       _%tl227933228828%_
                       _%e227934228831%_
                       _%hd227935228834%_
                       _%tl227936228836%_
                       _%e227937228839%_
                       _%hd227938228842%_
                       _%tl227939228844%_
                       _%e227940228847%_
                       _%hd227941228850%_
                       _%tl227942228852%_
                       _%e227943228855%_
                       _%hd227944228858%_
                       _%tl227945228860%_
                       _%__splice232333232334%_
                       _%target227946228863%_
                       _%tl227948228865%_)
                      (_%__match232622232623%_
                       _%e227916228783%_
                       _%hd227917228786%_
                       _%tl227918228788%_
                       _%e227919228791%_
                       _%hd227920228794%_
                       _%tl227921228796%_
                       _%e227922228799%_
                       _%hd227923228802%_
                       _%tl227924228804%_
                       _%e227925228807%_
                       _%hd227926228810%_
                       _%tl227927228812%_
                       _%e227928228815%_
                       _%hd227929228818%_
                       _%tl227930228820%_
                       _%e227931228823%_
                       _%hd227932228826%_
                       _%tl227933228828%_
                       _%e227934228831%_
                       _%hd227935228834%_
                       _%tl227936228836%_
                       _%e227937228839%_
                       _%hd227938228842%_
                       _%tl227939228844%_
                       _%e227940228847%_
                       _%hd227941228850%_
                       _%tl227942228852%_
                       _%e227943228855%_
                       _%hd227944228858%_
                       _%tl227945228860%_))))
              (_%__match232622232623%_
               _%e227916228783%_
               _%hd227917228786%_
               _%tl227918228788%_
               _%e227919228791%_
               _%hd227920228794%_
               _%tl227921228796%_
               _%e227922228799%_
               _%hd227923228802%_
               _%tl227924228804%_
               _%e227925228807%_
               _%hd227926228810%_
               _%tl227927228812%_
               _%e227928228815%_
               _%hd227929228818%_
               _%tl227930228820%_
               _%e227931228823%_
               _%hd227932228826%_
               _%tl227933228828%_
               _%e227934228831%_
               _%hd227935228834%_
               _%tl227936228836%_
               _%e227937228839%_
               _%hd227938228842%_
               _%tl227939228844%_
               _%e227940228847%_
               _%hd227941228850%_
               _%tl227942228852%_
               _%e227943228855%_
               _%hd227944228858%_
               _%tl227945228860%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__match232826232827%_
                                                   _%e227916228783%_
                                                   _%hd227917228786%_
                                                   _%tl227918228788%_
                                                   _%e227919228791%_
                                                   _%hd227920228794%_
                                                   _%tl227921228796%_
                                                   _%e227922228799%_
                                                   _%hd227923228802%_
                                                   _%tl227924228804%_
                                                   _%e227925228807%_
                                                   _%hd227926228810%_
                                                   _%tl227927228812%_
                                                   _%e227928228815%_
                                                   _%hd227929228818%_
                                                   _%tl227930228820%_
                                                   _%e227931228823%_
                                                   _%hd227932228826%_
                                                   _%tl227933228828%_
                                                   _%e227934228831%_
                                                   _%hd227935228834%_
                                                   _%tl227936228836%_
                                                   _%e227937228839%_
                                                   _%hd227938228842%_
                                                   _%tl227939228844%_))))
                                          (_%__match232826232827%_
                                           _%e227916228783%_
                                           _%hd227917228786%_
                                           _%tl227918228788%_
                                           _%e227919228791%_
                                           _%hd227920228794%_
                                           _%tl227921228796%_
                                           _%e227922228799%_
                                           _%hd227923228802%_
                                           _%tl227924228804%_
                                           _%e227925228807%_
                                           _%hd227926228810%_
                                           _%tl227927228812%_
                                           _%e227928228815%_
                                           _%hd227929228818%_
                                           _%tl227930228820%_
                                           _%e227931228823%_
                                           _%hd227932228826%_
                                           _%tl227933228828%_
                                           _%e227934228831%_
                                           _%hd227935228834%_
                                           _%tl227936228836%_
                                           _%e227937228839%_
                                           _%hd227938228842%_
                                           _%tl227939228844%_))
                                      (_%__match232502232503%_
                                       _%e227916228783%_
                                       _%hd227917228786%_
                                       _%tl227918228788%_
                                       _%e227919228791%_
                                       _%hd227920228794%_
                                       _%tl227921228796%_
                                       _%e227922228799%_
                                       _%hd227923228802%_
                                       _%tl227924228804%_
                                       _%e227925228807%_
                                       _%hd227926228810%_
                                       _%tl227927228812%_
                                       _%e227928228815%_
                                       _%hd227929228818%_
                                       _%tl227930228820%_
                                       _%e227931228823%_
                                       _%hd227932228826%_
                                       _%tl227933228828%_
                                       _%e227934228831%_
                                       _%hd227935228834%_
                                       _%tl227936228836%_
                                       _%e227937228839%_
                                       _%hd227938228842%_
                                       _%tl227939228844%_
                                       _%e227940228847%_
                                       _%hd227941228850%_
                                       _%tl227942228852%_))
                                  (_%__match232826232827%_
                                   _%e227916228783%_
                                   _%hd227917228786%_
                                   _%tl227918228788%_
                                   _%e227919228791%_
                                   _%hd227920228794%_
                                   _%tl227921228796%_
                                   _%e227922228799%_
                                   _%hd227923228802%_
                                   _%tl227924228804%_
                                   _%e227925228807%_
                                   _%hd227926228810%_
                                   _%tl227927228812%_
                                   _%e227928228815%_
                                   _%hd227929228818%_
                                   _%tl227930228820%_
                                   _%e227931228823%_
                                   _%hd227932228826%_
                                   _%tl227933228828%_
                                   _%e227934228831%_
                                   _%hd227935228834%_
                                   _%tl227936228836%_
                                   _%e227937228839%_
                                   _%hd227938228842%_
                                   _%tl227939228844%_))))
                          (_%__match232826232827%_
                           _%e227916228783%_
                           _%hd227917228786%_
                           _%tl227918228788%_
                           _%e227919228791%_
                           _%hd227920228794%_
                           _%tl227921228796%_
                           _%e227922228799%_
                           _%hd227923228802%_
                           _%tl227924228804%_
                           _%e227925228807%_
                           _%hd227926228810%_
                           _%tl227927228812%_
                           _%e227928228815%_
                           _%hd227929228818%_
                           _%tl227930228820%_
                           _%e227931228823%_
                           _%hd227932228826%_
                           _%tl227933228828%_
                           _%e227934228831%_
                           _%hd227935228834%_
                           _%tl227936228836%_
                           _%e227937228839%_
                           _%hd227938228842%_
                           _%tl227939228844%_))))
                  (_%__match232764232765%_
                   _%e227916228783%_
                   _%hd227917228786%_
                   _%tl227918228788%_
                   _%e227919228791%_
                   _%hd227920228794%_
                   _%tl227921228796%_
                   _%e227922228799%_
                   _%hd227923228802%_
                   _%tl227924228804%_
                   _%e227925228807%_
                   _%hd227926228810%_
                   _%tl227927228812%_
                   _%e227928228815%_
                   _%hd227929228818%_
                   _%tl227930228820%_
                   _%e227931228823%_
                   _%hd227932228826%_
                   _%tl227933228828%_
                   _%e227934228831%_
                   _%hd227935228834%_
                   _%tl227936228836%_))
              (_%__kont232347232348%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont232347232348%_))
                                          (_%__kont232347232348%_))
                                      (_%__kont232347232348%_))))
                              (_%__kont232347232348%_))))
                      (_%__kont232347232348%_))
                  (_%__kont232347232348%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont232347232348%_))
                                              (_%__kont232347232348%_))
                                          (_%__kont232347232348%_))))
                                  (_%__kont232347232348%_))))
                          (_%__kont232347232348%_))))
                  (_%__kont232347232348%_)))))))
    (define gxc#subst-object-refs-call%
      (lambda (_%self226844%_ _%stx226845%_)
        (letrec ((_%force-e226847%_
                  (lambda (_%target227899%_)
                    (cons '%#call
                          (cons (cons '%#ref (cons 'force '()))
                                (cons (cons '%#ref (cons _%target227899%_ '()))
                                      '()))))))
          (let* ((_%__stx232831232832%_ _%stx226845%_)
                 (_%g226855227077%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx232831232832%_)))))
            (let ((_%__kont232833232834%_
                   (lambda (_%g226857227845%_
                            _%g226858227846%_
                            _%g226859227847%_
                            _%g226860227848%_)
                     (let ((_%$method227893%_
                            (let ((__tmp233494
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self226844%_ 'methods)))
                                  (__tmp233493
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g226858227846%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp233494 __tmp233493)))
                           (_%args227894%_
                            (map (lambda (_%g227881227883%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self226844%_
                                      _%g227881227883%_)))
                                 (let ((__tmp233495
                                        (lambda (_%g227885227888%_
                                                 _%g227886227890%_)
                                          (cons _%g227885227888%_
                                                _%g227886227890%_))))
                                   (declare (not safe))
                                   (foldr__0
                                    __tmp233495
                                    '()
                                    _%g226857227845%_)))))
                       (let ((__tmp233496
                              (cons '%#call
                                    (cons (_%force-e226847%_ _%$method227893%_)
                                          (cons (cons '%#ref
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self226844%_
                                                               'receiver))
                                                            '()))
                                                _%args227894%_)))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp233496 _%stx226845%_)))))
                  (_%__kont232837232838%_
                   (lambda (_%g226900227679%_
                            _%g226901227680%_
                            _%g226902227681%_
                            _%g226903227682%_
                            _%g226904227683%_)
                     (let ((_%$method227735%_
                            (let ((__tmp233498
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self226844%_ 'methods)))
                                  (__tmp233497
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g226901227680%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp233498 __tmp233497)))
                           (_%args227736%_
                            (map (lambda (_%g227723227725%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self226844%_
                                      _%g227723227725%_)))
                                 (let ((__tmp233499
                                        (lambda (_%g227727227730%_
                                                 _%g227728227732%_)
                                          (cons _%g227727227730%_
                                                _%g227728227732%_))))
                                   (declare (not safe))
                                   (foldr__0
                                    __tmp233499
                                    '()
                                    _%g226900227679%_)))))
                       (let ((__tmp233500
                              (cons '%#call
                                    (cons (cons '%#ref (cons 'apply '()))
                                          (cons (_%force-e226847%_
                                                 _%$method227735%_)
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (slot-ref__0 _%self226844%_ 'receiver))
                          '()))
              _%args227736%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp233500 _%stx226845%_)))))
                  (_%__kont232841232842%_
                   (lambda (_%g226953227512%_
                            _%g226954227513%_
                            _%g226955227514%_)
                     (let* ((_%$field227546%_
                             (let ((__tmp233502
                                    (let ()
                                      (declare (not safe))
                                      (slot-ref__0 _%self226844%_ 'slots)))
                                   (__tmp233501
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%g226953227512%_))))
                               (declare (not safe))
                               (hash-ref__0 __tmp233502 __tmp233501)))
                            (__tmp233503
                             (cons '%#struct-unchecked-ref
                                   (cons (cons '%#ref
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (slot-ref__0
                                                        _%self226844%_
                                                        'klass))
                                                     '()))
                                         (cons (cons '%#ref
                                                     (cons _%$field227546%_
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (slot-ref__0 _%self226844%_ 'receiver))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp233503 _%stx226845%_))))
                  (_%__kont232843232844%_
                   (lambda (_%g226986227386%_
                            _%g226987227387%_
                            _%g226988227388%_
                            _%g226989227389%_)
                     (let ((_%$field227424%_
                            (let ((__tmp233505
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self226844%_ 'slots)))
                                  (__tmp233504
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g226987227387%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp233505 __tmp233504)))
                           (_%expr227425%_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-e__1
                               _%self226844%_
                               _%g226986227386%_))))
                       (let ((__tmp233506
                              (cons '%#struct-unchecked-set!
                                    (cons (cons '%#ref
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (slot-ref__0
                                                         _%self226844%_
                                                         'klass))
                                                      '()))
                                          (cons (cons '%#ref
                                                      (cons _%$field227424%_
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (slot-ref__0 _%self226844%_ 'receiver))
                          '()))
              (cons _%expr227425%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp233506 _%stx226845%_)))))
                  (_%__kont232845232846%_
                   (lambda (_%g227023227258%_ _%g227024227259%_)
                     (let* ((_%accessor227281%_
                             (let ((__tmp233507
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol
                                       _%g227024227259%_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp233507)))
                            (_%klass227283%_
                             (let ((__tmp233508
                                    (##structure-ref
                                     _%accessor227281%_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _%stx226845%_
                                __tmp233508)))
                            (_%slot227285%_
                             (##structure-ref
                              _%accessor227281%_
                              '3
                              gxc#!accessor::t
                              '#f)))
                       (if (if (##structure-ref
                                _%accessor227281%_
                                '4
                                gxc#!accessor::t
                                '#f)
                               '#f
                               (or (let ()
                                     (declare (not safe))
                                     (gxc#!class-struct-slot?
                                      _%klass227283%_
                                      _%slot227285%_))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass227283%_
                                      '8
                                      '#f
                                      '#f))))
                           _%stx226845%_
                           (let* ((_%$field227291%_
                                   (let ((__tmp233509
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self226844%_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp233509 _%slot227285%_)))
                                  (__tmp233510
                                   (cons '%#struct-unchecked-ref
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (slot-ref__0
                                                              _%self226844%_
                                                              'klass))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$field227291%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _%self226844%_ 'receiver))
                               '()))
                   '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp233510
                              _%stx226845%_))))))
                  (_%__kont232847232848%_
                   (lambda (_%g227046227153%_
                            _%g227047227154%_
                            _%g227048227155%_)
                     (let* ((_%mutator227183%_
                             (let ((__tmp233511
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol
                                       _%g227048227155%_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp233511)))
                            (_%klass227185%_
                             (let ((__tmp233512
                                    (##structure-ref
                                     _%mutator227183%_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _%stx226845%_
                                __tmp233512)))
                            (_%slot227187%_
                             (##structure-ref
                              _%mutator227183%_
                              '3
                              gxc#!mutator::t
                              '#f))
                            (_%expr227189%_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-e__1
                                _%self226844%_
                                _%g227046227153%_))))
                       (if (if (##structure-ref
                                _%mutator227183%_
                                '4
                                gxc#!mutator::t
                                '#f)
                               '#f
                               (or (let ()
                                     (declare (not safe))
                                     (gxc#!class-struct-slot?
                                      _%klass227185%_
                                      _%slot227187%_))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass227185%_
                                      '8
                                      '#f
                                      '#f))))
                           (let ((__tmp233513
                                  (cons '%#call
                                        (cons (cons (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       '%#ref))
                                                    (cons _%g227048227155%_
                                                          '()))
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#ref))
                                                          (cons _%g227047227154%_
                                                                '()))
                                                    (cons _%expr227189%_
                                                          '()))))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp233513 _%stx226845%_))
                           (let* ((_%$field227195%_
                                   (let ((__tmp233514
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self226844%_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp233514 _%slot227187%_)))
                                  (__tmp233515
                                   (cons '%#struct-unchecked-set!
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (slot-ref__0
                                                              _%self226844%_
                                                              'klass))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$field227195%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _%self226844%_ 'receiver))
                               '()))
                   (cons _%expr227189%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp233515
                              _%stx226845%_))))))
                  (_%__kont232849232850%_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-operands _%self226844%_ _%stx226845%_)))))
              (let* ((_%__match233330233331%_
                      (lambda (_%e227049227089%_
                               _%hd227050227092%_
                               _%tl227051227094%_
                               _%e227052227097%_
                               _%hd227053227100%_
                               _%tl227054227102%_
                               _%e227055227105%_
                               _%hd227056227108%_
                               _%tl227057227110%_
                               _%e227058227113%_
                               _%hd227059227116%_
                               _%tl227060227118%_
                               _%e227061227121%_
                               _%hd227062227124%_
                               _%tl227063227126%_
                               _%e227064227129%_
                               _%hd227065227132%_
                               _%tl227066227134%_
                               _%e227067227137%_
                               _%hd227068227140%_
                               _%tl227069227142%_
                               _%e227070227145%_
                               _%hd227071227148%_
                               _%tl227072227150%_)
                        (let ((_%g227046227153%_ _%hd227071227148%_)
                              (_%g227047227154%_ _%hd227068227140%_)
                              (_%g227048227155%_ _%hd227059227116%_))
                          (if (and (let ((__tmp233516
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self226844%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%g227047227154%_
                                      __tmp233516))
                                   (let ((__tmp233517
                                          (let ((__tmp233518
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%g227048227155%_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp233518))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp233517
                                      'gxc#!mutator::t)))
                              (_%__kont232847232848%_
                               _%g227046227153%_
                               _%g227047227154%_
                               _%g227048227155%_)
                              (_%__kont232849232850%_)))))
                     (_%__match233328233329%_
                      (lambda (_%e227049227089%_
                               _%hd227050227092%_
                               _%tl227051227094%_
                               _%e227052227097%_
                               _%hd227053227100%_
                               _%tl227054227102%_
                               _%e227055227105%_
                               _%hd227056227108%_
                               _%tl227057227110%_
                               _%e227058227113%_
                               _%hd227059227116%_
                               _%tl227060227118%_
                               _%e227061227121%_
                               _%hd227062227124%_
                               _%tl227063227126%_
                               _%e227064227129%_
                               _%hd227065227132%_
                               _%tl227066227134%_
                               _%e227067227137%_
                               _%hd227068227140%_
                               _%tl227069227142%_
                               _%e227070227145%_
                               _%hd227071227148%_
                               _%tl227072227150%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl227072227150%_))
                            (_%__match233330233331%_
                             _%e227049227089%_
                             _%hd227050227092%_
                             _%tl227051227094%_
                             _%e227052227097%_
                             _%hd227053227100%_
                             _%tl227054227102%_
                             _%e227055227105%_
                             _%hd227056227108%_
                             _%tl227057227110%_
                             _%e227058227113%_
                             _%hd227059227116%_
                             _%tl227060227118%_
                             _%e227061227121%_
                             _%hd227062227124%_
                             _%tl227063227126%_
                             _%e227064227129%_
                             _%hd227065227132%_
                             _%tl227066227134%_
                             _%e227067227137%_
                             _%hd227068227140%_
                             _%tl227069227142%_
                             _%e227070227145%_
                             _%hd227071227148%_
                             _%tl227072227150%_)
                            (_%__kont232849232850%_))))
                     (_%__match233322233323%_
                      (lambda (_%e227049227089%_
                               _%hd227050227092%_
                               _%tl227051227094%_
                               _%e227052227097%_
                               _%hd227053227100%_
                               _%tl227054227102%_
                               _%e227055227105%_
                               _%hd227056227108%_
                               _%tl227057227110%_
                               _%e227058227113%_
                               _%hd227059227116%_
                               _%tl227060227118%_
                               _%e227061227121%_
                               _%hd227062227124%_
                               _%tl227063227126%_
                               _%e227064227129%_
                               _%hd227065227132%_
                               _%tl227066227134%_
                               _%e227067227137%_
                               _%hd227068227140%_
                               _%tl227069227142%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl227063227126%_))
                            (let ((_%e227070227145%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl227063227126%_))))
                              (let ((_%tl227072227150%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e227070227145%_)))
                                    (_%hd227071227148%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e227070227145%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl227072227150%_))
                                    (_%__match233330233331%_
                                     _%e227049227089%_
                                     _%hd227050227092%_
                                     _%tl227051227094%_
                                     _%e227052227097%_
                                     _%hd227053227100%_
                                     _%tl227054227102%_
                                     _%e227055227105%_
                                     _%hd227056227108%_
                                     _%tl227057227110%_
                                     _%e227058227113%_
                                     _%hd227059227116%_
                                     _%tl227060227118%_
                                     _%e227061227121%_
                                     _%hd227062227124%_
                                     _%tl227063227126%_
                                     _%e227064227129%_
                                     _%hd227065227132%_
                                     _%tl227066227134%_
                                     _%e227067227137%_
                                     _%hd227068227140%_
                                     _%tl227069227142%_
                                     _%e227070227145%_
                                     _%hd227071227148%_
                                     _%tl227072227150%_)
                                    (_%__kont232849232850%_))))
                            (_%__kont232849232850%_))))
                     (_%__match233268233269%_
                      (lambda (_%e227025227202%_
                               _%hd227026227205%_
                               _%tl227027227207%_
                               _%e227028227210%_
                               _%hd227029227213%_
                               _%tl227030227215%_
                               _%e227031227218%_
                               _%hd227032227221%_
                               _%tl227033227223%_
                               _%e227034227226%_
                               _%hd227035227229%_
                               _%tl227036227231%_
                               _%e227037227234%_
                               _%hd227038227237%_
                               _%tl227039227239%_
                               _%e227040227242%_
                               _%hd227041227245%_
                               _%tl227042227247%_
                               _%e227043227250%_
                               _%hd227044227253%_
                               _%tl227045227255%_)
                        (let ((_%g227023227258%_ _%hd227044227253%_)
                              (_%g227024227259%_ _%hd227035227229%_))
                          (if (and (let ((__tmp233519
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self226844%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%g227023227258%_
                                      __tmp233519))
                                   (let ((__tmp233520
                                          (let ((__tmp233521
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%g227024227259%_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp233521))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp233520
                                      'gxc#!accessor::t)))
                              (_%__kont232845232846%_
                               _%g227023227258%_
                               _%g227024227259%_)
                              (_%__kont232849232850%_)))))
                     (_%__match233266233267%_
                      (lambda (_%e227025227202%_
                               _%hd227026227205%_
                               _%tl227027227207%_
                               _%e227028227210%_
                               _%hd227029227213%_
                               _%tl227030227215%_
                               _%e227031227218%_
                               _%hd227032227221%_
                               _%tl227033227223%_
                               _%e227034227226%_
                               _%hd227035227229%_
                               _%tl227036227231%_
                               _%e227037227234%_
                               _%hd227038227237%_
                               _%tl227039227239%_
                               _%e227040227242%_
                               _%hd227041227245%_
                               _%tl227042227247%_
                               _%e227043227250%_
                               _%hd227044227253%_
                               _%tl227045227255%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl227039227239%_))
                            (_%__match233268233269%_
                             _%e227025227202%_
                             _%hd227026227205%_
                             _%tl227027227207%_
                             _%e227028227210%_
                             _%hd227029227213%_
                             _%tl227030227215%_
                             _%e227031227218%_
                             _%hd227032227221%_
                             _%tl227033227223%_
                             _%e227034227226%_
                             _%hd227035227229%_
                             _%tl227036227231%_
                             _%e227037227234%_
                             _%hd227038227237%_
                             _%tl227039227239%_
                             _%e227040227242%_
                             _%hd227041227245%_
                             _%tl227042227247%_
                             _%e227043227250%_
                             _%hd227044227253%_
                             _%tl227045227255%_)
                            (_%__match233322233323%_
                             _%e227025227202%_
                             _%hd227026227205%_
                             _%tl227027227207%_
                             _%e227028227210%_
                             _%hd227029227213%_
                             _%tl227030227215%_
                             _%e227031227218%_
                             _%hd227032227221%_
                             _%tl227033227223%_
                             _%e227034227226%_
                             _%hd227035227229%_
                             _%tl227036227231%_
                             _%e227037227234%_
                             _%hd227038227237%_
                             _%tl227039227239%_
                             _%e227040227242%_
                             _%hd227041227245%_
                             _%tl227042227247%_
                             _%e227043227250%_
                             _%hd227044227253%_
                             _%tl227045227255%_))))
                     (_%__match233212233213%_
                      (lambda (_%e226990227298%_
                               _%hd226991227301%_
                               _%tl226992227303%_
                               _%e226993227306%_
                               _%hd226994227309%_
                               _%tl226995227311%_
                               _%e226996227314%_
                               _%hd226997227317%_
                               _%tl226998227319%_
                               _%e226999227322%_
                               _%hd227000227325%_
                               _%tl227001227327%_
                               _%e227002227330%_
                               _%hd227003227333%_
                               _%tl227004227335%_
                               _%e227005227338%_
                               _%hd227006227341%_
                               _%tl227007227343%_
                               _%e227008227346%_
                               _%hd227009227349%_
                               _%tl227010227351%_
                               _%e227011227354%_
                               _%hd227012227357%_
                               _%tl227013227359%_
                               _%e227014227362%_
                               _%hd227015227365%_
                               _%tl227016227367%_
                               _%e227017227370%_
                               _%hd227018227373%_
                               _%tl227019227375%_
                               _%e227020227378%_
                               _%hd227021227381%_
                               _%tl227022227383%_)
                        (let ((_%g226986227386%_ _%hd227021227381%_)
                              (_%g226987227387%_ _%hd227018227373%_)
                              (_%g226988227388%_ _%hd227009227349%_)
                              (_%g226989227389%_ _%hd227000227325%_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%g226989227389%_
                                          'slot-set!))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%g226989227389%_
                                          'unchecked-slot-set!)))
                                   (let ((__tmp233522
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self226844%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%g226988227388%_
                                      __tmp233522)))
                              (_%__kont232843232844%_
                               _%g226986227386%_
                               _%g226987227387%_
                               _%g226988227388%_
                               _%g226989227389%_)
                              (_%__kont232849232850%_)))))
                     (_%__match233204233205%_
                      (lambda (_%e226990227298%_
                               _%hd226991227301%_
                               _%tl226992227303%_
                               _%e226993227306%_
                               _%hd226994227309%_
                               _%tl226995227311%_
                               _%e226996227314%_
                               _%hd226997227317%_
                               _%tl226998227319%_
                               _%e226999227322%_
                               _%hd227000227325%_
                               _%tl227001227327%_
                               _%e227002227330%_
                               _%hd227003227333%_
                               _%tl227004227335%_
                               _%e227005227338%_
                               _%hd227006227341%_
                               _%tl227007227343%_
                               _%e227008227346%_
                               _%hd227009227349%_
                               _%tl227010227351%_
                               _%e227011227354%_
                               _%hd227012227357%_
                               _%tl227013227359%_
                               _%e227014227362%_
                               _%hd227015227365%_
                               _%tl227016227367%_
                               _%e227017227370%_
                               _%hd227018227373%_
                               _%tl227019227375%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl227013227359%_))
                            (let ((_%e227020227378%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl227013227359%_))))
                              (let ((_%tl227022227383%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e227020227378%_)))
                                    (_%hd227021227381%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e227020227378%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl227022227383%_))
                                    (_%__match233212233213%_
                                     _%e226990227298%_
                                     _%hd226991227301%_
                                     _%tl226992227303%_
                                     _%e226993227306%_
                                     _%hd226994227309%_
                                     _%tl226995227311%_
                                     _%e226996227314%_
                                     _%hd226997227317%_
                                     _%tl226998227319%_
                                     _%e226999227322%_
                                     _%hd227000227325%_
                                     _%tl227001227327%_
                                     _%e227002227330%_
                                     _%hd227003227333%_
                                     _%tl227004227335%_
                                     _%e227005227338%_
                                     _%hd227006227341%_
                                     _%tl227007227343%_
                                     _%e227008227346%_
                                     _%hd227009227349%_
                                     _%tl227010227351%_
                                     _%e227011227354%_
                                     _%hd227012227357%_
                                     _%tl227013227359%_
                                     _%e227014227362%_
                                     _%hd227015227365%_
                                     _%tl227016227367%_
                                     _%e227017227370%_
                                     _%hd227018227373%_
                                     _%tl227019227375%_
                                     _%e227020227378%_
                                     _%hd227021227381%_
                                     _%tl227022227383%_)
                                    (_%__kont232849232850%_))))
                            (_%__match233328233329%_
                             _%e226990227298%_
                             _%hd226991227301%_
                             _%tl226992227303%_
                             _%e226993227306%_
                             _%hd226994227309%_
                             _%tl226995227311%_
                             _%e226996227314%_
                             _%hd226997227317%_
                             _%tl226998227319%_
                             _%e226999227322%_
                             _%hd227000227325%_
                             _%tl227001227327%_
                             _%e227002227330%_
                             _%hd227003227333%_
                             _%tl227004227335%_
                             _%e227005227338%_
                             _%hd227006227341%_
                             _%tl227007227343%_
                             _%e227008227346%_
                             _%hd227009227349%_
                             _%tl227010227351%_
                             _%e227011227354%_
                             _%hd227012227357%_
                             _%tl227013227359%_))))
                     (_%__match233126233127%_
                      (lambda (_%e226956227432%_
                               _%hd226957227435%_
                               _%tl226958227437%_
                               _%e226959227440%_
                               _%hd226960227443%_
                               _%tl226961227445%_
                               _%e226962227448%_
                               _%hd226963227451%_
                               _%tl226964227453%_
                               _%e226965227456%_
                               _%hd226966227459%_
                               _%tl226967227461%_
                               _%e226968227464%_
                               _%hd226969227467%_
                               _%tl226970227469%_
                               _%e226971227472%_
                               _%hd226972227475%_
                               _%tl226973227477%_
                               _%e226974227480%_
                               _%hd226975227483%_
                               _%tl226976227485%_
                               _%e226977227488%_
                               _%hd226978227491%_
                               _%tl226979227493%_
                               _%e226980227496%_
                               _%hd226981227499%_
                               _%tl226982227501%_
                               _%e226983227504%_
                               _%hd226984227507%_
                               _%tl226985227509%_)
                        (let ((_%g226953227512%_ _%hd226984227507%_)
                              (_%g226954227513%_ _%hd226975227483%_)
                              (_%g226955227514%_ _%hd226966227459%_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%g226955227514%_
                                          'slot-ref))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%g226955227514%_
                                          'unchecked-slot-ref)))
                                   (let ((__tmp233523
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self226844%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%g226954227513%_
                                      __tmp233523)))
                              (_%__kont232841232842%_
                               _%g226953227512%_
                               _%g226954227513%_
                               _%g226955227514%_)
                              (_%__match233330233331%_
                               _%e226956227432%_
                               _%hd226957227435%_
                               _%tl226958227437%_
                               _%e226959227440%_
                               _%hd226960227443%_
                               _%tl226961227445%_
                               _%e226962227448%_
                               _%hd226963227451%_
                               _%tl226964227453%_
                               _%e226965227456%_
                               _%hd226966227459%_
                               _%tl226967227461%_
                               _%e226968227464%_
                               _%hd226969227467%_
                               _%tl226970227469%_
                               _%e226971227472%_
                               _%hd226972227475%_
                               _%tl226973227477%_
                               _%e226974227480%_
                               _%hd226975227483%_
                               _%tl226976227485%_
                               _%e226977227488%_
                               _%hd226978227491%_
                               _%tl226979227493%_)))))
                     (_%__match233124233125%_
                      (lambda (_%e226956227432%_
                               _%hd226957227435%_
                               _%tl226958227437%_
                               _%e226959227440%_
                               _%hd226960227443%_
                               _%tl226961227445%_
                               _%e226962227448%_
                               _%hd226963227451%_
                               _%tl226964227453%_
                               _%e226965227456%_
                               _%hd226966227459%_
                               _%tl226967227461%_
                               _%e226968227464%_
                               _%hd226969227467%_
                               _%tl226970227469%_
                               _%e226971227472%_
                               _%hd226972227475%_
                               _%tl226973227477%_
                               _%e226974227480%_
                               _%hd226975227483%_
                               _%tl226976227485%_
                               _%e226977227488%_
                               _%hd226978227491%_
                               _%tl226979227493%_
                               _%e226980227496%_
                               _%hd226981227499%_
                               _%tl226982227501%_
                               _%e226983227504%_
                               _%hd226984227507%_
                               _%tl226985227509%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl226979227493%_))
                            (_%__match233126233127%_
                             _%e226956227432%_
                             _%hd226957227435%_
                             _%tl226958227437%_
                             _%e226959227440%_
                             _%hd226960227443%_
                             _%tl226961227445%_
                             _%e226962227448%_
                             _%hd226963227451%_
                             _%tl226964227453%_
                             _%e226965227456%_
                             _%hd226966227459%_
                             _%tl226967227461%_
                             _%e226968227464%_
                             _%hd226969227467%_
                             _%tl226970227469%_
                             _%e226971227472%_
                             _%hd226972227475%_
                             _%tl226973227477%_
                             _%e226974227480%_
                             _%hd226975227483%_
                             _%tl226976227485%_
                             _%e226977227488%_
                             _%hd226978227491%_
                             _%tl226979227493%_
                             _%e226980227496%_
                             _%hd226981227499%_
                             _%tl226982227501%_
                             _%e226983227504%_
                             _%hd226984227507%_
                             _%tl226985227509%_)
                            (_%__match233204233205%_
                             _%e226956227432%_
                             _%hd226957227435%_
                             _%tl226958227437%_
                             _%e226959227440%_
                             _%hd226960227443%_
                             _%tl226961227445%_
                             _%e226962227448%_
                             _%hd226963227451%_
                             _%tl226964227453%_
                             _%e226965227456%_
                             _%hd226966227459%_
                             _%tl226967227461%_
                             _%e226968227464%_
                             _%hd226969227467%_
                             _%tl226970227469%_
                             _%e226971227472%_
                             _%hd226972227475%_
                             _%tl226973227477%_
                             _%e226974227480%_
                             _%hd226975227483%_
                             _%tl226976227485%_
                             _%e226977227488%_
                             _%hd226978227491%_
                             _%tl226979227493%_
                             _%e226980227496%_
                             _%hd226981227499%_
                             _%tl226982227501%_
                             _%e226983227504%_
                             _%hd226984227507%_
                             _%tl226985227509%_))))
                     (_%__match233114233115%_
                      (lambda (_%e226956227432%_
                               _%hd226957227435%_
                               _%tl226958227437%_
                               _%e226959227440%_
                               _%hd226960227443%_
                               _%tl226961227445%_
                               _%e226962227448%_
                               _%hd226963227451%_
                               _%tl226964227453%_
                               _%e226965227456%_
                               _%hd226966227459%_
                               _%tl226967227461%_
                               _%e226968227464%_
                               _%hd226969227467%_
                               _%tl226970227469%_
                               _%e226971227472%_
                               _%hd226972227475%_
                               _%tl226973227477%_
                               _%e226974227480%_
                               _%hd226975227483%_
                               _%tl226976227485%_
                               _%e226977227488%_
                               _%hd226978227491%_
                               _%tl226979227493%_
                               _%e226980227496%_
                               _%hd226981227499%_
                               _%tl226982227501%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#quote _%hd226981227499%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl226982227501%_))
                                (let ((_%e226983227504%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl226982227501%_))))
                                  (let ((_%tl226985227509%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e226983227504%_)))
                                        (_%hd226984227507%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e226983227504%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl226985227509%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl226979227493%_))
                                            (_%__match233126233127%_
                                             _%e226956227432%_
                                             _%hd226957227435%_
                                             _%tl226958227437%_
                                             _%e226959227440%_
                                             _%hd226960227443%_
                                             _%tl226961227445%_
                                             _%e226962227448%_
                                             _%hd226963227451%_
                                             _%tl226964227453%_
                                             _%e226965227456%_
                                             _%hd226966227459%_
                                             _%tl226967227461%_
                                             _%e226968227464%_
                                             _%hd226969227467%_
                                             _%tl226970227469%_
                                             _%e226971227472%_
                                             _%hd226972227475%_
                                             _%tl226973227477%_
                                             _%e226974227480%_
                                             _%hd226975227483%_
                                             _%tl226976227485%_
                                             _%e226977227488%_
                                             _%hd226978227491%_
                                             _%tl226979227493%_
                                             _%e226980227496%_
                                             _%hd226981227499%_
                                             _%tl226982227501%_
                                             _%e226983227504%_
                                             _%hd226984227507%_
                                             _%tl226985227509%_)
                                            (_%__match233204233205%_
                                             _%e226956227432%_
                                             _%hd226957227435%_
                                             _%tl226958227437%_
                                             _%e226959227440%_
                                             _%hd226960227443%_
                                             _%tl226961227445%_
                                             _%e226962227448%_
                                             _%hd226963227451%_
                                             _%tl226964227453%_
                                             _%e226965227456%_
                                             _%hd226966227459%_
                                             _%tl226967227461%_
                                             _%e226968227464%_
                                             _%hd226969227467%_
                                             _%tl226970227469%_
                                             _%e226971227472%_
                                             _%hd226972227475%_
                                             _%tl226973227477%_
                                             _%e226974227480%_
                                             _%hd226975227483%_
                                             _%tl226976227485%_
                                             _%e226977227488%_
                                             _%hd226978227491%_
                                             _%tl226979227493%_
                                             _%e226980227496%_
                                             _%hd226981227499%_
                                             _%tl226982227501%_
                                             _%e226983227504%_
                                             _%hd226984227507%_
                                             _%tl226985227509%_))
                                        (_%__match233328233329%_
                                         _%e226956227432%_
                                         _%hd226957227435%_
                                         _%tl226958227437%_
                                         _%e226959227440%_
                                         _%hd226960227443%_
                                         _%tl226961227445%_
                                         _%e226962227448%_
                                         _%hd226963227451%_
                                         _%tl226964227453%_
                                         _%e226965227456%_
                                         _%hd226966227459%_
                                         _%tl226967227461%_
                                         _%e226968227464%_
                                         _%hd226969227467%_
                                         _%tl226970227469%_
                                         _%e226971227472%_
                                         _%hd226972227475%_
                                         _%tl226973227477%_
                                         _%e226974227480%_
                                         _%hd226975227483%_
                                         _%tl226976227485%_
                                         _%e226977227488%_
                                         _%hd226978227491%_
                                         _%tl226979227493%_))))
                                (_%__match233328233329%_
                                 _%e226956227432%_
                                 _%hd226957227435%_
                                 _%tl226958227437%_
                                 _%e226959227440%_
                                 _%hd226960227443%_
                                 _%tl226961227445%_
                                 _%e226962227448%_
                                 _%hd226963227451%_
                                 _%tl226964227453%_
                                 _%e226965227456%_
                                 _%hd226966227459%_
                                 _%tl226967227461%_
                                 _%e226968227464%_
                                 _%hd226969227467%_
                                 _%tl226970227469%_
                                 _%e226971227472%_
                                 _%hd226972227475%_
                                 _%tl226973227477%_
                                 _%e226974227480%_
                                 _%hd226975227483%_
                                 _%tl226976227485%_
                                 _%e226977227488%_
                                 _%hd226978227491%_
                                 _%tl226979227493%_))
                            (_%__match233328233329%_
                             _%e226956227432%_
                             _%hd226957227435%_
                             _%tl226958227437%_
                             _%e226959227440%_
                             _%hd226960227443%_
                             _%tl226961227445%_
                             _%e226962227448%_
                             _%hd226963227451%_
                             _%tl226964227453%_
                             _%e226965227456%_
                             _%hd226966227459%_
                             _%tl226967227461%_
                             _%e226968227464%_
                             _%hd226969227467%_
                             _%tl226970227469%_
                             _%e226971227472%_
                             _%hd226972227475%_
                             _%tl226973227477%_
                             _%e226974227480%_
                             _%hd226975227483%_
                             _%tl226976227485%_
                             _%e226977227488%_
                             _%hd226978227491%_
                             _%tl226979227493%_))))
                     (_%__match233046233047%_
                      (lambda (_%e226905227553%_
                               _%hd226906227556%_
                               _%tl226907227558%_
                               _%e226908227561%_
                               _%hd226909227564%_
                               _%tl226910227566%_
                               _%e226911227569%_
                               _%hd226912227572%_
                               _%tl226913227574%_
                               _%e226914227577%_
                               _%hd226915227580%_
                               _%tl226916227582%_
                               _%e226917227585%_
                               _%hd226918227588%_
                               _%tl226919227590%_
                               _%e226920227593%_
                               _%hd226921227596%_
                               _%tl226922227598%_
                               _%e226923227601%_
                               _%hd226924227604%_
                               _%tl226925227606%_
                               _%e226926227609%_
                               _%hd226927227612%_
                               _%tl226928227614%_
                               _%e226929227617%_
                               _%hd226930227620%_
                               _%tl226931227622%_
                               _%e226932227625%_
                               _%hd226933227628%_
                               _%tl226934227630%_
                               _%e226935227633%_
                               _%hd226936227636%_
                               _%tl226937227638%_
                               _%e226938227641%_
                               _%hd226939227644%_
                               _%tl226940227646%_
                               _%e226941227649%_
                               _%hd226942227652%_
                               _%tl226943227654%_
                               _%__splice232839232840%_
                               _%target226944227657%_
                               _%tl226946227659%_)
                        (letrec ((_%loop226947227662%_
                                  (lambda (_%hd226945227665%_
                                           _%args226951227667%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd226945227665%_))
                                        (let ((_%e226948227669%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd226945227665%_))))
                                          (let ((_%lp-tl226950227674%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e226948227669%_)))
                                                (_%lp-hd226949227672%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e226948227669%_))))
                                            (_%loop226947227662%_
                                             _%lp-tl226950227674%_
                                             (cons _%lp-hd226949227672%_
                                                   _%args226951227667%_))))
                                        (let ((_%args226952227677%_
                                               (reverse _%args226951227667%_)))
                                          (let ((_%g226900227679%_
                                                 _%args226952227677%_)
                                                (_%g226901227680%_
                                                 _%hd226942227652%_)
                                                (_%g226902227681%_
                                                 _%hd226933227628%_)
                                                (_%g226903227682%_
                                                 _%hd226924227604%_)
                                                (_%g226904227683%_
                                                 _%hd226915227580%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%g226904227683%_
                                                        'apply))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%g226903227682%_
                                                        'call-method))
                                                     (let ((__tmp233524
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self226844%_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _%g226902227681%_
                                                        __tmp233524)))
                                                (_%__kont232837232838%_
                                                 _%g226900227679%_
                                                 _%g226901227680%_
                                                 _%g226902227681%_
                                                 _%g226903227682%_
                                                 _%g226904227683%_)
                                                (_%__kont232849232850%_))))))))
                          (_%loop226947227662%_ _%target226944227657%_ '()))))
                     (_%__match233004233005%_
                      (lambda (_%e226905227553%_
                               _%hd226906227556%_
                               _%tl226907227558%_
                               _%e226908227561%_
                               _%hd226909227564%_
                               _%tl226910227566%_
                               _%e226911227569%_
                               _%hd226912227572%_
                               _%tl226913227574%_
                               _%e226914227577%_
                               _%hd226915227580%_
                               _%tl226916227582%_
                               _%e226917227585%_
                               _%hd226918227588%_
                               _%tl226919227590%_
                               _%e226920227593%_
                               _%hd226921227596%_
                               _%tl226922227598%_
                               _%e226923227601%_
                               _%hd226924227604%_
                               _%tl226925227606%_
                               _%e226926227609%_
                               _%hd226927227612%_
                               _%tl226928227614%_
                               _%e226929227617%_
                               _%hd226930227620%_
                               _%tl226931227622%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _%hd226930227620%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl226931227622%_))
                                (let ((_%e226932227625%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl226931227622%_))))
                                  (let ((_%tl226934227630%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e226932227625%_)))
                                        (_%hd226933227628%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e226932227625%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl226934227630%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl226928227614%_))
                                            (let ((_%e226935227633%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl226928227614%_))))
                                              (let ((_%tl226937227638%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e226935227633%_)))
                                                    (_%hd226936227636%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e226935227633%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%hd226936227636%_))
                                                    (let ((_%e226938227641%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd226936227636%_))))
                                                      (let ((_%tl226940227646%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e226938227641%_)))
                    (_%hd226939227644%_
                     (let () (declare (not safe)) (##car _%e226938227641%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _%hd226939227644%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _%hd226939227644%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl226940227646%_))
                            (let ((_%e226941227649%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl226940227646%_))))
                              (let ((_%tl226943227654%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e226941227649%_)))
                                    (_%hd226942227652%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e226941227649%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl226943227654%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl226937227638%_))
                                        (let ((_%__splice232839232840%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice->vector
                                                  _%tl226937227638%_
                                                  '0))))
                                          (let ((_%tl226946227659%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice232839232840%_
                                                    '1)))
                                                (_%target226944227657%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice232839232840%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl226946227659%_))
                                                (_%__match233046233047%_
                                                 _%e226905227553%_
                                                 _%hd226906227556%_
                                                 _%tl226907227558%_
                                                 _%e226908227561%_
                                                 _%hd226909227564%_
                                                 _%tl226910227566%_
                                                 _%e226911227569%_
                                                 _%hd226912227572%_
                                                 _%tl226913227574%_
                                                 _%e226914227577%_
                                                 _%hd226915227580%_
                                                 _%tl226916227582%_
                                                 _%e226917227585%_
                                                 _%hd226918227588%_
                                                 _%tl226919227590%_
                                                 _%e226920227593%_
                                                 _%hd226921227596%_
                                                 _%tl226922227598%_
                                                 _%e226923227601%_
                                                 _%hd226924227604%_
                                                 _%tl226925227606%_
                                                 _%e226926227609%_
                                                 _%hd226927227612%_
                                                 _%tl226928227614%_
                                                 _%e226929227617%_
                                                 _%hd226930227620%_
                                                 _%tl226931227622%_
                                                 _%e226932227625%_
                                                 _%hd226933227628%_
                                                 _%tl226934227630%_
                                                 _%e226935227633%_
                                                 _%hd226936227636%_
                                                 _%tl226937227638%_
                                                 _%e226938227641%_
                                                 _%hd226939227644%_
                                                 _%tl226940227646%_
                                                 _%e226941227649%_
                                                 _%hd226942227652%_
                                                 _%tl226943227654%_
                                                 _%__splice232839232840%_
                                                 _%target226944227657%_
                                                 _%tl226946227659%_)
                                                (_%__kont232849232850%_))))
                                        (_%__kont232849232850%_))
                                    (_%__kont232849232850%_))))
                            (_%__kont232849232850%_))
                        (_%__kont232849232850%_))
                    (_%__kont232849232850%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont232849232850%_))))
                                            (_%__match233328233329%_
                                             _%e226905227553%_
                                             _%hd226906227556%_
                                             _%tl226907227558%_
                                             _%e226908227561%_
                                             _%hd226909227564%_
                                             _%tl226910227566%_
                                             _%e226911227569%_
                                             _%hd226912227572%_
                                             _%tl226913227574%_
                                             _%e226914227577%_
                                             _%hd226915227580%_
                                             _%tl226916227582%_
                                             _%e226917227585%_
                                             _%hd226918227588%_
                                             _%tl226919227590%_
                                             _%e226920227593%_
                                             _%hd226921227596%_
                                             _%tl226922227598%_
                                             _%e226923227601%_
                                             _%hd226924227604%_
                                             _%tl226925227606%_
                                             _%e226926227609%_
                                             _%hd226927227612%_
                                             _%tl226928227614%_))
                                        (_%__match233328233329%_
                                         _%e226905227553%_
                                         _%hd226906227556%_
                                         _%tl226907227558%_
                                         _%e226908227561%_
                                         _%hd226909227564%_
                                         _%tl226910227566%_
                                         _%e226911227569%_
                                         _%hd226912227572%_
                                         _%tl226913227574%_
                                         _%e226914227577%_
                                         _%hd226915227580%_
                                         _%tl226916227582%_
                                         _%e226917227585%_
                                         _%hd226918227588%_
                                         _%tl226919227590%_
                                         _%e226920227593%_
                                         _%hd226921227596%_
                                         _%tl226922227598%_
                                         _%e226923227601%_
                                         _%hd226924227604%_
                                         _%tl226925227606%_
                                         _%e226926227609%_
                                         _%hd226927227612%_
                                         _%tl226928227614%_))))
                                (_%__match233328233329%_
                                 _%e226905227553%_
                                 _%hd226906227556%_
                                 _%tl226907227558%_
                                 _%e226908227561%_
                                 _%hd226909227564%_
                                 _%tl226910227566%_
                                 _%e226911227569%_
                                 _%hd226912227572%_
                                 _%tl226913227574%_
                                 _%e226914227577%_
                                 _%hd226915227580%_
                                 _%tl226916227582%_
                                 _%e226917227585%_
                                 _%hd226918227588%_
                                 _%tl226919227590%_
                                 _%e226920227593%_
                                 _%hd226921227596%_
                                 _%tl226922227598%_
                                 _%e226923227601%_
                                 _%hd226924227604%_
                                 _%tl226925227606%_
                                 _%e226926227609%_
                                 _%hd226927227612%_
                                 _%tl226928227614%_))
                            (_%__match233114233115%_
                             _%e226905227553%_
                             _%hd226906227556%_
                             _%tl226907227558%_
                             _%e226908227561%_
                             _%hd226909227564%_
                             _%tl226910227566%_
                             _%e226911227569%_
                             _%hd226912227572%_
                             _%tl226913227574%_
                             _%e226914227577%_
                             _%hd226915227580%_
                             _%tl226916227582%_
                             _%e226917227585%_
                             _%hd226918227588%_
                             _%tl226919227590%_
                             _%e226920227593%_
                             _%hd226921227596%_
                             _%tl226922227598%_
                             _%e226923227601%_
                             _%hd226924227604%_
                             _%tl226925227606%_
                             _%e226926227609%_
                             _%hd226927227612%_
                             _%tl226928227614%_
                             _%e226929227617%_
                             _%hd226930227620%_
                             _%tl226931227622%_))))
                     (_%__match232936232937%_
                      (lambda (_%e226861227743%_
                               _%hd226862227746%_
                               _%tl226863227748%_
                               _%e226864227751%_
                               _%hd226865227754%_
                               _%tl226866227756%_
                               _%e226867227759%_
                               _%hd226868227762%_
                               _%tl226869227764%_
                               _%e226870227767%_
                               _%hd226871227770%_
                               _%tl226872227772%_
                               _%e226873227775%_
                               _%hd226874227778%_
                               _%tl226875227780%_
                               _%e226876227783%_
                               _%hd226877227786%_
                               _%tl226878227788%_
                               _%e226879227791%_
                               _%hd226880227794%_
                               _%tl226881227796%_
                               _%e226882227799%_
                               _%hd226883227802%_
                               _%tl226884227804%_
                               _%e226885227807%_
                               _%hd226886227810%_
                               _%tl226887227812%_
                               _%e226888227815%_
                               _%hd226889227818%_
                               _%tl226890227820%_
                               _%__splice232835232836%_
                               _%target226891227823%_
                               _%tl226893227825%_)
                        (letrec ((_%loop226894227828%_
                                  (lambda (_%hd226892227831%_
                                           _%args226898227833%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd226892227831%_))
                                        (let ((_%e226895227835%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd226892227831%_))))
                                          (let ((_%lp-tl226897227840%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e226895227835%_)))
                                                (_%lp-hd226896227838%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e226895227835%_))))
                                            (_%loop226894227828%_
                                             _%lp-tl226897227840%_
                                             (cons _%lp-hd226896227838%_
                                                   _%args226898227833%_))))
                                        (let ((_%args226899227843%_
                                               (reverse _%args226898227833%_)))
                                          (let ((_%g226857227845%_
                                                 _%args226899227843%_)
                                                (_%g226858227846%_
                                                 _%hd226889227818%_)
                                                (_%g226859227847%_
                                                 _%hd226880227794%_)
                                                (_%g226860227848%_
                                                 _%hd226871227770%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%g226860227848%_
                                                        'call-method))
                                                     (let ((__tmp233525
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self226844%_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _%g226859227847%_
                                                        __tmp233525)))
                                                (_%__kont232833232834%_
                                                 _%g226857227845%_
                                                 _%g226858227846%_
                                                 _%g226859227847%_
                                                 _%g226860227848%_)
                                                (_%__match233124233125%_
                                                 _%e226861227743%_
                                                 _%hd226862227746%_
                                                 _%tl226863227748%_
                                                 _%e226864227751%_
                                                 _%hd226865227754%_
                                                 _%tl226866227756%_
                                                 _%e226867227759%_
                                                 _%hd226868227762%_
                                                 _%tl226869227764%_
                                                 _%e226870227767%_
                                                 _%hd226871227770%_
                                                 _%tl226872227772%_
                                                 _%e226873227775%_
                                                 _%hd226874227778%_
                                                 _%tl226875227780%_
                                                 _%e226876227783%_
                                                 _%hd226877227786%_
                                                 _%tl226878227788%_
                                                 _%e226879227791%_
                                                 _%hd226880227794%_
                                                 _%tl226881227796%_
                                                 _%e226882227799%_
                                                 _%hd226883227802%_
                                                 _%tl226884227804%_
                                                 _%e226885227807%_
                                                 _%hd226886227810%_
                                                 _%tl226887227812%_
                                                 _%e226888227815%_
                                                 _%hd226889227818%_
                                                 _%tl226890227820%_))))))))
                          (_%loop226894227828%_ _%target226891227823%_ '())))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx232831232832%_))
                    (let ((_%e226861227743%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx232831232832%_))))
                      (let ((_%tl226863227748%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e226861227743%_)))
                            (_%hd226862227746%_
                             (let ()
                               (declare (not safe))
                               (##car _%e226861227743%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl226863227748%_))
                            (let ((_%e226864227751%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl226863227748%_))))
                              (let ((_%tl226866227756%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e226864227751%_)))
                                    (_%hd226865227754%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e226864227751%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd226865227754%_))
                                    (let ((_%e226867227759%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd226865227754%_))))
                                      (let ((_%tl226869227764%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e226867227759%_)))
                                            (_%hd226868227762%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e226867227759%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _%hd226868227762%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _%hd226868227762%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl226869227764%_))
                                                    (let ((_%e226870227767%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl226869227764%_))))
                                                      (let ((_%tl226872227772%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e226870227767%_)))
                    (_%hd226871227770%_
                     (let () (declare (not safe)) (##car _%e226870227767%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl226872227772%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl226866227756%_))
                        (let ((_%e226873227775%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl226866227756%_))))
                          (let ((_%tl226875227780%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e226873227775%_)))
                                (_%hd226874227778%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e226873227775%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd226874227778%_))
                                (let ((_%e226876227783%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd226874227778%_))))
                                  (let ((_%tl226878227788%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e226876227783%_)))
                                        (_%hd226877227786%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e226876227783%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd226877227786%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _%hd226877227786%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl226878227788%_))
                                                (let ((_%e226879227791%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl226878227788%_))))
                                                  (let ((_%tl226881227796%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e226879227791%_)))
                                                        (_%hd226880227794%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e226879227791%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl226881227796%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl226875227780%_))
                                                            (let ((_%e226882227799%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl226875227780%_))))
                      (let ((_%tl226884227804%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e226882227799%_)))
                            (_%hd226883227802%_
                             (let ()
                               (declare (not safe))
                               (##car _%e226882227799%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd226883227802%_))
                            (let ((_%e226885227807%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd226883227802%_))))
                              (let ((_%tl226887227812%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e226885227807%_)))
                                    (_%hd226886227810%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e226885227807%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd226886227810%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd226886227810%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl226887227812%_))
                                            (let ((_%e226888227815%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl226887227812%_))))
                                              (let ((_%tl226890227820%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e226888227815%_)))
                                                    (_%hd226889227818%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e226888227815%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl226890227820%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair/null?
                                                           _%tl226884227804%_))
                                                        (let ((_%__splice232835232836%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-split-splice->vector
                          _%tl226884227804%_
                          '0))))
                  (let ((_%tl226893227825%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice232835232836%_ '1)))
                        (_%target226891227823%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice232835232836%_ '0))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl226893227825%_))
                        (_%__match232936232937%_
                         _%e226861227743%_
                         _%hd226862227746%_
                         _%tl226863227748%_
                         _%e226864227751%_
                         _%hd226865227754%_
                         _%tl226866227756%_
                         _%e226867227759%_
                         _%hd226868227762%_
                         _%tl226869227764%_
                         _%e226870227767%_
                         _%hd226871227770%_
                         _%tl226872227772%_
                         _%e226873227775%_
                         _%hd226874227778%_
                         _%tl226875227780%_
                         _%e226876227783%_
                         _%hd226877227786%_
                         _%tl226878227788%_
                         _%e226879227791%_
                         _%hd226880227794%_
                         _%tl226881227796%_
                         _%e226882227799%_
                         _%hd226883227802%_
                         _%tl226884227804%_
                         _%e226885227807%_
                         _%hd226886227810%_
                         _%tl226887227812%_
                         _%e226888227815%_
                         _%hd226889227818%_
                         _%tl226890227820%_
                         _%__splice232835232836%_
                         _%target226891227823%_
                         _%tl226893227825%_)
                        (_%__match233124233125%_
                         _%e226861227743%_
                         _%hd226862227746%_
                         _%tl226863227748%_
                         _%e226864227751%_
                         _%hd226865227754%_
                         _%tl226866227756%_
                         _%e226867227759%_
                         _%hd226868227762%_
                         _%tl226869227764%_
                         _%e226870227767%_
                         _%hd226871227770%_
                         _%tl226872227772%_
                         _%e226873227775%_
                         _%hd226874227778%_
                         _%tl226875227780%_
                         _%e226876227783%_
                         _%hd226877227786%_
                         _%tl226878227788%_
                         _%e226879227791%_
                         _%hd226880227794%_
                         _%tl226881227796%_
                         _%e226882227799%_
                         _%hd226883227802%_
                         _%tl226884227804%_
                         _%e226885227807%_
                         _%hd226886227810%_
                         _%tl226887227812%_
                         _%e226888227815%_
                         _%hd226889227818%_
                         _%tl226890227820%_))))
                (_%__match233124233125%_
                 _%e226861227743%_
                 _%hd226862227746%_
                 _%tl226863227748%_
                 _%e226864227751%_
                 _%hd226865227754%_
                 _%tl226866227756%_
                 _%e226867227759%_
                 _%hd226868227762%_
                 _%tl226869227764%_
                 _%e226870227767%_
                 _%hd226871227770%_
                 _%tl226872227772%_
                 _%e226873227775%_
                 _%hd226874227778%_
                 _%tl226875227780%_
                 _%e226876227783%_
                 _%hd226877227786%_
                 _%tl226878227788%_
                 _%e226879227791%_
                 _%hd226880227794%_
                 _%tl226881227796%_
                 _%e226882227799%_
                 _%hd226883227802%_
                 _%tl226884227804%_
                 _%e226885227807%_
                 _%hd226886227810%_
                 _%tl226887227812%_
                 _%e226888227815%_
                 _%hd226889227818%_
                 _%tl226890227820%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match233328233329%_
                                                     _%e226861227743%_
                                                     _%hd226862227746%_
                                                     _%tl226863227748%_
                                                     _%e226864227751%_
                                                     _%hd226865227754%_
                                                     _%tl226866227756%_
                                                     _%e226867227759%_
                                                     _%hd226868227762%_
                                                     _%tl226869227764%_
                                                     _%e226870227767%_
                                                     _%hd226871227770%_
                                                     _%tl226872227772%_
                                                     _%e226873227775%_
                                                     _%hd226874227778%_
                                                     _%tl226875227780%_
                                                     _%e226876227783%_
                                                     _%hd226877227786%_
                                                     _%tl226878227788%_
                                                     _%e226879227791%_
                                                     _%hd226880227794%_
                                                     _%tl226881227796%_
                                                     _%e226882227799%_
                                                     _%hd226883227802%_
                                                     _%tl226884227804%_))))
                                            (_%__match233328233329%_
                                             _%e226861227743%_
                                             _%hd226862227746%_
                                             _%tl226863227748%_
                                             _%e226864227751%_
                                             _%hd226865227754%_
                                             _%tl226866227756%_
                                             _%e226867227759%_
                                             _%hd226868227762%_
                                             _%tl226869227764%_
                                             _%e226870227767%_
                                             _%hd226871227770%_
                                             _%tl226872227772%_
                                             _%e226873227775%_
                                             _%hd226874227778%_
                                             _%tl226875227780%_
                                             _%e226876227783%_
                                             _%hd226877227786%_
                                             _%tl226878227788%_
                                             _%e226879227791%_
                                             _%hd226880227794%_
                                             _%tl226881227796%_
                                             _%e226882227799%_
                                             _%hd226883227802%_
                                             _%tl226884227804%_))
                                        (_%__match233004233005%_
                                         _%e226861227743%_
                                         _%hd226862227746%_
                                         _%tl226863227748%_
                                         _%e226864227751%_
                                         _%hd226865227754%_
                                         _%tl226866227756%_
                                         _%e226867227759%_
                                         _%hd226868227762%_
                                         _%tl226869227764%_
                                         _%e226870227767%_
                                         _%hd226871227770%_
                                         _%tl226872227772%_
                                         _%e226873227775%_
                                         _%hd226874227778%_
                                         _%tl226875227780%_
                                         _%e226876227783%_
                                         _%hd226877227786%_
                                         _%tl226878227788%_
                                         _%e226879227791%_
                                         _%hd226880227794%_
                                         _%tl226881227796%_
                                         _%e226882227799%_
                                         _%hd226883227802%_
                                         _%tl226884227804%_
                                         _%e226885227807%_
                                         _%hd226886227810%_
                                         _%tl226887227812%_))
                                    (_%__match233328233329%_
                                     _%e226861227743%_
                                     _%hd226862227746%_
                                     _%tl226863227748%_
                                     _%e226864227751%_
                                     _%hd226865227754%_
                                     _%tl226866227756%_
                                     _%e226867227759%_
                                     _%hd226868227762%_
                                     _%tl226869227764%_
                                     _%e226870227767%_
                                     _%hd226871227770%_
                                     _%tl226872227772%_
                                     _%e226873227775%_
                                     _%hd226874227778%_
                                     _%tl226875227780%_
                                     _%e226876227783%_
                                     _%hd226877227786%_
                                     _%tl226878227788%_
                                     _%e226879227791%_
                                     _%hd226880227794%_
                                     _%tl226881227796%_
                                     _%e226882227799%_
                                     _%hd226883227802%_
                                     _%tl226884227804%_))))
                            (_%__match233328233329%_
                             _%e226861227743%_
                             _%hd226862227746%_
                             _%tl226863227748%_
                             _%e226864227751%_
                             _%hd226865227754%_
                             _%tl226866227756%_
                             _%e226867227759%_
                             _%hd226868227762%_
                             _%tl226869227764%_
                             _%e226870227767%_
                             _%hd226871227770%_
                             _%tl226872227772%_
                             _%e226873227775%_
                             _%hd226874227778%_
                             _%tl226875227780%_
                             _%e226876227783%_
                             _%hd226877227786%_
                             _%tl226878227788%_
                             _%e226879227791%_
                             _%hd226880227794%_
                             _%tl226881227796%_
                             _%e226882227799%_
                             _%hd226883227802%_
                             _%tl226884227804%_))))
                    (_%__match233266233267%_
                     _%e226861227743%_
                     _%hd226862227746%_
                     _%tl226863227748%_
                     _%e226864227751%_
                     _%hd226865227754%_
                     _%tl226866227756%_
                     _%e226867227759%_
                     _%hd226868227762%_
                     _%tl226869227764%_
                     _%e226870227767%_
                     _%hd226871227770%_
                     _%tl226872227772%_
                     _%e226873227775%_
                     _%hd226874227778%_
                     _%tl226875227780%_
                     _%e226876227783%_
                     _%hd226877227786%_
                     _%tl226878227788%_
                     _%e226879227791%_
                     _%hd226880227794%_
                     _%tl226881227796%_))
                (_%__kont232849232850%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont232849232850%_))
                                            (_%__kont232849232850%_))
                                        (_%__kont232849232850%_))))
                                (_%__kont232849232850%_))))
                        (_%__kont232849232850%_))
                    (_%__kont232849232850%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont232849232850%_))
                                                (_%__kont232849232850%_))
                                            (_%__kont232849232850%_))))
                                    (_%__kont232849232850%_))))
                            (_%__kont232849232850%_))))
                    (_%__kont232849232850%_))))))))))
