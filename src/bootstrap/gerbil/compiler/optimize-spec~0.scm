(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-spec::timestamp 1713044319)
  (begin
    (define gxc#::generate-method-specializers::t
      (let ((__tmp176405 (list gxc#::identity::t))
            (__tmp176404 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-method-specializers::t
         '::generate-method-specializers
         __tmp176405
         '()
         __tmp176404
         '#f)))
    (define gxc#::generate-method-specializers?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-method-specializers::t)))
    (define gxc#make-::generate-method-specializers
      (lambda _%$args175202%_
        (apply make-instance
               gxc#::generate-method-specializers::t
               _%$args175202%_)))
    (define gxc#::generate-method-specializers-bind-methods!
      (let ((__tmp176406
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
        (__make-promise __tmp176406)))
    (define gxc#apply-generate-method-specializers
      (lambda (_%stx175194%_)
        (force gxc#::generate-method-specializers-bind-methods!)
        (let* ((_%self175197%_
                (let ((__obj176397
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-method-specializers::t))))
                  __obj176397))
               (__tmp176407
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self175197%_ _%stx175194%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp176407
           gxc#current-compile-method
           _%self175197%_))))
    (define gxc#::extract-receiver::t
      (let ((__tmp176409 (list gxc#::false::t))
            (__tmp176408 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::extract-receiver::t
         '::extract-receiver
         __tmp176409
         '()
         __tmp176408
         '#f)))
    (define gxc#::extract-receiver?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::extract-receiver::t)))
    (define gxc#make-::extract-receiver
      (lambda _%$args175191%_
        (apply make-instance gxc#::extract-receiver::t _%$args175191%_)))
    (define gxc#::extract-receiver-bind-methods!
      (let ((__tmp176410
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
        (__make-promise __tmp176410)))
    (define gxc#apply-extract-receiver
      (lambda (_%stx175183%_)
        (force gxc#::extract-receiver-bind-methods!)
        (let* ((_%self175186%_
                (let ((__obj176399
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::extract-receiver::t))))
                  __obj176399))
               (__tmp176411
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self175186%_ _%stx175183%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp176411
           gxc#current-compile-method
           _%self175186%_))))
    (define gxc#::collect-object-refs::t
      (let ((__tmp176413 (list gxc#::void::t))
            (__tmp176412 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-object-refs::t
         '::collect-object-refs
         __tmp176413
         '(receiver methods slots)
         __tmp176412
         '#f)))
    (define gxc#::collect-object-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-object-refs::t)))
    (define gxc#make-::collect-object-refs
      (lambda _%$args175180%_
        (apply make-instance gxc#::collect-object-refs::t _%$args175180%_)))
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
      (let ((__tmp176414
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
        (__make-promise __tmp176414)))
    (define gxc#apply-collect-object-refs__%
      (lambda (_%@@keywords175146%_
               _%receiver175141175147%_
               _%methods175142175149%_
               _%slots175143175151%_
               _%stx175153%_)
        (let* ((_%receiver175156%_
                (if (eq? _%receiver175141175147%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _%receiver175141175147%_))
               (_%methods175158%_
                (if (eq? _%methods175142175149%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _%methods175142175149%_))
               (_%slots175160%_
                (if (eq? _%slots175143175151%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _%slots175143175151%_)))
          (force gxc#::collect-object-refs-bind-methods!)
          (let* ((_%self175162%_
                  (let ((__obj176401
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
                       __obj176401
                       _%receiver175156%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj176401
                       _%methods175158%_
                       '2
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj176401
                       _%slots175160%_
                       '3
                       '#f
                       '#f))
                    __obj176401))
                 (__tmp176415
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self175162%_ _%stx175153%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp176415
             gxc#current-compile-method
             _%self175162%_)))))
    (define gxc#apply-collect-object-refs__@
      (lambda (_%@@keywords175169%_ . _%args175170%_)
        (apply gxc#apply-collect-object-refs__%
               _%@@keywords175169%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords175169%_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords175169%_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords175169%_
                  'slots:
                  absent-value))
               _%args175170%_)))
    (define gxc#apply-collect-object-refs
      (lambda _%args175144175176%_
        (apply keyword-dispatch
               '#(receiver: slots: methods:)
               gxc#apply-collect-object-refs__@
               _%args175144175176%_)))
    (define gxc#::subst-object-refs::t
      (let ((__tmp176417 (list gxc#::basic-xform-expression::t))
            (__tmp176416 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::subst-object-refs::t
         '::subst-object-refs
         __tmp176417
         '(receiver klass methods slots)
         __tmp176416
         '#f)))
    (define gxc#::subst-object-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::subst-object-refs::t)))
    (define gxc#make-::subst-object-refs
      (lambda _%$args175137%_
        (apply make-instance gxc#::subst-object-refs::t _%$args175137%_)))
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
      (let ((__tmp176418
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
        (__make-promise __tmp176418)))
    (define gxc#apply-subst-object-refs__%
      (lambda (_%@@keywords175099%_
               _%receiver175093175100%_
               _%klass175094175102%_
               _%methods175095175104%_
               _%slots175096175106%_
               _%stx175108%_)
        (let* ((_%receiver175111%_
                (if (eq? _%receiver175093175100%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _%receiver175093175100%_))
               (_%klass175113%_
                (if (eq? _%klass175094175102%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'klass:))
                    _%klass175094175102%_))
               (_%methods175115%_
                (if (eq? _%methods175095175104%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _%methods175095175104%_))
               (_%slots175117%_
                (if (eq? _%slots175096175106%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _%slots175096175106%_)))
          (force gxc#::subst-object-refs-bind-methods!)
          (let* ((_%self175119%_
                  (let ((__obj176403
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
                       __obj176403
                       _%receiver175111%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj176403
                       _%klass175113%_
                       '2
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj176403
                       _%methods175115%_
                       '3
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj176403
                       _%slots175117%_
                       '4
                       '#f
                       '#f))
                    __obj176403))
                 (__tmp176419
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self175119%_ _%stx175108%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp176419
             gxc#current-compile-method
             _%self175119%_)))))
    (define gxc#apply-subst-object-refs__@
      (lambda (_%@@keywords175126%_ . _%args175127%_)
        (apply gxc#apply-subst-object-refs__%
               _%@@keywords175126%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords175126%_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords175126%_
                  'klass:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords175126%_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords175126%_
                  'slots:
                  absent-value))
               _%args175127%_)))
    (define gxc#apply-subst-object-refs
      (lambda _%args175097175133%_
        (apply keyword-dispatch
               '#(receiver: methods: slots: klass:)
               gxc#apply-subst-object-refs__@
               _%args175097175133%_)))
    (define gxc#generate-method-specializers-define-values%
      (lambda (_%self172208%_ _%stx172209%_)
        (letrec ((_%generate-method-bind172211%_
                  (lambda (_%$klass175085%_
                           _%$method-table175086%_
                           _%id175087%_
                           _%$id175088%_)
                    (let ((_%$tmp175090%_
                           (let ((__tmp176420
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__method))))
                             (declare (not safe))
                             (make-symbol__0 __tmp176420))))
                      (cons (cons _%$id175088%_ '())
                            (cons (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons 'make-promise '()))
                                              (cons (cons '%#lambda
                                                          (cons '()
                                                                (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons (cons (cons _%$tmp175090%_ '())
                                                      (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#ref (cons 'symbolic-table-ref '()))
                                (cons (cons '%#ref
                                            (cons _%$method-table175086%_ '()))
                                      (cons (cons '%#quote
                                                  (cons _%id175087%_ '()))
                                            (cons (cons '%#quote
                                                        (cons '#f '()))
                                                  '())))))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())
                                          (cons (cons '%#if
                                                      (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%$tmp175090%_ '()))
                    (cons (cons '%#ref (cons _%$tmp175090%_ '()))
                          (cons (cons '%#call
                                      (cons (cons '%#ref (cons 'error '()))
                                            (cons (cons '%#quote
                                                        (cons '"Missing method"
                                                              '()))
                                                  (cons (cons '%#quote
                                                              (cons _%id175087%_
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
                 (_%generate-slot-bind172212%_
                  (lambda (_%$klass175079%_ _%id175080%_ _%$id175081%_)
                    (let ((_%$tmp175083%_
                           (let ((__tmp176421
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__slot))))
                             (declare (not safe))
                             (make-symbol__0 __tmp176421))))
                      (cons (cons _%$id175081%_ '())
                            (cons (cons '%#let-values
                                        (cons (cons (cons (cons _%$tmp175083%_
                                                                '())
                                                          (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '%#ref (cons 'class-slot-offset '()))
                                    (cons (cons '%#ref
                                                (cons _%$klass175079%_ '()))
                                          (cons (cons '%#quote
                                                      (cons _%id175080%_ '()))
                                                '()))))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())
                                              (cons (cons '%#if
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$tmp175083%_ '()))
                        (cons (cons '%#ref (cons _%$tmp175083%_ '()))
                              (cons (cons '%#call
                                          (cons (cons '%#ref (cons 'error '()))
                                                (cons (cons '%#quote
                                                            (cons '"Unknown slot"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#quote (cons _%id175080%_ '())) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '())))))
                 (_%generate-specializer-impl172213%_
                  (lambda (_%$klass175073%_
                           _%$method-table175074%_
                           _%methods-bind175075%_
                           _%slots-bind175076%_
                           _%specializer-impl175077%_)
                    (let ((__tmp176422
                           (cons '%#lambda
                                 (cons (cons _%$klass175073%_
                                             (cons _%$method-table175074%_
                                                   '()))
                                       (cons (cons '%#let-values
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (__foldr1
                                                            cons
                                                            _%slots-bind175076%_
                                                            _%methods-bind175075%_))
                                                         (cons _%specializer-impl175077%_
                                                               '())))
                                             '())))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp176422 _%stx172209%_))))
                 (_%generate-specializer-def172214%_
                  (lambda (_%id175069%_
                           _%specializer-id175070%_
                           _%specializer-impl175071%_)
                    (let ((__tmp176423
                           (cons '%#begin
                                 (cons _%stx172209%_
                                       (cons (let ((__tmp176424
                                                    (cons '%#define-values
                                                          (cons (cons _%specializer-id175070%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons _%specializer-impl175071%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp176424
                                                _%stx172209%_))
                                             (cons (let ((__tmp176425
                                                          (cons '%#call
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons 'bind-specializer! '()))
                              (cons (cons '%#ref (cons _%id175069%_ '()))
                                    (cons (cons '%#ref
                                                (cons _%specializer-id175070%_
                                                      '()))
                                          '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp176425
                                                      _%stx172209%_))
                                                   '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp176423 _%stx172209%_)))))
          (let* ((_%__stx175291175292%_ _%stx172209%_)
                 (_%g172217172237%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx175291175292%_)))))
            (let ((_%__kont175293175294%_
                   (lambda (_%L172281%_ _%L172282%_)
                     (let ((_%method-calls172301%_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_%slot-refs172302%_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_%empty172303%_
                            (let ()
                              (declare (not safe))
                              (make-hash-table-eq))))
                       (letrec ((_%no-specializer?172305%_
                                 (lambda ()
                                   (if (fxzero? (let ()
                                                  (declare (not safe))
                                                  (__hash-length
                                                   _%method-calls172301%_)))
                                       (fxzero? (let ()
                                                  (declare (not safe))
                                                  (__hash-length
                                                   _%slot-refs172302%_)))
                                       '#f))))
                         (if (let ()
                               (declare (not safe))
                               (gxc#lambda-expr? _%L172281%_))
                             (let* ((_%__stx175205175206%_ _%L172281%_)
                                    (_%g172693172711%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx175205175206%_)))))
                               (let ((_%__kont175207175208%_
                                      (lambda (_%L172747%_
                                               _%L172748%_
                                               _%L172749%_)
                                        (let ((_%receiver172769%_
                                               (let ((_%$e172766%_
                                                      (gxc#apply-extract-receiver
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f '%#begin))
                     _%L172747%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e172766%_
                                                     _%$e172766%_
                                                     _%L172749%_))))
                                          (for-each
                                           (lambda (_%g172770172772%_)
                                             (gxc#apply-collect-object-refs__%
                                              '#f
                                              _%receiver172769%_
                                              _%method-calls172301%_
                                              _%slot-refs172302%_
                                              _%g172770172772%_))
                                           _%L172747%_)
                                          (if (_%no-specializer?172305%_)
                                              _%stx172209%_
                                              (let* ((_%specializer-id172781%_
                                                      (let* ((_%id172775%_
                                                              (let ((__tmp176426
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%L172282%_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp176426 '"::specialize")))
                     (_%specializer-id172778%_
                      (let ((__tmp176427
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _%stx172209%_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _%id172775%_ __tmp176427))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _%specializer-id172778%_))
                _%specializer-id172778%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$klass172783%_
                                                      (let ((__tmp176428
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__klass))))
                (declare (not safe))
                (make-symbol__0 __tmp176428)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$method-table172785%_
                                                      (let ((__tmp176429
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__method-table))))
                (declare (not safe))
                (make-symbol__0 __tmp176429)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods172787%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%method-calls172301%_)))
                                                     (_%$methods172791%_
                                                      (map (lambda (_%id172789%_)
                                                             (let ((__tmp176430
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _%id172789%_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp176430)))
                   _%methods172787%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_172800%_
                                                      (for-each
                                                       (lambda (_%g172792172795%_
                                                                _%g172793172797%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (__hash-put!
                                                            _%method-calls172301%_
                                                            _%g172792172795%_
                                                            _%g172793172797%_)))
                                                       _%methods172787%_
                                                       _%$methods172791%_))
                                                     (_%methods-bind172810%_
                                                      (map (lambda (_%g172802172805%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g172803172807%_)
                     (_%generate-method-bind172211%_
                      _%$klass172783%_
                      _%$method-table172785%_
                      _%g172802172805%_
                      _%g172803172807%_))
                   _%methods172787%_
                   _%$methods172791%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots172812%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%slot-refs172302%_)))
                                                     (_%$slots172816%_
                                                      (map (lambda (_%id172814%_)
                                                             (let ((__tmp176431
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _%id172814%_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp176431)))
                   _%slots172812%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_172825%_
                                                      (for-each
                                                       (lambda (_%g172817172820%_
                                                                _%g172818172822%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (__hash-put!
                                                            _%slot-refs172302%_
                                                            _%g172817172820%_
                                                            _%g172818172822%_)))
                                                       _%slots172812%_
                                                       _%$slots172816%_))
                                                     (_%slots-bind172834%_
                                                      (map (lambda (_%g172826172829%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g172827172831%_)
                     (_%generate-slot-bind172212%_
                      _%$klass172783%_
                      _%g172826172829%_
                      _%g172827172831%_))
                   _%slots172812%_
                   _%$slots172816%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-body172840%_
                                                      (map (lambda (_%g172835172837%_)
                                                             (gxc#apply-subst-object-refs__%
                                                              '#f
                                                              _%receiver172769%_
                                                              _%$klass172783%_
                                                              _%method-calls172301%_
                                                              _%slot-refs172302%_
                                                              _%g172835172837%_))
                                                           _%L172747%_))
                                                     (_%specializer-impl172842%_
                                                      (let ((__tmp176432
                                                             (cons '%#lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons _%L172749%_ _%L172748%_)
                                 _%specializer-body172840%_))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp176432 _%stx172209%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl172844%_
                                                      (_%generate-specializer-impl172213%_
                                                       _%$klass172783%_
                                                       _%$method-table172785%_
                                                       _%methods-bind172810%_
                                                       _%slots-bind172834%_
                                                       _%specializer-impl172842%_)))
                                                (let ((__tmp176434
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%L172282%_)))
                                                      (__tmp176433
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%specializer-id172781%_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp176434
                                                   '" => "
                                                   __tmp176433))
                                                (_%generate-specializer-def172214%_
                                                 _%L172282%_
                                                 _%specializer-id172781%_
                                                 _%specializer-impl172844%_))))))
                                     (_%__kont175209175210%_
                                      (lambda () _%stx172209%_)))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%__stx175205175206%_))
                                     (let ((_%e172698172723%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e
                                               _%__stx175205175206%_))))
                                       (let ((_%tl172700172728%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e172698172723%_)))
                                             (_%hd172699172726%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e172698172723%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl172700172728%_))
                                             (let ((_%e172701172731%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%tl172700172728%_))))
                                               (let ((_%tl172703172736%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e172701172731%_)))
                                                     (_%hd172702172734%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e172701172731%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%hd172702172734%_))
                                                     (let ((_%e172704172739%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%hd172702172734%_))))
                                                       (let ((_%tl172706172744%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e172704172739%_)))
                     (_%hd172705172742%_
                      (let () (declare (not safe)) (##car _%e172704172739%_))))
                 (_%__kont175207175208%_
                  _%tl172703172736%_
                  _%tl172706172744%_
                  _%hd172705172742%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont175209175210%_))))
                                             (_%__kont175209175210%_))))
                                     (_%__kont175209175210%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gxc#case-lambda-expr? _%L172281%_))
                                 (let* ((_%g172851172870%_
                                         (lambda (_%g172852172867%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g172852172867%_))))
                                        (_%g172850173168%_
                                         (lambda (_%g172852172873%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g172852172873%_))
                                               (let ((_%e172854172875%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%g172852172873%_))))
                                                 (let ((_%hd172855172878%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e172854172875%_)))
                                                       (_%tl172856172880%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e172854172875%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair/null?
                                                          _%tl172856172880%_))
                                                       (let ((_g176435_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-split-splice _%tl172856172880%_ '0))))
                 (begin
                   (let ((_g176436_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g176435_)
                                (##vector-length _g176435_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g176436_ 2)))
                         (error "Context expects 2 values" _g176436_)))
                   (let ((_%target172857172883%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g176435_ 0)))
                         (_%tl172859172885%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g176435_ 1))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl172859172885%_))
                         (letrec ((_%loop172860172888%_
                                   (lambda (_%hd172858172891%_
                                            _%clause172864172893%_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd172858172891%_))
                                         (let ((_%e172861172896%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd172858172891%_))))
                                           (let ((_%lp-hd172862172899%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e172861172896%_)))
                                                 (_%lp-tl172863172901%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e172861172896%_))))
                                             (_%loop172860172888%_
                                              _%lp-tl172863172901%_
                                              (cons _%lp-hd172862172899%_
                                                    _%clause172864172893%_))))
                                         (let ((_%clause172865172904%_
                                                (reverse _%clause172864172893%_)))
                                           ((lambda (_%L172907%_)
                                              (for-each
                                               (lambda (_%clause172921%_)
                                                 (let* ((_%__stx175231175232%_
                                                         _%clause172921%_)
                                                        (_%g172924172939%_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%__stx175231175232%_)))))
                                                   (let ((_%__kont175233175234%_
                                                          (lambda (_%L172967%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%L172968%_
                           _%L172969%_)
                    (let ((_%receiver172988%_
                           (let ((_%$e172985%_
                                  (gxc#apply-extract-receiver
                                   (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f '%#begin))
                                         _%L172967%_))))
                             (if _%$e172985%_ _%$e172985%_ _%L172969%_))))
                      (for-each
                       (lambda (_%g172989172991%_)
                         (gxc#apply-collect-object-refs__%
                          '#f
                          _%receiver172988%_
                          _%method-calls172301%_
                          _%slot-refs172302%_
                          _%g172989172991%_))
                       _%L172967%_))))
                 (_%__kont175235175236%_ (lambda () '#!void)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%__stx175231175232%_))
                                                         (let ((_%e172929172951%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%__stx175231175232%_))))
                   (let ((_%tl172931172956%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e172929172951%_)))
                         (_%hd172930172954%_
                          (let ()
                            (declare (not safe))
                            (##car _%e172929172951%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%hd172930172954%_))
                         (let ((_%e172932172959%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd172930172954%_))))
                           (let ((_%tl172934172964%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e172932172959%_)))
                                 (_%hd172933172962%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e172932172959%_))))
                             (_%__kont175233175234%_
                              _%tl172931172956%_
                              _%tl172934172964%_
                              _%hd172933172962%_)))
                         (_%__kont175235175236%_))))
                 (_%__kont175235175236%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((__tmp176437
                                                      (lambda (_%g172996172999%_
                                                               _%g172997173001%_)
                                                        (cons _%g172996172999%_
                                                              _%g172997173001%_))))
                                                 (declare (not safe))
                                                 (__foldr1
                                                  __tmp176437
                                                  '()
                                                  _%L172907%_)))
                                              (if (_%no-specializer?172305%_)
                                                  _%stx172209%_
                                                  (let* ((_%specializer-id173010%_
                                                          (let* ((_%id173004%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp176438
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%L172282%_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp176438 '"::specialize")))
                         (_%specializer-id173007%_
                          (let ((__tmp176439
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _%stx172209%_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _%id173004%_
                             __tmp176439))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _%specializer-id173007%_))
                    _%specializer-id173007%_))
                 (_%$klass173012%_
                  (let ((__tmp176440
                         (let () (declare (not safe)) (##gensym '__klass))))
                    (declare (not safe))
                    (make-symbol__0 __tmp176440)))
                 (_%$method-table173014%_
                  (let ((__tmp176441
                         (let ()
                           (declare (not safe))
                           (##gensym '__method-table))))
                    (declare (not safe))
                    (make-symbol__0 __tmp176441)))
                 (_%methods173016%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%method-calls172301%_)))
                 (_%$methods173020%_
                  (map (lambda (_%id173018%_)
                         (let ((__tmp176442 (gensym _%id173018%_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp176442)))
                       _%methods173016%_))
                 (_%_173029%_
                  (for-each
                   (lambda (_%g173021173024%_ _%g173022173026%_)
                     (let ()
                       (declare (not safe))
                       (__hash-put!
                        _%method-calls172301%_
                        _%g173021173024%_
                        _%g173022173026%_)))
                   _%methods173016%_
                   _%$methods173020%_))
                 (_%methods-bind173039%_
                  (map (lambda (_%g173031173034%_ _%g173032173036%_)
                         (_%generate-method-bind172211%_
                          _%$klass173012%_
                          _%$method-table173014%_
                          _%g173031173034%_
                          _%g173032173036%_))
                       _%methods173016%_
                       _%$methods173020%_))
                 (_%slots173041%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%slot-refs172302%_)))
                 (_%$slots173045%_
                  (map (lambda (_%id173043%_)
                         (let ((__tmp176443 (gensym _%id173043%_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp176443)))
                       _%slots173041%_))
                 (_%_173054%_
                  (for-each
                   (lambda (_%g173046173049%_ _%g173047173051%_)
                     (let ()
                       (declare (not safe))
                       (__hash-put!
                        _%slot-refs172302%_
                        _%g173046173049%_
                        _%g173047173051%_)))
                   _%slots173041%_
                   _%$slots173045%_))
                 (_%slots-bind173063%_
                  (map (lambda (_%g173055173058%_ _%g173056173060%_)
                         (_%generate-slot-bind172212%_
                          _%$klass173012%_
                          _%g173055173058%_
                          _%g173056173060%_))
                       _%slots173041%_
                       _%$slots173045%_))
                 (_%specializer-clauses173161%_
                  (map (lambda (_%clause173065%_)
                         (let* ((_%__stx175251175252%_ _%clause173065%_)
                                (_%g173068173083%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx175251175252%_)))))
                           (let ((_%__kont175253175254%_
                                  (lambda (_%L173111%_ _%L173112%_ _%L173113%_)
                                    (let* ((_%receiver173142%_
                                            (let ((_%$e173139%_
                                                   (gxc#apply-extract-receiver
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#begin))
                                                          _%L173111%_))))
                                              (if _%$e173139%_
                                                  _%$e173139%_
                                                  _%L173113%_)))
                                           (_%body173148%_
                                            (map (lambda (_%g173143173145%_)
                                                   (gxc#apply-subst-object-refs__%
                                                    '#f
                                                    _%receiver173142%_
                                                    _%$klass173012%_
                                                    _%method-calls172301%_
                                                    _%slot-refs172302%_
                                                    _%g173143173145%_))
                                                 _%L173111%_)))
                                      (cons (cons _%L173113%_ _%L173112%_)
                                            _%body173148%_))))
                                 (_%__kont175255175256%_
                                  (lambda () _%clause173065%_)))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx175251175252%_))
                                 (let ((_%e173073173095%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx175251175252%_))))
                                   (let ((_%tl173075173100%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e173073173095%_)))
                                         (_%hd173074173098%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e173073173095%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd173074173098%_))
                                         (let ((_%e173076173103%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd173074173098%_))))
                                           (let ((_%tl173078173108%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e173076173103%_)))
                                                 (_%hd173077173106%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e173076173103%_))))
                                             (_%__kont175253175254%_
                                              _%tl173075173100%_
                                              _%tl173078173108%_
                                              _%hd173077173106%_)))
                                         (_%__kont175255175256%_))))
                                 (_%__kont175255175256%_)))))
                       (let ((__tmp176444
                              (lambda (_%g173153173156%_ _%g173154173158%_)
                                (cons _%g173153173156%_ _%g173154173158%_))))
                         (declare (not safe))
                         (__foldr1 __tmp176444 '() _%L172907%_))))
                 (_%specializer-impl173163%_
                  (let ((__tmp176445
                         (cons '%#case-lambda _%specializer-clauses173161%_)))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp176445 _%stx172209%_)))
                 (_%specializer-impl173165%_
                  (_%generate-specializer-impl172213%_
                   _%$klass173012%_
                   _%$method-table173014%_
                   _%methods-bind173039%_
                   _%slots-bind173063%_
                   _%specializer-impl173163%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp176447
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%L172282%_)))
                                                          (__tmp176446
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%specializer-id173010%_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp176447
                                                       '" => "
                                                       __tmp176446))
                                                    (_%generate-specializer-def172214%_
                                                     _%L172282%_
                                                     _%specializer-id173010%_
                                                     _%specializer-impl173165%_))))
                                            _%clause172865172904%_))))))
                           (_%loop172860172888%_ _%target172857172883%_ '()))
                         (_%g172851172870%_ _%g172852172873%_)))))
               (_%g172851172870%_ _%g172852172873%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g172851172870%_
                                                _%g172852172873%_)))))
                                   (_%g172850173168%_ _%L172281%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#opt-lambda-expr? _%L172281%_))
                                     (let* ((_%g173172173202%_
                                             (lambda (_%g173173173199%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g173173173199%_))))
                                            (_%g173171173833%_
                                             (lambda (_%g173173173205%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%g173173173205%_))
                                                   (let ((_%e173177173207%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%g173173173205%_))))
                                                     (let ((_%hd173178173210%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e173177173207%_)))
                                                           (_%tl173179173212%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e173177173207%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl173179173212%_))
                                                           (let ((_%e173180173215%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl173179173212%_))))
                     (let ((_%hd173181173218%_
                            (let ()
                              (declare (not safe))
                              (##car _%e173180173215%_)))
                           (_%tl173182173220%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e173180173215%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%hd173181173218%_))
                           (let ((_%e173183173223%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd173181173218%_))))
                             (let ((_%hd173184173226%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e173183173223%_)))
                                   (_%tl173185173228%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e173183173223%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd173184173226%_))
                                   (let ((_%e173186173231%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd173184173226%_))))
                                     (let ((_%hd173187173234%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e173186173231%_)))
                                           (_%tl173188173236%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e173186173231%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%hd173187173234%_))
                                           (let ((_%e173189173239%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%hd173187173234%_))))
                                             (let ((_%hd173190173242%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e173189173239%_)))
                                                   (_%tl173191173244%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e173189173239%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl173191173244%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl173188173236%_))
                                                       (let ((_%e173192173247%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%tl173188173236%_))))
                 (let ((_%hd173193173250%_
                        (let ()
                          (declare (not safe))
                          (##car _%e173192173247%_)))
                       (_%tl173194173252%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e173192173247%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl173194173252%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl173185173228%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl173182173220%_))
                               (let ((_%e173195173255%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%tl173182173220%_))))
                                 (let ((_%hd173196173258%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e173195173255%_)))
                                       (_%tl173197173260%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e173195173255%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%tl173197173260%_))
                                       ((lambda (_%L173263%_
                                                 _%L173264%_
                                                 _%L173265%_)
                                          (let* ((_%g173289173307%_
                                                  (lambda (_%g173290173304%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g173290173304%_))))
                                                 (_%g173288173363%_
                                                  (lambda (_%g173290173310%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%g173290173310%_))
                                                        (let ((_%e173294173312%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%g173290173310%_))))
                  (let ((_%hd173295173315%_
                         (let ()
                           (declare (not safe))
                           (##car _%e173294173312%_)))
                        (_%tl173296173317%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e173294173312%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl173296173317%_))
                        (let ((_%e173297173320%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl173296173317%_))))
                          (let ((_%hd173298173323%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e173297173320%_)))
                                (_%tl173299173325%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e173297173320%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd173298173323%_))
                                (let ((_%e173300173328%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd173298173323%_))))
                                  (let ((_%hd173301173331%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e173300173328%_)))
                                        (_%tl173302173333%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e173300173328%_))))
                                    ((lambda (_%L173336%_
                                              _%L173337%_
                                              _%L173338%_)
                                       (let ((_%receiver173357%_
                                              (let ((_%$e173354%_
                                                     (gxc#apply-extract-receiver
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               '%#begin))
                                                            _%L173336%_))))
                                                (if _%$e173354%_
                                                    _%$e173354%_
                                                    _%L173338%_))))
                                         (for-each
                                          (lambda (_%g173358173360%_)
                                            (gxc#apply-collect-object-refs__%
                                             '#f
                                             _%receiver173357%_
                                             _%method-calls172301%_
                                             _%slot-refs172302%_
                                             _%g173358173360%_))
                                          _%L173336%_)))
                                     _%tl173299173325%_
                                     _%tl173302173333%_
                                     _%hd173301173331%_)))
                                (_%g173289173307%_ _%g173290173310%_))))
                        (_%g173289173307%_ _%g173290173310%_))))
                (_%g173289173307%_ _%g173290173310%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g173288173363%_ _%L173264%_))
                                          (let* ((_%g173366173385%_
                                                  (lambda (_%g173367173382%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g173367173382%_))))
                                                 (_%g173365173509%_
                                                  (lambda (_%g173367173388%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%g173367173388%_))
                                                        (let ((_%e173369173390%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%g173367173388%_))))
                  (let ((_%hd173370173393%_
                         (let ()
                           (declare (not safe))
                           (##car _%e173369173390%_)))
                        (_%tl173371173395%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e173369173390%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%tl173371173395%_))
                        (let ((_g176448_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _%tl173371173395%_
                                  '0))))
                          (begin
                            (let ((_g176449_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g176448_)
                                         (##vector-length _g176448_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g176449_ 2)))
                                  (error "Context expects 2 values"
                                         _g176449_)))
                            (let ((_%target173372173398%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g176448_ 0)))
                                  (_%tl173374173400%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g176448_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl173374173400%_))
                                  (letrec ((_%loop173375173403%_
                                            (lambda (_%hd173373173406%_
                                                     _%clause173379173408%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd173373173406%_))
                                                  (let ((_%e173376173411%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd173373173406%_))))
                                                    (let ((_%lp-hd173377173414%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e173376173411%_)))
                                                          (_%lp-tl173378173416%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e173376173411%_))))
                                                      (_%loop173375173403%_
                                                       _%lp-tl173378173416%_
                                                       (cons _%lp-hd173377173414%_
                                                             _%clause173379173408%_))))
                                                  (let ((_%clause173380173419%_
                                                         (reverse _%clause173379173408%_)))
                                                    ((lambda (_%L173422%_)
                                                       (for-each
                                                        (lambda (_%clause173435%_)
                                                          (let* ((_%g173437173452%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%g173438173449%_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g173438173449%_))))
                         (_%g173436173499%_
                          (lambda (_%g173438173455%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%g173438173455%_))
                                (let ((_%e173442173457%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%g173438173455%_))))
                                  (let ((_%hd173443173460%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e173442173457%_)))
                                        (_%tl173444173462%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e173442173457%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd173443173460%_))
                                        (let ((_%e173445173465%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd173443173460%_))))
                                          (let ((_%hd173446173468%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e173445173465%_)))
                                                (_%tl173447173470%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e173445173465%_))))
                                            ((lambda (_%L173473%_
                                                      _%L173474%_
                                                      _%L173475%_)
                                               (let ((_%receiver173493%_
                                                      (let ((_%$e173490%_
                                                             (gxc#apply-extract-receiver
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f '%#begin))
                            _%L173473%_))))
                (if _%$e173490%_ _%$e173490%_ _%L173475%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (for-each
                                                  (lambda (_%g173494173496%_)
                                                    (gxc#apply-collect-object-refs__%
                                                     '#f
                                                     _%receiver173493%_
                                                     _%method-calls172301%_
                                                     _%slot-refs172302%_
                                                     _%g173494173496%_))
                                                  _%L173473%_)))
                                             _%tl173444173462%_
                                             _%tl173447173470%_
                                             _%hd173446173468%_)))
                                        (_%g173437173452%_
                                         _%g173438173455%_))))
                                (_%g173437173452%_ _%g173438173455%_)))))
                    (_%g173436173499%_ _%clause173435%_)))
                (let ((__tmp176450
                       (lambda (_%g173501173504%_ _%g173502173506%_)
                         (cons _%g173501173504%_ _%g173502173506%_))))
                  (declare (not safe))
                  (__foldr1 __tmp176450 '() _%L173422%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%clause173380173419%_))))))
                                    (_%loop173375173403%_
                                     _%target173372173398%_
                                     '()))
                                  (_%g173366173385%_ _%g173367173388%_)))))
                        (_%g173366173385%_ _%g173367173388%_))))
                (_%g173366173385%_ _%g173367173388%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g173365173509%_ _%L173263%_))
                                          (if (_%no-specializer?172305%_)
                                              _%stx172209%_
                                              (let* ((_%specializer-id173518%_
                                                      (let* ((_%id173512%_
                                                              (let ((__tmp176451
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%L172282%_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp176451 '"::specialize")))
                     (_%specializer-id173515%_
                      (let ((__tmp176452
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _%stx172209%_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _%id173512%_ __tmp176452))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _%specializer-id173515%_))
                _%specializer-id173515%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$klass173520%_
                                                      (let ((__tmp176453
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__klass))))
                (declare (not safe))
                (make-symbol__0 __tmp176453)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$method-table173522%_
                                                      (let ((__tmp176454
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__method-table))))
                (declare (not safe))
                (make-symbol__0 __tmp176454)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods173524%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%method-calls172301%_)))
                                                     (_%$methods173528%_
                                                      (map (lambda (_%id173526%_)
                                                             (let ((__tmp176455
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _%id173526%_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp176455)))
                   _%methods173524%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_173537%_
                                                      (for-each
                                                       (lambda (_%g173529173532%_
                                                                _%g173530173534%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (__hash-put!
                                                            _%method-calls172301%_
                                                            _%g173529173532%_
                                                            _%g173530173534%_)))
                                                       _%methods173524%_
                                                       _%$methods173528%_))
                                                     (_%methods-bind173547%_
                                                      (map (lambda (_%g173539173542%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g173540173544%_)
                     (_%generate-method-bind172211%_
                      _%$klass173520%_
                      _%$method-table173522%_
                      _%g173539173542%_
                      _%g173540173544%_))
                   _%methods173524%_
                   _%$methods173528%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots173549%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%slot-refs172302%_)))
                                                     (_%$slots173553%_
                                                      (map (lambda (_%id173551%_)
                                                             (let ((__tmp176456
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _%id173551%_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp176456)))
                   _%slots173549%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_173562%_
                                                      (for-each
                                                       (lambda (_%g173554173557%_
                                                                _%g173555173559%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (__hash-put!
                                                            _%slot-refs172302%_
                                                            _%g173554173557%_
                                                            _%g173555173559%_)))
                                                       _%slots173549%_
                                                       _%$slots173553%_))
                                                     (_%slots-bind173571%_
                                                      (map (lambda (_%g173563173566%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g173564173568%_)
                     (_%generate-slot-bind172212%_
                      _%$klass173520%_
                      _%g173563173566%_
                      _%g173564173568%_))
                   _%slots173549%_
                   _%$slots173553%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-lambda-expr173663%_
                                                      (let* ((_%g173573173591%_
                                                              (lambda (_%g173574173588%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g173574173588%_))))
                     (_%g173572173660%_
                      (lambda (_%g173574173594%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g173574173594%_))
                            (let ((_%e173578173596%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g173574173594%_))))
                              (let ((_%hd173579173599%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e173578173596%_)))
                                    (_%tl173580173601%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e173578173596%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl173580173601%_))
                                    (let ((_%e173581173604%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl173580173601%_))))
                                      (let ((_%hd173582173607%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e173581173604%_)))
                                            (_%tl173583173609%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e173581173604%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd173582173607%_))
                                            (let ((_%e173584173612%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd173582173607%_))))
                                              (let ((_%hd173585173615%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e173584173612%_)))
                                                    (_%tl173586173617%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e173584173612%_))))
                                                ((lambda (_%L173620%_
                                                          _%L173621%_
                                                          _%L173622%_)
                                                   (let* ((_%receiver173651%_
                                                           (let ((_%$e173648%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gxc#apply-extract-receiver
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '%#begin))
                                 _%L173620%_))))
                     (if _%$e173648%_ _%$e173648%_ _%L173622%_)))
                  (_%body173657%_
                   (map (lambda (_%g173652173654%_)
                          (gxc#apply-subst-object-refs__%
                           '#f
                           _%receiver173651%_
                           _%$klass173520%_
                           _%method-calls172301%_
                           _%slot-refs172302%_
                           _%g173652173654%_))
                        _%L173620%_))
                  (__tmp176457
                   (cons '%#lambda
                         (cons (cons _%L173622%_ _%L173621%_)
                               _%body173657%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp176457
                                                      _%L173264%_)))
                                                 _%tl173583173609%_
                                                 _%tl173586173617%_
                                                 _%hd173585173615%_)))
                                            (_%g173573173591%_
                                             _%g173574173594%_))))
                                    (_%g173573173591%_ _%g173574173594%_))))
                            (_%g173573173591%_ _%g173574173594%_)))))
                (_%g173572173660%_ _%L173264%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-case-lambda-expr173826%_
                                                      (let* ((_%g173665173684%_
                                                              (lambda (_%g173666173681%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g173666173681%_))))
                     (_%g173664173823%_
                      (lambda (_%g173666173687%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g173666173687%_))
                            (let ((_%e173668173689%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g173666173687%_))))
                              (let ((_%hd173669173692%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e173668173689%_)))
                                    (_%tl173670173694%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e173668173689%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl173670173694%_))
                                    (let ((_g176458_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _%tl173670173694%_
                                              '0))))
                                      (begin
                                        (let ((_g176459_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g176458_)
                                                     (##vector-length
                                                      _g176458_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g176459_ 2)))
                                              (error "Context expects 2 values"
                                                     _g176459_)))
                                        (let ((_%target173671173697%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g176458_ 0)))
                                              (_%tl173673173699%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g176458_ 1))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl173673173699%_))
                                              (letrec ((_%loop173674173702%_
                                                        (lambda (_%hd173672173705%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%clause173678173707%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd173672173705%_))
                      (let ((_%e173675173710%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd173672173705%_))))
                        (let ((_%lp-hd173676173713%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e173675173710%_)))
                              (_%lp-tl173677173715%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e173675173710%_))))
                          (_%loop173674173702%_
                           _%lp-tl173677173715%_
                           (cons _%lp-hd173676173713%_
                                 _%clause173678173707%_))))
                      (let ((_%clause173679173718%_
                             (reverse _%clause173678173707%_)))
                        ((lambda (_%L173721%_)
                           (let* ((_%clauses173821%_
                                   (map (lambda (_%clause173735%_)
                                          (let* ((_%__stx175271175272%_
                                                  _%clause173735%_)
                                                 (_%g173738173753%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx175271175272%_)))))
                                            (let ((_%__kont175273175274%_
                                                   (lambda (_%L173781%_
                                                            _%L173782%_
                                                            _%L173783%_)
                                                     (let* ((_%receiver173802%_
                                                             (let ((_%$e173799%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gxc#apply-extract-receiver
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f '%#begin))
                                   _%L173781%_))))
                       (if _%$e173799%_ _%$e173799%_ _%L173783%_)))
                    (_%body173808%_
                     (map (lambda (_%g173803173805%_)
                            (gxc#apply-subst-object-refs__%
                             '#f
                             _%receiver173802%_
                             _%$klass173520%_
                             _%method-calls172301%_
                             _%slot-refs172302%_
                             _%g173803173805%_))
                          _%L173781%_)))
               (cons (cons _%L173783%_ _%L173782%_) _%body173808%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont175275175276%_
                                                   (lambda ()
                                                     _%clause173735%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%__stx175271175272%_))
                                                  (let ((_%e173743173765%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%__stx175271175272%_))))
                                                    (let ((_%tl173745173770%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e173743173765%_)))
                                                          (_%hd173744173768%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e173743173765%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd173744173768%_))
                                                          (let ((_%e173746173773%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd173744173768%_))))
                    (let ((_%tl173748173778%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e173746173773%_)))
                          (_%hd173747173776%_
                           (let ()
                             (declare (not safe))
                             (##car _%e173746173773%_))))
                      (_%__kont175273175274%_
                       _%tl173745173770%_
                       _%tl173748173778%_
                       _%hd173747173776%_)))
                  (_%__kont175275175276%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont175275175276%_)))))
                                        (let ((__tmp176460
                                               (lambda (_%g173813173816%_
                                                        _%g173814173818%_)
                                                 (cons _%g173813173816%_
                                                       _%g173814173818%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp176460
                                           '()
                                           _%L173721%_))))
                                  (__tmp176461
                                   (cons '%#case-lambda _%clauses173821%_)))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp176461 _%L173263%_)))
                         _%clause173679173718%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop173674173702%_
                                                 _%target173671173697%_
                                                 '()))
                                              (_%g173665173684%_
                                               _%g173666173687%_)))))
                                    (_%g173665173684%_ _%g173666173687%_))))
                            (_%g173665173684%_ _%g173666173687%_)))))
                (_%g173664173823%_ _%L173263%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl173828%_
                                                      (let ((__tmp176462
                                                             (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (cons (cons _%L173265%_ '())
                                             (cons _%specializer-lambda-expr173663%_
                                                   '()))
                                       '())
                                 (cons _%specializer-case-lambda-expr173826%_
                                       '())))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp176462 _%stx172209%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl173830%_
                                                      (_%generate-specializer-impl172213%_
                                                       _%$klass173520%_
                                                       _%$method-table173522%_
                                                       _%methods-bind173547%_
                                                       _%slots-bind173571%_
                                                       _%specializer-impl173828%_)))
                                                (let ((__tmp176464
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%L172282%_)))
                                                      (__tmp176463
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%specializer-id173518%_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp176464
                                                   '" => "
                                                   __tmp176463))
                                                (_%generate-specializer-def172214%_
                                                 _%L172282%_
                                                 _%specializer-id173518%_
                                                 _%specializer-impl173830%_))))
                                        _%hd173196173258%_
                                        _%hd173193173250%_
                                        _%hd173190173242%_)
                                       (_%g173172173202%_ _%g173173173205%_))))
                               (_%g173172173202%_ _%g173173173205%_))
                           (_%g173172173202%_ _%g173173173205%_))
                       (_%g173172173202%_ _%g173173173205%_))))
               (_%g173172173202%_ _%g173173173205%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g173172173202%_
                                                    _%g173173173205%_))))
                                           (_%g173172173202%_
                                            _%g173173173205%_))))
                                   (_%g173172173202%_ _%g173173173205%_))))
                           (_%g173172173202%_ _%g173173173205%_))))
                   (_%g173172173202%_ _%g173173173205%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g173172173202%_
                                                    _%g173173173205%_)))))
                                       (_%g173171173833%_ _%L172281%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#kw-lambda-expr? _%L172281%_))
                                         (let* ((_%g173837173890%_
                                                 (lambda (_%g173838173887%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g173838173887%_))))
                                                (_%g173836175061%_
                                                 (lambda (_%g173838173893%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%g173838173893%_))
                                                       (let ((_%e173844173895%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%g173838173893%_))))
                 (let ((_%hd173845173898%_
                        (let ()
                          (declare (not safe))
                          (##car _%e173844173895%_)))
                       (_%tl173846173900%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e173844173895%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#identifier? _%hd173845173898%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-eq? '%#let-values _%hd173845173898%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl173846173900%_))
                               (let ((_%e173847173903%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%tl173846173900%_))))
                                 (let ((_%hd173848173906%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e173847173903%_)))
                                       (_%tl173849173908%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e173847173903%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd173848173906%_))
                                       (let ((_%e173850173911%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd173848173906%_))))
                                         (let ((_%hd173851173914%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e173850173911%_)))
                                               (_%tl173852173916%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e173850173911%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%hd173851173914%_))
                                               (let ((_%e173853173919%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%hd173851173914%_))))
                                                 (let ((_%hd173854173922%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e173853173919%_)))
                                                       (_%tl173855173924%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e173853173919%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%hd173854173922%_))
                                                       (let ((_%e173856173927%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%hd173854173922%_))))
                 (let ((_%hd173857173930%_
                        (let ()
                          (declare (not safe))
                          (##car _%e173856173927%_)))
                       (_%tl173858173932%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e173856173927%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl173858173932%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%tl173855173924%_))
                           (let ((_%e173859173935%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%tl173855173924%_))))
                             (let ((_%hd173860173938%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e173859173935%_)))
                                   (_%tl173861173940%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e173859173935%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd173860173938%_))
                                   (let ((_%e173862173943%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd173860173938%_))))
                                     (let ((_%hd173863173946%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e173862173943%_)))
                                           (_%tl173864173948%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e173862173943%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#identifier?
                                              _%hd173863173946%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-eq?
                                                  '%#let-values
                                                  _%hd173863173946%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%tl173864173948%_))
                                                   (let ((_%e173865173951%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%tl173864173948%_))))
                                                     (let ((_%hd173866173954%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e173865173951%_)))
                                                           (_%tl173867173956%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e173865173951%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%hd173866173954%_))
                                                           (let ((_%e173868173959%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%hd173866173954%_))))
                     (let ((_%hd173869173962%_
                            (let ()
                              (declare (not safe))
                              (##car _%e173868173959%_)))
                           (_%tl173870173964%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e173868173959%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%hd173869173962%_))
                           (let ((_%e173871173967%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd173869173962%_))))
                             (let ((_%hd173872173970%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e173871173967%_)))
                                   (_%tl173873173972%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e173871173967%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd173872173970%_))
                                   (let ((_%e173874173975%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd173872173970%_))))
                                     (let ((_%hd173875173978%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e173874173975%_)))
                                           (_%tl173876173980%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e173874173975%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl173876173980%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl173873173972%_))
                                               (let ((_%e173877173983%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%tl173873173972%_))))
                                                 (let ((_%hd173878173986%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e173877173983%_)))
                                                       (_%tl173879173988%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e173877173983%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl173879173988%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _%tl173870173964%_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _%tl173867173956%_))
                       (let ((_%e173880173991%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%tl173867173956%_))))
                         (let ((_%hd173881173994%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e173880173991%_)))
                               (_%tl173882173996%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e173880173991%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%tl173882173996%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl173861173940%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%tl173852173916%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%tl173849173908%_))
                                           (let ((_%e173883173999%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%tl173849173908%_))))
                                             (let ((_%hd173884174002%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e173883173999%_)))
                                                   (_%tl173885174004%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e173883173999%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl173885174004%_))
                                                   ((lambda (_%L174007%_
                                                             _%L174008%_
                                                             _%L174009%_
                                                             _%L174010%_
                                                             _%L174011%_)
                                                      (let* ((_%g174051174113%_
                                                              (lambda (_%g174052174110%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g174052174110%_))))
                     (_%g174050175058%_
                      (lambda (_%g174052174116%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g174052174116%_))
                            (let ((_%e174058174118%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g174052174116%_))))
                              (let ((_%hd174059174121%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e174058174118%_)))
                                    (_%tl174060174123%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e174058174118%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd174059174121%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _%hd174059174121%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl174060174123%_))
                                            (let ((_%e174061174126%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl174060174123%_))))
                                              (let ((_%hd174062174129%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e174061174126%_)))
                                                    (_%tl174063174131%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e174061174126%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl174063174131%_))
                                                    (let ((_%e174064174134%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl174063174131%_))))
                                                      (let ((_%hd174065174137%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e174064174134%_)))
                    (_%tl174066174139%_
                     (let () (declare (not safe)) (##cdr _%e174064174134%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%hd174065174137%_))
                    (let ((_%e174067174142%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd174065174137%_))))
                      (let ((_%hd174068174145%_
                             (let ()
                               (declare (not safe))
                               (##car _%e174067174142%_)))
                            (_%tl174069174147%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e174067174142%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%hd174068174145%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#call _%hd174068174145%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl174069174147%_))
                                    (let ((_%e174070174150%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl174069174147%_))))
                                      (let ((_%hd174071174153%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e174070174150%_)))
                                            (_%tl174072174155%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e174070174150%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd174071174153%_))
                                            (let ((_%e174073174158%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd174071174153%_))))
                                              (let ((_%hd174074174161%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e174073174158%_)))
                                                    (_%tl174075174163%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e174073174158%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd174074174161%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd174074174161%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl174075174163%_))
                                                            (let ((_%e174076174166%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl174075174163%_))))
                      (let ((_%hd174077174169%_
                             (let ()
                               (declare (not safe))
                               (##car _%e174076174166%_)))
                            (_%tl174078174171%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e174076174166%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl174078174171%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl174072174155%_))
                                (let ((_%e174079174174%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl174072174155%_))))
                                  (let ((_%hd174080174177%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e174079174174%_)))
                                        (_%tl174081174179%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e174079174174%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd174080174177%_))
                                        (let ((_%e174082174182%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd174080174177%_))))
                                          (let ((_%hd174083174185%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e174082174182%_)))
                                                (_%tl174084174187%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e174082174182%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _%hd174083174185%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _%hd174083174185%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl174084174187%_))
                                                        (let ((_%e174085174190%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl174084174187%_))))
                  (let ((_%hd174086174193%_
                         (let ()
                           (declare (not safe))
                           (##car _%e174085174190%_)))
                        (_%tl174087174195%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e174085174190%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl174087174195%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl174081174179%_))
                            (let ((_%e174088174198%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl174081174179%_))))
                              (let ((_%hd174089174201%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e174088174198%_)))
                                    (_%tl174090174203%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e174088174198%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd174089174201%_))
                                    (let ((_%e174091174206%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd174089174201%_))))
                                      (let ((_%hd174092174209%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e174091174206%_)))
                                            (_%tl174093174211%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e174091174206%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _%hd174092174209%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _%hd174092174209%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl174093174211%_))
                                                    (let ((_%e174094174214%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl174093174211%_))))
                                                      (let ((_%hd174095174217%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e174094174214%_)))
                    (_%tl174096174219%_
                     (let () (declare (not safe)) (##cdr _%e174094174214%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl174096174219%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%tl174090174203%_))
                        (if (let ((__tmp176465
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-length _%tl174090174203%_))))
                              (declare (not safe))
                              (##fx>= __tmp176465 '1))
                            (let ((_g176466_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _%tl174090174203%_
                                      '1))))
                              (begin
                                (let ((_g176467_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g176466_)
                                             (##vector-length _g176466_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g176467_ 2)))
                                      (error "Context expects 2 values"
                                             _g176467_)))
                                (let ((_%target174097174222%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g176466_ 0)))
                                      (_%tl174099174224%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g176466_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl174099174224%_))
                                      (let ((_%e174106174227%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl174099174224%_))))
                                        (let ((_%hd174107174230%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e174106174227%_)))
                                              (_%tl174108174232%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e174106174227%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl174108174232%_))
                                              (letrec ((_%loop174100174235%_
                                                        (lambda (_%hd174098174238%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%kw-ref174104174240%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd174098174238%_))
                      (let ((_%e174101174243%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd174098174238%_))))
                        (let ((_%lp-hd174102174246%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e174101174243%_)))
                              (_%lp-tl174103174248%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e174101174243%_))))
                          (_%loop174100174235%_
                           _%lp-tl174103174248%_
                           (cons _%lp-hd174102174246%_
                                 _%kw-ref174104174240%_))))
                      (let ((_%kw-ref174105174251%_
                             (reverse _%kw-ref174104174240%_)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl174066174139%_))
                            ((lambda (_%L174254%_
                                      _%L174255%_
                                      _%L174256%_
                                      _%L174257%_
                                      _%L174258%_)
                               (let* ((_%kw-count174309%_
                                       (length (let ((__tmp176468
                                                      (lambda (_%g174301174304%_
                                                               _%g174302174306%_)
                                                        (cons _%g174301174304%_
                                                              _%g174302174306%_))))
                                                 (declare (not safe))
                                                 (__foldr1
                                                  __tmp176468
                                                  '()
                                                  _%L174255%_))))
                                      (_%self-index174311%_
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _%kw-count174309%_ '1))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#lambda-expr? _%L174009%_))
                                     (let* ((_%g174315174329%_
                                             (lambda (_%g174316174326%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g174316174326%_))))
                                            (_%g174314174452%_
                                             (lambda (_%g174316174332%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%g174316174332%_))
                                                   (let ((_%e174319174334%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%g174316174332%_))))
                                                     (let ((_%hd174320174337%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e174319174334%_)))
                                                           (_%tl174321174339%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e174319174334%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl174321174339%_))
                                                           (let ((_%e174322174342%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl174321174339%_))))
                     (let ((_%hd174323174345%_
                            (let ()
                              (declare (not safe))
                              (##car _%e174322174342%_)))
                           (_%tl174324174347%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e174322174342%_))))
                       ((lambda (_%L174350%_ _%L174351%_)
                          (let* ((_%self174368%_
                                  (list-ref _%L174351%_ _%self-index174311%_))
                                 (_%receiver174373%_
                                  (let ((_%$e174370%_
                                         (gxc#apply-extract-receiver
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   '%#begin))
                                                _%L174350%_))))
                                    (if _%$e174370%_
                                        _%$e174370%_
                                        _%self174368%_))))
                            (for-each
                             (lambda (_%g174375174377%_)
                               (gxc#apply-collect-object-refs__%
                                '#f
                                _%receiver174373%_
                                _%method-calls172301%_
                                _%slot-refs172302%_
                                _%g174375174377%_))
                             _%L174350%_)
                            (if (_%no-specializer?172305%_)
                                _%stx172209%_
                                (let* ((_%specializer-id174386%_
                                        (let* ((_%id174380%_
                                                (let ((__tmp176469
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%L172282%_))))
                                                  (declare (not safe))
                                                  (make-symbol__1
                                                   __tmp176469
                                                   '"::specialize")))
                                               (_%specializer-id174383%_
                                                (let ((__tmp176470
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-source
                                                          _%stx172209%_))))
                                                  (declare (not safe))
                                                  (gx#core-quote-syntax__1
                                                   _%id174380%_
                                                   __tmp176470))))
                                          (let ()
                                            (declare (not safe))
                                            (gx#core-bind-runtime!__0
                                             _%specializer-id174383%_))
                                          _%specializer-id174383%_))
                                       (_%$klass174388%_
                                        (let ((__tmp176471
                                               (let ()
                                                 (declare (not safe))
                                                 (##gensym '__klass))))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp176471)))
                                       (_%$method-table174390%_
                                        (let ((__tmp176472
                                               (let ()
                                                 (declare (not safe))
                                                 (##gensym '__method-table))))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp176472)))
                                       (_%methods174392%_
                                        (let ()
                                          (declare (not safe))
                                          (__hash-keys
                                           _%method-calls172301%_)))
                                       (_%$methods174396%_
                                        (map (lambda (_%id174394%_)
                                               (let ((__tmp176473
                                                      (gensym _%id174394%_)))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  '"__"
                                                  __tmp176473)))
                                             _%methods174392%_))
                                       (_%_174405%_
                                        (for-each
                                         (lambda (_%g174397174400%_
                                                  _%g174398174402%_)
                                           (let ()
                                             (declare (not safe))
                                             (__hash-put!
                                              _%method-calls172301%_
                                              _%g174397174400%_
                                              _%g174398174402%_)))
                                         _%methods174392%_
                                         _%$methods174396%_))
                                       (_%methods-bind174415%_
                                        (map (lambda (_%g174407174410%_
                                                      _%g174408174412%_)
                                               (_%generate-method-bind172211%_
                                                _%$klass174388%_
                                                _%$method-table174390%_
                                                _%g174407174410%_
                                                _%g174408174412%_))
                                             _%methods174392%_
                                             _%$methods174396%_))
                                       (_%slots174417%_
                                        (let ()
                                          (declare (not safe))
                                          (__hash-keys _%slot-refs172302%_)))
                                       (_%$slots174421%_
                                        (map (lambda (_%id174419%_)
                                               (let ((__tmp176474
                                                      (gensym _%id174419%_)))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  '"__"
                                                  __tmp176474)))
                                             _%slots174417%_))
                                       (_%_174430%_
                                        (for-each
                                         (lambda (_%g174422174425%_
                                                  _%g174423174427%_)
                                           (let ()
                                             (declare (not safe))
                                             (__hash-put!
                                              _%slot-refs172302%_
                                              _%g174422174425%_
                                              _%g174423174427%_)))
                                         _%slots174417%_
                                         _%$slots174421%_))
                                       (_%slots-bind174439%_
                                        (map (lambda (_%g174431174434%_
                                                      _%g174432174436%_)
                                               (_%generate-slot-bind172212%_
                                                _%$klass174388%_
                                                _%g174431174434%_
                                                _%g174432174436%_))
                                             _%slots174417%_
                                             _%$slots174421%_))
                                       (_%specializer-impl174447%_
                                        (let* ((_%specializer-body174445%_
                                                (map (lambda (_%g174440174442%_)
                                                       (gxc#apply-subst-object-refs__%
                                                        '#f
                                                        _%receiver174373%_
                                                        _%$klass174388%_
                                                        _%method-calls172301%_
                                                        _%slot-refs172302%_
                                                        _%g174440174442%_))
                                                     _%L174350%_))
                                               (__tmp176475
                                                (cons '%#let-values
                                                      (cons (cons (cons (cons _%L174011%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      '())
                                (cons (cons '%#let-values
                                            (cons (cons (cons (cons _%L174010%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())
                      (cons (let ((__tmp176476
                                   (cons '%#lambda
                                         (cons _%L174351%_
                                               _%specializer-body174445%_))))
                              (declare (not safe))
                              (gxc#xform-wrap-source __tmp176476 _%L174009%_))
                            '()))
                '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons _%L174008%_ '())))
                                      '()))
                          '())
                    (cons _%L174007%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp176475
                                           _%stx172209%_)))
                                       (_%specializer-impl174449%_
                                        (_%generate-specializer-impl172213%_
                                         _%$klass174388%_
                                         _%$method-table174390%_
                                         _%methods-bind174415%_
                                         _%slots-bind174439%_
                                         _%specializer-impl174447%_)))
                                  (let ((__tmp176478
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%L172282%_)))
                                        (__tmp176477
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e
                                            _%specializer-id174386%_))))
                                    (declare (not safe))
                                    (gxc#verbose
                                     '"generate method specializer "
                                     __tmp176478
                                     '" => "
                                     __tmp176477))
                                  (_%generate-specializer-def172214%_
                                   _%L172282%_
                                   _%specializer-id174386%_
                                   _%specializer-impl174449%_)))))
                        _%tl174324174347%_
                        _%hd174323174345%_)))
                   (_%g174315174329%_ _%g174316174332%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g174315174329%_
                                                    _%g174316174332%_)))))
                                       (_%g174314174452%_ _%L174009%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#opt-lambda-expr? _%L174009%_))
                                         (let* ((_%g174456174486%_
                                                 (lambda (_%g174457174483%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g174457174483%_))))
                                                (_%g174455175054%_
                                                 (lambda (_%g174457174489%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%g174457174489%_))
                                                       (let ((_%e174461174491%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%g174457174489%_))))
                 (let ((_%hd174462174494%_
                        (let ()
                          (declare (not safe))
                          (##car _%e174461174491%_)))
                       (_%tl174463174496%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e174461174491%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%tl174463174496%_))
                       (let ((_%e174464174499%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%tl174463174496%_))))
                         (let ((_%hd174465174502%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e174464174499%_)))
                               (_%tl174466174504%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e174464174499%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%hd174465174502%_))
                               (let ((_%e174467174507%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%hd174465174502%_))))
                                 (let ((_%hd174468174510%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e174467174507%_)))
                                       (_%tl174469174512%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e174467174507%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd174468174510%_))
                                       (let ((_%e174470174515%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd174468174510%_))))
                                         (let ((_%hd174471174518%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e174470174515%_)))
                                               (_%tl174472174520%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e174470174515%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%hd174471174518%_))
                                               (let ((_%e174473174523%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%hd174471174518%_))))
                                                 (let ((_%hd174474174526%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e174473174523%_)))
                                                       (_%tl174475174528%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e174473174523%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl174475174528%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl174472174520%_))
                                                           (let ((_%e174476174531%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl174472174520%_))))
                     (let ((_%hd174477174534%_
                            (let ()
                              (declare (not safe))
                              (##car _%e174476174531%_)))
                           (_%tl174478174536%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e174476174531%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl174478174536%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%tl174469174512%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%tl174466174504%_))
                                   (let ((_%e174479174539%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%tl174466174504%_))))
                                     (let ((_%hd174480174542%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e174479174539%_)))
                                           (_%tl174481174544%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e174479174539%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl174481174544%_))
                                           ((lambda (_%L174547%_
                                                     _%L174548%_
                                                     _%L174549%_)
                                              (let* ((_%g174573174587%_
                                                      (lambda (_%g174574174584%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g174574174584%_))))
                                                     (_%g174572174634%_
                                                      (lambda (_%g174574174590%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g174574174590%_))
                                                            (let ((_%e174577174592%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%g174574174590%_))))
                      (let ((_%hd174578174595%_
                             (let ()
                               (declare (not safe))
                               (##car _%e174577174592%_)))
                            (_%tl174579174597%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e174577174592%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl174579174597%_))
                            (let ((_%e174580174600%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl174579174597%_))))
                              (let ((_%hd174581174603%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e174580174600%_)))
                                    (_%tl174582174605%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e174580174600%_))))
                                ((lambda (_%L174608%_ _%L174609%_)
                                   (let* ((_%self174622%_
                                           (list-ref
                                            _%L174609%_
                                            _%self-index174311%_))
                                          (_%receiver174627%_
                                           (let ((_%$e174624%_
                                                  (gxc#apply-extract-receiver
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gx#datum->syntax__0
                                                            '#f
                                                            '%#begin))
                                                         _%L174608%_))))
                                             (if _%$e174624%_
                                                 _%$e174624%_
                                                 _%self174622%_))))
                                     (for-each
                                      (lambda (_%g174629174631%_)
                                        (gxc#apply-collect-object-refs__%
                                         '#f
                                         _%receiver174627%_
                                         _%method-calls172301%_
                                         _%slot-refs172302%_
                                         _%g174629174631%_))
                                      _%L174608%_)))
                                 _%tl174582174605%_
                                 _%hd174581174603%_)))
                            (_%g174573174587%_ _%g174574174590%_))))
                    (_%g174573174587%_ _%g174574174590%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g174572174634%_
                                                 _%L174548%_))
                                              (let* ((_%g174637174656%_
                                                      (lambda (_%g174638174653%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g174638174653%_))))
                                                     (_%g174636174767%_
                                                      (lambda (_%g174638174659%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g174638174659%_))
                                                            (let ((_%e174640174661%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%g174638174659%_))))
                      (let ((_%hd174641174664%_
                             (let ()
                               (declare (not safe))
                               (##car _%e174640174661%_)))
                            (_%tl174642174666%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e174640174661%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _%tl174642174666%_))
                            (let ((_g176479_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _%tl174642174666%_
                                      '0))))
                              (begin
                                (let ((_g176480_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g176479_)
                                             (##vector-length _g176479_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g176480_ 2)))
                                      (error "Context expects 2 values"
                                             _g176480_)))
                                (let ((_%target174643174669%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g176479_ 0)))
                                      (_%tl174645174671%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g176479_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl174645174671%_))
                                      (letrec ((_%loop174646174674%_
                                                (lambda (_%hd174644174677%_
                                                         _%clause174650174679%_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%hd174644174677%_))
                                                      (let ((_%e174647174682%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd174644174677%_))))
                (let ((_%lp-hd174648174685%_
                       (let () (declare (not safe)) (##car _%e174647174682%_)))
                      (_%lp-tl174649174687%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e174647174682%_))))
                  (_%loop174646174674%_
                   _%lp-tl174649174687%_
                   (cons _%lp-hd174648174685%_ _%clause174650174679%_))))
              (let ((_%clause174651174690%_ (reverse _%clause174650174679%_)))
                ((lambda (_%L174693%_)
                   (for-each
                    (lambda (_%clause174706%_)
                      (let* ((_%g174708174719%_
                              (lambda (_%g174709174716%_)
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g174709174716%_))))
                             (_%g174707174757%_
                              (lambda (_%g174709174722%_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%g174709174722%_))
                                    (let ((_%e174712174724%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%g174709174722%_))))
                                      (let ((_%hd174713174727%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e174712174724%_)))
                                            (_%tl174714174729%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e174712174724%_))))
                                        ((lambda (_%L174732%_ _%L174733%_)
                                           (let* ((_%self174745%_
                                                   (list-ref
                                                    _%L174733%_
                                                    _%self-index174311%_))
                                                  (_%receiver174750%_
                                                   (let ((_%$e174747%_
                                                          (gxc#apply-extract-receiver
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '%#begin))
                         _%L174732%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _%$e174747%_
                                                         _%$e174747%_
                                                         _%self174745%_))))
                                             (for-each
                                              (lambda (_%g174752174754%_)
                                                (gxc#apply-collect-object-refs__%
                                                 '#f
                                                 _%receiver174750%_
                                                 _%method-calls172301%_
                                                 _%slot-refs172302%_
                                                 _%g174752174754%_))
                                              _%L174732%_)))
                                         _%tl174714174729%_
                                         _%hd174713174727%_)))
                                    (_%g174708174719%_ _%g174709174722%_)))))
                        (_%g174707174757%_ _%clause174706%_)))
                    (let ((__tmp176481
                           (lambda (_%g174759174762%_ _%g174760174764%_)
                             (cons _%g174759174762%_ _%g174760174764%_))))
                      (declare (not safe))
                      (__foldr1 __tmp176481 '() _%L174693%_))))
                 _%clause174651174690%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_%loop174646174674%_
                                         _%target174643174669%_
                                         '()))
                                      (_%g174637174656%_ _%g174638174659%_)))))
                            (_%g174637174656%_ _%g174638174659%_))))
                    (_%g174637174656%_ _%g174638174659%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g174636174767%_
                                                 _%L174547%_))
                                              (if (_%no-specializer?172305%_)
                                                  _%stx172209%_
                                                  (let* ((_%specializer-id174776%_
                                                          (let* ((_%id174770%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp176482
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%L172282%_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp176482 '"::specialize")))
                         (_%specializer-id174773%_
                          (let ((__tmp176483
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _%stx172209%_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _%id174770%_
                             __tmp176483))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _%specializer-id174773%_))
                    _%specializer-id174773%_))
                 (_%$klass174778%_
                  (let ((__tmp176484
                         (let () (declare (not safe)) (##gensym '__klass))))
                    (declare (not safe))
                    (make-symbol__0 __tmp176484)))
                 (_%$method-table174780%_
                  (let ((__tmp176485
                         (let ()
                           (declare (not safe))
                           (##gensym '__method-table))))
                    (declare (not safe))
                    (make-symbol__0 __tmp176485)))
                 (_%methods174782%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%method-calls172301%_)))
                 (_%$methods174786%_
                  (map (lambda (_%id174784%_)
                         (let ((__tmp176486 (gensym _%id174784%_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp176486)))
                       _%methods174782%_))
                 (_%_174795%_
                  (for-each
                   (lambda (_%g174787174790%_ _%g174788174792%_)
                     (let ()
                       (declare (not safe))
                       (__hash-put!
                        _%method-calls172301%_
                        _%g174787174790%_
                        _%g174788174792%_)))
                   _%methods174782%_
                   _%$methods174786%_))
                 (_%methods-bind174805%_
                  (map (lambda (_%g174797174800%_ _%g174798174802%_)
                         (_%generate-method-bind172211%_
                          _%$klass174778%_
                          _%$method-table174780%_
                          _%g174797174800%_
                          _%g174798174802%_))
                       _%methods174782%_
                       _%$methods174786%_))
                 (_%slots174807%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%slot-refs172302%_)))
                 (_%$slots174811%_
                  (map (lambda (_%id174809%_)
                         (let ((__tmp176487 (gensym _%id174809%_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp176487)))
                       _%slots174807%_))
                 (_%_174820%_
                  (for-each
                   (lambda (_%g174812174815%_ _%g174813174817%_)
                     (let ()
                       (declare (not safe))
                       (__hash-put!
                        _%slot-refs172302%_
                        _%g174812174815%_
                        _%g174813174817%_)))
                   _%slots174807%_
                   _%$slots174811%_))
                 (_%slots-bind174829%_
                  (map (lambda (_%g174821174824%_ _%g174822174826%_)
                         (_%generate-slot-bind172212%_
                          _%$klass174778%_
                          _%g174821174824%_
                          _%g174822174826%_))
                       _%slots174807%_
                       _%$slots174811%_))
                 (_%specializer-lambda-expr174907%_
                  (let* ((_%g174831174845%_
                          (lambda (_%g174832174842%_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g174832174842%_))))
                         (_%g174830174904%_
                          (lambda (_%g174832174848%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%g174832174848%_))
                                (let ((_%e174835174850%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%g174832174848%_))))
                                  (let ((_%hd174836174853%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e174835174850%_)))
                                        (_%tl174837174855%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e174835174850%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl174837174855%_))
                                        (let ((_%e174838174858%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl174837174855%_))))
                                          (let ((_%hd174839174861%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e174838174858%_)))
                                                (_%tl174840174863%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e174838174858%_))))
                                            ((lambda (_%L174866%_ _%L174867%_)
                                               (let* ((_%self174890%_
                                                       (list-ref
                                                        _%L174867%_
                                                        _%self-index174311%_))
                                                      (_%receiver174895%_
                                                       (let ((_%$e174892%_
                                                              (gxc#apply-extract-receiver
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f '%#begin))
                             _%L174866%_))))
                 (if _%$e174892%_ _%$e174892%_ _%self174890%_)))
              (_%body174901%_
               (map (lambda (_%g174896174898%_)
                      (gxc#apply-subst-object-refs__%
                       '#f
                       _%receiver174895%_
                       _%$klass174778%_
                       _%method-calls172301%_
                       _%slot-refs172302%_
                       _%g174896174898%_))
                    _%L174866%_))
              (__tmp176488 (cons '%#lambda (cons _%L174867%_ _%body174901%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp176488
                                                  _%L174548%_)))
                                             _%tl174840174863%_
                                             _%hd174839174861%_)))
                                        (_%g174831174845%_
                                         _%g174832174848%_))))
                                (_%g174831174845%_ _%g174832174848%_)))))
                    (_%g174830174904%_ _%L174548%_)))
                 (_%specializer-case-lambda-expr175047%_
                  (let* ((_%g174909174928%_
                          (lambda (_%g174910174925%_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g174910174925%_))))
                         (_%g174908175044%_
                          (lambda (_%g174910174931%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%g174910174931%_))
                                (let ((_%e174912174933%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%g174910174931%_))))
                                  (let ((_%hd174913174936%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e174912174933%_)))
                                        (_%tl174914174938%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e174912174933%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl174914174938%_))
                                        (let ((_g176489_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl174914174938%_
                                                  '0))))
                                          (begin
                                            (let ((_g176490_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g176489_)
                                                         (##vector-length
                                                          _g176489_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g176490_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g176490_)))
                                            (let ((_%target174915174941%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g176489_
                                                      0)))
                                                  (_%tl174917174943%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g176489_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl174917174943%_))
                                                  (letrec ((_%loop174918174946%_
                                                            (lambda (_%hd174916174949%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%clause174922174951%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd174916174949%_))
                          (let ((_%e174919174954%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd174916174949%_))))
                            (let ((_%lp-hd174920174957%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e174919174954%_)))
                                  (_%lp-tl174921174959%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e174919174954%_))))
                              (_%loop174918174946%_
                               _%lp-tl174921174959%_
                               (cons _%lp-hd174920174957%_
                                     _%clause174922174951%_))))
                          (let ((_%clause174923174962%_
                                 (reverse _%clause174922174951%_)))
                            ((lambda (_%L174965%_)
                               (let* ((_%clauses175042%_
                                       (map (lambda (_%clause174979%_)
                                              (let* ((_%g174981174992%_
                                                      (lambda (_%g174982174989%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g174982174989%_))))
                                                     (_%g174980175032%_
                                                      (lambda (_%g174982174995%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g174982174995%_))
                                                            (let ((_%e174985174997%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%g174982174995%_))))
                      (let ((_%hd174986175000%_
                             (let ()
                               (declare (not safe))
                               (##car _%e174985174997%_)))
                            (_%tl174987175002%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e174985174997%_))))
                        ((lambda (_%L175005%_ _%L175006%_)
                           (let* ((_%self175018%_
                                   (list-ref _%L175006%_ _%self-index174311%_))
                                  (_%receiver175023%_
                                   (let ((_%$e175020%_
                                          (gxc#apply-extract-receiver
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    '%#begin))
                                                 _%L175005%_))))
                                     (if _%$e175020%_
                                         _%$e175020%_
                                         _%self175018%_)))
                                  (_%body175029%_
                                   (map (lambda (_%g175024175026%_)
                                          (gxc#apply-subst-object-refs__%
                                           '#f
                                           _%receiver175023%_
                                           _%$klass174778%_
                                           _%method-calls172301%_
                                           _%slot-refs172302%_
                                           _%g175024175026%_))
                                        _%L175005%_)))
                             (cons _%L175006%_ _%body175029%_)))
                         _%tl174987175002%_
                         _%hd174986175000%_)))
                    (_%g174981174992%_ _%g174982174995%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g174980175032%_
                                                 _%clause174979%_)))
                                            (let ((__tmp176491
                                                   (lambda (_%g175034175037%_
                                                            _%g175035175039%_)
                                                     (cons _%g175034175037%_
                                                           _%g175035175039%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp176491
                                               '()
                                               _%L174965%_))))
                                      (__tmp176492
                                       (cons '%#case-lambda
                                             _%clauses175042%_)))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp176492
                                  _%L174547%_)))
                             _%clause174923174962%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop174918174946%_
                                                     _%target174915174941%_
                                                     '()))
                                                  (_%g174909174928%_
                                                   _%g174910174931%_)))))
                                        (_%g174909174928%_
                                         _%g174910174931%_))))
                                (_%g174909174928%_ _%g174910174931%_)))))
                    (_%g174908175044%_ _%L174547%_)))
                 (_%specializer-impl175049%_
                  (let ((__tmp176493
                         (cons '%#let-values
                               (cons (cons (cons (cons _%L174011%_ '())
                                                 (cons (cons '%#let-values
                                                             (cons (cons (cons (cons _%L174010%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                             '())
                                       (cons (let ((__tmp176494
                                                    (cons '%#let-values
                                                          (cons (cons (cons (cons _%L174549%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                          '())
                                    (cons _%specializer-lambda-expr174907%_
                                          '()))
                              '())
                        (cons _%specializer-case-lambda-expr175047%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp176494
                                                _%stx172209%_))
                                             '()))
                                 '())
                           (cons _%L174008%_ '())))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())
                                     (cons _%L174007%_ '())))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp176493 _%stx172209%_)))
                 (_%specializer-impl175051%_
                  (_%generate-specializer-impl172213%_
                   _%$klass174778%_
                   _%$method-table174780%_
                   _%methods-bind174805%_
                   _%slots-bind174829%_
                   _%specializer-impl175049%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp176496
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%L172282%_)))
                                                          (__tmp176495
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%specializer-id174776%_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp176496
                                                       '" => "
                                                       __tmp176495))
                                                    (_%generate-specializer-def172214%_
                                                     _%L172282%_
                                                     _%specializer-id174776%_
                                                     _%specializer-impl175051%_))))
                                            _%hd174480174542%_
                                            _%hd174477174534%_
                                            _%hd174474174526%_)
                                           (_%g174456174486%_
                                            _%g174457174489%_))))
                                   (_%g174456174486%_ _%g174457174489%_))
                               (_%g174456174486%_ _%g174457174489%_))
                           (_%g174456174486%_ _%g174457174489%_))))
                   (_%g174456174486%_ _%g174457174489%_))
               (_%g174456174486%_ _%g174457174489%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g174456174486%_
                                                _%g174457174489%_))))
                                       (_%g174456174486%_ _%g174457174489%_))))
                               (_%g174456174486%_ _%g174457174489%_))))
                       (_%g174456174486%_ _%g174457174489%_))))
               (_%g174456174486%_ _%g174457174489%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g174455175054%_ _%L174009%_))
                                         _%stx172209%_))))
                             _%hd174107174230%_
                             _%kw-ref174105174251%_
                             _%hd174095174217%_
                             _%hd174086174193%_
                             _%hd174077174169%_)
                            (_%g174051174113%_ _%g174052174116%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop174100174235%_
                                                 _%target174097174222%_
                                                 '()))
                                              (_%g174051174113%_
                                               _%g174052174116%_))))
                                      (_%g174051174113%_ _%g174052174116%_)))))
                            (_%g174051174113%_ _%g174052174116%_))
                        (_%g174051174113%_ _%g174052174116%_))
                    (_%g174051174113%_ _%g174052174116%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g174051174113%_
                                                     _%g174052174116%_))
                                                (_%g174051174113%_
                                                 _%g174052174116%_))
                                            (_%g174051174113%_
                                             _%g174052174116%_))))
                                    (_%g174051174113%_ _%g174052174116%_))))
                            (_%g174051174113%_ _%g174052174116%_))
                        (_%g174051174113%_ _%g174052174116%_))))
                (_%g174051174113%_ _%g174052174116%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g174051174113%_
                                                     _%g174052174116%_))
                                                (_%g174051174113%_
                                                 _%g174052174116%_))))
                                        (_%g174051174113%_
                                         _%g174052174116%_))))
                                (_%g174051174113%_ _%g174052174116%_))
                            (_%g174051174113%_ _%g174052174116%_))))
                    (_%g174051174113%_ _%g174052174116%_))
                (_%g174051174113%_ _%g174052174116%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g174051174113%_
                                                     _%g174052174116%_))))
                                            (_%g174051174113%_
                                             _%g174052174116%_))))
                                    (_%g174051174113%_ _%g174052174116%_))
                                (_%g174051174113%_ _%g174052174116%_))
                            (_%g174051174113%_ _%g174052174116%_))))
                    (_%g174051174113%_ _%g174052174116%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g174051174113%_
                                                     _%g174052174116%_))))
                                            (_%g174051174113%_
                                             _%g174052174116%_))
                                        (_%g174051174113%_ _%g174052174116%_))
                                    (_%g174051174113%_ _%g174052174116%_))))
                            (_%g174051174113%_ _%g174052174116%_)))))
                (_%g174050175058%_ _%L174008%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%hd173884174002%_
                                                    _%hd173881173994%_
                                                    _%hd173878173986%_
                                                    _%hd173875173978%_
                                                    _%hd173857173930%_)
                                                   (_%g173837173890%_
                                                    _%g173838173893%_))))
                                           (_%g173837173890%_
                                            _%g173838173893%_))
                                       (_%g173837173890%_ _%g173838173893%_))
                                   (_%g173837173890%_ _%g173838173893%_))
                               (_%g173837173890%_ _%g173838173893%_))))
                       (_%g173837173890%_ _%g173838173893%_))
                   (_%g173837173890%_ _%g173838173893%_))
               (_%g173837173890%_ _%g173838173893%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g173837173890%_
                                                _%g173838173893%_))
                                           (_%g173837173890%_
                                            _%g173838173893%_))))
                                   (_%g173837173890%_ _%g173838173893%_))))
                           (_%g173837173890%_ _%g173838173893%_))))
                   (_%g173837173890%_ _%g173838173893%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g173837173890%_
                                                    _%g173838173893%_))
                                               (_%g173837173890%_
                                                _%g173838173893%_))
                                           (_%g173837173890%_
                                            _%g173838173893%_))))
                                   (_%g173837173890%_ _%g173838173893%_))))
                           (_%g173837173890%_ _%g173838173893%_))
                       (_%g173837173890%_ _%g173838173893%_))))
               (_%g173837173890%_ _%g173838173893%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g173837173890%_
                                                _%g173838173893%_))))
                                       (_%g173837173890%_ _%g173838173893%_))))
                               (_%g173837173890%_ _%g173838173893%_))
                           (_%g173837173890%_ _%g173838173893%_))
                       (_%g173837173890%_ _%g173838173893%_))))
               (_%g173837173890%_ _%g173838173893%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g173836175061%_ _%L172281%_))
                                         _%stx172209%_))))))))
                  (_%__kont175295175296%_ (lambda () _%stx172209%_)))
              (let ((_%__match175324175325%_
                     (lambda (_%e172221172249%_
                              _%hd172222172252%_
                              _%tl172223172254%_
                              _%e172224172257%_
                              _%hd172225172260%_
                              _%tl172226172262%_
                              _%e172227172265%_
                              _%hd172228172268%_
                              _%tl172229172270%_
                              _%e172230172273%_
                              _%hd172231172276%_
                              _%tl172232172278%_)
                       (let ((_%L172281%_ _%hd172231172276%_)
                             (_%L172282%_ _%hd172228172268%_))
                         (if (let ((__tmp176497
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _%L172282%_))))
                               (declare (not safe))
                               (gxc#optimizer-top-level-method? __tmp176497))
                             (_%__kont175293175294%_ _%L172281%_ _%L172282%_)
                             (_%__kont175295175296%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx175291175292%_))
                    (let ((_%e172221172249%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx175291175292%_))))
                      (let ((_%tl172223172254%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e172221172249%_)))
                            (_%hd172222172252%_
                             (let ()
                               (declare (not safe))
                               (##car _%e172221172249%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl172223172254%_))
                            (let ((_%e172224172257%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl172223172254%_))))
                              (let ((_%tl172226172262%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e172224172257%_)))
                                    (_%hd172225172260%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e172224172257%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd172225172260%_))
                                    (let ((_%e172227172265%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd172225172260%_))))
                                      (let ((_%tl172229172270%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e172227172265%_)))
                                            (_%hd172228172268%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e172227172265%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl172229172270%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl172226172262%_))
                                                (let ((_%e172230172273%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl172226172262%_))))
                                                  (let ((_%tl172232172278%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e172230172273%_)))
                                                        (_%hd172231172276%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e172230172273%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl172232172278%_))
                                                        (_%__match175324175325%_
                                                         _%e172221172249%_
                                                         _%hd172222172252%_
                                                         _%tl172223172254%_
                                                         _%e172224172257%_
                                                         _%hd172225172260%_
                                                         _%tl172226172262%_
                                                         _%e172227172265%_
                                                         _%hd172228172268%_
                                                         _%tl172229172270%_
                                                         _%e172230172273%_
                                                         _%hd172231172276%_
                                                         _%tl172232172278%_)
                                                        (_%__kont175295175296%_))))
                                                (_%__kont175295175296%_))
                                            (_%__kont175295175296%_))))
                                    (_%__kont175295175296%_))))
                            (_%__kont175295175296%_))))
                    (_%__kont175295175296%_))))))))
    (define gxc#extract-receiver-begin-annotation%
      (lambda (_%self172061%_ _%stx172062%_)
        (let* ((_%__stx175327175328%_ _%stx172062%_)
               (_%g172065172098%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx175327175328%_)))))
          (let ((_%__kont175329175330%_ (lambda (_%L172188%_) _%L172188%_))
                (_%__kont175331175332%_
                 (lambda (_%L172127%_ _%L172128%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self172061%_ _%L172127%_)))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx175327175328%_))
                (let ((_%e172068172148%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%__stx175327175328%_))))
                  (let ((_%tl172070172153%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e172068172148%_)))
                        (_%hd172069172151%_
                         (let ()
                           (declare (not safe))
                           (##car _%e172068172148%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl172070172153%_))
                        (let ((_%e172071172156%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl172070172153%_))))
                          (let ((_%tl172073172161%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e172071172156%_)))
                                (_%hd172072172159%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e172071172156%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd172072172159%_))
                                (let ((_%e172074172164%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd172072172159%_))))
                                  (let ((_%tl172076172169%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e172074172164%_)))
                                        (_%hd172075172167%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e172074172164%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd172075172167%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '@receiver
                                               _%hd172075172167%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl172076172169%_))
                                                (let ((_%e172077172172%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl172076172169%_))))
                                                  (let ((_%tl172079172177%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e172077172172%_)))
                                                        (_%hd172078172175%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e172077172172%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl172079172177%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl172073172161%_))
                                                            (let ((_%e172080172180%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl172073172161%_))))
                      (let ((_%tl172082172185%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e172080172180%_)))
                            (_%hd172081172183%_
                             (let ()
                               (declare (not safe))
                               (##car _%e172080172180%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl172082172185%_))
                            (_%__kont175329175330%_ _%hd172078172175%_)
                            (let ()
                              (declare (not safe))
                              (_%g172065172098%_)))))
                    (let () (declare (not safe)) (_%g172065172098%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl172073172161%_))
                    (let ((_%e172091172119%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl172073172161%_))))
                      (let ((_%tl172093172124%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e172091172119%_)))
                            (_%hd172092172122%_
                             (let ()
                               (declare (not safe))
                               (##car _%e172091172119%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl172093172124%_))
                            (_%__kont175331175332%_
                             _%hd172092172122%_
                             _%hd172072172159%_)
                            (let ()
                              (declare (not safe))
                              (_%g172065172098%_)))))
                    (let () (declare (not safe)) (_%g172065172098%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl172073172161%_))
                                                    (let ((_%e172091172119%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl172073172161%_))))
                                                      (let ((_%tl172093172124%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e172091172119%_)))
                    (_%hd172092172122%_
                     (let () (declare (not safe)) (##car _%e172091172119%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl172093172124%_))
                    (_%__kont175331175332%_
                     _%hd172092172122%_
                     _%hd172072172159%_)
                    (let () (declare (not safe)) (_%g172065172098%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g172065172098%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl172073172161%_))
                                                (let ((_%e172091172119%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl172073172161%_))))
                                                  (let ((_%tl172093172124%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e172091172119%_)))
                                                        (_%hd172092172122%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e172091172119%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl172093172124%_))
                                                        (_%__kont175331175332%_
                                                         _%hd172092172122%_
                                                         _%hd172072172159%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g172065172098%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g172065172098%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl172073172161%_))
                                            (let ((_%e172091172119%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl172073172161%_))))
                                              (let ((_%tl172093172124%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e172091172119%_)))
                                                    (_%hd172092172122%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e172091172119%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl172093172124%_))
                                                    (_%__kont175331175332%_
                                                     _%hd172092172122%_
                                                     _%hd172072172159%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g172065172098%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g172065172098%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl172073172161%_))
                                    (let ((_%e172091172119%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl172073172161%_))))
                                      (let ((_%tl172093172124%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e172091172119%_)))
                                            (_%hd172092172122%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e172091172119%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl172093172124%_))
                                            (_%__kont175331175332%_
                                             _%hd172092172122%_
                                             _%hd172072172159%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g172065172098%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g172065172098%_))))))
                        (let () (declare (not safe)) (_%g172065172098%_)))))
                (let () (declare (not safe)) (_%g172065172098%_)))))))
    (define gxc#extract-receiver-if%
      (lambda (_%self171977%_ _%stx171978%_)
        (let* ((_%g171980172001%_
                (lambda (_%g171981171998%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g171981171998%_))))
               (_%g171979172058%_
                (lambda (_%g171981172004%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g171981172004%_))
                      (let ((_%e171985172006%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g171981172004%_))))
                        (let ((_%hd171986172009%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e171985172006%_)))
                              (_%tl171987172011%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e171985172006%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl171987172011%_))
                              (let ((_%e171988172014%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl171987172011%_))))
                                (let ((_%hd171989172017%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e171988172014%_)))
                                      (_%tl171990172019%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e171988172014%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl171990172019%_))
                                      (let ((_%e171991172022%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl171990172019%_))))
                                        (let ((_%hd171992172025%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e171991172022%_)))
                                              (_%tl171993172027%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e171991172022%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl171993172027%_))
                                              (let ((_%e171994172030%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl171993172027%_))))
                                                (let ((_%hd171995172033%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e171994172030%_)))
                                                      (_%tl171996172035%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e171994172030%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl171996172035%_))
                                                      ((lambda (_%L172038%_
                                                                _%L172039%_
                                                                _%L172040%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%self171977%_
                                                            _%L172039%_)))
                                                       _%hd171995172033%_
                                                       _%hd171992172025%_
                                                       _%hd171989172017%_)
                                                      (_%g171980172001%_
                                                       _%g171981172004%_))))
                                              (_%g171980172001%_
                                               _%g171981172004%_))))
                                      (_%g171980172001%_ _%g171981172004%_))))
                              (_%g171980172001%_ _%g171981172004%_))))
                      (_%g171980172001%_ _%g171981172004%_)))))
          (_%g171979172058%_ _%stx171978%_))))
    (define gxc#collect-object-refs-call%
      (lambda (_%self170938%_ _%stx170939%_)
        (let* ((_%__stx175393175394%_ _%stx170939%_)
               (_%g170947171169%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx175393175394%_)))))
          (let ((_%__kont175395175396%_
                 (lambda (_%L171926%_ _%L171927%_ _%L171928%_ _%L171929%_)
                   (let ((__tmp176499
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self170938%_ 'methods)))
                         (__tmp176498
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L171927%_))))
                     (declare (not safe))
                     (hash-put! __tmp176499 __tmp176498 '#t))
                   (for-each
                    (lambda (_%g171962171964%_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self170938%_ _%g171962171964%_)))
                    (let ((__tmp176500
                           (lambda (_%g171966171969%_ _%g171967171971%_)
                             (cons _%g171966171969%_ _%g171967171971%_))))
                      (declare (not safe))
                      (__foldr1 __tmp176500 '() _%L171926%_)))))
                (_%__kont175399175400%_
                 (lambda (_%L171761%_
                          _%L171762%_
                          _%L171763%_
                          _%L171764%_
                          _%L171765%_)
                   (let ((__tmp176502
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self170938%_ 'methods)))
                         (__tmp176501
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L171762%_))))
                     (declare (not safe))
                     (hash-put! __tmp176502 __tmp176501 '#t))
                   (for-each
                    (lambda (_%g171805171807%_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self170938%_ _%g171805171807%_)))
                    (let ((__tmp176503
                           (lambda (_%g171809171812%_ _%g171810171814%_)
                             (cons _%g171809171812%_ _%g171810171814%_))))
                      (declare (not safe))
                      (__foldr1 __tmp176503 '() _%L171761%_)))))
                (_%__kont175403175404%_
                 (lambda (_%L171594%_ _%L171595%_ _%L171596%_)
                   (let ((__tmp176505
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self170938%_ 'slots)))
                         (__tmp176504
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L171594%_))))
                     (declare (not safe))
                     (hash-put! __tmp176505 __tmp176504 '#t))))
                (_%__kont175405175406%_
                 (lambda (_%L171471%_ _%L171472%_ _%L171473%_ _%L171474%_)
                   (let ((__tmp176507
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self170938%_ 'slots)))
                         (__tmp176506
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L171472%_))))
                     (declare (not safe))
                     (hash-put! __tmp176507 __tmp176506 '#t))
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self170938%_ _%L171471%_))))
                (_%__kont175407175408%_
                 (lambda (_%L171345%_ _%L171346%_)
                   (let* ((_%accessor171368%_
                           (let ((__tmp176508
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _%L171346%_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp176508)))
                          (_%klass171370%_
                           (let ((__tmp176509
                                  (##structure-ref
                                   _%accessor171368%_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _%stx170939%_
                              __tmp176509)))
                          (_%slot171372%_
                           (##structure-ref
                            _%accessor171368%_
                            '3
                            gxc#!accessor::t
                            '#f)))
                     (if (if (##structure-ref
                              _%accessor171368%_
                              '4
                              gxc#!accessor::t
                              '#f)
                             '#f
                             (or (let ()
                                   (declare (not safe))
                                   (gxc#!class-struct-slot?
                                    _%klass171370%_
                                    _%slot171372%_))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%klass171370%_
                                    '8
                                    '#f
                                    '#f))))
                         '#!void
                         (let ((__tmp176511
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _%self170938%_ 'slots)))
                               (__tmp176510
                                (##structure-ref
                                 _%accessor171368%_
                                 '3
                                 gxc#!accessor::t
                                 '#f)))
                           (declare (not safe))
                           (hash-put! __tmp176511 __tmp176510 '#t))))))
                (_%__kont175409175410%_
                 (lambda (_%L171245%_ _%L171246%_ _%L171247%_)
                   (let* ((_%mutator171274%_
                           (let ((__tmp176512
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _%L171247%_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp176512)))
                          (_%klass171276%_
                           (let ((__tmp176513
                                  (##structure-ref
                                   _%mutator171274%_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _%stx170939%_
                              __tmp176513)))
                          (_%slot171278%_
                           (##structure-ref
                            _%mutator171274%_
                            '3
                            gxc#!mutator::t
                            '#f)))
                     (if (if (##structure-ref
                              _%mutator171274%_
                              '4
                              gxc#!mutator::t
                              '#f)
                             '#f
                             (or (let ()
                                   (declare (not safe))
                                   (gxc#!class-struct-slot?
                                    _%klass171276%_
                                    _%slot171278%_))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%klass171276%_
                                    '8
                                    '#f
                                    '#f))))
                         '#!void
                         (let ((__tmp176514
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _%self170938%_ 'slots))))
                           (declare (not safe))
                           (hash-put! __tmp176514 _%slot171278%_ '#t)))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-e__1 _%self170938%_ _%L171245%_)))))
                (_%__kont175411175412%_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#apply-operands _%self170938%_ _%stx170939%_)))))
            (let* ((_%__match175892175893%_
                    (lambda (_%e171141171181%_
                             _%hd171142171184%_
                             _%tl171143171186%_
                             _%e171144171189%_
                             _%hd171145171192%_
                             _%tl171146171194%_
                             _%e171147171197%_
                             _%hd171148171200%_
                             _%tl171149171202%_
                             _%e171150171205%_
                             _%hd171151171208%_
                             _%tl171152171210%_
                             _%e171153171213%_
                             _%hd171154171216%_
                             _%tl171155171218%_
                             _%e171156171221%_
                             _%hd171157171224%_
                             _%tl171158171226%_
                             _%e171159171229%_
                             _%hd171160171232%_
                             _%tl171161171234%_
                             _%e171162171237%_
                             _%hd171163171240%_
                             _%tl171164171242%_)
                      (let ((_%L171245%_ _%hd171163171240%_)
                            (_%L171246%_ _%hd171160171232%_)
                            (_%L171247%_ _%hd171151171208%_))
                        (if (and (let ((__tmp176515
                                        (let ((__tmp176516
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _%L171247%_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp176516))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp176515
                                    'gxc#!mutator::t))
                                 (let ((__tmp176517
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self170938%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L171246%_
                                    __tmp176517)))
                            (_%__kont175409175410%_
                             _%L171245%_
                             _%L171246%_
                             _%L171247%_)
                            (_%__kont175411175412%_)))))
                   (_%__match175890175891%_
                    (lambda (_%e171141171181%_
                             _%hd171142171184%_
                             _%tl171143171186%_
                             _%e171144171189%_
                             _%hd171145171192%_
                             _%tl171146171194%_
                             _%e171147171197%_
                             _%hd171148171200%_
                             _%tl171149171202%_
                             _%e171150171205%_
                             _%hd171151171208%_
                             _%tl171152171210%_
                             _%e171153171213%_
                             _%hd171154171216%_
                             _%tl171155171218%_
                             _%e171156171221%_
                             _%hd171157171224%_
                             _%tl171158171226%_
                             _%e171159171229%_
                             _%hd171160171232%_
                             _%tl171161171234%_
                             _%e171162171237%_
                             _%hd171163171240%_
                             _%tl171164171242%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl171164171242%_))
                          (_%__match175892175893%_
                           _%e171141171181%_
                           _%hd171142171184%_
                           _%tl171143171186%_
                           _%e171144171189%_
                           _%hd171145171192%_
                           _%tl171146171194%_
                           _%e171147171197%_
                           _%hd171148171200%_
                           _%tl171149171202%_
                           _%e171150171205%_
                           _%hd171151171208%_
                           _%tl171152171210%_
                           _%e171153171213%_
                           _%hd171154171216%_
                           _%tl171155171218%_
                           _%e171156171221%_
                           _%hd171157171224%_
                           _%tl171158171226%_
                           _%e171159171229%_
                           _%hd171160171232%_
                           _%tl171161171234%_
                           _%e171162171237%_
                           _%hd171163171240%_
                           _%tl171164171242%_)
                          (_%__kont175411175412%_))))
                   (_%__match175884175885%_
                    (lambda (_%e171141171181%_
                             _%hd171142171184%_
                             _%tl171143171186%_
                             _%e171144171189%_
                             _%hd171145171192%_
                             _%tl171146171194%_
                             _%e171147171197%_
                             _%hd171148171200%_
                             _%tl171149171202%_
                             _%e171150171205%_
                             _%hd171151171208%_
                             _%tl171152171210%_
                             _%e171153171213%_
                             _%hd171154171216%_
                             _%tl171155171218%_
                             _%e171156171221%_
                             _%hd171157171224%_
                             _%tl171158171226%_
                             _%e171159171229%_
                             _%hd171160171232%_
                             _%tl171161171234%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl171155171218%_))
                          (let ((_%e171162171237%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl171155171218%_))))
                            (let ((_%tl171164171242%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e171162171237%_)))
                                  (_%hd171163171240%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e171162171237%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl171164171242%_))
                                  (_%__match175892175893%_
                                   _%e171141171181%_
                                   _%hd171142171184%_
                                   _%tl171143171186%_
                                   _%e171144171189%_
                                   _%hd171145171192%_
                                   _%tl171146171194%_
                                   _%e171147171197%_
                                   _%hd171148171200%_
                                   _%tl171149171202%_
                                   _%e171150171205%_
                                   _%hd171151171208%_
                                   _%tl171152171210%_
                                   _%e171153171213%_
                                   _%hd171154171216%_
                                   _%tl171155171218%_
                                   _%e171156171221%_
                                   _%hd171157171224%_
                                   _%tl171158171226%_
                                   _%e171159171229%_
                                   _%hd171160171232%_
                                   _%tl171161171234%_
                                   _%e171162171237%_
                                   _%hd171163171240%_
                                   _%tl171164171242%_)
                                  (_%__kont175411175412%_))))
                          (_%__kont175411175412%_))))
                   (_%__match175830175831%_
                    (lambda (_%e171117171289%_
                             _%hd171118171292%_
                             _%tl171119171294%_
                             _%e171120171297%_
                             _%hd171121171300%_
                             _%tl171122171302%_
                             _%e171123171305%_
                             _%hd171124171308%_
                             _%tl171125171310%_
                             _%e171126171313%_
                             _%hd171127171316%_
                             _%tl171128171318%_
                             _%e171129171321%_
                             _%hd171130171324%_
                             _%tl171131171326%_
                             _%e171132171329%_
                             _%hd171133171332%_
                             _%tl171134171334%_
                             _%e171135171337%_
                             _%hd171136171340%_
                             _%tl171137171342%_)
                      (let ((_%L171345%_ _%hd171136171340%_)
                            (_%L171346%_ _%hd171127171316%_))
                        (if (and (let ((__tmp176518
                                        (let ((__tmp176519
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _%L171346%_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp176519))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp176518
                                    'gxc#!accessor::t))
                                 (let ((__tmp176520
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self170938%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L171345%_
                                    __tmp176520)))
                            (_%__kont175407175408%_ _%L171345%_ _%L171346%_)
                            (_%__kont175411175412%_)))))
                   (_%__match175828175829%_
                    (lambda (_%e171117171289%_
                             _%hd171118171292%_
                             _%tl171119171294%_
                             _%e171120171297%_
                             _%hd171121171300%_
                             _%tl171122171302%_
                             _%e171123171305%_
                             _%hd171124171308%_
                             _%tl171125171310%_
                             _%e171126171313%_
                             _%hd171127171316%_
                             _%tl171128171318%_
                             _%e171129171321%_
                             _%hd171130171324%_
                             _%tl171131171326%_
                             _%e171132171329%_
                             _%hd171133171332%_
                             _%tl171134171334%_
                             _%e171135171337%_
                             _%hd171136171340%_
                             _%tl171137171342%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl171131171326%_))
                          (_%__match175830175831%_
                           _%e171117171289%_
                           _%hd171118171292%_
                           _%tl171119171294%_
                           _%e171120171297%_
                           _%hd171121171300%_
                           _%tl171122171302%_
                           _%e171123171305%_
                           _%hd171124171308%_
                           _%tl171125171310%_
                           _%e171126171313%_
                           _%hd171127171316%_
                           _%tl171128171318%_
                           _%e171129171321%_
                           _%hd171130171324%_
                           _%tl171131171326%_
                           _%e171132171329%_
                           _%hd171133171332%_
                           _%tl171134171334%_
                           _%e171135171337%_
                           _%hd171136171340%_
                           _%tl171137171342%_)
                          (_%__match175884175885%_
                           _%e171117171289%_
                           _%hd171118171292%_
                           _%tl171119171294%_
                           _%e171120171297%_
                           _%hd171121171300%_
                           _%tl171122171302%_
                           _%e171123171305%_
                           _%hd171124171308%_
                           _%tl171125171310%_
                           _%e171126171313%_
                           _%hd171127171316%_
                           _%tl171128171318%_
                           _%e171129171321%_
                           _%hd171130171324%_
                           _%tl171131171326%_
                           _%e171132171329%_
                           _%hd171133171332%_
                           _%tl171134171334%_
                           _%e171135171337%_
                           _%hd171136171340%_
                           _%tl171137171342%_))))
                   (_%__match175774175775%_
                    (lambda (_%e171082171383%_
                             _%hd171083171386%_
                             _%tl171084171388%_
                             _%e171085171391%_
                             _%hd171086171394%_
                             _%tl171087171396%_
                             _%e171088171399%_
                             _%hd171089171402%_
                             _%tl171090171404%_
                             _%e171091171407%_
                             _%hd171092171410%_
                             _%tl171093171412%_
                             _%e171094171415%_
                             _%hd171095171418%_
                             _%tl171096171420%_
                             _%e171097171423%_
                             _%hd171098171426%_
                             _%tl171099171428%_
                             _%e171100171431%_
                             _%hd171101171434%_
                             _%tl171102171436%_
                             _%e171103171439%_
                             _%hd171104171442%_
                             _%tl171105171444%_
                             _%e171106171447%_
                             _%hd171107171450%_
                             _%tl171108171452%_
                             _%e171109171455%_
                             _%hd171110171458%_
                             _%tl171111171460%_
                             _%e171112171463%_
                             _%hd171113171466%_
                             _%tl171114171468%_)
                      (let ((_%L171471%_ _%hd171113171466%_)
                            (_%L171472%_ _%hd171110171458%_)
                            (_%L171473%_ _%hd171101171434%_)
                            (_%L171474%_ _%hd171092171410%_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L171474%_
                                        'slot-set!))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L171474%_
                                        'unchecked-slot-set!)))
                                 (let ((__tmp176521
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self170938%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L171473%_
                                    __tmp176521)))
                            (_%__kont175405175406%_
                             _%L171471%_
                             _%L171472%_
                             _%L171473%_
                             _%L171474%_)
                            (_%__kont175411175412%_)))))
                   (_%__match175766175767%_
                    (lambda (_%e171082171383%_
                             _%hd171083171386%_
                             _%tl171084171388%_
                             _%e171085171391%_
                             _%hd171086171394%_
                             _%tl171087171396%_
                             _%e171088171399%_
                             _%hd171089171402%_
                             _%tl171090171404%_
                             _%e171091171407%_
                             _%hd171092171410%_
                             _%tl171093171412%_
                             _%e171094171415%_
                             _%hd171095171418%_
                             _%tl171096171420%_
                             _%e171097171423%_
                             _%hd171098171426%_
                             _%tl171099171428%_
                             _%e171100171431%_
                             _%hd171101171434%_
                             _%tl171102171436%_
                             _%e171103171439%_
                             _%hd171104171442%_
                             _%tl171105171444%_
                             _%e171106171447%_
                             _%hd171107171450%_
                             _%tl171108171452%_
                             _%e171109171455%_
                             _%hd171110171458%_
                             _%tl171111171460%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl171105171444%_))
                          (let ((_%e171112171463%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl171105171444%_))))
                            (let ((_%tl171114171468%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e171112171463%_)))
                                  (_%hd171113171466%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e171112171463%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl171114171468%_))
                                  (_%__match175774175775%_
                                   _%e171082171383%_
                                   _%hd171083171386%_
                                   _%tl171084171388%_
                                   _%e171085171391%_
                                   _%hd171086171394%_
                                   _%tl171087171396%_
                                   _%e171088171399%_
                                   _%hd171089171402%_
                                   _%tl171090171404%_
                                   _%e171091171407%_
                                   _%hd171092171410%_
                                   _%tl171093171412%_
                                   _%e171094171415%_
                                   _%hd171095171418%_
                                   _%tl171096171420%_
                                   _%e171097171423%_
                                   _%hd171098171426%_
                                   _%tl171099171428%_
                                   _%e171100171431%_
                                   _%hd171101171434%_
                                   _%tl171102171436%_
                                   _%e171103171439%_
                                   _%hd171104171442%_
                                   _%tl171105171444%_
                                   _%e171106171447%_
                                   _%hd171107171450%_
                                   _%tl171108171452%_
                                   _%e171109171455%_
                                   _%hd171110171458%_
                                   _%tl171111171460%_
                                   _%e171112171463%_
                                   _%hd171113171466%_
                                   _%tl171114171468%_)
                                  (_%__kont175411175412%_))))
                          (_%__match175890175891%_
                           _%e171082171383%_
                           _%hd171083171386%_
                           _%tl171084171388%_
                           _%e171085171391%_
                           _%hd171086171394%_
                           _%tl171087171396%_
                           _%e171088171399%_
                           _%hd171089171402%_
                           _%tl171090171404%_
                           _%e171091171407%_
                           _%hd171092171410%_
                           _%tl171093171412%_
                           _%e171094171415%_
                           _%hd171095171418%_
                           _%tl171096171420%_
                           _%e171097171423%_
                           _%hd171098171426%_
                           _%tl171099171428%_
                           _%e171100171431%_
                           _%hd171101171434%_
                           _%tl171102171436%_
                           _%e171103171439%_
                           _%hd171104171442%_
                           _%tl171105171444%_))))
                   (_%__match175688175689%_
                    (lambda (_%e171048171514%_
                             _%hd171049171517%_
                             _%tl171050171519%_
                             _%e171051171522%_
                             _%hd171052171525%_
                             _%tl171053171527%_
                             _%e171054171530%_
                             _%hd171055171533%_
                             _%tl171056171535%_
                             _%e171057171538%_
                             _%hd171058171541%_
                             _%tl171059171543%_
                             _%e171060171546%_
                             _%hd171061171549%_
                             _%tl171062171551%_
                             _%e171063171554%_
                             _%hd171064171557%_
                             _%tl171065171559%_
                             _%e171066171562%_
                             _%hd171067171565%_
                             _%tl171068171567%_
                             _%e171069171570%_
                             _%hd171070171573%_
                             _%tl171071171575%_
                             _%e171072171578%_
                             _%hd171073171581%_
                             _%tl171074171583%_
                             _%e171075171586%_
                             _%hd171076171589%_
                             _%tl171077171591%_)
                      (let ((_%L171594%_ _%hd171076171589%_)
                            (_%L171595%_ _%hd171067171565%_)
                            (_%L171596%_ _%hd171058171541%_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L171596%_
                                        'slot-ref))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L171596%_
                                        'unchecked-slot-ref)))
                                 (let ((__tmp176522
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self170938%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L171595%_
                                    __tmp176522)))
                            (_%__kont175403175404%_
                             _%L171594%_
                             _%L171595%_
                             _%L171596%_)
                            (_%__match175892175893%_
                             _%e171048171514%_
                             _%hd171049171517%_
                             _%tl171050171519%_
                             _%e171051171522%_
                             _%hd171052171525%_
                             _%tl171053171527%_
                             _%e171054171530%_
                             _%hd171055171533%_
                             _%tl171056171535%_
                             _%e171057171538%_
                             _%hd171058171541%_
                             _%tl171059171543%_
                             _%e171060171546%_
                             _%hd171061171549%_
                             _%tl171062171551%_
                             _%e171063171554%_
                             _%hd171064171557%_
                             _%tl171065171559%_
                             _%e171066171562%_
                             _%hd171067171565%_
                             _%tl171068171567%_
                             _%e171069171570%_
                             _%hd171070171573%_
                             _%tl171071171575%_)))))
                   (_%__match175686175687%_
                    (lambda (_%e171048171514%_
                             _%hd171049171517%_
                             _%tl171050171519%_
                             _%e171051171522%_
                             _%hd171052171525%_
                             _%tl171053171527%_
                             _%e171054171530%_
                             _%hd171055171533%_
                             _%tl171056171535%_
                             _%e171057171538%_
                             _%hd171058171541%_
                             _%tl171059171543%_
                             _%e171060171546%_
                             _%hd171061171549%_
                             _%tl171062171551%_
                             _%e171063171554%_
                             _%hd171064171557%_
                             _%tl171065171559%_
                             _%e171066171562%_
                             _%hd171067171565%_
                             _%tl171068171567%_
                             _%e171069171570%_
                             _%hd171070171573%_
                             _%tl171071171575%_
                             _%e171072171578%_
                             _%hd171073171581%_
                             _%tl171074171583%_
                             _%e171075171586%_
                             _%hd171076171589%_
                             _%tl171077171591%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl171071171575%_))
                          (_%__match175688175689%_
                           _%e171048171514%_
                           _%hd171049171517%_
                           _%tl171050171519%_
                           _%e171051171522%_
                           _%hd171052171525%_
                           _%tl171053171527%_
                           _%e171054171530%_
                           _%hd171055171533%_
                           _%tl171056171535%_
                           _%e171057171538%_
                           _%hd171058171541%_
                           _%tl171059171543%_
                           _%e171060171546%_
                           _%hd171061171549%_
                           _%tl171062171551%_
                           _%e171063171554%_
                           _%hd171064171557%_
                           _%tl171065171559%_
                           _%e171066171562%_
                           _%hd171067171565%_
                           _%tl171068171567%_
                           _%e171069171570%_
                           _%hd171070171573%_
                           _%tl171071171575%_
                           _%e171072171578%_
                           _%hd171073171581%_
                           _%tl171074171583%_
                           _%e171075171586%_
                           _%hd171076171589%_
                           _%tl171077171591%_)
                          (_%__match175766175767%_
                           _%e171048171514%_
                           _%hd171049171517%_
                           _%tl171050171519%_
                           _%e171051171522%_
                           _%hd171052171525%_
                           _%tl171053171527%_
                           _%e171054171530%_
                           _%hd171055171533%_
                           _%tl171056171535%_
                           _%e171057171538%_
                           _%hd171058171541%_
                           _%tl171059171543%_
                           _%e171060171546%_
                           _%hd171061171549%_
                           _%tl171062171551%_
                           _%e171063171554%_
                           _%hd171064171557%_
                           _%tl171065171559%_
                           _%e171066171562%_
                           _%hd171067171565%_
                           _%tl171068171567%_
                           _%e171069171570%_
                           _%hd171070171573%_
                           _%tl171071171575%_
                           _%e171072171578%_
                           _%hd171073171581%_
                           _%tl171074171583%_
                           _%e171075171586%_
                           _%hd171076171589%_
                           _%tl171077171591%_))))
                   (_%__match175676175677%_
                    (lambda (_%e171048171514%_
                             _%hd171049171517%_
                             _%tl171050171519%_
                             _%e171051171522%_
                             _%hd171052171525%_
                             _%tl171053171527%_
                             _%e171054171530%_
                             _%hd171055171533%_
                             _%tl171056171535%_
                             _%e171057171538%_
                             _%hd171058171541%_
                             _%tl171059171543%_
                             _%e171060171546%_
                             _%hd171061171549%_
                             _%tl171062171551%_
                             _%e171063171554%_
                             _%hd171064171557%_
                             _%tl171065171559%_
                             _%e171066171562%_
                             _%hd171067171565%_
                             _%tl171068171567%_
                             _%e171069171570%_
                             _%hd171070171573%_
                             _%tl171071171575%_
                             _%e171072171578%_
                             _%hd171073171581%_
                             _%tl171074171583%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#quote _%hd171073171581%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl171074171583%_))
                              (let ((_%e171075171586%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl171074171583%_))))
                                (let ((_%tl171077171591%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e171075171586%_)))
                                      (_%hd171076171589%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e171075171586%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl171077171591%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl171071171575%_))
                                          (_%__match175688175689%_
                                           _%e171048171514%_
                                           _%hd171049171517%_
                                           _%tl171050171519%_
                                           _%e171051171522%_
                                           _%hd171052171525%_
                                           _%tl171053171527%_
                                           _%e171054171530%_
                                           _%hd171055171533%_
                                           _%tl171056171535%_
                                           _%e171057171538%_
                                           _%hd171058171541%_
                                           _%tl171059171543%_
                                           _%e171060171546%_
                                           _%hd171061171549%_
                                           _%tl171062171551%_
                                           _%e171063171554%_
                                           _%hd171064171557%_
                                           _%tl171065171559%_
                                           _%e171066171562%_
                                           _%hd171067171565%_
                                           _%tl171068171567%_
                                           _%e171069171570%_
                                           _%hd171070171573%_
                                           _%tl171071171575%_
                                           _%e171072171578%_
                                           _%hd171073171581%_
                                           _%tl171074171583%_
                                           _%e171075171586%_
                                           _%hd171076171589%_
                                           _%tl171077171591%_)
                                          (_%__match175766175767%_
                                           _%e171048171514%_
                                           _%hd171049171517%_
                                           _%tl171050171519%_
                                           _%e171051171522%_
                                           _%hd171052171525%_
                                           _%tl171053171527%_
                                           _%e171054171530%_
                                           _%hd171055171533%_
                                           _%tl171056171535%_
                                           _%e171057171538%_
                                           _%hd171058171541%_
                                           _%tl171059171543%_
                                           _%e171060171546%_
                                           _%hd171061171549%_
                                           _%tl171062171551%_
                                           _%e171063171554%_
                                           _%hd171064171557%_
                                           _%tl171065171559%_
                                           _%e171066171562%_
                                           _%hd171067171565%_
                                           _%tl171068171567%_
                                           _%e171069171570%_
                                           _%hd171070171573%_
                                           _%tl171071171575%_
                                           _%e171072171578%_
                                           _%hd171073171581%_
                                           _%tl171074171583%_
                                           _%e171075171586%_
                                           _%hd171076171589%_
                                           _%tl171077171591%_))
                                      (_%__match175890175891%_
                                       _%e171048171514%_
                                       _%hd171049171517%_
                                       _%tl171050171519%_
                                       _%e171051171522%_
                                       _%hd171052171525%_
                                       _%tl171053171527%_
                                       _%e171054171530%_
                                       _%hd171055171533%_
                                       _%tl171056171535%_
                                       _%e171057171538%_
                                       _%hd171058171541%_
                                       _%tl171059171543%_
                                       _%e171060171546%_
                                       _%hd171061171549%_
                                       _%tl171062171551%_
                                       _%e171063171554%_
                                       _%hd171064171557%_
                                       _%tl171065171559%_
                                       _%e171066171562%_
                                       _%hd171067171565%_
                                       _%tl171068171567%_
                                       _%e171069171570%_
                                       _%hd171070171573%_
                                       _%tl171071171575%_))))
                              (_%__match175890175891%_
                               _%e171048171514%_
                               _%hd171049171517%_
                               _%tl171050171519%_
                               _%e171051171522%_
                               _%hd171052171525%_
                               _%tl171053171527%_
                               _%e171054171530%_
                               _%hd171055171533%_
                               _%tl171056171535%_
                               _%e171057171538%_
                               _%hd171058171541%_
                               _%tl171059171543%_
                               _%e171060171546%_
                               _%hd171061171549%_
                               _%tl171062171551%_
                               _%e171063171554%_
                               _%hd171064171557%_
                               _%tl171065171559%_
                               _%e171066171562%_
                               _%hd171067171565%_
                               _%tl171068171567%_
                               _%e171069171570%_
                               _%hd171070171573%_
                               _%tl171071171575%_))
                          (_%__match175890175891%_
                           _%e171048171514%_
                           _%hd171049171517%_
                           _%tl171050171519%_
                           _%e171051171522%_
                           _%hd171052171525%_
                           _%tl171053171527%_
                           _%e171054171530%_
                           _%hd171055171533%_
                           _%tl171056171535%_
                           _%e171057171538%_
                           _%hd171058171541%_
                           _%tl171059171543%_
                           _%e171060171546%_
                           _%hd171061171549%_
                           _%tl171062171551%_
                           _%e171063171554%_
                           _%hd171064171557%_
                           _%tl171065171559%_
                           _%e171066171562%_
                           _%hd171067171565%_
                           _%tl171068171567%_
                           _%e171069171570%_
                           _%hd171070171573%_
                           _%tl171071171575%_))))
                   (_%__match175608175609%_
                    (lambda (_%e170997171633%_
                             _%hd170998171636%_
                             _%tl170999171638%_
                             _%e171000171641%_
                             _%hd171001171644%_
                             _%tl171002171646%_
                             _%e171003171649%_
                             _%hd171004171652%_
                             _%tl171005171654%_
                             _%e171006171657%_
                             _%hd171007171660%_
                             _%tl171008171662%_
                             _%e171009171665%_
                             _%hd171010171668%_
                             _%tl171011171670%_
                             _%e171012171673%_
                             _%hd171013171676%_
                             _%tl171014171678%_
                             _%e171015171681%_
                             _%hd171016171684%_
                             _%tl171017171686%_
                             _%e171018171689%_
                             _%hd171019171692%_
                             _%tl171020171694%_
                             _%e171021171697%_
                             _%hd171022171700%_
                             _%tl171023171702%_
                             _%e171024171705%_
                             _%hd171025171708%_
                             _%tl171026171710%_
                             _%e171027171713%_
                             _%hd171028171716%_
                             _%tl171029171718%_
                             _%e171030171721%_
                             _%hd171031171724%_
                             _%tl171032171726%_
                             _%e171033171729%_
                             _%hd171034171732%_
                             _%tl171035171734%_
                             _%__splice175401175402%_
                             _%target171036171737%_
                             _%tl171038171739%_)
                      (letrec ((_%loop171039171742%_
                                (lambda (_%hd171037171745%_
                                         _%args171043171747%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd171037171745%_))
                                      (let ((_%e171040171750%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd171037171745%_))))
                                        (let ((_%lp-tl171042171755%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e171040171750%_)))
                                              (_%lp-hd171041171753%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e171040171750%_))))
                                          (_%loop171039171742%_
                                           _%lp-tl171042171755%_
                                           (cons _%lp-hd171041171753%_
                                                 _%args171043171747%_))))
                                      (let ((_%args171044171758%_
                                             (reverse _%args171043171747%_)))
                                        (let ((_%L171761%_
                                               _%args171044171758%_)
                                              (_%L171762%_ _%hd171034171732%_)
                                              (_%L171763%_ _%hd171025171708%_)
                                              (_%L171764%_ _%hd171016171684%_)
                                              (_%L171765%_ _%hd171007171660%_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%L171765%_
                                                      'apply))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%L171764%_
                                                      'call-method))
                                                   (let ((__tmp176523
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self170938%_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%L171763%_
                                                      __tmp176523)))
                                              (_%__kont175399175400%_
                                               _%L171761%_
                                               _%L171762%_
                                               _%L171763%_
                                               _%L171764%_
                                               _%L171765%_)
                                              (_%__kont175411175412%_))))))))
                        (_%loop171039171742%_ _%target171036171737%_ '()))))
                   (_%__match175566175567%_
                    (lambda (_%e170997171633%_
                             _%hd170998171636%_
                             _%tl170999171638%_
                             _%e171000171641%_
                             _%hd171001171644%_
                             _%tl171002171646%_
                             _%e171003171649%_
                             _%hd171004171652%_
                             _%tl171005171654%_
                             _%e171006171657%_
                             _%hd171007171660%_
                             _%tl171008171662%_
                             _%e171009171665%_
                             _%hd171010171668%_
                             _%tl171011171670%_
                             _%e171012171673%_
                             _%hd171013171676%_
                             _%tl171014171678%_
                             _%e171015171681%_
                             _%hd171016171684%_
                             _%tl171017171686%_
                             _%e171018171689%_
                             _%hd171019171692%_
                             _%tl171020171694%_
                             _%e171021171697%_
                             _%hd171022171700%_
                             _%tl171023171702%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _%hd171022171700%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl171023171702%_))
                              (let ((_%e171024171705%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl171023171702%_))))
                                (let ((_%tl171026171710%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e171024171705%_)))
                                      (_%hd171025171708%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e171024171705%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl171026171710%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl171020171694%_))
                                          (let ((_%e171027171713%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl171020171694%_))))
                                            (let ((_%tl171029171718%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e171027171713%_)))
                                                  (_%hd171028171716%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e171027171713%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd171028171716%_))
                                                  (let ((_%e171030171721%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd171028171716%_))))
                                                    (let ((_%tl171032171726%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e171030171721%_)))
                                                          (_%hd171031171724%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e171030171721%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd171031171724%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#quote _%hd171031171724%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl171032171726%_))
                          (let ((_%e171033171729%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl171032171726%_))))
                            (let ((_%tl171035171734%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e171033171729%_)))
                                  (_%hd171034171732%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e171033171729%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl171035171734%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl171029171718%_))
                                      (let ((_%__splice175401175402%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl171029171718%_
                                                '0))))
                                        (let ((_%tl171038171739%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice175401175402%_
                                                  '1)))
                                              (_%target171036171737%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice175401175402%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl171038171739%_))
                                              (_%__match175608175609%_
                                               _%e170997171633%_
                                               _%hd170998171636%_
                                               _%tl170999171638%_
                                               _%e171000171641%_
                                               _%hd171001171644%_
                                               _%tl171002171646%_
                                               _%e171003171649%_
                                               _%hd171004171652%_
                                               _%tl171005171654%_
                                               _%e171006171657%_
                                               _%hd171007171660%_
                                               _%tl171008171662%_
                                               _%e171009171665%_
                                               _%hd171010171668%_
                                               _%tl171011171670%_
                                               _%e171012171673%_
                                               _%hd171013171676%_
                                               _%tl171014171678%_
                                               _%e171015171681%_
                                               _%hd171016171684%_
                                               _%tl171017171686%_
                                               _%e171018171689%_
                                               _%hd171019171692%_
                                               _%tl171020171694%_
                                               _%e171021171697%_
                                               _%hd171022171700%_
                                               _%tl171023171702%_
                                               _%e171024171705%_
                                               _%hd171025171708%_
                                               _%tl171026171710%_
                                               _%e171027171713%_
                                               _%hd171028171716%_
                                               _%tl171029171718%_
                                               _%e171030171721%_
                                               _%hd171031171724%_
                                               _%tl171032171726%_
                                               _%e171033171729%_
                                               _%hd171034171732%_
                                               _%tl171035171734%_
                                               _%__splice175401175402%_
                                               _%target171036171737%_
                                               _%tl171038171739%_)
                                              (_%__kont175411175412%_))))
                                      (_%__kont175411175412%_))
                                  (_%__kont175411175412%_))))
                          (_%__kont175411175412%_))
                      (_%__kont175411175412%_))
                  (_%__kont175411175412%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont175411175412%_))))
                                          (_%__match175890175891%_
                                           _%e170997171633%_
                                           _%hd170998171636%_
                                           _%tl170999171638%_
                                           _%e171000171641%_
                                           _%hd171001171644%_
                                           _%tl171002171646%_
                                           _%e171003171649%_
                                           _%hd171004171652%_
                                           _%tl171005171654%_
                                           _%e171006171657%_
                                           _%hd171007171660%_
                                           _%tl171008171662%_
                                           _%e171009171665%_
                                           _%hd171010171668%_
                                           _%tl171011171670%_
                                           _%e171012171673%_
                                           _%hd171013171676%_
                                           _%tl171014171678%_
                                           _%e171015171681%_
                                           _%hd171016171684%_
                                           _%tl171017171686%_
                                           _%e171018171689%_
                                           _%hd171019171692%_
                                           _%tl171020171694%_))
                                      (_%__match175890175891%_
                                       _%e170997171633%_
                                       _%hd170998171636%_
                                       _%tl170999171638%_
                                       _%e171000171641%_
                                       _%hd171001171644%_
                                       _%tl171002171646%_
                                       _%e171003171649%_
                                       _%hd171004171652%_
                                       _%tl171005171654%_
                                       _%e171006171657%_
                                       _%hd171007171660%_
                                       _%tl171008171662%_
                                       _%e171009171665%_
                                       _%hd171010171668%_
                                       _%tl171011171670%_
                                       _%e171012171673%_
                                       _%hd171013171676%_
                                       _%tl171014171678%_
                                       _%e171015171681%_
                                       _%hd171016171684%_
                                       _%tl171017171686%_
                                       _%e171018171689%_
                                       _%hd171019171692%_
                                       _%tl171020171694%_))))
                              (_%__match175890175891%_
                               _%e170997171633%_
                               _%hd170998171636%_
                               _%tl170999171638%_
                               _%e171000171641%_
                               _%hd171001171644%_
                               _%tl171002171646%_
                               _%e171003171649%_
                               _%hd171004171652%_
                               _%tl171005171654%_
                               _%e171006171657%_
                               _%hd171007171660%_
                               _%tl171008171662%_
                               _%e171009171665%_
                               _%hd171010171668%_
                               _%tl171011171670%_
                               _%e171012171673%_
                               _%hd171013171676%_
                               _%tl171014171678%_
                               _%e171015171681%_
                               _%hd171016171684%_
                               _%tl171017171686%_
                               _%e171018171689%_
                               _%hd171019171692%_
                               _%tl171020171694%_))
                          (_%__match175676175677%_
                           _%e170997171633%_
                           _%hd170998171636%_
                           _%tl170999171638%_
                           _%e171000171641%_
                           _%hd171001171644%_
                           _%tl171002171646%_
                           _%e171003171649%_
                           _%hd171004171652%_
                           _%tl171005171654%_
                           _%e171006171657%_
                           _%hd171007171660%_
                           _%tl171008171662%_
                           _%e171009171665%_
                           _%hd171010171668%_
                           _%tl171011171670%_
                           _%e171012171673%_
                           _%hd171013171676%_
                           _%tl171014171678%_
                           _%e171015171681%_
                           _%hd171016171684%_
                           _%tl171017171686%_
                           _%e171018171689%_
                           _%hd171019171692%_
                           _%tl171020171694%_
                           _%e171021171697%_
                           _%hd171022171700%_
                           _%tl171023171702%_))))
                   (_%__match175498175499%_
                    (lambda (_%e170953171822%_
                             _%hd170954171825%_
                             _%tl170955171827%_
                             _%e170956171830%_
                             _%hd170957171833%_
                             _%tl170958171835%_
                             _%e170959171838%_
                             _%hd170960171841%_
                             _%tl170961171843%_
                             _%e170962171846%_
                             _%hd170963171849%_
                             _%tl170964171851%_
                             _%e170965171854%_
                             _%hd170966171857%_
                             _%tl170967171859%_
                             _%e170968171862%_
                             _%hd170969171865%_
                             _%tl170970171867%_
                             _%e170971171870%_
                             _%hd170972171873%_
                             _%tl170973171875%_
                             _%e170974171878%_
                             _%hd170975171881%_
                             _%tl170976171883%_
                             _%e170977171886%_
                             _%hd170978171889%_
                             _%tl170979171891%_
                             _%e170980171894%_
                             _%hd170981171897%_
                             _%tl170982171899%_
                             _%__splice175397175398%_
                             _%target170983171902%_
                             _%tl170985171904%_)
                      (letrec ((_%loop170986171907%_
                                (lambda (_%hd170984171910%_
                                         _%args170990171912%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd170984171910%_))
                                      (let ((_%e170987171915%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd170984171910%_))))
                                        (let ((_%lp-tl170989171920%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e170987171915%_)))
                                              (_%lp-hd170988171918%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e170987171915%_))))
                                          (_%loop170986171907%_
                                           _%lp-tl170989171920%_
                                           (cons _%lp-hd170988171918%_
                                                 _%args170990171912%_))))
                                      (let ((_%args170991171923%_
                                             (reverse _%args170990171912%_)))
                                        (let ((_%L171926%_
                                               _%args170991171923%_)
                                              (_%L171927%_ _%hd170981171897%_)
                                              (_%L171928%_ _%hd170972171873%_)
                                              (_%L171929%_ _%hd170963171849%_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%L171929%_
                                                      'call-method))
                                                   (let ((__tmp176524
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self170938%_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%L171928%_
                                                      __tmp176524)))
                                              (_%__kont175395175396%_
                                               _%L171926%_
                                               _%L171927%_
                                               _%L171928%_
                                               _%L171929%_)
                                              (_%__match175686175687%_
                                               _%e170953171822%_
                                               _%hd170954171825%_
                                               _%tl170955171827%_
                                               _%e170956171830%_
                                               _%hd170957171833%_
                                               _%tl170958171835%_
                                               _%e170959171838%_
                                               _%hd170960171841%_
                                               _%tl170961171843%_
                                               _%e170962171846%_
                                               _%hd170963171849%_
                                               _%tl170964171851%_
                                               _%e170965171854%_
                                               _%hd170966171857%_
                                               _%tl170967171859%_
                                               _%e170968171862%_
                                               _%hd170969171865%_
                                               _%tl170970171867%_
                                               _%e170971171870%_
                                               _%hd170972171873%_
                                               _%tl170973171875%_
                                               _%e170974171878%_
                                               _%hd170975171881%_
                                               _%tl170976171883%_
                                               _%e170977171886%_
                                               _%hd170978171889%_
                                               _%tl170979171891%_
                                               _%e170980171894%_
                                               _%hd170981171897%_
                                               _%tl170982171899%_))))))))
                        (_%loop170986171907%_ _%target170983171902%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx175393175394%_))
                  (let ((_%e170953171822%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx175393175394%_))))
                    (let ((_%tl170955171827%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e170953171822%_)))
                          (_%hd170954171825%_
                           (let ()
                             (declare (not safe))
                             (##car _%e170953171822%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl170955171827%_))
                          (let ((_%e170956171830%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl170955171827%_))))
                            (let ((_%tl170958171835%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e170956171830%_)))
                                  (_%hd170957171833%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e170956171830%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd170957171833%_))
                                  (let ((_%e170959171838%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd170957171833%_))))
                                    (let ((_%tl170961171843%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e170959171838%_)))
                                          (_%hd170960171841%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e170959171838%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd170960171841%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd170960171841%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl170961171843%_))
                                                  (let ((_%e170962171846%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl170961171843%_))))
                                                    (let ((_%tl170964171851%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e170962171846%_)))
                                                          (_%hd170963171849%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e170962171846%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl170964171851%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl170958171835%_))
                      (let ((_%e170965171854%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl170958171835%_))))
                        (let ((_%tl170967171859%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e170965171854%_)))
                              (_%hd170966171857%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e170965171854%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd170966171857%_))
                              (let ((_%e170968171862%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd170966171857%_))))
                                (let ((_%tl170970171867%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e170968171862%_)))
                                      (_%hd170969171865%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e170968171862%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd170969171865%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd170969171865%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl170970171867%_))
                                              (let ((_%e170971171870%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl170970171867%_))))
                                                (let ((_%tl170973171875%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e170971171870%_)))
                                                      (_%hd170972171873%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e170971171870%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl170973171875%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl170967171859%_))
                                                          (let ((_%e170974171878%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl170967171859%_))))
                    (let ((_%tl170976171883%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e170974171878%_)))
                          (_%hd170975171881%_
                           (let ()
                             (declare (not safe))
                             (##car _%e170974171878%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd170975171881%_))
                          (let ((_%e170977171886%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd170975171881%_))))
                            (let ((_%tl170979171891%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e170977171886%_)))
                                  (_%hd170978171889%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e170977171886%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd170978171889%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%hd170978171889%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl170979171891%_))
                                          (let ((_%e170980171894%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl170979171891%_))))
                                            (let ((_%tl170982171899%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e170980171894%_)))
                                                  (_%hd170981171897%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e170980171894%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl170982171899%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl170976171883%_))
                                                      (let ((_%__splice175397175398%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%tl170976171883%_ '0))))
                (let ((_%tl170985171904%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice175397175398%_ '1)))
                      (_%target170983171902%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice175397175398%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl170985171904%_))
                      (_%__match175498175499%_
                       _%e170953171822%_
                       _%hd170954171825%_
                       _%tl170955171827%_
                       _%e170956171830%_
                       _%hd170957171833%_
                       _%tl170958171835%_
                       _%e170959171838%_
                       _%hd170960171841%_
                       _%tl170961171843%_
                       _%e170962171846%_
                       _%hd170963171849%_
                       _%tl170964171851%_
                       _%e170965171854%_
                       _%hd170966171857%_
                       _%tl170967171859%_
                       _%e170968171862%_
                       _%hd170969171865%_
                       _%tl170970171867%_
                       _%e170971171870%_
                       _%hd170972171873%_
                       _%tl170973171875%_
                       _%e170974171878%_
                       _%hd170975171881%_
                       _%tl170976171883%_
                       _%e170977171886%_
                       _%hd170978171889%_
                       _%tl170979171891%_
                       _%e170980171894%_
                       _%hd170981171897%_
                       _%tl170982171899%_
                       _%__splice175397175398%_
                       _%target170983171902%_
                       _%tl170985171904%_)
                      (_%__match175686175687%_
                       _%e170953171822%_
                       _%hd170954171825%_
                       _%tl170955171827%_
                       _%e170956171830%_
                       _%hd170957171833%_
                       _%tl170958171835%_
                       _%e170959171838%_
                       _%hd170960171841%_
                       _%tl170961171843%_
                       _%e170962171846%_
                       _%hd170963171849%_
                       _%tl170964171851%_
                       _%e170965171854%_
                       _%hd170966171857%_
                       _%tl170967171859%_
                       _%e170968171862%_
                       _%hd170969171865%_
                       _%tl170970171867%_
                       _%e170971171870%_
                       _%hd170972171873%_
                       _%tl170973171875%_
                       _%e170974171878%_
                       _%hd170975171881%_
                       _%tl170976171883%_
                       _%e170977171886%_
                       _%hd170978171889%_
                       _%tl170979171891%_
                       _%e170980171894%_
                       _%hd170981171897%_
                       _%tl170982171899%_))))
              (_%__match175686175687%_
               _%e170953171822%_
               _%hd170954171825%_
               _%tl170955171827%_
               _%e170956171830%_
               _%hd170957171833%_
               _%tl170958171835%_
               _%e170959171838%_
               _%hd170960171841%_
               _%tl170961171843%_
               _%e170962171846%_
               _%hd170963171849%_
               _%tl170964171851%_
               _%e170965171854%_
               _%hd170966171857%_
               _%tl170967171859%_
               _%e170968171862%_
               _%hd170969171865%_
               _%tl170970171867%_
               _%e170971171870%_
               _%hd170972171873%_
               _%tl170973171875%_
               _%e170974171878%_
               _%hd170975171881%_
               _%tl170976171883%_
               _%e170977171886%_
               _%hd170978171889%_
               _%tl170979171891%_
               _%e170980171894%_
               _%hd170981171897%_
               _%tl170982171899%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__match175890175891%_
                                                   _%e170953171822%_
                                                   _%hd170954171825%_
                                                   _%tl170955171827%_
                                                   _%e170956171830%_
                                                   _%hd170957171833%_
                                                   _%tl170958171835%_
                                                   _%e170959171838%_
                                                   _%hd170960171841%_
                                                   _%tl170961171843%_
                                                   _%e170962171846%_
                                                   _%hd170963171849%_
                                                   _%tl170964171851%_
                                                   _%e170965171854%_
                                                   _%hd170966171857%_
                                                   _%tl170967171859%_
                                                   _%e170968171862%_
                                                   _%hd170969171865%_
                                                   _%tl170970171867%_
                                                   _%e170971171870%_
                                                   _%hd170972171873%_
                                                   _%tl170973171875%_
                                                   _%e170974171878%_
                                                   _%hd170975171881%_
                                                   _%tl170976171883%_))))
                                          (_%__match175890175891%_
                                           _%e170953171822%_
                                           _%hd170954171825%_
                                           _%tl170955171827%_
                                           _%e170956171830%_
                                           _%hd170957171833%_
                                           _%tl170958171835%_
                                           _%e170959171838%_
                                           _%hd170960171841%_
                                           _%tl170961171843%_
                                           _%e170962171846%_
                                           _%hd170963171849%_
                                           _%tl170964171851%_
                                           _%e170965171854%_
                                           _%hd170966171857%_
                                           _%tl170967171859%_
                                           _%e170968171862%_
                                           _%hd170969171865%_
                                           _%tl170970171867%_
                                           _%e170971171870%_
                                           _%hd170972171873%_
                                           _%tl170973171875%_
                                           _%e170974171878%_
                                           _%hd170975171881%_
                                           _%tl170976171883%_))
                                      (_%__match175566175567%_
                                       _%e170953171822%_
                                       _%hd170954171825%_
                                       _%tl170955171827%_
                                       _%e170956171830%_
                                       _%hd170957171833%_
                                       _%tl170958171835%_
                                       _%e170959171838%_
                                       _%hd170960171841%_
                                       _%tl170961171843%_
                                       _%e170962171846%_
                                       _%hd170963171849%_
                                       _%tl170964171851%_
                                       _%e170965171854%_
                                       _%hd170966171857%_
                                       _%tl170967171859%_
                                       _%e170968171862%_
                                       _%hd170969171865%_
                                       _%tl170970171867%_
                                       _%e170971171870%_
                                       _%hd170972171873%_
                                       _%tl170973171875%_
                                       _%e170974171878%_
                                       _%hd170975171881%_
                                       _%tl170976171883%_
                                       _%e170977171886%_
                                       _%hd170978171889%_
                                       _%tl170979171891%_))
                                  (_%__match175890175891%_
                                   _%e170953171822%_
                                   _%hd170954171825%_
                                   _%tl170955171827%_
                                   _%e170956171830%_
                                   _%hd170957171833%_
                                   _%tl170958171835%_
                                   _%e170959171838%_
                                   _%hd170960171841%_
                                   _%tl170961171843%_
                                   _%e170962171846%_
                                   _%hd170963171849%_
                                   _%tl170964171851%_
                                   _%e170965171854%_
                                   _%hd170966171857%_
                                   _%tl170967171859%_
                                   _%e170968171862%_
                                   _%hd170969171865%_
                                   _%tl170970171867%_
                                   _%e170971171870%_
                                   _%hd170972171873%_
                                   _%tl170973171875%_
                                   _%e170974171878%_
                                   _%hd170975171881%_
                                   _%tl170976171883%_))))
                          (_%__match175890175891%_
                           _%e170953171822%_
                           _%hd170954171825%_
                           _%tl170955171827%_
                           _%e170956171830%_
                           _%hd170957171833%_
                           _%tl170958171835%_
                           _%e170959171838%_
                           _%hd170960171841%_
                           _%tl170961171843%_
                           _%e170962171846%_
                           _%hd170963171849%_
                           _%tl170964171851%_
                           _%e170965171854%_
                           _%hd170966171857%_
                           _%tl170967171859%_
                           _%e170968171862%_
                           _%hd170969171865%_
                           _%tl170970171867%_
                           _%e170971171870%_
                           _%hd170972171873%_
                           _%tl170973171875%_
                           _%e170974171878%_
                           _%hd170975171881%_
                           _%tl170976171883%_))))
                  (_%__match175828175829%_
                   _%e170953171822%_
                   _%hd170954171825%_
                   _%tl170955171827%_
                   _%e170956171830%_
                   _%hd170957171833%_
                   _%tl170958171835%_
                   _%e170959171838%_
                   _%hd170960171841%_
                   _%tl170961171843%_
                   _%e170962171846%_
                   _%hd170963171849%_
                   _%tl170964171851%_
                   _%e170965171854%_
                   _%hd170966171857%_
                   _%tl170967171859%_
                   _%e170968171862%_
                   _%hd170969171865%_
                   _%tl170970171867%_
                   _%e170971171870%_
                   _%hd170972171873%_
                   _%tl170973171875%_))
              (_%__kont175411175412%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont175411175412%_))
                                          (_%__kont175411175412%_))
                                      (_%__kont175411175412%_))))
                              (_%__kont175411175412%_))))
                      (_%__kont175411175412%_))
                  (_%__kont175411175412%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont175411175412%_))
                                              (_%__kont175411175412%_))
                                          (_%__kont175411175412%_))))
                                  (_%__kont175411175412%_))))
                          (_%__kont175411175412%_))))
                  (_%__kont175411175412%_)))))))
    (define gxc#subst-object-refs-call%
      (lambda (_%self169877%_ _%stx169878%_)
        (letrec ((_%force-e169880%_
                  (lambda (_%target170936%_)
                    (cons '%#call
                          (cons (cons '%#ref (cons 'force '()))
                                (cons (cons '%#ref (cons _%target170936%_ '()))
                                      '()))))))
          (let* ((_%__stx175895175896%_ _%stx169878%_)
                 (_%g169888170110%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx175895175896%_)))))
            (let ((_%__kont175897175898%_
                   (lambda (_%L170882%_ _%L170883%_ _%L170884%_ _%L170885%_)
                     (let ((_%$method170930%_
                            (let ((__tmp176526
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self169877%_ 'methods)))
                                  (__tmp176525
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L170883%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp176526 __tmp176525)))
                           (_%args170931%_
                            (map (lambda (_%g170918170920%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self169877%_
                                      _%g170918170920%_)))
                                 (let ((__tmp176527
                                        (lambda (_%g170922170925%_
                                                 _%g170923170927%_)
                                          (cons _%g170922170925%_
                                                _%g170923170927%_))))
                                   (declare (not safe))
                                   (__foldr1 __tmp176527 '() _%L170882%_)))))
                       (let ((__tmp176528
                              (cons '%#call
                                    (cons (_%force-e169880%_ _%$method170930%_)
                                          (cons (cons '%#ref
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self169877%_
                                                               'receiver))
                                                            '()))
                                                _%args170931%_)))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp176528 _%stx169878%_)))))
                  (_%__kont175901175902%_
                   (lambda (_%L170714%_
                            _%L170715%_
                            _%L170716%_
                            _%L170717%_
                            _%L170718%_)
                     (let ((_%$method170770%_
                            (let ((__tmp176530
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self169877%_ 'methods)))
                                  (__tmp176529
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L170715%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp176530 __tmp176529)))
                           (_%args170771%_
                            (map (lambda (_%g170758170760%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self169877%_
                                      _%g170758170760%_)))
                                 (let ((__tmp176531
                                        (lambda (_%g170762170765%_
                                                 _%g170763170767%_)
                                          (cons _%g170762170765%_
                                                _%g170763170767%_))))
                                   (declare (not safe))
                                   (__foldr1 __tmp176531 '() _%L170714%_)))))
                       (let ((__tmp176532
                              (cons '%#call
                                    (cons (cons '%#ref (cons 'apply '()))
                                          (cons (_%force-e169880%_
                                                 _%$method170770%_)
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (slot-ref__0 _%self169877%_ 'receiver))
                          '()))
              _%args170771%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp176532 _%stx169878%_)))))
                  (_%__kont175905175906%_
                   (lambda (_%L170545%_ _%L170546%_ _%L170547%_)
                     (let* ((_%$field170579%_
                             (let ((__tmp176534
                                    (let ()
                                      (declare (not safe))
                                      (slot-ref__0 _%self169877%_ 'slots)))
                                   (__tmp176533
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%L170545%_))))
                               (declare (not safe))
                               (hash-ref__0 __tmp176534 __tmp176533)))
                            (__tmp176535
                             (cons '%#struct-unchecked-ref
                                   (cons (cons '%#ref
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (slot-ref__0
                                                        _%self169877%_
                                                        'klass))
                                                     '()))
                                         (cons (cons '%#ref
                                                     (cons _%$field170579%_
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (slot-ref__0 _%self169877%_ 'receiver))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp176535 _%stx169878%_))))
                  (_%__kont175907175908%_
                   (lambda (_%L170419%_ _%L170420%_ _%L170421%_ _%L170422%_)
                     (let ((_%$field170457%_
                            (let ((__tmp176537
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self169877%_ 'slots)))
                                  (__tmp176536
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L170420%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp176537 __tmp176536)))
                           (_%expr170458%_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-e__1 _%self169877%_ _%L170419%_))))
                       (let ((__tmp176538
                              (cons '%#struct-unchecked-set!
                                    (cons (cons '%#ref
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (slot-ref__0
                                                         _%self169877%_
                                                         'klass))
                                                      '()))
                                          (cons (cons '%#ref
                                                      (cons _%$field170457%_
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (slot-ref__0 _%self169877%_ 'receiver))
                          '()))
              (cons _%expr170458%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp176538 _%stx169878%_)))))
                  (_%__kont175909175910%_
                   (lambda (_%L170291%_ _%L170292%_)
                     (let* ((_%accessor170314%_
                             (let ((__tmp176539
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _%L170292%_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp176539)))
                            (_%klass170316%_
                             (let ((__tmp176540
                                    (##structure-ref
                                     _%accessor170314%_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _%stx169878%_
                                __tmp176540)))
                            (_%slot170318%_
                             (##structure-ref
                              _%accessor170314%_
                              '3
                              gxc#!accessor::t
                              '#f)))
                       (if (if (##structure-ref
                                _%accessor170314%_
                                '4
                                gxc#!accessor::t
                                '#f)
                               '#f
                               (or (let ()
                                     (declare (not safe))
                                     (gxc#!class-struct-slot?
                                      _%klass170316%_
                                      _%slot170318%_))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass170316%_
                                      '8
                                      '#f
                                      '#f))))
                           _%stx169878%_
                           (let* ((_%$field170324%_
                                   (let ((__tmp176541
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self169877%_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp176541 _%slot170318%_)))
                                  (__tmp176542
                                   (cons '%#struct-unchecked-ref
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (slot-ref__0
                                                              _%self169877%_
                                                              'klass))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$field170324%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _%self169877%_ 'receiver))
                               '()))
                   '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp176542
                              _%stx169878%_))))))
                  (_%__kont175911175912%_
                   (lambda (_%L170186%_ _%L170187%_ _%L170188%_)
                     (let* ((_%mutator170216%_
                             (let ((__tmp176543
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _%L170188%_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp176543)))
                            (_%klass170218%_
                             (let ((__tmp176544
                                    (##structure-ref
                                     _%mutator170216%_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _%stx169878%_
                                __tmp176544)))
                            (_%slot170220%_
                             (##structure-ref
                              _%mutator170216%_
                              '3
                              gxc#!mutator::t
                              '#f))
                            (_%expr170222%_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-e__1 _%self169877%_ _%L170186%_))))
                       (if (if (##structure-ref
                                _%mutator170216%_
                                '4
                                gxc#!mutator::t
                                '#f)
                               '#f
                               (or (let ()
                                     (declare (not safe))
                                     (gxc#!class-struct-slot?
                                      _%klass170218%_
                                      _%slot170220%_))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass170218%_
                                      '8
                                      '#f
                                      '#f))))
                           (let ((__tmp176545
                                  (cons '%#call
                                        (cons (cons (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       '%#ref))
                                                    (cons _%L170188%_ '()))
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#ref))
                                                          (cons _%L170187%_
                                                                '()))
                                                    (cons _%expr170222%_
                                                          '()))))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp176545 _%stx169878%_))
                           (let* ((_%$field170228%_
                                   (let ((__tmp176546
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self169877%_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp176546 _%slot170220%_)))
                                  (__tmp176547
                                   (cons '%#struct-unchecked-set!
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (slot-ref__0
                                                              _%self169877%_
                                                              'klass))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$field170228%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _%self169877%_ 'receiver))
                               '()))
                   (cons _%expr170222%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp176547
                              _%stx169878%_))))))
                  (_%__kont175913175914%_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-operands _%self169877%_ _%stx169878%_)))))
              (let* ((_%__match176394176395%_
                      (lambda (_%e170082170122%_
                               _%hd170083170125%_
                               _%tl170084170127%_
                               _%e170085170130%_
                               _%hd170086170133%_
                               _%tl170087170135%_
                               _%e170088170138%_
                               _%hd170089170141%_
                               _%tl170090170143%_
                               _%e170091170146%_
                               _%hd170092170149%_
                               _%tl170093170151%_
                               _%e170094170154%_
                               _%hd170095170157%_
                               _%tl170096170159%_
                               _%e170097170162%_
                               _%hd170098170165%_
                               _%tl170099170167%_
                               _%e170100170170%_
                               _%hd170101170173%_
                               _%tl170102170175%_
                               _%e170103170178%_
                               _%hd170104170181%_
                               _%tl170105170183%_)
                        (let ((_%L170186%_ _%hd170104170181%_)
                              (_%L170187%_ _%hd170101170173%_)
                              (_%L170188%_ _%hd170092170149%_))
                          (if (and (let ((__tmp176548
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self169877%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L170187%_
                                      __tmp176548))
                                   (let ((__tmp176549
                                          (let ((__tmp176550
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%L170188%_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp176550))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp176549
                                      'gxc#!mutator::t)))
                              (_%__kont175911175912%_
                               _%L170186%_
                               _%L170187%_
                               _%L170188%_)
                              (_%__kont175913175914%_)))))
                     (_%__match176392176393%_
                      (lambda (_%e170082170122%_
                               _%hd170083170125%_
                               _%tl170084170127%_
                               _%e170085170130%_
                               _%hd170086170133%_
                               _%tl170087170135%_
                               _%e170088170138%_
                               _%hd170089170141%_
                               _%tl170090170143%_
                               _%e170091170146%_
                               _%hd170092170149%_
                               _%tl170093170151%_
                               _%e170094170154%_
                               _%hd170095170157%_
                               _%tl170096170159%_
                               _%e170097170162%_
                               _%hd170098170165%_
                               _%tl170099170167%_
                               _%e170100170170%_
                               _%hd170101170173%_
                               _%tl170102170175%_
                               _%e170103170178%_
                               _%hd170104170181%_
                               _%tl170105170183%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl170105170183%_))
                            (_%__match176394176395%_
                             _%e170082170122%_
                             _%hd170083170125%_
                             _%tl170084170127%_
                             _%e170085170130%_
                             _%hd170086170133%_
                             _%tl170087170135%_
                             _%e170088170138%_
                             _%hd170089170141%_
                             _%tl170090170143%_
                             _%e170091170146%_
                             _%hd170092170149%_
                             _%tl170093170151%_
                             _%e170094170154%_
                             _%hd170095170157%_
                             _%tl170096170159%_
                             _%e170097170162%_
                             _%hd170098170165%_
                             _%tl170099170167%_
                             _%e170100170170%_
                             _%hd170101170173%_
                             _%tl170102170175%_
                             _%e170103170178%_
                             _%hd170104170181%_
                             _%tl170105170183%_)
                            (_%__kont175913175914%_))))
                     (_%__match176386176387%_
                      (lambda (_%e170082170122%_
                               _%hd170083170125%_
                               _%tl170084170127%_
                               _%e170085170130%_
                               _%hd170086170133%_
                               _%tl170087170135%_
                               _%e170088170138%_
                               _%hd170089170141%_
                               _%tl170090170143%_
                               _%e170091170146%_
                               _%hd170092170149%_
                               _%tl170093170151%_
                               _%e170094170154%_
                               _%hd170095170157%_
                               _%tl170096170159%_
                               _%e170097170162%_
                               _%hd170098170165%_
                               _%tl170099170167%_
                               _%e170100170170%_
                               _%hd170101170173%_
                               _%tl170102170175%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl170096170159%_))
                            (let ((_%e170103170178%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl170096170159%_))))
                              (let ((_%tl170105170183%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e170103170178%_)))
                                    (_%hd170104170181%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e170103170178%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl170105170183%_))
                                    (_%__match176394176395%_
                                     _%e170082170122%_
                                     _%hd170083170125%_
                                     _%tl170084170127%_
                                     _%e170085170130%_
                                     _%hd170086170133%_
                                     _%tl170087170135%_
                                     _%e170088170138%_
                                     _%hd170089170141%_
                                     _%tl170090170143%_
                                     _%e170091170146%_
                                     _%hd170092170149%_
                                     _%tl170093170151%_
                                     _%e170094170154%_
                                     _%hd170095170157%_
                                     _%tl170096170159%_
                                     _%e170097170162%_
                                     _%hd170098170165%_
                                     _%tl170099170167%_
                                     _%e170100170170%_
                                     _%hd170101170173%_
                                     _%tl170102170175%_
                                     _%e170103170178%_
                                     _%hd170104170181%_
                                     _%tl170105170183%_)
                                    (_%__kont175913175914%_))))
                            (_%__kont175913175914%_))))
                     (_%__match176332176333%_
                      (lambda (_%e170058170235%_
                               _%hd170059170238%_
                               _%tl170060170240%_
                               _%e170061170243%_
                               _%hd170062170246%_
                               _%tl170063170248%_
                               _%e170064170251%_
                               _%hd170065170254%_
                               _%tl170066170256%_
                               _%e170067170259%_
                               _%hd170068170262%_
                               _%tl170069170264%_
                               _%e170070170267%_
                               _%hd170071170270%_
                               _%tl170072170272%_
                               _%e170073170275%_
                               _%hd170074170278%_
                               _%tl170075170280%_
                               _%e170076170283%_
                               _%hd170077170286%_
                               _%tl170078170288%_)
                        (let ((_%L170291%_ _%hd170077170286%_)
                              (_%L170292%_ _%hd170068170262%_))
                          (if (and (let ((__tmp176551
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self169877%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L170291%_
                                      __tmp176551))
                                   (let ((__tmp176552
                                          (let ((__tmp176553
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%L170292%_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp176553))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp176552
                                      'gxc#!accessor::t)))
                              (_%__kont175909175910%_ _%L170291%_ _%L170292%_)
                              (_%__kont175913175914%_)))))
                     (_%__match176330176331%_
                      (lambda (_%e170058170235%_
                               _%hd170059170238%_
                               _%tl170060170240%_
                               _%e170061170243%_
                               _%hd170062170246%_
                               _%tl170063170248%_
                               _%e170064170251%_
                               _%hd170065170254%_
                               _%tl170066170256%_
                               _%e170067170259%_
                               _%hd170068170262%_
                               _%tl170069170264%_
                               _%e170070170267%_
                               _%hd170071170270%_
                               _%tl170072170272%_
                               _%e170073170275%_
                               _%hd170074170278%_
                               _%tl170075170280%_
                               _%e170076170283%_
                               _%hd170077170286%_
                               _%tl170078170288%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl170072170272%_))
                            (_%__match176332176333%_
                             _%e170058170235%_
                             _%hd170059170238%_
                             _%tl170060170240%_
                             _%e170061170243%_
                             _%hd170062170246%_
                             _%tl170063170248%_
                             _%e170064170251%_
                             _%hd170065170254%_
                             _%tl170066170256%_
                             _%e170067170259%_
                             _%hd170068170262%_
                             _%tl170069170264%_
                             _%e170070170267%_
                             _%hd170071170270%_
                             _%tl170072170272%_
                             _%e170073170275%_
                             _%hd170074170278%_
                             _%tl170075170280%_
                             _%e170076170283%_
                             _%hd170077170286%_
                             _%tl170078170288%_)
                            (_%__match176386176387%_
                             _%e170058170235%_
                             _%hd170059170238%_
                             _%tl170060170240%_
                             _%e170061170243%_
                             _%hd170062170246%_
                             _%tl170063170248%_
                             _%e170064170251%_
                             _%hd170065170254%_
                             _%tl170066170256%_
                             _%e170067170259%_
                             _%hd170068170262%_
                             _%tl170069170264%_
                             _%e170070170267%_
                             _%hd170071170270%_
                             _%tl170072170272%_
                             _%e170073170275%_
                             _%hd170074170278%_
                             _%tl170075170280%_
                             _%e170076170283%_
                             _%hd170077170286%_
                             _%tl170078170288%_))))
                     (_%__match176276176277%_
                      (lambda (_%e170023170331%_
                               _%hd170024170334%_
                               _%tl170025170336%_
                               _%e170026170339%_
                               _%hd170027170342%_
                               _%tl170028170344%_
                               _%e170029170347%_
                               _%hd170030170350%_
                               _%tl170031170352%_
                               _%e170032170355%_
                               _%hd170033170358%_
                               _%tl170034170360%_
                               _%e170035170363%_
                               _%hd170036170366%_
                               _%tl170037170368%_
                               _%e170038170371%_
                               _%hd170039170374%_
                               _%tl170040170376%_
                               _%e170041170379%_
                               _%hd170042170382%_
                               _%tl170043170384%_
                               _%e170044170387%_
                               _%hd170045170390%_
                               _%tl170046170392%_
                               _%e170047170395%_
                               _%hd170048170398%_
                               _%tl170049170400%_
                               _%e170050170403%_
                               _%hd170051170406%_
                               _%tl170052170408%_
                               _%e170053170411%_
                               _%hd170054170414%_
                               _%tl170055170416%_)
                        (let ((_%L170419%_ _%hd170054170414%_)
                              (_%L170420%_ _%hd170051170406%_)
                              (_%L170421%_ _%hd170042170382%_)
                              (_%L170422%_ _%hd170033170358%_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L170422%_
                                          'slot-set!))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L170422%_
                                          'unchecked-slot-set!)))
                                   (let ((__tmp176554
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self169877%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L170421%_
                                      __tmp176554)))
                              (_%__kont175907175908%_
                               _%L170419%_
                               _%L170420%_
                               _%L170421%_
                               _%L170422%_)
                              (_%__kont175913175914%_)))))
                     (_%__match176268176269%_
                      (lambda (_%e170023170331%_
                               _%hd170024170334%_
                               _%tl170025170336%_
                               _%e170026170339%_
                               _%hd170027170342%_
                               _%tl170028170344%_
                               _%e170029170347%_
                               _%hd170030170350%_
                               _%tl170031170352%_
                               _%e170032170355%_
                               _%hd170033170358%_
                               _%tl170034170360%_
                               _%e170035170363%_
                               _%hd170036170366%_
                               _%tl170037170368%_
                               _%e170038170371%_
                               _%hd170039170374%_
                               _%tl170040170376%_
                               _%e170041170379%_
                               _%hd170042170382%_
                               _%tl170043170384%_
                               _%e170044170387%_
                               _%hd170045170390%_
                               _%tl170046170392%_
                               _%e170047170395%_
                               _%hd170048170398%_
                               _%tl170049170400%_
                               _%e170050170403%_
                               _%hd170051170406%_
                               _%tl170052170408%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl170046170392%_))
                            (let ((_%e170053170411%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl170046170392%_))))
                              (let ((_%tl170055170416%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e170053170411%_)))
                                    (_%hd170054170414%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e170053170411%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl170055170416%_))
                                    (_%__match176276176277%_
                                     _%e170023170331%_
                                     _%hd170024170334%_
                                     _%tl170025170336%_
                                     _%e170026170339%_
                                     _%hd170027170342%_
                                     _%tl170028170344%_
                                     _%e170029170347%_
                                     _%hd170030170350%_
                                     _%tl170031170352%_
                                     _%e170032170355%_
                                     _%hd170033170358%_
                                     _%tl170034170360%_
                                     _%e170035170363%_
                                     _%hd170036170366%_
                                     _%tl170037170368%_
                                     _%e170038170371%_
                                     _%hd170039170374%_
                                     _%tl170040170376%_
                                     _%e170041170379%_
                                     _%hd170042170382%_
                                     _%tl170043170384%_
                                     _%e170044170387%_
                                     _%hd170045170390%_
                                     _%tl170046170392%_
                                     _%e170047170395%_
                                     _%hd170048170398%_
                                     _%tl170049170400%_
                                     _%e170050170403%_
                                     _%hd170051170406%_
                                     _%tl170052170408%_
                                     _%e170053170411%_
                                     _%hd170054170414%_
                                     _%tl170055170416%_)
                                    (_%__kont175913175914%_))))
                            (_%__match176392176393%_
                             _%e170023170331%_
                             _%hd170024170334%_
                             _%tl170025170336%_
                             _%e170026170339%_
                             _%hd170027170342%_
                             _%tl170028170344%_
                             _%e170029170347%_
                             _%hd170030170350%_
                             _%tl170031170352%_
                             _%e170032170355%_
                             _%hd170033170358%_
                             _%tl170034170360%_
                             _%e170035170363%_
                             _%hd170036170366%_
                             _%tl170037170368%_
                             _%e170038170371%_
                             _%hd170039170374%_
                             _%tl170040170376%_
                             _%e170041170379%_
                             _%hd170042170382%_
                             _%tl170043170384%_
                             _%e170044170387%_
                             _%hd170045170390%_
                             _%tl170046170392%_))))
                     (_%__match176190176191%_
                      (lambda (_%e169989170465%_
                               _%hd169990170468%_
                               _%tl169991170470%_
                               _%e169992170473%_
                               _%hd169993170476%_
                               _%tl169994170478%_
                               _%e169995170481%_
                               _%hd169996170484%_
                               _%tl169997170486%_
                               _%e169998170489%_
                               _%hd169999170492%_
                               _%tl170000170494%_
                               _%e170001170497%_
                               _%hd170002170500%_
                               _%tl170003170502%_
                               _%e170004170505%_
                               _%hd170005170508%_
                               _%tl170006170510%_
                               _%e170007170513%_
                               _%hd170008170516%_
                               _%tl170009170518%_
                               _%e170010170521%_
                               _%hd170011170524%_
                               _%tl170012170526%_
                               _%e170013170529%_
                               _%hd170014170532%_
                               _%tl170015170534%_
                               _%e170016170537%_
                               _%hd170017170540%_
                               _%tl170018170542%_)
                        (let ((_%L170545%_ _%hd170017170540%_)
                              (_%L170546%_ _%hd170008170516%_)
                              (_%L170547%_ _%hd169999170492%_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L170547%_
                                          'slot-ref))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L170547%_
                                          'unchecked-slot-ref)))
                                   (let ((__tmp176555
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self169877%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L170546%_
                                      __tmp176555)))
                              (_%__kont175905175906%_
                               _%L170545%_
                               _%L170546%_
                               _%L170547%_)
                              (_%__match176394176395%_
                               _%e169989170465%_
                               _%hd169990170468%_
                               _%tl169991170470%_
                               _%e169992170473%_
                               _%hd169993170476%_
                               _%tl169994170478%_
                               _%e169995170481%_
                               _%hd169996170484%_
                               _%tl169997170486%_
                               _%e169998170489%_
                               _%hd169999170492%_
                               _%tl170000170494%_
                               _%e170001170497%_
                               _%hd170002170500%_
                               _%tl170003170502%_
                               _%e170004170505%_
                               _%hd170005170508%_
                               _%tl170006170510%_
                               _%e170007170513%_
                               _%hd170008170516%_
                               _%tl170009170518%_
                               _%e170010170521%_
                               _%hd170011170524%_
                               _%tl170012170526%_)))))
                     (_%__match176188176189%_
                      (lambda (_%e169989170465%_
                               _%hd169990170468%_
                               _%tl169991170470%_
                               _%e169992170473%_
                               _%hd169993170476%_
                               _%tl169994170478%_
                               _%e169995170481%_
                               _%hd169996170484%_
                               _%tl169997170486%_
                               _%e169998170489%_
                               _%hd169999170492%_
                               _%tl170000170494%_
                               _%e170001170497%_
                               _%hd170002170500%_
                               _%tl170003170502%_
                               _%e170004170505%_
                               _%hd170005170508%_
                               _%tl170006170510%_
                               _%e170007170513%_
                               _%hd170008170516%_
                               _%tl170009170518%_
                               _%e170010170521%_
                               _%hd170011170524%_
                               _%tl170012170526%_
                               _%e170013170529%_
                               _%hd170014170532%_
                               _%tl170015170534%_
                               _%e170016170537%_
                               _%hd170017170540%_
                               _%tl170018170542%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl170012170526%_))
                            (_%__match176190176191%_
                             _%e169989170465%_
                             _%hd169990170468%_
                             _%tl169991170470%_
                             _%e169992170473%_
                             _%hd169993170476%_
                             _%tl169994170478%_
                             _%e169995170481%_
                             _%hd169996170484%_
                             _%tl169997170486%_
                             _%e169998170489%_
                             _%hd169999170492%_
                             _%tl170000170494%_
                             _%e170001170497%_
                             _%hd170002170500%_
                             _%tl170003170502%_
                             _%e170004170505%_
                             _%hd170005170508%_
                             _%tl170006170510%_
                             _%e170007170513%_
                             _%hd170008170516%_
                             _%tl170009170518%_
                             _%e170010170521%_
                             _%hd170011170524%_
                             _%tl170012170526%_
                             _%e170013170529%_
                             _%hd170014170532%_
                             _%tl170015170534%_
                             _%e170016170537%_
                             _%hd170017170540%_
                             _%tl170018170542%_)
                            (_%__match176268176269%_
                             _%e169989170465%_
                             _%hd169990170468%_
                             _%tl169991170470%_
                             _%e169992170473%_
                             _%hd169993170476%_
                             _%tl169994170478%_
                             _%e169995170481%_
                             _%hd169996170484%_
                             _%tl169997170486%_
                             _%e169998170489%_
                             _%hd169999170492%_
                             _%tl170000170494%_
                             _%e170001170497%_
                             _%hd170002170500%_
                             _%tl170003170502%_
                             _%e170004170505%_
                             _%hd170005170508%_
                             _%tl170006170510%_
                             _%e170007170513%_
                             _%hd170008170516%_
                             _%tl170009170518%_
                             _%e170010170521%_
                             _%hd170011170524%_
                             _%tl170012170526%_
                             _%e170013170529%_
                             _%hd170014170532%_
                             _%tl170015170534%_
                             _%e170016170537%_
                             _%hd170017170540%_
                             _%tl170018170542%_))))
                     (_%__match176178176179%_
                      (lambda (_%e169989170465%_
                               _%hd169990170468%_
                               _%tl169991170470%_
                               _%e169992170473%_
                               _%hd169993170476%_
                               _%tl169994170478%_
                               _%e169995170481%_
                               _%hd169996170484%_
                               _%tl169997170486%_
                               _%e169998170489%_
                               _%hd169999170492%_
                               _%tl170000170494%_
                               _%e170001170497%_
                               _%hd170002170500%_
                               _%tl170003170502%_
                               _%e170004170505%_
                               _%hd170005170508%_
                               _%tl170006170510%_
                               _%e170007170513%_
                               _%hd170008170516%_
                               _%tl170009170518%_
                               _%e170010170521%_
                               _%hd170011170524%_
                               _%tl170012170526%_
                               _%e170013170529%_
                               _%hd170014170532%_
                               _%tl170015170534%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#quote _%hd170014170532%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl170015170534%_))
                                (let ((_%e170016170537%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl170015170534%_))))
                                  (let ((_%tl170018170542%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e170016170537%_)))
                                        (_%hd170017170540%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e170016170537%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl170018170542%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl170012170526%_))
                                            (_%__match176190176191%_
                                             _%e169989170465%_
                                             _%hd169990170468%_
                                             _%tl169991170470%_
                                             _%e169992170473%_
                                             _%hd169993170476%_
                                             _%tl169994170478%_
                                             _%e169995170481%_
                                             _%hd169996170484%_
                                             _%tl169997170486%_
                                             _%e169998170489%_
                                             _%hd169999170492%_
                                             _%tl170000170494%_
                                             _%e170001170497%_
                                             _%hd170002170500%_
                                             _%tl170003170502%_
                                             _%e170004170505%_
                                             _%hd170005170508%_
                                             _%tl170006170510%_
                                             _%e170007170513%_
                                             _%hd170008170516%_
                                             _%tl170009170518%_
                                             _%e170010170521%_
                                             _%hd170011170524%_
                                             _%tl170012170526%_
                                             _%e170013170529%_
                                             _%hd170014170532%_
                                             _%tl170015170534%_
                                             _%e170016170537%_
                                             _%hd170017170540%_
                                             _%tl170018170542%_)
                                            (_%__match176268176269%_
                                             _%e169989170465%_
                                             _%hd169990170468%_
                                             _%tl169991170470%_
                                             _%e169992170473%_
                                             _%hd169993170476%_
                                             _%tl169994170478%_
                                             _%e169995170481%_
                                             _%hd169996170484%_
                                             _%tl169997170486%_
                                             _%e169998170489%_
                                             _%hd169999170492%_
                                             _%tl170000170494%_
                                             _%e170001170497%_
                                             _%hd170002170500%_
                                             _%tl170003170502%_
                                             _%e170004170505%_
                                             _%hd170005170508%_
                                             _%tl170006170510%_
                                             _%e170007170513%_
                                             _%hd170008170516%_
                                             _%tl170009170518%_
                                             _%e170010170521%_
                                             _%hd170011170524%_
                                             _%tl170012170526%_
                                             _%e170013170529%_
                                             _%hd170014170532%_
                                             _%tl170015170534%_
                                             _%e170016170537%_
                                             _%hd170017170540%_
                                             _%tl170018170542%_))
                                        (_%__match176392176393%_
                                         _%e169989170465%_
                                         _%hd169990170468%_
                                         _%tl169991170470%_
                                         _%e169992170473%_
                                         _%hd169993170476%_
                                         _%tl169994170478%_
                                         _%e169995170481%_
                                         _%hd169996170484%_
                                         _%tl169997170486%_
                                         _%e169998170489%_
                                         _%hd169999170492%_
                                         _%tl170000170494%_
                                         _%e170001170497%_
                                         _%hd170002170500%_
                                         _%tl170003170502%_
                                         _%e170004170505%_
                                         _%hd170005170508%_
                                         _%tl170006170510%_
                                         _%e170007170513%_
                                         _%hd170008170516%_
                                         _%tl170009170518%_
                                         _%e170010170521%_
                                         _%hd170011170524%_
                                         _%tl170012170526%_))))
                                (_%__match176392176393%_
                                 _%e169989170465%_
                                 _%hd169990170468%_
                                 _%tl169991170470%_
                                 _%e169992170473%_
                                 _%hd169993170476%_
                                 _%tl169994170478%_
                                 _%e169995170481%_
                                 _%hd169996170484%_
                                 _%tl169997170486%_
                                 _%e169998170489%_
                                 _%hd169999170492%_
                                 _%tl170000170494%_
                                 _%e170001170497%_
                                 _%hd170002170500%_
                                 _%tl170003170502%_
                                 _%e170004170505%_
                                 _%hd170005170508%_
                                 _%tl170006170510%_
                                 _%e170007170513%_
                                 _%hd170008170516%_
                                 _%tl170009170518%_
                                 _%e170010170521%_
                                 _%hd170011170524%_
                                 _%tl170012170526%_))
                            (_%__match176392176393%_
                             _%e169989170465%_
                             _%hd169990170468%_
                             _%tl169991170470%_
                             _%e169992170473%_
                             _%hd169993170476%_
                             _%tl169994170478%_
                             _%e169995170481%_
                             _%hd169996170484%_
                             _%tl169997170486%_
                             _%e169998170489%_
                             _%hd169999170492%_
                             _%tl170000170494%_
                             _%e170001170497%_
                             _%hd170002170500%_
                             _%tl170003170502%_
                             _%e170004170505%_
                             _%hd170005170508%_
                             _%tl170006170510%_
                             _%e170007170513%_
                             _%hd170008170516%_
                             _%tl170009170518%_
                             _%e170010170521%_
                             _%hd170011170524%_
                             _%tl170012170526%_))))
                     (_%__match176110176111%_
                      (lambda (_%e169938170586%_
                               _%hd169939170589%_
                               _%tl169940170591%_
                               _%e169941170594%_
                               _%hd169942170597%_
                               _%tl169943170599%_
                               _%e169944170602%_
                               _%hd169945170605%_
                               _%tl169946170607%_
                               _%e169947170610%_
                               _%hd169948170613%_
                               _%tl169949170615%_
                               _%e169950170618%_
                               _%hd169951170621%_
                               _%tl169952170623%_
                               _%e169953170626%_
                               _%hd169954170629%_
                               _%tl169955170631%_
                               _%e169956170634%_
                               _%hd169957170637%_
                               _%tl169958170639%_
                               _%e169959170642%_
                               _%hd169960170645%_
                               _%tl169961170647%_
                               _%e169962170650%_
                               _%hd169963170653%_
                               _%tl169964170655%_
                               _%e169965170658%_
                               _%hd169966170661%_
                               _%tl169967170663%_
                               _%e169968170666%_
                               _%hd169969170669%_
                               _%tl169970170671%_
                               _%e169971170674%_
                               _%hd169972170677%_
                               _%tl169973170679%_
                               _%e169974170682%_
                               _%hd169975170685%_
                               _%tl169976170687%_
                               _%__splice175903175904%_
                               _%target169977170690%_
                               _%tl169979170692%_)
                        (letrec ((_%loop169980170695%_
                                  (lambda (_%hd169978170698%_
                                           _%args169984170700%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd169978170698%_))
                                        (let ((_%e169981170703%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd169978170698%_))))
                                          (let ((_%lp-tl169983170708%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e169981170703%_)))
                                                (_%lp-hd169982170706%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e169981170703%_))))
                                            (_%loop169980170695%_
                                             _%lp-tl169983170708%_
                                             (cons _%lp-hd169982170706%_
                                                   _%args169984170700%_))))
                                        (let ((_%args169985170711%_
                                               (reverse _%args169984170700%_)))
                                          (let ((_%L170714%_
                                                 _%args169985170711%_)
                                                (_%L170715%_
                                                 _%hd169975170685%_)
                                                (_%L170716%_
                                                 _%hd169966170661%_)
                                                (_%L170717%_
                                                 _%hd169957170637%_)
                                                (_%L170718%_
                                                 _%hd169948170613%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%L170718%_
                                                        'apply))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%L170717%_
                                                        'call-method))
                                                     (let ((__tmp176556
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self169877%_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _%L170716%_
                                                        __tmp176556)))
                                                (_%__kont175901175902%_
                                                 _%L170714%_
                                                 _%L170715%_
                                                 _%L170716%_
                                                 _%L170717%_
                                                 _%L170718%_)
                                                (_%__kont175913175914%_))))))))
                          (_%loop169980170695%_ _%target169977170690%_ '()))))
                     (_%__match176068176069%_
                      (lambda (_%e169938170586%_
                               _%hd169939170589%_
                               _%tl169940170591%_
                               _%e169941170594%_
                               _%hd169942170597%_
                               _%tl169943170599%_
                               _%e169944170602%_
                               _%hd169945170605%_
                               _%tl169946170607%_
                               _%e169947170610%_
                               _%hd169948170613%_
                               _%tl169949170615%_
                               _%e169950170618%_
                               _%hd169951170621%_
                               _%tl169952170623%_
                               _%e169953170626%_
                               _%hd169954170629%_
                               _%tl169955170631%_
                               _%e169956170634%_
                               _%hd169957170637%_
                               _%tl169958170639%_
                               _%e169959170642%_
                               _%hd169960170645%_
                               _%tl169961170647%_
                               _%e169962170650%_
                               _%hd169963170653%_
                               _%tl169964170655%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _%hd169963170653%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl169964170655%_))
                                (let ((_%e169965170658%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl169964170655%_))))
                                  (let ((_%tl169967170663%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e169965170658%_)))
                                        (_%hd169966170661%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e169965170658%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl169967170663%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl169961170647%_))
                                            (let ((_%e169968170666%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl169961170647%_))))
                                              (let ((_%tl169970170671%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e169968170666%_)))
                                                    (_%hd169969170669%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e169968170666%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%hd169969170669%_))
                                                    (let ((_%e169971170674%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd169969170669%_))))
                                                      (let ((_%tl169973170679%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e169971170674%_)))
                    (_%hd169972170677%_
                     (let () (declare (not safe)) (##car _%e169971170674%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _%hd169972170677%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _%hd169972170677%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl169973170679%_))
                            (let ((_%e169974170682%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl169973170679%_))))
                              (let ((_%tl169976170687%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e169974170682%_)))
                                    (_%hd169975170685%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e169974170682%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl169976170687%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl169970170671%_))
                                        (let ((_%__splice175903175904%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl169970170671%_
                                                  '0))))
                                          (let ((_%tl169979170692%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice175903175904%_
                                                    '1)))
                                                (_%target169977170690%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice175903175904%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl169979170692%_))
                                                (_%__match176110176111%_
                                                 _%e169938170586%_
                                                 _%hd169939170589%_
                                                 _%tl169940170591%_
                                                 _%e169941170594%_
                                                 _%hd169942170597%_
                                                 _%tl169943170599%_
                                                 _%e169944170602%_
                                                 _%hd169945170605%_
                                                 _%tl169946170607%_
                                                 _%e169947170610%_
                                                 _%hd169948170613%_
                                                 _%tl169949170615%_
                                                 _%e169950170618%_
                                                 _%hd169951170621%_
                                                 _%tl169952170623%_
                                                 _%e169953170626%_
                                                 _%hd169954170629%_
                                                 _%tl169955170631%_
                                                 _%e169956170634%_
                                                 _%hd169957170637%_
                                                 _%tl169958170639%_
                                                 _%e169959170642%_
                                                 _%hd169960170645%_
                                                 _%tl169961170647%_
                                                 _%e169962170650%_
                                                 _%hd169963170653%_
                                                 _%tl169964170655%_
                                                 _%e169965170658%_
                                                 _%hd169966170661%_
                                                 _%tl169967170663%_
                                                 _%e169968170666%_
                                                 _%hd169969170669%_
                                                 _%tl169970170671%_
                                                 _%e169971170674%_
                                                 _%hd169972170677%_
                                                 _%tl169973170679%_
                                                 _%e169974170682%_
                                                 _%hd169975170685%_
                                                 _%tl169976170687%_
                                                 _%__splice175903175904%_
                                                 _%target169977170690%_
                                                 _%tl169979170692%_)
                                                (_%__kont175913175914%_))))
                                        (_%__kont175913175914%_))
                                    (_%__kont175913175914%_))))
                            (_%__kont175913175914%_))
                        (_%__kont175913175914%_))
                    (_%__kont175913175914%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont175913175914%_))))
                                            (_%__match176392176393%_
                                             _%e169938170586%_
                                             _%hd169939170589%_
                                             _%tl169940170591%_
                                             _%e169941170594%_
                                             _%hd169942170597%_
                                             _%tl169943170599%_
                                             _%e169944170602%_
                                             _%hd169945170605%_
                                             _%tl169946170607%_
                                             _%e169947170610%_
                                             _%hd169948170613%_
                                             _%tl169949170615%_
                                             _%e169950170618%_
                                             _%hd169951170621%_
                                             _%tl169952170623%_
                                             _%e169953170626%_
                                             _%hd169954170629%_
                                             _%tl169955170631%_
                                             _%e169956170634%_
                                             _%hd169957170637%_
                                             _%tl169958170639%_
                                             _%e169959170642%_
                                             _%hd169960170645%_
                                             _%tl169961170647%_))
                                        (_%__match176392176393%_
                                         _%e169938170586%_
                                         _%hd169939170589%_
                                         _%tl169940170591%_
                                         _%e169941170594%_
                                         _%hd169942170597%_
                                         _%tl169943170599%_
                                         _%e169944170602%_
                                         _%hd169945170605%_
                                         _%tl169946170607%_
                                         _%e169947170610%_
                                         _%hd169948170613%_
                                         _%tl169949170615%_
                                         _%e169950170618%_
                                         _%hd169951170621%_
                                         _%tl169952170623%_
                                         _%e169953170626%_
                                         _%hd169954170629%_
                                         _%tl169955170631%_
                                         _%e169956170634%_
                                         _%hd169957170637%_
                                         _%tl169958170639%_
                                         _%e169959170642%_
                                         _%hd169960170645%_
                                         _%tl169961170647%_))))
                                (_%__match176392176393%_
                                 _%e169938170586%_
                                 _%hd169939170589%_
                                 _%tl169940170591%_
                                 _%e169941170594%_
                                 _%hd169942170597%_
                                 _%tl169943170599%_
                                 _%e169944170602%_
                                 _%hd169945170605%_
                                 _%tl169946170607%_
                                 _%e169947170610%_
                                 _%hd169948170613%_
                                 _%tl169949170615%_
                                 _%e169950170618%_
                                 _%hd169951170621%_
                                 _%tl169952170623%_
                                 _%e169953170626%_
                                 _%hd169954170629%_
                                 _%tl169955170631%_
                                 _%e169956170634%_
                                 _%hd169957170637%_
                                 _%tl169958170639%_
                                 _%e169959170642%_
                                 _%hd169960170645%_
                                 _%tl169961170647%_))
                            (_%__match176178176179%_
                             _%e169938170586%_
                             _%hd169939170589%_
                             _%tl169940170591%_
                             _%e169941170594%_
                             _%hd169942170597%_
                             _%tl169943170599%_
                             _%e169944170602%_
                             _%hd169945170605%_
                             _%tl169946170607%_
                             _%e169947170610%_
                             _%hd169948170613%_
                             _%tl169949170615%_
                             _%e169950170618%_
                             _%hd169951170621%_
                             _%tl169952170623%_
                             _%e169953170626%_
                             _%hd169954170629%_
                             _%tl169955170631%_
                             _%e169956170634%_
                             _%hd169957170637%_
                             _%tl169958170639%_
                             _%e169959170642%_
                             _%hd169960170645%_
                             _%tl169961170647%_
                             _%e169962170650%_
                             _%hd169963170653%_
                             _%tl169964170655%_))))
                     (_%__match176000176001%_
                      (lambda (_%e169894170778%_
                               _%hd169895170781%_
                               _%tl169896170783%_
                               _%e169897170786%_
                               _%hd169898170789%_
                               _%tl169899170791%_
                               _%e169900170794%_
                               _%hd169901170797%_
                               _%tl169902170799%_
                               _%e169903170802%_
                               _%hd169904170805%_
                               _%tl169905170807%_
                               _%e169906170810%_
                               _%hd169907170813%_
                               _%tl169908170815%_
                               _%e169909170818%_
                               _%hd169910170821%_
                               _%tl169911170823%_
                               _%e169912170826%_
                               _%hd169913170829%_
                               _%tl169914170831%_
                               _%e169915170834%_
                               _%hd169916170837%_
                               _%tl169917170839%_
                               _%e169918170842%_
                               _%hd169919170845%_
                               _%tl169920170847%_
                               _%e169921170850%_
                               _%hd169922170853%_
                               _%tl169923170855%_
                               _%__splice175899175900%_
                               _%target169924170858%_
                               _%tl169926170860%_)
                        (letrec ((_%loop169927170863%_
                                  (lambda (_%hd169925170866%_
                                           _%args169931170868%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd169925170866%_))
                                        (let ((_%e169928170871%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd169925170866%_))))
                                          (let ((_%lp-tl169930170876%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e169928170871%_)))
                                                (_%lp-hd169929170874%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e169928170871%_))))
                                            (_%loop169927170863%_
                                             _%lp-tl169930170876%_
                                             (cons _%lp-hd169929170874%_
                                                   _%args169931170868%_))))
                                        (let ((_%args169932170879%_
                                               (reverse _%args169931170868%_)))
                                          (let ((_%L170882%_
                                                 _%args169932170879%_)
                                                (_%L170883%_
                                                 _%hd169922170853%_)
                                                (_%L170884%_
                                                 _%hd169913170829%_)
                                                (_%L170885%_
                                                 _%hd169904170805%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%L170885%_
                                                        'call-method))
                                                     (let ((__tmp176557
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self169877%_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _%L170884%_
                                                        __tmp176557)))
                                                (_%__kont175897175898%_
                                                 _%L170882%_
                                                 _%L170883%_
                                                 _%L170884%_
                                                 _%L170885%_)
                                                (_%__match176188176189%_
                                                 _%e169894170778%_
                                                 _%hd169895170781%_
                                                 _%tl169896170783%_
                                                 _%e169897170786%_
                                                 _%hd169898170789%_
                                                 _%tl169899170791%_
                                                 _%e169900170794%_
                                                 _%hd169901170797%_
                                                 _%tl169902170799%_
                                                 _%e169903170802%_
                                                 _%hd169904170805%_
                                                 _%tl169905170807%_
                                                 _%e169906170810%_
                                                 _%hd169907170813%_
                                                 _%tl169908170815%_
                                                 _%e169909170818%_
                                                 _%hd169910170821%_
                                                 _%tl169911170823%_
                                                 _%e169912170826%_
                                                 _%hd169913170829%_
                                                 _%tl169914170831%_
                                                 _%e169915170834%_
                                                 _%hd169916170837%_
                                                 _%tl169917170839%_
                                                 _%e169918170842%_
                                                 _%hd169919170845%_
                                                 _%tl169920170847%_
                                                 _%e169921170850%_
                                                 _%hd169922170853%_
                                                 _%tl169923170855%_))))))))
                          (_%loop169927170863%_ _%target169924170858%_ '())))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx175895175896%_))
                    (let ((_%e169894170778%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx175895175896%_))))
                      (let ((_%tl169896170783%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e169894170778%_)))
                            (_%hd169895170781%_
                             (let ()
                               (declare (not safe))
                               (##car _%e169894170778%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl169896170783%_))
                            (let ((_%e169897170786%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl169896170783%_))))
                              (let ((_%tl169899170791%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e169897170786%_)))
                                    (_%hd169898170789%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e169897170786%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd169898170789%_))
                                    (let ((_%e169900170794%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd169898170789%_))))
                                      (let ((_%tl169902170799%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e169900170794%_)))
                                            (_%hd169901170797%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e169900170794%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _%hd169901170797%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _%hd169901170797%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl169902170799%_))
                                                    (let ((_%e169903170802%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl169902170799%_))))
                                                      (let ((_%tl169905170807%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e169903170802%_)))
                    (_%hd169904170805%_
                     (let () (declare (not safe)) (##car _%e169903170802%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl169905170807%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl169899170791%_))
                        (let ((_%e169906170810%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl169899170791%_))))
                          (let ((_%tl169908170815%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e169906170810%_)))
                                (_%hd169907170813%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e169906170810%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd169907170813%_))
                                (let ((_%e169909170818%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd169907170813%_))))
                                  (let ((_%tl169911170823%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e169909170818%_)))
                                        (_%hd169910170821%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e169909170818%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd169910170821%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _%hd169910170821%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl169911170823%_))
                                                (let ((_%e169912170826%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl169911170823%_))))
                                                  (let ((_%tl169914170831%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e169912170826%_)))
                                                        (_%hd169913170829%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e169912170826%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl169914170831%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl169908170815%_))
                                                            (let ((_%e169915170834%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl169908170815%_))))
                      (let ((_%tl169917170839%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e169915170834%_)))
                            (_%hd169916170837%_
                             (let ()
                               (declare (not safe))
                               (##car _%e169915170834%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd169916170837%_))
                            (let ((_%e169918170842%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd169916170837%_))))
                              (let ((_%tl169920170847%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e169918170842%_)))
                                    (_%hd169919170845%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e169918170842%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd169919170845%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd169919170845%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl169920170847%_))
                                            (let ((_%e169921170850%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl169920170847%_))))
                                              (let ((_%tl169923170855%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e169921170850%_)))
                                                    (_%hd169922170853%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e169921170850%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl169923170855%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair/null?
                                                           _%tl169917170839%_))
                                                        (let ((_%__splice175899175900%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-split-splice _%tl169917170839%_ '0))))
                  (let ((_%tl169926170860%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice175899175900%_ '1)))
                        (_%target169924170858%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice175899175900%_ '0))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl169926170860%_))
                        (_%__match176000176001%_
                         _%e169894170778%_
                         _%hd169895170781%_
                         _%tl169896170783%_
                         _%e169897170786%_
                         _%hd169898170789%_
                         _%tl169899170791%_
                         _%e169900170794%_
                         _%hd169901170797%_
                         _%tl169902170799%_
                         _%e169903170802%_
                         _%hd169904170805%_
                         _%tl169905170807%_
                         _%e169906170810%_
                         _%hd169907170813%_
                         _%tl169908170815%_
                         _%e169909170818%_
                         _%hd169910170821%_
                         _%tl169911170823%_
                         _%e169912170826%_
                         _%hd169913170829%_
                         _%tl169914170831%_
                         _%e169915170834%_
                         _%hd169916170837%_
                         _%tl169917170839%_
                         _%e169918170842%_
                         _%hd169919170845%_
                         _%tl169920170847%_
                         _%e169921170850%_
                         _%hd169922170853%_
                         _%tl169923170855%_
                         _%__splice175899175900%_
                         _%target169924170858%_
                         _%tl169926170860%_)
                        (_%__match176188176189%_
                         _%e169894170778%_
                         _%hd169895170781%_
                         _%tl169896170783%_
                         _%e169897170786%_
                         _%hd169898170789%_
                         _%tl169899170791%_
                         _%e169900170794%_
                         _%hd169901170797%_
                         _%tl169902170799%_
                         _%e169903170802%_
                         _%hd169904170805%_
                         _%tl169905170807%_
                         _%e169906170810%_
                         _%hd169907170813%_
                         _%tl169908170815%_
                         _%e169909170818%_
                         _%hd169910170821%_
                         _%tl169911170823%_
                         _%e169912170826%_
                         _%hd169913170829%_
                         _%tl169914170831%_
                         _%e169915170834%_
                         _%hd169916170837%_
                         _%tl169917170839%_
                         _%e169918170842%_
                         _%hd169919170845%_
                         _%tl169920170847%_
                         _%e169921170850%_
                         _%hd169922170853%_
                         _%tl169923170855%_))))
                (_%__match176188176189%_
                 _%e169894170778%_
                 _%hd169895170781%_
                 _%tl169896170783%_
                 _%e169897170786%_
                 _%hd169898170789%_
                 _%tl169899170791%_
                 _%e169900170794%_
                 _%hd169901170797%_
                 _%tl169902170799%_
                 _%e169903170802%_
                 _%hd169904170805%_
                 _%tl169905170807%_
                 _%e169906170810%_
                 _%hd169907170813%_
                 _%tl169908170815%_
                 _%e169909170818%_
                 _%hd169910170821%_
                 _%tl169911170823%_
                 _%e169912170826%_
                 _%hd169913170829%_
                 _%tl169914170831%_
                 _%e169915170834%_
                 _%hd169916170837%_
                 _%tl169917170839%_
                 _%e169918170842%_
                 _%hd169919170845%_
                 _%tl169920170847%_
                 _%e169921170850%_
                 _%hd169922170853%_
                 _%tl169923170855%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match176392176393%_
                                                     _%e169894170778%_
                                                     _%hd169895170781%_
                                                     _%tl169896170783%_
                                                     _%e169897170786%_
                                                     _%hd169898170789%_
                                                     _%tl169899170791%_
                                                     _%e169900170794%_
                                                     _%hd169901170797%_
                                                     _%tl169902170799%_
                                                     _%e169903170802%_
                                                     _%hd169904170805%_
                                                     _%tl169905170807%_
                                                     _%e169906170810%_
                                                     _%hd169907170813%_
                                                     _%tl169908170815%_
                                                     _%e169909170818%_
                                                     _%hd169910170821%_
                                                     _%tl169911170823%_
                                                     _%e169912170826%_
                                                     _%hd169913170829%_
                                                     _%tl169914170831%_
                                                     _%e169915170834%_
                                                     _%hd169916170837%_
                                                     _%tl169917170839%_))))
                                            (_%__match176392176393%_
                                             _%e169894170778%_
                                             _%hd169895170781%_
                                             _%tl169896170783%_
                                             _%e169897170786%_
                                             _%hd169898170789%_
                                             _%tl169899170791%_
                                             _%e169900170794%_
                                             _%hd169901170797%_
                                             _%tl169902170799%_
                                             _%e169903170802%_
                                             _%hd169904170805%_
                                             _%tl169905170807%_
                                             _%e169906170810%_
                                             _%hd169907170813%_
                                             _%tl169908170815%_
                                             _%e169909170818%_
                                             _%hd169910170821%_
                                             _%tl169911170823%_
                                             _%e169912170826%_
                                             _%hd169913170829%_
                                             _%tl169914170831%_
                                             _%e169915170834%_
                                             _%hd169916170837%_
                                             _%tl169917170839%_))
                                        (_%__match176068176069%_
                                         _%e169894170778%_
                                         _%hd169895170781%_
                                         _%tl169896170783%_
                                         _%e169897170786%_
                                         _%hd169898170789%_
                                         _%tl169899170791%_
                                         _%e169900170794%_
                                         _%hd169901170797%_
                                         _%tl169902170799%_
                                         _%e169903170802%_
                                         _%hd169904170805%_
                                         _%tl169905170807%_
                                         _%e169906170810%_
                                         _%hd169907170813%_
                                         _%tl169908170815%_
                                         _%e169909170818%_
                                         _%hd169910170821%_
                                         _%tl169911170823%_
                                         _%e169912170826%_
                                         _%hd169913170829%_
                                         _%tl169914170831%_
                                         _%e169915170834%_
                                         _%hd169916170837%_
                                         _%tl169917170839%_
                                         _%e169918170842%_
                                         _%hd169919170845%_
                                         _%tl169920170847%_))
                                    (_%__match176392176393%_
                                     _%e169894170778%_
                                     _%hd169895170781%_
                                     _%tl169896170783%_
                                     _%e169897170786%_
                                     _%hd169898170789%_
                                     _%tl169899170791%_
                                     _%e169900170794%_
                                     _%hd169901170797%_
                                     _%tl169902170799%_
                                     _%e169903170802%_
                                     _%hd169904170805%_
                                     _%tl169905170807%_
                                     _%e169906170810%_
                                     _%hd169907170813%_
                                     _%tl169908170815%_
                                     _%e169909170818%_
                                     _%hd169910170821%_
                                     _%tl169911170823%_
                                     _%e169912170826%_
                                     _%hd169913170829%_
                                     _%tl169914170831%_
                                     _%e169915170834%_
                                     _%hd169916170837%_
                                     _%tl169917170839%_))))
                            (_%__match176392176393%_
                             _%e169894170778%_
                             _%hd169895170781%_
                             _%tl169896170783%_
                             _%e169897170786%_
                             _%hd169898170789%_
                             _%tl169899170791%_
                             _%e169900170794%_
                             _%hd169901170797%_
                             _%tl169902170799%_
                             _%e169903170802%_
                             _%hd169904170805%_
                             _%tl169905170807%_
                             _%e169906170810%_
                             _%hd169907170813%_
                             _%tl169908170815%_
                             _%e169909170818%_
                             _%hd169910170821%_
                             _%tl169911170823%_
                             _%e169912170826%_
                             _%hd169913170829%_
                             _%tl169914170831%_
                             _%e169915170834%_
                             _%hd169916170837%_
                             _%tl169917170839%_))))
                    (_%__match176330176331%_
                     _%e169894170778%_
                     _%hd169895170781%_
                     _%tl169896170783%_
                     _%e169897170786%_
                     _%hd169898170789%_
                     _%tl169899170791%_
                     _%e169900170794%_
                     _%hd169901170797%_
                     _%tl169902170799%_
                     _%e169903170802%_
                     _%hd169904170805%_
                     _%tl169905170807%_
                     _%e169906170810%_
                     _%hd169907170813%_
                     _%tl169908170815%_
                     _%e169909170818%_
                     _%hd169910170821%_
                     _%tl169911170823%_
                     _%e169912170826%_
                     _%hd169913170829%_
                     _%tl169914170831%_))
                (_%__kont175913175914%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont175913175914%_))
                                            (_%__kont175913175914%_))
                                        (_%__kont175913175914%_))))
                                (_%__kont175913175914%_))))
                        (_%__kont175913175914%_))
                    (_%__kont175913175914%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont175913175914%_))
                                                (_%__kont175913175914%_))
                                            (_%__kont175913175914%_))))
                                    (_%__kont175913175914%_))))
                            (_%__kont175913175914%_))))
                    (_%__kont175913175914%_))))))))))
