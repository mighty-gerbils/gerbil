(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-spec::timestamp 1713453203)
  (begin
    (define gxc#::generate-method-specializers::t
      (let ((__tmp176679 (list gxc#::identity::t))
            (__tmp176678 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-method-specializers::t
         '::generate-method-specializers
         __tmp176679
         '()
         __tmp176678
         '#f)))
    (define gxc#::generate-method-specializers?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-method-specializers::t)))
    (define gxc#make-::generate-method-specializers
      (lambda _%$args175476%_
        (apply make-instance
               gxc#::generate-method-specializers::t
               _%$args175476%_)))
    (define gxc#::generate-method-specializers-bind-methods!
      (let ((__tmp176680
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
        (__make-promise __tmp176680)))
    (define gxc#apply-generate-method-specializers
      (lambda (_%stx175468%_)
        (force gxc#::generate-method-specializers-bind-methods!)
        (let* ((_%self175471%_
                (let ((__obj176671
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-method-specializers::t))))
                  __obj176671))
               (__tmp176681
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self175471%_ _%stx175468%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp176681
           gxc#current-compile-method
           _%self175471%_))))
    (define gxc#::extract-receiver::t
      (let ((__tmp176683 (list gxc#::false::t))
            (__tmp176682 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::extract-receiver::t
         '::extract-receiver
         __tmp176683
         '()
         __tmp176682
         '#f)))
    (define gxc#::extract-receiver?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::extract-receiver::t)))
    (define gxc#make-::extract-receiver
      (lambda _%$args175465%_
        (apply make-instance gxc#::extract-receiver::t _%$args175465%_)))
    (define gxc#::extract-receiver-bind-methods!
      (let ((__tmp176684
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
        (__make-promise __tmp176684)))
    (define gxc#apply-extract-receiver
      (lambda (_%stx175457%_)
        (force gxc#::extract-receiver-bind-methods!)
        (let* ((_%self175460%_
                (let ((__obj176673
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::extract-receiver::t))))
                  __obj176673))
               (__tmp176685
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self175460%_ _%stx175457%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp176685
           gxc#current-compile-method
           _%self175460%_))))
    (define gxc#::collect-object-refs::t
      (let ((__tmp176687 (list gxc#::void::t))
            (__tmp176686 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-object-refs::t
         '::collect-object-refs
         __tmp176687
         '(receiver methods slots)
         __tmp176686
         '#f)))
    (define gxc#::collect-object-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-object-refs::t)))
    (define gxc#make-::collect-object-refs
      (lambda _%$args175454%_
        (apply make-instance gxc#::collect-object-refs::t _%$args175454%_)))
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
      (let ((__tmp176688
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
        (__make-promise __tmp176688)))
    (define gxc#apply-collect-object-refs__%
      (lambda (_%@@keywords175420%_
               _%receiver175415175421%_
               _%methods175416175423%_
               _%slots175417175425%_
               _%stx175427%_)
        (let* ((_%receiver175430%_
                (if (eq? _%receiver175415175421%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _%receiver175415175421%_))
               (_%methods175432%_
                (if (eq? _%methods175416175423%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _%methods175416175423%_))
               (_%slots175434%_
                (if (eq? _%slots175417175425%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _%slots175417175425%_)))
          (force gxc#::collect-object-refs-bind-methods!)
          (let* ((_%self175436%_
                  (let ((__obj176675
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
                       __obj176675
                       _%receiver175430%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj176675
                       _%methods175432%_
                       '2
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj176675
                       _%slots175434%_
                       '3
                       '#f
                       '#f))
                    __obj176675))
                 (__tmp176689
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self175436%_ _%stx175427%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp176689
             gxc#current-compile-method
             _%self175436%_)))))
    (define gxc#apply-collect-object-refs__@
      (lambda (_%@@keywords175443%_ . _%args175444%_)
        (apply gxc#apply-collect-object-refs__%
               _%@@keywords175443%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords175443%_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords175443%_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords175443%_
                  'slots:
                  absent-value))
               _%args175444%_)))
    (define gxc#apply-collect-object-refs
      (lambda _%args175418175450%_
        (apply keyword-dispatch
               '#(receiver: slots: methods:)
               gxc#apply-collect-object-refs__@
               _%args175418175450%_)))
    (define gxc#::subst-object-refs::t
      (let ((__tmp176691 (list gxc#::basic-xform-expression::t))
            (__tmp176690 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::subst-object-refs::t
         '::subst-object-refs
         __tmp176691
         '(receiver klass methods slots)
         __tmp176690
         '#f)))
    (define gxc#::subst-object-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::subst-object-refs::t)))
    (define gxc#make-::subst-object-refs
      (lambda _%$args175411%_
        (apply make-instance gxc#::subst-object-refs::t _%$args175411%_)))
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
      (let ((__tmp176692
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
        (__make-promise __tmp176692)))
    (define gxc#apply-subst-object-refs__%
      (lambda (_%@@keywords175373%_
               _%receiver175367175374%_
               _%klass175368175376%_
               _%methods175369175378%_
               _%slots175370175380%_
               _%stx175382%_)
        (let* ((_%receiver175385%_
                (if (eq? _%receiver175367175374%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _%receiver175367175374%_))
               (_%klass175387%_
                (if (eq? _%klass175368175376%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'klass:))
                    _%klass175368175376%_))
               (_%methods175389%_
                (if (eq? _%methods175369175378%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _%methods175369175378%_))
               (_%slots175391%_
                (if (eq? _%slots175370175380%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _%slots175370175380%_)))
          (force gxc#::subst-object-refs-bind-methods!)
          (let* ((_%self175393%_
                  (let ((__obj176677
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
                       __obj176677
                       _%receiver175385%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj176677
                       _%klass175387%_
                       '2
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj176677
                       _%methods175389%_
                       '3
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj176677
                       _%slots175391%_
                       '4
                       '#f
                       '#f))
                    __obj176677))
                 (__tmp176693
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self175393%_ _%stx175382%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp176693
             gxc#current-compile-method
             _%self175393%_)))))
    (define gxc#apply-subst-object-refs__@
      (lambda (_%@@keywords175400%_ . _%args175401%_)
        (apply gxc#apply-subst-object-refs__%
               _%@@keywords175400%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords175400%_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords175400%_
                  'klass:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords175400%_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords175400%_
                  'slots:
                  absent-value))
               _%args175401%_)))
    (define gxc#apply-subst-object-refs
      (lambda _%args175371175407%_
        (apply keyword-dispatch
               '#(receiver: methods: slots: klass:)
               gxc#apply-subst-object-refs__@
               _%args175371175407%_)))
    (define gxc#generate-method-specializers-define-values%
      (lambda (_%self172482%_ _%stx172483%_)
        (letrec ((_%generate-method-bind172485%_
                  (lambda (_%$klass175359%_
                           _%$method-table175360%_
                           _%id175361%_
                           _%$id175362%_)
                    (let ((_%$tmp175364%_
                           (let ((__tmp176694
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__method))))
                             (declare (not safe))
                             (make-symbol__0 __tmp176694))))
                      (cons (cons _%$id175362%_ '())
                            (cons (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons 'make-promise '()))
                                              (cons (cons '%#lambda
                                                          (cons '()
                                                                (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons (cons (cons _%$tmp175364%_ '())
                                                      (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#ref (cons 'symbolic-table-ref '()))
                                (cons (cons '%#ref
                                            (cons _%$method-table175360%_ '()))
                                      (cons (cons '%#quote
                                                  (cons _%id175361%_ '()))
                                            (cons (cons '%#quote
                                                        (cons '#f '()))
                                                  '())))))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())
                                          (cons (cons '%#if
                                                      (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%$tmp175364%_ '()))
                    (cons (cons '%#ref (cons _%$tmp175364%_ '()))
                          (cons (cons '%#call
                                      (cons (cons '%#ref (cons 'error '()))
                                            (cons (cons '%#quote
                                                        (cons '"Missing method"
                                                              '()))
                                                  (cons (cons '%#quote
                                                              (cons _%id175361%_
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
                 (_%generate-slot-bind172486%_
                  (lambda (_%$klass175353%_ _%id175354%_ _%$id175355%_)
                    (let ((_%$tmp175357%_
                           (let ((__tmp176695
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__slot))))
                             (declare (not safe))
                             (make-symbol__0 __tmp176695))))
                      (cons (cons _%$id175355%_ '())
                            (cons (cons '%#let-values
                                        (cons (cons (cons (cons _%$tmp175357%_
                                                                '())
                                                          (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '%#ref (cons 'class-slot-offset '()))
                                    (cons (cons '%#ref
                                                (cons _%$klass175353%_ '()))
                                          (cons (cons '%#quote
                                                      (cons _%id175354%_ '()))
                                                '()))))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())
                                              (cons (cons '%#if
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$tmp175357%_ '()))
                        (cons (cons '%#ref (cons _%$tmp175357%_ '()))
                              (cons (cons '%#call
                                          (cons (cons '%#ref (cons 'error '()))
                                                (cons (cons '%#quote
                                                            (cons '"Unknown slot"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#quote (cons _%id175354%_ '())) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '())))))
                 (_%generate-specializer-impl172487%_
                  (lambda (_%$klass175347%_
                           _%$method-table175348%_
                           _%methods-bind175349%_
                           _%slots-bind175350%_
                           _%specializer-impl175351%_)
                    (let ((__tmp176696
                           (cons '%#lambda
                                 (cons (cons _%$klass175347%_
                                             (cons _%$method-table175348%_
                                                   '()))
                                       (cons (cons '%#let-values
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (__foldr1
                                                            cons
                                                            _%slots-bind175350%_
                                                            _%methods-bind175349%_))
                                                         (cons _%specializer-impl175351%_
                                                               '())))
                                             '())))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp176696 _%stx172483%_))))
                 (_%generate-specializer-def172488%_
                  (lambda (_%id175343%_
                           _%specializer-id175344%_
                           _%specializer-impl175345%_)
                    (let ((__tmp176697
                           (cons '%#begin
                                 (cons _%stx172483%_
                                       (cons (let ((__tmp176698
                                                    (cons '%#define-values
                                                          (cons (cons _%specializer-id175344%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons _%specializer-impl175345%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp176698
                                                _%stx172483%_))
                                             (cons (let ((__tmp176699
                                                          (cons '%#call
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons 'bind-specializer! '()))
                              (cons (cons '%#ref (cons _%id175343%_ '()))
                                    (cons (cons '%#ref
                                                (cons _%specializer-id175344%_
                                                      '()))
                                          '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp176699
                                                      _%stx172483%_))
                                                   '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp176697 _%stx172483%_)))))
          (let* ((_%__stx175565175566%_ _%stx172483%_)
                 (_%g172491172511%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx175565175566%_)))))
            (let ((_%__kont175567175568%_
                   (lambda (_%L172555%_ _%L172556%_)
                     (let ((_%method-calls172575%_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_%slot-refs172576%_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_%empty172577%_
                            (let ()
                              (declare (not safe))
                              (make-hash-table-eq))))
                       (letrec ((_%no-specializer?172579%_
                                 (lambda ()
                                   (if (fxzero? (let ()
                                                  (declare (not safe))
                                                  (__hash-length
                                                   _%method-calls172575%_)))
                                       (fxzero? (let ()
                                                  (declare (not safe))
                                                  (__hash-length
                                                   _%slot-refs172576%_)))
                                       '#f))))
                         (if (let ()
                               (declare (not safe))
                               (gxc#lambda-expr? _%L172555%_))
                             (let* ((_%__stx175479175480%_ _%L172555%_)
                                    (_%g172967172985%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx175479175480%_)))))
                               (let ((_%__kont175481175482%_
                                      (lambda (_%L173021%_
                                               _%L173022%_
                                               _%L173023%_)
                                        (let ((_%receiver173043%_
                                               (let ((_%$e173040%_
                                                      (gxc#apply-extract-receiver
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f '%#begin))
                     _%L173021%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e173040%_
                                                     _%$e173040%_
                                                     _%L173023%_))))
                                          (for-each
                                           (lambda (_%g173044173046%_)
                                             (gxc#apply-collect-object-refs__%
                                              '#f
                                              _%receiver173043%_
                                              _%method-calls172575%_
                                              _%slot-refs172576%_
                                              _%g173044173046%_))
                                           _%L173021%_)
                                          (if (_%no-specializer?172579%_)
                                              _%stx172483%_
                                              (let* ((_%specializer-id173055%_
                                                      (let* ((_%id173049%_
                                                              (let ((__tmp176700
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%L172556%_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp176700 '"::specialize")))
                     (_%specializer-id173052%_
                      (let ((__tmp176701
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _%stx172483%_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _%id173049%_ __tmp176701))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _%specializer-id173052%_))
                _%specializer-id173052%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$klass173057%_
                                                      (let ((__tmp176702
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__klass))))
                (declare (not safe))
                (make-symbol__0 __tmp176702)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$method-table173059%_
                                                      (let ((__tmp176703
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__method-table))))
                (declare (not safe))
                (make-symbol__0 __tmp176703)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods173061%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%method-calls172575%_)))
                                                     (_%$methods173065%_
                                                      (map (lambda (_%id173063%_)
                                                             (let ((__tmp176704
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _%id173063%_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp176704)))
                   _%methods173061%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_173074%_
                                                      (for-each
                                                       (lambda (_%g173066173069%_
                                                                _%g173067173071%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (__hash-put!
                                                            _%method-calls172575%_
                                                            _%g173066173069%_
                                                            _%g173067173071%_)))
                                                       _%methods173061%_
                                                       _%$methods173065%_))
                                                     (_%methods-bind173084%_
                                                      (map (lambda (_%g173076173079%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g173077173081%_)
                     (_%generate-method-bind172485%_
                      _%$klass173057%_
                      _%$method-table173059%_
                      _%g173076173079%_
                      _%g173077173081%_))
                   _%methods173061%_
                   _%$methods173065%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots173086%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%slot-refs172576%_)))
                                                     (_%$slots173090%_
                                                      (map (lambda (_%id173088%_)
                                                             (let ((__tmp176705
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _%id173088%_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp176705)))
                   _%slots173086%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_173099%_
                                                      (for-each
                                                       (lambda (_%g173091173094%_
                                                                _%g173092173096%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (__hash-put!
                                                            _%slot-refs172576%_
                                                            _%g173091173094%_
                                                            _%g173092173096%_)))
                                                       _%slots173086%_
                                                       _%$slots173090%_))
                                                     (_%slots-bind173108%_
                                                      (map (lambda (_%g173100173103%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g173101173105%_)
                     (_%generate-slot-bind172486%_
                      _%$klass173057%_
                      _%g173100173103%_
                      _%g173101173105%_))
                   _%slots173086%_
                   _%$slots173090%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-body173114%_
                                                      (map (lambda (_%g173109173111%_)
                                                             (gxc#apply-subst-object-refs__%
                                                              '#f
                                                              _%receiver173043%_
                                                              _%$klass173057%_
                                                              _%method-calls172575%_
                                                              _%slot-refs172576%_
                                                              _%g173109173111%_))
                                                           _%L173021%_))
                                                     (_%specializer-impl173116%_
                                                      (let ((__tmp176706
                                                             (cons '%#lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons _%L173023%_ _%L173022%_)
                                 _%specializer-body173114%_))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp176706 _%stx172483%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl173118%_
                                                      (_%generate-specializer-impl172487%_
                                                       _%$klass173057%_
                                                       _%$method-table173059%_
                                                       _%methods-bind173084%_
                                                       _%slots-bind173108%_
                                                       _%specializer-impl173116%_)))
                                                (let ((__tmp176708
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%L172556%_)))
                                                      (__tmp176707
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%specializer-id173055%_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp176708
                                                   '" => "
                                                   __tmp176707))
                                                (_%generate-specializer-def172488%_
                                                 _%L172556%_
                                                 _%specializer-id173055%_
                                                 _%specializer-impl173118%_))))))
                                     (_%__kont175483175484%_
                                      (lambda () _%stx172483%_)))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%__stx175479175480%_))
                                     (let ((_%e172972172997%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e
                                               _%__stx175479175480%_))))
                                       (let ((_%tl172974173002%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e172972172997%_)))
                                             (_%hd172973173000%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e172972172997%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl172974173002%_))
                                             (let ((_%e172975173005%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%tl172974173002%_))))
                                               (let ((_%tl172977173010%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e172975173005%_)))
                                                     (_%hd172976173008%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e172975173005%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%hd172976173008%_))
                                                     (let ((_%e172978173013%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%hd172976173008%_))))
                                                       (let ((_%tl172980173018%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e172978173013%_)))
                     (_%hd172979173016%_
                      (let () (declare (not safe)) (##car _%e172978173013%_))))
                 (_%__kont175481175482%_
                  _%tl172977173010%_
                  _%tl172980173018%_
                  _%hd172979173016%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont175483175484%_))))
                                             (_%__kont175483175484%_))))
                                     (_%__kont175483175484%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gxc#case-lambda-expr? _%L172555%_))
                                 (let* ((_%g173125173144%_
                                         (lambda (_%g173126173141%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g173126173141%_))))
                                        (_%g173124173442%_
                                         (lambda (_%g173126173147%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g173126173147%_))
                                               (let ((_%e173128173149%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%g173126173147%_))))
                                                 (let ((_%hd173129173152%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e173128173149%_)))
                                                       (_%tl173130173154%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e173128173149%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair/null?
                                                          _%tl173130173154%_))
                                                       (let ((_g176709_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-split-splice _%tl173130173154%_ '0))))
                 (begin
                   (let ((_g176710_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g176709_)
                                (##vector-length _g176709_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g176710_ 2)))
                         (error "Context expects 2 values" _g176710_)))
                   (let ((_%target173131173157%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g176709_ 0)))
                         (_%tl173133173159%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g176709_ 1))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl173133173159%_))
                         (letrec ((_%loop173134173162%_
                                   (lambda (_%hd173132173165%_
                                            _%clause173138173167%_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd173132173165%_))
                                         (let ((_%e173135173170%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd173132173165%_))))
                                           (let ((_%lp-hd173136173173%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e173135173170%_)))
                                                 (_%lp-tl173137173175%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e173135173170%_))))
                                             (_%loop173134173162%_
                                              _%lp-tl173137173175%_
                                              (cons _%lp-hd173136173173%_
                                                    _%clause173138173167%_))))
                                         (let ((_%clause173139173178%_
                                                (reverse _%clause173138173167%_)))
                                           ((lambda (_%L173181%_)
                                              (for-each
                                               (lambda (_%clause173195%_)
                                                 (let* ((_%__stx175505175506%_
                                                         _%clause173195%_)
                                                        (_%g173198173213%_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%__stx175505175506%_)))))
                                                   (let ((_%__kont175507175508%_
                                                          (lambda (_%L173241%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%L173242%_
                           _%L173243%_)
                    (let ((_%receiver173262%_
                           (let ((_%$e173259%_
                                  (gxc#apply-extract-receiver
                                   (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f '%#begin))
                                         _%L173241%_))))
                             (if _%$e173259%_ _%$e173259%_ _%L173243%_))))
                      (for-each
                       (lambda (_%g173263173265%_)
                         (gxc#apply-collect-object-refs__%
                          '#f
                          _%receiver173262%_
                          _%method-calls172575%_
                          _%slot-refs172576%_
                          _%g173263173265%_))
                       _%L173241%_))))
                 (_%__kont175509175510%_ (lambda () '#!void)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%__stx175505175506%_))
                                                         (let ((_%e173203173225%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%__stx175505175506%_))))
                   (let ((_%tl173205173230%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e173203173225%_)))
                         (_%hd173204173228%_
                          (let ()
                            (declare (not safe))
                            (##car _%e173203173225%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%hd173204173228%_))
                         (let ((_%e173206173233%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd173204173228%_))))
                           (let ((_%tl173208173238%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e173206173233%_)))
                                 (_%hd173207173236%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e173206173233%_))))
                             (_%__kont175507175508%_
                              _%tl173205173230%_
                              _%tl173208173238%_
                              _%hd173207173236%_)))
                         (_%__kont175509175510%_))))
                 (_%__kont175509175510%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((__tmp176711
                                                      (lambda (_%g173270173273%_
                                                               _%g173271173275%_)
                                                        (cons _%g173270173273%_
                                                              _%g173271173275%_))))
                                                 (declare (not safe))
                                                 (__foldr1
                                                  __tmp176711
                                                  '()
                                                  _%L173181%_)))
                                              (if (_%no-specializer?172579%_)
                                                  _%stx172483%_
                                                  (let* ((_%specializer-id173284%_
                                                          (let* ((_%id173278%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp176712
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%L172556%_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp176712 '"::specialize")))
                         (_%specializer-id173281%_
                          (let ((__tmp176713
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _%stx172483%_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _%id173278%_
                             __tmp176713))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _%specializer-id173281%_))
                    _%specializer-id173281%_))
                 (_%$klass173286%_
                  (let ((__tmp176714
                         (let () (declare (not safe)) (##gensym '__klass))))
                    (declare (not safe))
                    (make-symbol__0 __tmp176714)))
                 (_%$method-table173288%_
                  (let ((__tmp176715
                         (let ()
                           (declare (not safe))
                           (##gensym '__method-table))))
                    (declare (not safe))
                    (make-symbol__0 __tmp176715)))
                 (_%methods173290%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%method-calls172575%_)))
                 (_%$methods173294%_
                  (map (lambda (_%id173292%_)
                         (let ((__tmp176716 (gensym _%id173292%_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp176716)))
                       _%methods173290%_))
                 (_%_173303%_
                  (for-each
                   (lambda (_%g173295173298%_ _%g173296173300%_)
                     (let ()
                       (declare (not safe))
                       (__hash-put!
                        _%method-calls172575%_
                        _%g173295173298%_
                        _%g173296173300%_)))
                   _%methods173290%_
                   _%$methods173294%_))
                 (_%methods-bind173313%_
                  (map (lambda (_%g173305173308%_ _%g173306173310%_)
                         (_%generate-method-bind172485%_
                          _%$klass173286%_
                          _%$method-table173288%_
                          _%g173305173308%_
                          _%g173306173310%_))
                       _%methods173290%_
                       _%$methods173294%_))
                 (_%slots173315%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%slot-refs172576%_)))
                 (_%$slots173319%_
                  (map (lambda (_%id173317%_)
                         (let ((__tmp176717 (gensym _%id173317%_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp176717)))
                       _%slots173315%_))
                 (_%_173328%_
                  (for-each
                   (lambda (_%g173320173323%_ _%g173321173325%_)
                     (let ()
                       (declare (not safe))
                       (__hash-put!
                        _%slot-refs172576%_
                        _%g173320173323%_
                        _%g173321173325%_)))
                   _%slots173315%_
                   _%$slots173319%_))
                 (_%slots-bind173337%_
                  (map (lambda (_%g173329173332%_ _%g173330173334%_)
                         (_%generate-slot-bind172486%_
                          _%$klass173286%_
                          _%g173329173332%_
                          _%g173330173334%_))
                       _%slots173315%_
                       _%$slots173319%_))
                 (_%specializer-clauses173435%_
                  (map (lambda (_%clause173339%_)
                         (let* ((_%__stx175525175526%_ _%clause173339%_)
                                (_%g173342173357%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx175525175526%_)))))
                           (let ((_%__kont175527175528%_
                                  (lambda (_%L173385%_ _%L173386%_ _%L173387%_)
                                    (let* ((_%receiver173416%_
                                            (let ((_%$e173413%_
                                                   (gxc#apply-extract-receiver
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#begin))
                                                          _%L173385%_))))
                                              (if _%$e173413%_
                                                  _%$e173413%_
                                                  _%L173387%_)))
                                           (_%body173422%_
                                            (map (lambda (_%g173417173419%_)
                                                   (gxc#apply-subst-object-refs__%
                                                    '#f
                                                    _%receiver173416%_
                                                    _%$klass173286%_
                                                    _%method-calls172575%_
                                                    _%slot-refs172576%_
                                                    _%g173417173419%_))
                                                 _%L173385%_)))
                                      (cons (cons _%L173387%_ _%L173386%_)
                                            _%body173422%_))))
                                 (_%__kont175529175530%_
                                  (lambda () _%clause173339%_)))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx175525175526%_))
                                 (let ((_%e173347173369%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx175525175526%_))))
                                   (let ((_%tl173349173374%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e173347173369%_)))
                                         (_%hd173348173372%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e173347173369%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd173348173372%_))
                                         (let ((_%e173350173377%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd173348173372%_))))
                                           (let ((_%tl173352173382%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e173350173377%_)))
                                                 (_%hd173351173380%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e173350173377%_))))
                                             (_%__kont175527175528%_
                                              _%tl173349173374%_
                                              _%tl173352173382%_
                                              _%hd173351173380%_)))
                                         (_%__kont175529175530%_))))
                                 (_%__kont175529175530%_)))))
                       (let ((__tmp176718
                              (lambda (_%g173427173430%_ _%g173428173432%_)
                                (cons _%g173427173430%_ _%g173428173432%_))))
                         (declare (not safe))
                         (__foldr1 __tmp176718 '() _%L173181%_))))
                 (_%specializer-impl173437%_
                  (let ((__tmp176719
                         (cons '%#case-lambda _%specializer-clauses173435%_)))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp176719 _%stx172483%_)))
                 (_%specializer-impl173439%_
                  (_%generate-specializer-impl172487%_
                   _%$klass173286%_
                   _%$method-table173288%_
                   _%methods-bind173313%_
                   _%slots-bind173337%_
                   _%specializer-impl173437%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp176721
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%L172556%_)))
                                                          (__tmp176720
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%specializer-id173284%_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp176721
                                                       '" => "
                                                       __tmp176720))
                                                    (_%generate-specializer-def172488%_
                                                     _%L172556%_
                                                     _%specializer-id173284%_
                                                     _%specializer-impl173439%_))))
                                            _%clause173139173178%_))))))
                           (_%loop173134173162%_ _%target173131173157%_ '()))
                         (_%g173125173144%_ _%g173126173147%_)))))
               (_%g173125173144%_ _%g173126173147%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g173125173144%_
                                                _%g173126173147%_)))))
                                   (_%g173124173442%_ _%L172555%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#opt-lambda-expr? _%L172555%_))
                                     (let* ((_%g173446173476%_
                                             (lambda (_%g173447173473%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g173447173473%_))))
                                            (_%g173445174107%_
                                             (lambda (_%g173447173479%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%g173447173479%_))
                                                   (let ((_%e173451173481%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%g173447173479%_))))
                                                     (let ((_%hd173452173484%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e173451173481%_)))
                                                           (_%tl173453173486%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e173451173481%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl173453173486%_))
                                                           (let ((_%e173454173489%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl173453173486%_))))
                     (let ((_%hd173455173492%_
                            (let ()
                              (declare (not safe))
                              (##car _%e173454173489%_)))
                           (_%tl173456173494%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e173454173489%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%hd173455173492%_))
                           (let ((_%e173457173497%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd173455173492%_))))
                             (let ((_%hd173458173500%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e173457173497%_)))
                                   (_%tl173459173502%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e173457173497%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd173458173500%_))
                                   (let ((_%e173460173505%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd173458173500%_))))
                                     (let ((_%hd173461173508%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e173460173505%_)))
                                           (_%tl173462173510%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e173460173505%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%hd173461173508%_))
                                           (let ((_%e173463173513%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%hd173461173508%_))))
                                             (let ((_%hd173464173516%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e173463173513%_)))
                                                   (_%tl173465173518%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e173463173513%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl173465173518%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl173462173510%_))
                                                       (let ((_%e173466173521%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%tl173462173510%_))))
                 (let ((_%hd173467173524%_
                        (let ()
                          (declare (not safe))
                          (##car _%e173466173521%_)))
                       (_%tl173468173526%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e173466173521%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl173468173526%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl173459173502%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl173456173494%_))
                               (let ((_%e173469173529%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%tl173456173494%_))))
                                 (let ((_%hd173470173532%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e173469173529%_)))
                                       (_%tl173471173534%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e173469173529%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%tl173471173534%_))
                                       ((lambda (_%L173537%_
                                                 _%L173538%_
                                                 _%L173539%_)
                                          (let* ((_%g173563173581%_
                                                  (lambda (_%g173564173578%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g173564173578%_))))
                                                 (_%g173562173637%_
                                                  (lambda (_%g173564173584%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%g173564173584%_))
                                                        (let ((_%e173568173586%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%g173564173584%_))))
                  (let ((_%hd173569173589%_
                         (let ()
                           (declare (not safe))
                           (##car _%e173568173586%_)))
                        (_%tl173570173591%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e173568173586%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl173570173591%_))
                        (let ((_%e173571173594%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl173570173591%_))))
                          (let ((_%hd173572173597%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e173571173594%_)))
                                (_%tl173573173599%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e173571173594%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd173572173597%_))
                                (let ((_%e173574173602%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd173572173597%_))))
                                  (let ((_%hd173575173605%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e173574173602%_)))
                                        (_%tl173576173607%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e173574173602%_))))
                                    ((lambda (_%L173610%_
                                              _%L173611%_
                                              _%L173612%_)
                                       (let ((_%receiver173631%_
                                              (let ((_%$e173628%_
                                                     (gxc#apply-extract-receiver
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               '%#begin))
                                                            _%L173610%_))))
                                                (if _%$e173628%_
                                                    _%$e173628%_
                                                    _%L173612%_))))
                                         (for-each
                                          (lambda (_%g173632173634%_)
                                            (gxc#apply-collect-object-refs__%
                                             '#f
                                             _%receiver173631%_
                                             _%method-calls172575%_
                                             _%slot-refs172576%_
                                             _%g173632173634%_))
                                          _%L173610%_)))
                                     _%tl173573173599%_
                                     _%tl173576173607%_
                                     _%hd173575173605%_)))
                                (_%g173563173581%_ _%g173564173584%_))))
                        (_%g173563173581%_ _%g173564173584%_))))
                (_%g173563173581%_ _%g173564173584%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g173562173637%_ _%L173538%_))
                                          (let* ((_%g173640173659%_
                                                  (lambda (_%g173641173656%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g173641173656%_))))
                                                 (_%g173639173783%_
                                                  (lambda (_%g173641173662%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%g173641173662%_))
                                                        (let ((_%e173643173664%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%g173641173662%_))))
                  (let ((_%hd173644173667%_
                         (let ()
                           (declare (not safe))
                           (##car _%e173643173664%_)))
                        (_%tl173645173669%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e173643173664%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%tl173645173669%_))
                        (let ((_g176722_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _%tl173645173669%_
                                  '0))))
                          (begin
                            (let ((_g176723_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g176722_)
                                         (##vector-length _g176722_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g176723_ 2)))
                                  (error "Context expects 2 values"
                                         _g176723_)))
                            (let ((_%target173646173672%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g176722_ 0)))
                                  (_%tl173648173674%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g176722_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl173648173674%_))
                                  (letrec ((_%loop173649173677%_
                                            (lambda (_%hd173647173680%_
                                                     _%clause173653173682%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd173647173680%_))
                                                  (let ((_%e173650173685%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd173647173680%_))))
                                                    (let ((_%lp-hd173651173688%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e173650173685%_)))
                                                          (_%lp-tl173652173690%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e173650173685%_))))
                                                      (_%loop173649173677%_
                                                       _%lp-tl173652173690%_
                                                       (cons _%lp-hd173651173688%_
                                                             _%clause173653173682%_))))
                                                  (let ((_%clause173654173693%_
                                                         (reverse _%clause173653173682%_)))
                                                    ((lambda (_%L173696%_)
                                                       (for-each
                                                        (lambda (_%clause173709%_)
                                                          (let* ((_%g173711173726%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%g173712173723%_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g173712173723%_))))
                         (_%g173710173773%_
                          (lambda (_%g173712173729%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%g173712173729%_))
                                (let ((_%e173716173731%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%g173712173729%_))))
                                  (let ((_%hd173717173734%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e173716173731%_)))
                                        (_%tl173718173736%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e173716173731%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd173717173734%_))
                                        (let ((_%e173719173739%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd173717173734%_))))
                                          (let ((_%hd173720173742%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e173719173739%_)))
                                                (_%tl173721173744%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e173719173739%_))))
                                            ((lambda (_%L173747%_
                                                      _%L173748%_
                                                      _%L173749%_)
                                               (let ((_%receiver173767%_
                                                      (let ((_%$e173764%_
                                                             (gxc#apply-extract-receiver
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f '%#begin))
                            _%L173747%_))))
                (if _%$e173764%_ _%$e173764%_ _%L173749%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (for-each
                                                  (lambda (_%g173768173770%_)
                                                    (gxc#apply-collect-object-refs__%
                                                     '#f
                                                     _%receiver173767%_
                                                     _%method-calls172575%_
                                                     _%slot-refs172576%_
                                                     _%g173768173770%_))
                                                  _%L173747%_)))
                                             _%tl173718173736%_
                                             _%tl173721173744%_
                                             _%hd173720173742%_)))
                                        (_%g173711173726%_
                                         _%g173712173729%_))))
                                (_%g173711173726%_ _%g173712173729%_)))))
                    (_%g173710173773%_ _%clause173709%_)))
                (let ((__tmp176724
                       (lambda (_%g173775173778%_ _%g173776173780%_)
                         (cons _%g173775173778%_ _%g173776173780%_))))
                  (declare (not safe))
                  (__foldr1 __tmp176724 '() _%L173696%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%clause173654173693%_))))))
                                    (_%loop173649173677%_
                                     _%target173646173672%_
                                     '()))
                                  (_%g173640173659%_ _%g173641173662%_)))))
                        (_%g173640173659%_ _%g173641173662%_))))
                (_%g173640173659%_ _%g173641173662%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g173639173783%_ _%L173537%_))
                                          (if (_%no-specializer?172579%_)
                                              _%stx172483%_
                                              (let* ((_%specializer-id173792%_
                                                      (let* ((_%id173786%_
                                                              (let ((__tmp176725
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%L172556%_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp176725 '"::specialize")))
                     (_%specializer-id173789%_
                      (let ((__tmp176726
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _%stx172483%_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _%id173786%_ __tmp176726))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _%specializer-id173789%_))
                _%specializer-id173789%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$klass173794%_
                                                      (let ((__tmp176727
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__klass))))
                (declare (not safe))
                (make-symbol__0 __tmp176727)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$method-table173796%_
                                                      (let ((__tmp176728
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__method-table))))
                (declare (not safe))
                (make-symbol__0 __tmp176728)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods173798%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%method-calls172575%_)))
                                                     (_%$methods173802%_
                                                      (map (lambda (_%id173800%_)
                                                             (let ((__tmp176729
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _%id173800%_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp176729)))
                   _%methods173798%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_173811%_
                                                      (for-each
                                                       (lambda (_%g173803173806%_
                                                                _%g173804173808%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (__hash-put!
                                                            _%method-calls172575%_
                                                            _%g173803173806%_
                                                            _%g173804173808%_)))
                                                       _%methods173798%_
                                                       _%$methods173802%_))
                                                     (_%methods-bind173821%_
                                                      (map (lambda (_%g173813173816%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g173814173818%_)
                     (_%generate-method-bind172485%_
                      _%$klass173794%_
                      _%$method-table173796%_
                      _%g173813173816%_
                      _%g173814173818%_))
                   _%methods173798%_
                   _%$methods173802%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots173823%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%slot-refs172576%_)))
                                                     (_%$slots173827%_
                                                      (map (lambda (_%id173825%_)
                                                             (let ((__tmp176730
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _%id173825%_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp176730)))
                   _%slots173823%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_173836%_
                                                      (for-each
                                                       (lambda (_%g173828173831%_
                                                                _%g173829173833%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (__hash-put!
                                                            _%slot-refs172576%_
                                                            _%g173828173831%_
                                                            _%g173829173833%_)))
                                                       _%slots173823%_
                                                       _%$slots173827%_))
                                                     (_%slots-bind173845%_
                                                      (map (lambda (_%g173837173840%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g173838173842%_)
                     (_%generate-slot-bind172486%_
                      _%$klass173794%_
                      _%g173837173840%_
                      _%g173838173842%_))
                   _%slots173823%_
                   _%$slots173827%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-lambda-expr173937%_
                                                      (let* ((_%g173847173865%_
                                                              (lambda (_%g173848173862%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g173848173862%_))))
                     (_%g173846173934%_
                      (lambda (_%g173848173868%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g173848173868%_))
                            (let ((_%e173852173870%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g173848173868%_))))
                              (let ((_%hd173853173873%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e173852173870%_)))
                                    (_%tl173854173875%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e173852173870%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl173854173875%_))
                                    (let ((_%e173855173878%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl173854173875%_))))
                                      (let ((_%hd173856173881%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e173855173878%_)))
                                            (_%tl173857173883%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e173855173878%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd173856173881%_))
                                            (let ((_%e173858173886%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd173856173881%_))))
                                              (let ((_%hd173859173889%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e173858173886%_)))
                                                    (_%tl173860173891%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e173858173886%_))))
                                                ((lambda (_%L173894%_
                                                          _%L173895%_
                                                          _%L173896%_)
                                                   (let* ((_%receiver173925%_
                                                           (let ((_%$e173922%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gxc#apply-extract-receiver
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '%#begin))
                                 _%L173894%_))))
                     (if _%$e173922%_ _%$e173922%_ _%L173896%_)))
                  (_%body173931%_
                   (map (lambda (_%g173926173928%_)
                          (gxc#apply-subst-object-refs__%
                           '#f
                           _%receiver173925%_
                           _%$klass173794%_
                           _%method-calls172575%_
                           _%slot-refs172576%_
                           _%g173926173928%_))
                        _%L173894%_))
                  (__tmp176731
                   (cons '%#lambda
                         (cons (cons _%L173896%_ _%L173895%_)
                               _%body173931%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp176731
                                                      _%L173538%_)))
                                                 _%tl173857173883%_
                                                 _%tl173860173891%_
                                                 _%hd173859173889%_)))
                                            (_%g173847173865%_
                                             _%g173848173868%_))))
                                    (_%g173847173865%_ _%g173848173868%_))))
                            (_%g173847173865%_ _%g173848173868%_)))))
                (_%g173846173934%_ _%L173538%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-case-lambda-expr174100%_
                                                      (let* ((_%g173939173958%_
                                                              (lambda (_%g173940173955%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g173940173955%_))))
                     (_%g173938174097%_
                      (lambda (_%g173940173961%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g173940173961%_))
                            (let ((_%e173942173963%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g173940173961%_))))
                              (let ((_%hd173943173966%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e173942173963%_)))
                                    (_%tl173944173968%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e173942173963%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl173944173968%_))
                                    (let ((_g176732_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _%tl173944173968%_
                                              '0))))
                                      (begin
                                        (let ((_g176733_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g176732_)
                                                     (##vector-length
                                                      _g176732_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g176733_ 2)))
                                              (error "Context expects 2 values"
                                                     _g176733_)))
                                        (let ((_%target173945173971%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g176732_ 0)))
                                              (_%tl173947173973%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g176732_ 1))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl173947173973%_))
                                              (letrec ((_%loop173948173976%_
                                                        (lambda (_%hd173946173979%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%clause173952173981%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd173946173979%_))
                      (let ((_%e173949173984%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd173946173979%_))))
                        (let ((_%lp-hd173950173987%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e173949173984%_)))
                              (_%lp-tl173951173989%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e173949173984%_))))
                          (_%loop173948173976%_
                           _%lp-tl173951173989%_
                           (cons _%lp-hd173950173987%_
                                 _%clause173952173981%_))))
                      (let ((_%clause173953173992%_
                             (reverse _%clause173952173981%_)))
                        ((lambda (_%L173995%_)
                           (let* ((_%clauses174095%_
                                   (map (lambda (_%clause174009%_)
                                          (let* ((_%__stx175545175546%_
                                                  _%clause174009%_)
                                                 (_%g174012174027%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx175545175546%_)))))
                                            (let ((_%__kont175547175548%_
                                                   (lambda (_%L174055%_
                                                            _%L174056%_
                                                            _%L174057%_)
                                                     (let* ((_%receiver174076%_
                                                             (let ((_%$e174073%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gxc#apply-extract-receiver
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f '%#begin))
                                   _%L174055%_))))
                       (if _%$e174073%_ _%$e174073%_ _%L174057%_)))
                    (_%body174082%_
                     (map (lambda (_%g174077174079%_)
                            (gxc#apply-subst-object-refs__%
                             '#f
                             _%receiver174076%_
                             _%$klass173794%_
                             _%method-calls172575%_
                             _%slot-refs172576%_
                             _%g174077174079%_))
                          _%L174055%_)))
               (cons (cons _%L174057%_ _%L174056%_) _%body174082%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont175549175550%_
                                                   (lambda ()
                                                     _%clause174009%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%__stx175545175546%_))
                                                  (let ((_%e174017174039%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%__stx175545175546%_))))
                                                    (let ((_%tl174019174044%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e174017174039%_)))
                                                          (_%hd174018174042%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e174017174039%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd174018174042%_))
                                                          (let ((_%e174020174047%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd174018174042%_))))
                    (let ((_%tl174022174052%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e174020174047%_)))
                          (_%hd174021174050%_
                           (let ()
                             (declare (not safe))
                             (##car _%e174020174047%_))))
                      (_%__kont175547175548%_
                       _%tl174019174044%_
                       _%tl174022174052%_
                       _%hd174021174050%_)))
                  (_%__kont175549175550%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont175549175550%_)))))
                                        (let ((__tmp176734
                                               (lambda (_%g174087174090%_
                                                        _%g174088174092%_)
                                                 (cons _%g174087174090%_
                                                       _%g174088174092%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp176734
                                           '()
                                           _%L173995%_))))
                                  (__tmp176735
                                   (cons '%#case-lambda _%clauses174095%_)))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp176735 _%L173537%_)))
                         _%clause173953173992%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop173948173976%_
                                                 _%target173945173971%_
                                                 '()))
                                              (_%g173939173958%_
                                               _%g173940173961%_)))))
                                    (_%g173939173958%_ _%g173940173961%_))))
                            (_%g173939173958%_ _%g173940173961%_)))))
                (_%g173938174097%_ _%L173537%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl174102%_
                                                      (let ((__tmp176736
                                                             (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (cons (cons _%L173539%_ '())
                                             (cons _%specializer-lambda-expr173937%_
                                                   '()))
                                       '())
                                 (cons _%specializer-case-lambda-expr174100%_
                                       '())))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp176736 _%stx172483%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl174104%_
                                                      (_%generate-specializer-impl172487%_
                                                       _%$klass173794%_
                                                       _%$method-table173796%_
                                                       _%methods-bind173821%_
                                                       _%slots-bind173845%_
                                                       _%specializer-impl174102%_)))
                                                (let ((__tmp176738
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%L172556%_)))
                                                      (__tmp176737
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%specializer-id173792%_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp176738
                                                   '" => "
                                                   __tmp176737))
                                                (_%generate-specializer-def172488%_
                                                 _%L172556%_
                                                 _%specializer-id173792%_
                                                 _%specializer-impl174104%_))))
                                        _%hd173470173532%_
                                        _%hd173467173524%_
                                        _%hd173464173516%_)
                                       (_%g173446173476%_ _%g173447173479%_))))
                               (_%g173446173476%_ _%g173447173479%_))
                           (_%g173446173476%_ _%g173447173479%_))
                       (_%g173446173476%_ _%g173447173479%_))))
               (_%g173446173476%_ _%g173447173479%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g173446173476%_
                                                    _%g173447173479%_))))
                                           (_%g173446173476%_
                                            _%g173447173479%_))))
                                   (_%g173446173476%_ _%g173447173479%_))))
                           (_%g173446173476%_ _%g173447173479%_))))
                   (_%g173446173476%_ _%g173447173479%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g173446173476%_
                                                    _%g173447173479%_)))))
                                       (_%g173445174107%_ _%L172555%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#kw-lambda-expr? _%L172555%_))
                                         (let* ((_%g174111174164%_
                                                 (lambda (_%g174112174161%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g174112174161%_))))
                                                (_%g174110175335%_
                                                 (lambda (_%g174112174167%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%g174112174167%_))
                                                       (let ((_%e174118174169%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%g174112174167%_))))
                 (let ((_%hd174119174172%_
                        (let ()
                          (declare (not safe))
                          (##car _%e174118174169%_)))
                       (_%tl174120174174%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e174118174169%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#identifier? _%hd174119174172%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-eq? '%#let-values _%hd174119174172%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl174120174174%_))
                               (let ((_%e174121174177%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%tl174120174174%_))))
                                 (let ((_%hd174122174180%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e174121174177%_)))
                                       (_%tl174123174182%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e174121174177%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd174122174180%_))
                                       (let ((_%e174124174185%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd174122174180%_))))
                                         (let ((_%hd174125174188%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e174124174185%_)))
                                               (_%tl174126174190%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e174124174185%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%hd174125174188%_))
                                               (let ((_%e174127174193%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%hd174125174188%_))))
                                                 (let ((_%hd174128174196%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e174127174193%_)))
                                                       (_%tl174129174198%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e174127174193%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%hd174128174196%_))
                                                       (let ((_%e174130174201%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%hd174128174196%_))))
                 (let ((_%hd174131174204%_
                        (let ()
                          (declare (not safe))
                          (##car _%e174130174201%_)))
                       (_%tl174132174206%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e174130174201%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl174132174206%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%tl174129174198%_))
                           (let ((_%e174133174209%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%tl174129174198%_))))
                             (let ((_%hd174134174212%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e174133174209%_)))
                                   (_%tl174135174214%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e174133174209%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd174134174212%_))
                                   (let ((_%e174136174217%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd174134174212%_))))
                                     (let ((_%hd174137174220%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e174136174217%_)))
                                           (_%tl174138174222%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e174136174217%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#identifier?
                                              _%hd174137174220%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-eq?
                                                  '%#let-values
                                                  _%hd174137174220%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%tl174138174222%_))
                                                   (let ((_%e174139174225%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%tl174138174222%_))))
                                                     (let ((_%hd174140174228%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e174139174225%_)))
                                                           (_%tl174141174230%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e174139174225%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%hd174140174228%_))
                                                           (let ((_%e174142174233%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%hd174140174228%_))))
                     (let ((_%hd174143174236%_
                            (let ()
                              (declare (not safe))
                              (##car _%e174142174233%_)))
                           (_%tl174144174238%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e174142174233%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%hd174143174236%_))
                           (let ((_%e174145174241%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd174143174236%_))))
                             (let ((_%hd174146174244%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e174145174241%_)))
                                   (_%tl174147174246%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e174145174241%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd174146174244%_))
                                   (let ((_%e174148174249%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd174146174244%_))))
                                     (let ((_%hd174149174252%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e174148174249%_)))
                                           (_%tl174150174254%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e174148174249%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl174150174254%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl174147174246%_))
                                               (let ((_%e174151174257%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%tl174147174246%_))))
                                                 (let ((_%hd174152174260%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e174151174257%_)))
                                                       (_%tl174153174262%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e174151174257%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl174153174262%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _%tl174144174238%_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _%tl174141174230%_))
                       (let ((_%e174154174265%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%tl174141174230%_))))
                         (let ((_%hd174155174268%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e174154174265%_)))
                               (_%tl174156174270%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e174154174265%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%tl174156174270%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl174135174214%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%tl174126174190%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%tl174123174182%_))
                                           (let ((_%e174157174273%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%tl174123174182%_))))
                                             (let ((_%hd174158174276%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e174157174273%_)))
                                                   (_%tl174159174278%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e174157174273%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl174159174278%_))
                                                   ((lambda (_%L174281%_
                                                             _%L174282%_
                                                             _%L174283%_
                                                             _%L174284%_
                                                             _%L174285%_)
                                                      (let* ((_%g174325174387%_
                                                              (lambda (_%g174326174384%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g174326174384%_))))
                     (_%g174324175332%_
                      (lambda (_%g174326174390%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g174326174390%_))
                            (let ((_%e174332174392%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g174326174390%_))))
                              (let ((_%hd174333174395%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e174332174392%_)))
                                    (_%tl174334174397%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e174332174392%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd174333174395%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _%hd174333174395%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl174334174397%_))
                                            (let ((_%e174335174400%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl174334174397%_))))
                                              (let ((_%hd174336174403%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e174335174400%_)))
                                                    (_%tl174337174405%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e174335174400%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl174337174405%_))
                                                    (let ((_%e174338174408%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl174337174405%_))))
                                                      (let ((_%hd174339174411%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e174338174408%_)))
                    (_%tl174340174413%_
                     (let () (declare (not safe)) (##cdr _%e174338174408%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%hd174339174411%_))
                    (let ((_%e174341174416%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd174339174411%_))))
                      (let ((_%hd174342174419%_
                             (let ()
                               (declare (not safe))
                               (##car _%e174341174416%_)))
                            (_%tl174343174421%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e174341174416%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%hd174342174419%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#call _%hd174342174419%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl174343174421%_))
                                    (let ((_%e174344174424%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl174343174421%_))))
                                      (let ((_%hd174345174427%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e174344174424%_)))
                                            (_%tl174346174429%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e174344174424%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd174345174427%_))
                                            (let ((_%e174347174432%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd174345174427%_))))
                                              (let ((_%hd174348174435%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e174347174432%_)))
                                                    (_%tl174349174437%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e174347174432%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd174348174435%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd174348174435%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl174349174437%_))
                                                            (let ((_%e174350174440%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl174349174437%_))))
                      (let ((_%hd174351174443%_
                             (let ()
                               (declare (not safe))
                               (##car _%e174350174440%_)))
                            (_%tl174352174445%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e174350174440%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl174352174445%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl174346174429%_))
                                (let ((_%e174353174448%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl174346174429%_))))
                                  (let ((_%hd174354174451%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e174353174448%_)))
                                        (_%tl174355174453%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e174353174448%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd174354174451%_))
                                        (let ((_%e174356174456%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd174354174451%_))))
                                          (let ((_%hd174357174459%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e174356174456%_)))
                                                (_%tl174358174461%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e174356174456%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _%hd174357174459%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _%hd174357174459%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl174358174461%_))
                                                        (let ((_%e174359174464%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl174358174461%_))))
                  (let ((_%hd174360174467%_
                         (let ()
                           (declare (not safe))
                           (##car _%e174359174464%_)))
                        (_%tl174361174469%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e174359174464%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl174361174469%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl174355174453%_))
                            (let ((_%e174362174472%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl174355174453%_))))
                              (let ((_%hd174363174475%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e174362174472%_)))
                                    (_%tl174364174477%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e174362174472%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd174363174475%_))
                                    (let ((_%e174365174480%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd174363174475%_))))
                                      (let ((_%hd174366174483%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e174365174480%_)))
                                            (_%tl174367174485%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e174365174480%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _%hd174366174483%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _%hd174366174483%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl174367174485%_))
                                                    (let ((_%e174368174488%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl174367174485%_))))
                                                      (let ((_%hd174369174491%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e174368174488%_)))
                    (_%tl174370174493%_
                     (let () (declare (not safe)) (##cdr _%e174368174488%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl174370174493%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%tl174364174477%_))
                        (if (let ((__tmp176739
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-length _%tl174364174477%_))))
                              (declare (not safe))
                              (##fx>= __tmp176739 '1))
                            (let ((_g176740_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _%tl174364174477%_
                                      '1))))
                              (begin
                                (let ((_g176741_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g176740_)
                                             (##vector-length _g176740_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g176741_ 2)))
                                      (error "Context expects 2 values"
                                             _g176741_)))
                                (let ((_%target174371174496%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g176740_ 0)))
                                      (_%tl174373174498%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g176740_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl174373174498%_))
                                      (let ((_%e174380174501%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl174373174498%_))))
                                        (let ((_%hd174381174504%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e174380174501%_)))
                                              (_%tl174382174506%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e174380174501%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl174382174506%_))
                                              (letrec ((_%loop174374174509%_
                                                        (lambda (_%hd174372174512%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%kw-ref174378174514%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd174372174512%_))
                      (let ((_%e174375174517%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd174372174512%_))))
                        (let ((_%lp-hd174376174520%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e174375174517%_)))
                              (_%lp-tl174377174522%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e174375174517%_))))
                          (_%loop174374174509%_
                           _%lp-tl174377174522%_
                           (cons _%lp-hd174376174520%_
                                 _%kw-ref174378174514%_))))
                      (let ((_%kw-ref174379174525%_
                             (reverse _%kw-ref174378174514%_)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl174340174413%_))
                            ((lambda (_%L174528%_
                                      _%L174529%_
                                      _%L174530%_
                                      _%L174531%_
                                      _%L174532%_)
                               (let* ((_%kw-count174583%_
                                       (length (let ((__tmp176742
                                                      (lambda (_%g174575174578%_
                                                               _%g174576174580%_)
                                                        (cons _%g174575174578%_
                                                              _%g174576174580%_))))
                                                 (declare (not safe))
                                                 (__foldr1
                                                  __tmp176742
                                                  '()
                                                  _%L174529%_))))
                                      (_%self-index174585%_
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _%kw-count174583%_ '1))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#lambda-expr? _%L174283%_))
                                     (let* ((_%g174589174603%_
                                             (lambda (_%g174590174600%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g174590174600%_))))
                                            (_%g174588174726%_
                                             (lambda (_%g174590174606%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%g174590174606%_))
                                                   (let ((_%e174593174608%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%g174590174606%_))))
                                                     (let ((_%hd174594174611%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e174593174608%_)))
                                                           (_%tl174595174613%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e174593174608%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl174595174613%_))
                                                           (let ((_%e174596174616%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl174595174613%_))))
                     (let ((_%hd174597174619%_
                            (let ()
                              (declare (not safe))
                              (##car _%e174596174616%_)))
                           (_%tl174598174621%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e174596174616%_))))
                       ((lambda (_%L174624%_ _%L174625%_)
                          (let* ((_%self174642%_
                                  (list-ref _%L174625%_ _%self-index174585%_))
                                 (_%receiver174647%_
                                  (let ((_%$e174644%_
                                         (gxc#apply-extract-receiver
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   '%#begin))
                                                _%L174624%_))))
                                    (if _%$e174644%_
                                        _%$e174644%_
                                        _%self174642%_))))
                            (for-each
                             (lambda (_%g174649174651%_)
                               (gxc#apply-collect-object-refs__%
                                '#f
                                _%receiver174647%_
                                _%method-calls172575%_
                                _%slot-refs172576%_
                                _%g174649174651%_))
                             _%L174624%_)
                            (if (_%no-specializer?172579%_)
                                _%stx172483%_
                                (let* ((_%specializer-id174660%_
                                        (let* ((_%id174654%_
                                                (let ((__tmp176743
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%L172556%_))))
                                                  (declare (not safe))
                                                  (make-symbol__1
                                                   __tmp176743
                                                   '"::specialize")))
                                               (_%specializer-id174657%_
                                                (let ((__tmp176744
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-source
                                                          _%stx172483%_))))
                                                  (declare (not safe))
                                                  (gx#core-quote-syntax__1
                                                   _%id174654%_
                                                   __tmp176744))))
                                          (let ()
                                            (declare (not safe))
                                            (gx#core-bind-runtime!__0
                                             _%specializer-id174657%_))
                                          _%specializer-id174657%_))
                                       (_%$klass174662%_
                                        (let ((__tmp176745
                                               (let ()
                                                 (declare (not safe))
                                                 (##gensym '__klass))))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp176745)))
                                       (_%$method-table174664%_
                                        (let ((__tmp176746
                                               (let ()
                                                 (declare (not safe))
                                                 (##gensym '__method-table))))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp176746)))
                                       (_%methods174666%_
                                        (let ()
                                          (declare (not safe))
                                          (__hash-keys
                                           _%method-calls172575%_)))
                                       (_%$methods174670%_
                                        (map (lambda (_%id174668%_)
                                               (let ((__tmp176747
                                                      (gensym _%id174668%_)))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  '"__"
                                                  __tmp176747)))
                                             _%methods174666%_))
                                       (_%_174679%_
                                        (for-each
                                         (lambda (_%g174671174674%_
                                                  _%g174672174676%_)
                                           (let ()
                                             (declare (not safe))
                                             (__hash-put!
                                              _%method-calls172575%_
                                              _%g174671174674%_
                                              _%g174672174676%_)))
                                         _%methods174666%_
                                         _%$methods174670%_))
                                       (_%methods-bind174689%_
                                        (map (lambda (_%g174681174684%_
                                                      _%g174682174686%_)
                                               (_%generate-method-bind172485%_
                                                _%$klass174662%_
                                                _%$method-table174664%_
                                                _%g174681174684%_
                                                _%g174682174686%_))
                                             _%methods174666%_
                                             _%$methods174670%_))
                                       (_%slots174691%_
                                        (let ()
                                          (declare (not safe))
                                          (__hash-keys _%slot-refs172576%_)))
                                       (_%$slots174695%_
                                        (map (lambda (_%id174693%_)
                                               (let ((__tmp176748
                                                      (gensym _%id174693%_)))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  '"__"
                                                  __tmp176748)))
                                             _%slots174691%_))
                                       (_%_174704%_
                                        (for-each
                                         (lambda (_%g174696174699%_
                                                  _%g174697174701%_)
                                           (let ()
                                             (declare (not safe))
                                             (__hash-put!
                                              _%slot-refs172576%_
                                              _%g174696174699%_
                                              _%g174697174701%_)))
                                         _%slots174691%_
                                         _%$slots174695%_))
                                       (_%slots-bind174713%_
                                        (map (lambda (_%g174705174708%_
                                                      _%g174706174710%_)
                                               (_%generate-slot-bind172486%_
                                                _%$klass174662%_
                                                _%g174705174708%_
                                                _%g174706174710%_))
                                             _%slots174691%_
                                             _%$slots174695%_))
                                       (_%specializer-impl174721%_
                                        (let* ((_%specializer-body174719%_
                                                (map (lambda (_%g174714174716%_)
                                                       (gxc#apply-subst-object-refs__%
                                                        '#f
                                                        _%receiver174647%_
                                                        _%$klass174662%_
                                                        _%method-calls172575%_
                                                        _%slot-refs172576%_
                                                        _%g174714174716%_))
                                                     _%L174624%_))
                                               (__tmp176749
                                                (cons '%#let-values
                                                      (cons (cons (cons (cons _%L174285%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      '())
                                (cons (cons '%#let-values
                                            (cons (cons (cons (cons _%L174284%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())
                      (cons (let ((__tmp176750
                                   (cons '%#lambda
                                         (cons _%L174625%_
                                               _%specializer-body174719%_))))
                              (declare (not safe))
                              (gxc#xform-wrap-source __tmp176750 _%L174283%_))
                            '()))
                '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons _%L174282%_ '())))
                                      '()))
                          '())
                    (cons _%L174281%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp176749
                                           _%stx172483%_)))
                                       (_%specializer-impl174723%_
                                        (_%generate-specializer-impl172487%_
                                         _%$klass174662%_
                                         _%$method-table174664%_
                                         _%methods-bind174689%_
                                         _%slots-bind174713%_
                                         _%specializer-impl174721%_)))
                                  (let ((__tmp176752
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%L172556%_)))
                                        (__tmp176751
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e
                                            _%specializer-id174660%_))))
                                    (declare (not safe))
                                    (gxc#verbose
                                     '"generate method specializer "
                                     __tmp176752
                                     '" => "
                                     __tmp176751))
                                  (_%generate-specializer-def172488%_
                                   _%L172556%_
                                   _%specializer-id174660%_
                                   _%specializer-impl174723%_)))))
                        _%tl174598174621%_
                        _%hd174597174619%_)))
                   (_%g174589174603%_ _%g174590174606%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g174589174603%_
                                                    _%g174590174606%_)))))
                                       (_%g174588174726%_ _%L174283%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#opt-lambda-expr? _%L174283%_))
                                         (let* ((_%g174730174760%_
                                                 (lambda (_%g174731174757%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g174731174757%_))))
                                                (_%g174729175328%_
                                                 (lambda (_%g174731174763%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%g174731174763%_))
                                                       (let ((_%e174735174765%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%g174731174763%_))))
                 (let ((_%hd174736174768%_
                        (let ()
                          (declare (not safe))
                          (##car _%e174735174765%_)))
                       (_%tl174737174770%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e174735174765%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%tl174737174770%_))
                       (let ((_%e174738174773%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%tl174737174770%_))))
                         (let ((_%hd174739174776%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e174738174773%_)))
                               (_%tl174740174778%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e174738174773%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%hd174739174776%_))
                               (let ((_%e174741174781%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%hd174739174776%_))))
                                 (let ((_%hd174742174784%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e174741174781%_)))
                                       (_%tl174743174786%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e174741174781%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd174742174784%_))
                                       (let ((_%e174744174789%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd174742174784%_))))
                                         (let ((_%hd174745174792%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e174744174789%_)))
                                               (_%tl174746174794%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e174744174789%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%hd174745174792%_))
                                               (let ((_%e174747174797%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%hd174745174792%_))))
                                                 (let ((_%hd174748174800%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e174747174797%_)))
                                                       (_%tl174749174802%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e174747174797%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl174749174802%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl174746174794%_))
                                                           (let ((_%e174750174805%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl174746174794%_))))
                     (let ((_%hd174751174808%_
                            (let ()
                              (declare (not safe))
                              (##car _%e174750174805%_)))
                           (_%tl174752174810%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e174750174805%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl174752174810%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%tl174743174786%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%tl174740174778%_))
                                   (let ((_%e174753174813%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%tl174740174778%_))))
                                     (let ((_%hd174754174816%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e174753174813%_)))
                                           (_%tl174755174818%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e174753174813%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl174755174818%_))
                                           ((lambda (_%L174821%_
                                                     _%L174822%_
                                                     _%L174823%_)
                                              (let* ((_%g174847174861%_
                                                      (lambda (_%g174848174858%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g174848174858%_))))
                                                     (_%g174846174908%_
                                                      (lambda (_%g174848174864%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g174848174864%_))
                                                            (let ((_%e174851174866%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%g174848174864%_))))
                      (let ((_%hd174852174869%_
                             (let ()
                               (declare (not safe))
                               (##car _%e174851174866%_)))
                            (_%tl174853174871%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e174851174866%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl174853174871%_))
                            (let ((_%e174854174874%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl174853174871%_))))
                              (let ((_%hd174855174877%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e174854174874%_)))
                                    (_%tl174856174879%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e174854174874%_))))
                                ((lambda (_%L174882%_ _%L174883%_)
                                   (let* ((_%self174896%_
                                           (list-ref
                                            _%L174883%_
                                            _%self-index174585%_))
                                          (_%receiver174901%_
                                           (let ((_%$e174898%_
                                                  (gxc#apply-extract-receiver
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gx#datum->syntax__0
                                                            '#f
                                                            '%#begin))
                                                         _%L174882%_))))
                                             (if _%$e174898%_
                                                 _%$e174898%_
                                                 _%self174896%_))))
                                     (for-each
                                      (lambda (_%g174903174905%_)
                                        (gxc#apply-collect-object-refs__%
                                         '#f
                                         _%receiver174901%_
                                         _%method-calls172575%_
                                         _%slot-refs172576%_
                                         _%g174903174905%_))
                                      _%L174882%_)))
                                 _%tl174856174879%_
                                 _%hd174855174877%_)))
                            (_%g174847174861%_ _%g174848174864%_))))
                    (_%g174847174861%_ _%g174848174864%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g174846174908%_
                                                 _%L174822%_))
                                              (let* ((_%g174911174930%_
                                                      (lambda (_%g174912174927%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g174912174927%_))))
                                                     (_%g174910175041%_
                                                      (lambda (_%g174912174933%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g174912174933%_))
                                                            (let ((_%e174914174935%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%g174912174933%_))))
                      (let ((_%hd174915174938%_
                             (let ()
                               (declare (not safe))
                               (##car _%e174914174935%_)))
                            (_%tl174916174940%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e174914174935%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _%tl174916174940%_))
                            (let ((_g176753_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _%tl174916174940%_
                                      '0))))
                              (begin
                                (let ((_g176754_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g176753_)
                                             (##vector-length _g176753_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g176754_ 2)))
                                      (error "Context expects 2 values"
                                             _g176754_)))
                                (let ((_%target174917174943%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g176753_ 0)))
                                      (_%tl174919174945%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g176753_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl174919174945%_))
                                      (letrec ((_%loop174920174948%_
                                                (lambda (_%hd174918174951%_
                                                         _%clause174924174953%_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%hd174918174951%_))
                                                      (let ((_%e174921174956%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd174918174951%_))))
                (let ((_%lp-hd174922174959%_
                       (let () (declare (not safe)) (##car _%e174921174956%_)))
                      (_%lp-tl174923174961%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e174921174956%_))))
                  (_%loop174920174948%_
                   _%lp-tl174923174961%_
                   (cons _%lp-hd174922174959%_ _%clause174924174953%_))))
              (let ((_%clause174925174964%_ (reverse _%clause174924174953%_)))
                ((lambda (_%L174967%_)
                   (for-each
                    (lambda (_%clause174980%_)
                      (let* ((_%g174982174993%_
                              (lambda (_%g174983174990%_)
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g174983174990%_))))
                             (_%g174981175031%_
                              (lambda (_%g174983174996%_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%g174983174996%_))
                                    (let ((_%e174986174998%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%g174983174996%_))))
                                      (let ((_%hd174987175001%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e174986174998%_)))
                                            (_%tl174988175003%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e174986174998%_))))
                                        ((lambda (_%L175006%_ _%L175007%_)
                                           (let* ((_%self175019%_
                                                   (list-ref
                                                    _%L175007%_
                                                    _%self-index174585%_))
                                                  (_%receiver175024%_
                                                   (let ((_%$e175021%_
                                                          (gxc#apply-extract-receiver
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '%#begin))
                         _%L175006%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _%$e175021%_
                                                         _%$e175021%_
                                                         _%self175019%_))))
                                             (for-each
                                              (lambda (_%g175026175028%_)
                                                (gxc#apply-collect-object-refs__%
                                                 '#f
                                                 _%receiver175024%_
                                                 _%method-calls172575%_
                                                 _%slot-refs172576%_
                                                 _%g175026175028%_))
                                              _%L175006%_)))
                                         _%tl174988175003%_
                                         _%hd174987175001%_)))
                                    (_%g174982174993%_ _%g174983174996%_)))))
                        (_%g174981175031%_ _%clause174980%_)))
                    (let ((__tmp176755
                           (lambda (_%g175033175036%_ _%g175034175038%_)
                             (cons _%g175033175036%_ _%g175034175038%_))))
                      (declare (not safe))
                      (__foldr1 __tmp176755 '() _%L174967%_))))
                 _%clause174925174964%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_%loop174920174948%_
                                         _%target174917174943%_
                                         '()))
                                      (_%g174911174930%_ _%g174912174933%_)))))
                            (_%g174911174930%_ _%g174912174933%_))))
                    (_%g174911174930%_ _%g174912174933%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g174910175041%_
                                                 _%L174821%_))
                                              (if (_%no-specializer?172579%_)
                                                  _%stx172483%_
                                                  (let* ((_%specializer-id175050%_
                                                          (let* ((_%id175044%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp176756
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%L172556%_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp176756 '"::specialize")))
                         (_%specializer-id175047%_
                          (let ((__tmp176757
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _%stx172483%_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _%id175044%_
                             __tmp176757))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _%specializer-id175047%_))
                    _%specializer-id175047%_))
                 (_%$klass175052%_
                  (let ((__tmp176758
                         (let () (declare (not safe)) (##gensym '__klass))))
                    (declare (not safe))
                    (make-symbol__0 __tmp176758)))
                 (_%$method-table175054%_
                  (let ((__tmp176759
                         (let ()
                           (declare (not safe))
                           (##gensym '__method-table))))
                    (declare (not safe))
                    (make-symbol__0 __tmp176759)))
                 (_%methods175056%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%method-calls172575%_)))
                 (_%$methods175060%_
                  (map (lambda (_%id175058%_)
                         (let ((__tmp176760 (gensym _%id175058%_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp176760)))
                       _%methods175056%_))
                 (_%_175069%_
                  (for-each
                   (lambda (_%g175061175064%_ _%g175062175066%_)
                     (let ()
                       (declare (not safe))
                       (__hash-put!
                        _%method-calls172575%_
                        _%g175061175064%_
                        _%g175062175066%_)))
                   _%methods175056%_
                   _%$methods175060%_))
                 (_%methods-bind175079%_
                  (map (lambda (_%g175071175074%_ _%g175072175076%_)
                         (_%generate-method-bind172485%_
                          _%$klass175052%_
                          _%$method-table175054%_
                          _%g175071175074%_
                          _%g175072175076%_))
                       _%methods175056%_
                       _%$methods175060%_))
                 (_%slots175081%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%slot-refs172576%_)))
                 (_%$slots175085%_
                  (map (lambda (_%id175083%_)
                         (let ((__tmp176761 (gensym _%id175083%_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp176761)))
                       _%slots175081%_))
                 (_%_175094%_
                  (for-each
                   (lambda (_%g175086175089%_ _%g175087175091%_)
                     (let ()
                       (declare (not safe))
                       (__hash-put!
                        _%slot-refs172576%_
                        _%g175086175089%_
                        _%g175087175091%_)))
                   _%slots175081%_
                   _%$slots175085%_))
                 (_%slots-bind175103%_
                  (map (lambda (_%g175095175098%_ _%g175096175100%_)
                         (_%generate-slot-bind172486%_
                          _%$klass175052%_
                          _%g175095175098%_
                          _%g175096175100%_))
                       _%slots175081%_
                       _%$slots175085%_))
                 (_%specializer-lambda-expr175181%_
                  (let* ((_%g175105175119%_
                          (lambda (_%g175106175116%_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g175106175116%_))))
                         (_%g175104175178%_
                          (lambda (_%g175106175122%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%g175106175122%_))
                                (let ((_%e175109175124%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%g175106175122%_))))
                                  (let ((_%hd175110175127%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e175109175124%_)))
                                        (_%tl175111175129%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e175109175124%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl175111175129%_))
                                        (let ((_%e175112175132%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl175111175129%_))))
                                          (let ((_%hd175113175135%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e175112175132%_)))
                                                (_%tl175114175137%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e175112175132%_))))
                                            ((lambda (_%L175140%_ _%L175141%_)
                                               (let* ((_%self175164%_
                                                       (list-ref
                                                        _%L175141%_
                                                        _%self-index174585%_))
                                                      (_%receiver175169%_
                                                       (let ((_%$e175166%_
                                                              (gxc#apply-extract-receiver
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f '%#begin))
                             _%L175140%_))))
                 (if _%$e175166%_ _%$e175166%_ _%self175164%_)))
              (_%body175175%_
               (map (lambda (_%g175170175172%_)
                      (gxc#apply-subst-object-refs__%
                       '#f
                       _%receiver175169%_
                       _%$klass175052%_
                       _%method-calls172575%_
                       _%slot-refs172576%_
                       _%g175170175172%_))
                    _%L175140%_))
              (__tmp176762 (cons '%#lambda (cons _%L175141%_ _%body175175%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp176762
                                                  _%L174822%_)))
                                             _%tl175114175137%_
                                             _%hd175113175135%_)))
                                        (_%g175105175119%_
                                         _%g175106175122%_))))
                                (_%g175105175119%_ _%g175106175122%_)))))
                    (_%g175104175178%_ _%L174822%_)))
                 (_%specializer-case-lambda-expr175321%_
                  (let* ((_%g175183175202%_
                          (lambda (_%g175184175199%_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g175184175199%_))))
                         (_%g175182175318%_
                          (lambda (_%g175184175205%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%g175184175205%_))
                                (let ((_%e175186175207%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%g175184175205%_))))
                                  (let ((_%hd175187175210%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e175186175207%_)))
                                        (_%tl175188175212%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e175186175207%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl175188175212%_))
                                        (let ((_g176763_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl175188175212%_
                                                  '0))))
                                          (begin
                                            (let ((_g176764_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g176763_)
                                                         (##vector-length
                                                          _g176763_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g176764_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g176764_)))
                                            (let ((_%target175189175215%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g176763_
                                                      0)))
                                                  (_%tl175191175217%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g176763_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl175191175217%_))
                                                  (letrec ((_%loop175192175220%_
                                                            (lambda (_%hd175190175223%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%clause175196175225%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd175190175223%_))
                          (let ((_%e175193175228%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd175190175223%_))))
                            (let ((_%lp-hd175194175231%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e175193175228%_)))
                                  (_%lp-tl175195175233%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e175193175228%_))))
                              (_%loop175192175220%_
                               _%lp-tl175195175233%_
                               (cons _%lp-hd175194175231%_
                                     _%clause175196175225%_))))
                          (let ((_%clause175197175236%_
                                 (reverse _%clause175196175225%_)))
                            ((lambda (_%L175239%_)
                               (let* ((_%clauses175316%_
                                       (map (lambda (_%clause175253%_)
                                              (let* ((_%g175255175266%_
                                                      (lambda (_%g175256175263%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g175256175263%_))))
                                                     (_%g175254175306%_
                                                      (lambda (_%g175256175269%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g175256175269%_))
                                                            (let ((_%e175259175271%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%g175256175269%_))))
                      (let ((_%hd175260175274%_
                             (let ()
                               (declare (not safe))
                               (##car _%e175259175271%_)))
                            (_%tl175261175276%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e175259175271%_))))
                        ((lambda (_%L175279%_ _%L175280%_)
                           (let* ((_%self175292%_
                                   (list-ref _%L175280%_ _%self-index174585%_))
                                  (_%receiver175297%_
                                   (let ((_%$e175294%_
                                          (gxc#apply-extract-receiver
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    '%#begin))
                                                 _%L175279%_))))
                                     (if _%$e175294%_
                                         _%$e175294%_
                                         _%self175292%_)))
                                  (_%body175303%_
                                   (map (lambda (_%g175298175300%_)
                                          (gxc#apply-subst-object-refs__%
                                           '#f
                                           _%receiver175297%_
                                           _%$klass175052%_
                                           _%method-calls172575%_
                                           _%slot-refs172576%_
                                           _%g175298175300%_))
                                        _%L175279%_)))
                             (cons _%L175280%_ _%body175303%_)))
                         _%tl175261175276%_
                         _%hd175260175274%_)))
                    (_%g175255175266%_ _%g175256175269%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g175254175306%_
                                                 _%clause175253%_)))
                                            (let ((__tmp176765
                                                   (lambda (_%g175308175311%_
                                                            _%g175309175313%_)
                                                     (cons _%g175308175311%_
                                                           _%g175309175313%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp176765
                                               '()
                                               _%L175239%_))))
                                      (__tmp176766
                                       (cons '%#case-lambda
                                             _%clauses175316%_)))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp176766
                                  _%L174821%_)))
                             _%clause175197175236%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop175192175220%_
                                                     _%target175189175215%_
                                                     '()))
                                                  (_%g175183175202%_
                                                   _%g175184175205%_)))))
                                        (_%g175183175202%_
                                         _%g175184175205%_))))
                                (_%g175183175202%_ _%g175184175205%_)))))
                    (_%g175182175318%_ _%L174821%_)))
                 (_%specializer-impl175323%_
                  (let ((__tmp176767
                         (cons '%#let-values
                               (cons (cons (cons (cons _%L174285%_ '())
                                                 (cons (cons '%#let-values
                                                             (cons (cons (cons (cons _%L174284%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                             '())
                                       (cons (let ((__tmp176768
                                                    (cons '%#let-values
                                                          (cons (cons (cons (cons _%L174823%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                          '())
                                    (cons _%specializer-lambda-expr175181%_
                                          '()))
                              '())
                        (cons _%specializer-case-lambda-expr175321%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp176768
                                                _%stx172483%_))
                                             '()))
                                 '())
                           (cons _%L174282%_ '())))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())
                                     (cons _%L174281%_ '())))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp176767 _%stx172483%_)))
                 (_%specializer-impl175325%_
                  (_%generate-specializer-impl172487%_
                   _%$klass175052%_
                   _%$method-table175054%_
                   _%methods-bind175079%_
                   _%slots-bind175103%_
                   _%specializer-impl175323%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp176770
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%L172556%_)))
                                                          (__tmp176769
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%specializer-id175050%_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp176770
                                                       '" => "
                                                       __tmp176769))
                                                    (_%generate-specializer-def172488%_
                                                     _%L172556%_
                                                     _%specializer-id175050%_
                                                     _%specializer-impl175325%_))))
                                            _%hd174754174816%_
                                            _%hd174751174808%_
                                            _%hd174748174800%_)
                                           (_%g174730174760%_
                                            _%g174731174763%_))))
                                   (_%g174730174760%_ _%g174731174763%_))
                               (_%g174730174760%_ _%g174731174763%_))
                           (_%g174730174760%_ _%g174731174763%_))))
                   (_%g174730174760%_ _%g174731174763%_))
               (_%g174730174760%_ _%g174731174763%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g174730174760%_
                                                _%g174731174763%_))))
                                       (_%g174730174760%_ _%g174731174763%_))))
                               (_%g174730174760%_ _%g174731174763%_))))
                       (_%g174730174760%_ _%g174731174763%_))))
               (_%g174730174760%_ _%g174731174763%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g174729175328%_ _%L174283%_))
                                         _%stx172483%_))))
                             _%hd174381174504%_
                             _%kw-ref174379174525%_
                             _%hd174369174491%_
                             _%hd174360174467%_
                             _%hd174351174443%_)
                            (_%g174325174387%_ _%g174326174390%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop174374174509%_
                                                 _%target174371174496%_
                                                 '()))
                                              (_%g174325174387%_
                                               _%g174326174390%_))))
                                      (_%g174325174387%_ _%g174326174390%_)))))
                            (_%g174325174387%_ _%g174326174390%_))
                        (_%g174325174387%_ _%g174326174390%_))
                    (_%g174325174387%_ _%g174326174390%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g174325174387%_
                                                     _%g174326174390%_))
                                                (_%g174325174387%_
                                                 _%g174326174390%_))
                                            (_%g174325174387%_
                                             _%g174326174390%_))))
                                    (_%g174325174387%_ _%g174326174390%_))))
                            (_%g174325174387%_ _%g174326174390%_))
                        (_%g174325174387%_ _%g174326174390%_))))
                (_%g174325174387%_ _%g174326174390%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g174325174387%_
                                                     _%g174326174390%_))
                                                (_%g174325174387%_
                                                 _%g174326174390%_))))
                                        (_%g174325174387%_
                                         _%g174326174390%_))))
                                (_%g174325174387%_ _%g174326174390%_))
                            (_%g174325174387%_ _%g174326174390%_))))
                    (_%g174325174387%_ _%g174326174390%_))
                (_%g174325174387%_ _%g174326174390%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g174325174387%_
                                                     _%g174326174390%_))))
                                            (_%g174325174387%_
                                             _%g174326174390%_))))
                                    (_%g174325174387%_ _%g174326174390%_))
                                (_%g174325174387%_ _%g174326174390%_))
                            (_%g174325174387%_ _%g174326174390%_))))
                    (_%g174325174387%_ _%g174326174390%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g174325174387%_
                                                     _%g174326174390%_))))
                                            (_%g174325174387%_
                                             _%g174326174390%_))
                                        (_%g174325174387%_ _%g174326174390%_))
                                    (_%g174325174387%_ _%g174326174390%_))))
                            (_%g174325174387%_ _%g174326174390%_)))))
                (_%g174324175332%_ _%L174282%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%hd174158174276%_
                                                    _%hd174155174268%_
                                                    _%hd174152174260%_
                                                    _%hd174149174252%_
                                                    _%hd174131174204%_)
                                                   (_%g174111174164%_
                                                    _%g174112174167%_))))
                                           (_%g174111174164%_
                                            _%g174112174167%_))
                                       (_%g174111174164%_ _%g174112174167%_))
                                   (_%g174111174164%_ _%g174112174167%_))
                               (_%g174111174164%_ _%g174112174167%_))))
                       (_%g174111174164%_ _%g174112174167%_))
                   (_%g174111174164%_ _%g174112174167%_))
               (_%g174111174164%_ _%g174112174167%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g174111174164%_
                                                _%g174112174167%_))
                                           (_%g174111174164%_
                                            _%g174112174167%_))))
                                   (_%g174111174164%_ _%g174112174167%_))))
                           (_%g174111174164%_ _%g174112174167%_))))
                   (_%g174111174164%_ _%g174112174167%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g174111174164%_
                                                    _%g174112174167%_))
                                               (_%g174111174164%_
                                                _%g174112174167%_))
                                           (_%g174111174164%_
                                            _%g174112174167%_))))
                                   (_%g174111174164%_ _%g174112174167%_))))
                           (_%g174111174164%_ _%g174112174167%_))
                       (_%g174111174164%_ _%g174112174167%_))))
               (_%g174111174164%_ _%g174112174167%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g174111174164%_
                                                _%g174112174167%_))))
                                       (_%g174111174164%_ _%g174112174167%_))))
                               (_%g174111174164%_ _%g174112174167%_))
                           (_%g174111174164%_ _%g174112174167%_))
                       (_%g174111174164%_ _%g174112174167%_))))
               (_%g174111174164%_ _%g174112174167%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g174110175335%_ _%L172555%_))
                                         _%stx172483%_))))))))
                  (_%__kont175569175570%_ (lambda () _%stx172483%_)))
              (let ((_%__match175598175599%_
                     (lambda (_%e172495172523%_
                              _%hd172496172526%_
                              _%tl172497172528%_
                              _%e172498172531%_
                              _%hd172499172534%_
                              _%tl172500172536%_
                              _%e172501172539%_
                              _%hd172502172542%_
                              _%tl172503172544%_
                              _%e172504172547%_
                              _%hd172505172550%_
                              _%tl172506172552%_)
                       (let ((_%L172555%_ _%hd172505172550%_)
                             (_%L172556%_ _%hd172502172542%_))
                         (if (let ((__tmp176771
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _%L172556%_))))
                               (declare (not safe))
                               (gxc#optimizer-top-level-method? __tmp176771))
                             (_%__kont175567175568%_ _%L172555%_ _%L172556%_)
                             (_%__kont175569175570%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx175565175566%_))
                    (let ((_%e172495172523%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx175565175566%_))))
                      (let ((_%tl172497172528%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e172495172523%_)))
                            (_%hd172496172526%_
                             (let ()
                               (declare (not safe))
                               (##car _%e172495172523%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl172497172528%_))
                            (let ((_%e172498172531%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl172497172528%_))))
                              (let ((_%tl172500172536%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e172498172531%_)))
                                    (_%hd172499172534%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e172498172531%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd172499172534%_))
                                    (let ((_%e172501172539%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd172499172534%_))))
                                      (let ((_%tl172503172544%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e172501172539%_)))
                                            (_%hd172502172542%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e172501172539%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl172503172544%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl172500172536%_))
                                                (let ((_%e172504172547%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl172500172536%_))))
                                                  (let ((_%tl172506172552%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e172504172547%_)))
                                                        (_%hd172505172550%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e172504172547%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl172506172552%_))
                                                        (_%__match175598175599%_
                                                         _%e172495172523%_
                                                         _%hd172496172526%_
                                                         _%tl172497172528%_
                                                         _%e172498172531%_
                                                         _%hd172499172534%_
                                                         _%tl172500172536%_
                                                         _%e172501172539%_
                                                         _%hd172502172542%_
                                                         _%tl172503172544%_
                                                         _%e172504172547%_
                                                         _%hd172505172550%_
                                                         _%tl172506172552%_)
                                                        (_%__kont175569175570%_))))
                                                (_%__kont175569175570%_))
                                            (_%__kont175569175570%_))))
                                    (_%__kont175569175570%_))))
                            (_%__kont175569175570%_))))
                    (_%__kont175569175570%_))))))))
    (define gxc#extract-receiver-begin-annotation%
      (lambda (_%self172335%_ _%stx172336%_)
        (let* ((_%__stx175601175602%_ _%stx172336%_)
               (_%g172339172372%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx175601175602%_)))))
          (let ((_%__kont175603175604%_ (lambda (_%L172462%_) _%L172462%_))
                (_%__kont175605175606%_
                 (lambda (_%L172401%_ _%L172402%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self172335%_ _%L172401%_)))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx175601175602%_))
                (let ((_%e172342172422%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%__stx175601175602%_))))
                  (let ((_%tl172344172427%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e172342172422%_)))
                        (_%hd172343172425%_
                         (let ()
                           (declare (not safe))
                           (##car _%e172342172422%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl172344172427%_))
                        (let ((_%e172345172430%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl172344172427%_))))
                          (let ((_%tl172347172435%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e172345172430%_)))
                                (_%hd172346172433%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e172345172430%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd172346172433%_))
                                (let ((_%e172348172438%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd172346172433%_))))
                                  (let ((_%tl172350172443%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e172348172438%_)))
                                        (_%hd172349172441%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e172348172438%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd172349172441%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '@receiver
                                               _%hd172349172441%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl172350172443%_))
                                                (let ((_%e172351172446%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl172350172443%_))))
                                                  (let ((_%tl172353172451%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e172351172446%_)))
                                                        (_%hd172352172449%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e172351172446%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl172353172451%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl172347172435%_))
                                                            (let ((_%e172354172454%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl172347172435%_))))
                      (let ((_%tl172356172459%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e172354172454%_)))
                            (_%hd172355172457%_
                             (let ()
                               (declare (not safe))
                               (##car _%e172354172454%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl172356172459%_))
                            (_%__kont175603175604%_ _%hd172352172449%_)
                            (let ()
                              (declare (not safe))
                              (_%g172339172372%_)))))
                    (let () (declare (not safe)) (_%g172339172372%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl172347172435%_))
                    (let ((_%e172365172393%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl172347172435%_))))
                      (let ((_%tl172367172398%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e172365172393%_)))
                            (_%hd172366172396%_
                             (let ()
                               (declare (not safe))
                               (##car _%e172365172393%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl172367172398%_))
                            (_%__kont175605175606%_
                             _%hd172366172396%_
                             _%hd172346172433%_)
                            (let ()
                              (declare (not safe))
                              (_%g172339172372%_)))))
                    (let () (declare (not safe)) (_%g172339172372%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl172347172435%_))
                                                    (let ((_%e172365172393%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl172347172435%_))))
                                                      (let ((_%tl172367172398%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e172365172393%_)))
                    (_%hd172366172396%_
                     (let () (declare (not safe)) (##car _%e172365172393%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl172367172398%_))
                    (_%__kont175605175606%_
                     _%hd172366172396%_
                     _%hd172346172433%_)
                    (let () (declare (not safe)) (_%g172339172372%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g172339172372%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl172347172435%_))
                                                (let ((_%e172365172393%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl172347172435%_))))
                                                  (let ((_%tl172367172398%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e172365172393%_)))
                                                        (_%hd172366172396%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e172365172393%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl172367172398%_))
                                                        (_%__kont175605175606%_
                                                         _%hd172366172396%_
                                                         _%hd172346172433%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g172339172372%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g172339172372%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl172347172435%_))
                                            (let ((_%e172365172393%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl172347172435%_))))
                                              (let ((_%tl172367172398%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e172365172393%_)))
                                                    (_%hd172366172396%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e172365172393%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl172367172398%_))
                                                    (_%__kont175605175606%_
                                                     _%hd172366172396%_
                                                     _%hd172346172433%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g172339172372%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g172339172372%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl172347172435%_))
                                    (let ((_%e172365172393%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl172347172435%_))))
                                      (let ((_%tl172367172398%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e172365172393%_)))
                                            (_%hd172366172396%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e172365172393%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl172367172398%_))
                                            (_%__kont175605175606%_
                                             _%hd172366172396%_
                                             _%hd172346172433%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g172339172372%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g172339172372%_))))))
                        (let () (declare (not safe)) (_%g172339172372%_)))))
                (let () (declare (not safe)) (_%g172339172372%_)))))))
    (define gxc#extract-receiver-if%
      (lambda (_%self172251%_ _%stx172252%_)
        (let* ((_%g172254172275%_
                (lambda (_%g172255172272%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g172255172272%_))))
               (_%g172253172332%_
                (lambda (_%g172255172278%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g172255172278%_))
                      (let ((_%e172259172280%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g172255172278%_))))
                        (let ((_%hd172260172283%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e172259172280%_)))
                              (_%tl172261172285%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e172259172280%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl172261172285%_))
                              (let ((_%e172262172288%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl172261172285%_))))
                                (let ((_%hd172263172291%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e172262172288%_)))
                                      (_%tl172264172293%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e172262172288%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl172264172293%_))
                                      (let ((_%e172265172296%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl172264172293%_))))
                                        (let ((_%hd172266172299%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e172265172296%_)))
                                              (_%tl172267172301%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e172265172296%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl172267172301%_))
                                              (let ((_%e172268172304%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl172267172301%_))))
                                                (let ((_%hd172269172307%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e172268172304%_)))
                                                      (_%tl172270172309%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e172268172304%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl172270172309%_))
                                                      ((lambda (_%L172312%_
                                                                _%L172313%_
                                                                _%L172314%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%self172251%_
                                                            _%L172313%_)))
                                                       _%hd172269172307%_
                                                       _%hd172266172299%_
                                                       _%hd172263172291%_)
                                                      (_%g172254172275%_
                                                       _%g172255172278%_))))
                                              (_%g172254172275%_
                                               _%g172255172278%_))))
                                      (_%g172254172275%_ _%g172255172278%_))))
                              (_%g172254172275%_ _%g172255172278%_))))
                      (_%g172254172275%_ _%g172255172278%_)))))
          (_%g172253172332%_ _%stx172252%_))))
    (define gxc#collect-object-refs-call%
      (lambda (_%self171212%_ _%stx171213%_)
        (let* ((_%__stx175667175668%_ _%stx171213%_)
               (_%g171221171443%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx175667175668%_)))))
          (let ((_%__kont175669175670%_
                 (lambda (_%L172200%_ _%L172201%_ _%L172202%_ _%L172203%_)
                   (let ((__tmp176773
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self171212%_ 'methods)))
                         (__tmp176772
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L172201%_))))
                     (declare (not safe))
                     (hash-put! __tmp176773 __tmp176772 '#t))
                   (for-each
                    (lambda (_%g172236172238%_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self171212%_ _%g172236172238%_)))
                    (let ((__tmp176774
                           (lambda (_%g172240172243%_ _%g172241172245%_)
                             (cons _%g172240172243%_ _%g172241172245%_))))
                      (declare (not safe))
                      (__foldr1 __tmp176774 '() _%L172200%_)))))
                (_%__kont175673175674%_
                 (lambda (_%L172035%_
                          _%L172036%_
                          _%L172037%_
                          _%L172038%_
                          _%L172039%_)
                   (let ((__tmp176776
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self171212%_ 'methods)))
                         (__tmp176775
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L172036%_))))
                     (declare (not safe))
                     (hash-put! __tmp176776 __tmp176775 '#t))
                   (for-each
                    (lambda (_%g172079172081%_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self171212%_ _%g172079172081%_)))
                    (let ((__tmp176777
                           (lambda (_%g172083172086%_ _%g172084172088%_)
                             (cons _%g172083172086%_ _%g172084172088%_))))
                      (declare (not safe))
                      (__foldr1 __tmp176777 '() _%L172035%_)))))
                (_%__kont175677175678%_
                 (lambda (_%L171868%_ _%L171869%_ _%L171870%_)
                   (let ((__tmp176779
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self171212%_ 'slots)))
                         (__tmp176778
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L171868%_))))
                     (declare (not safe))
                     (hash-put! __tmp176779 __tmp176778 '#t))))
                (_%__kont175679175680%_
                 (lambda (_%L171745%_ _%L171746%_ _%L171747%_ _%L171748%_)
                   (let ((__tmp176781
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self171212%_ 'slots)))
                         (__tmp176780
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L171746%_))))
                     (declare (not safe))
                     (hash-put! __tmp176781 __tmp176780 '#t))
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self171212%_ _%L171745%_))))
                (_%__kont175681175682%_
                 (lambda (_%L171619%_ _%L171620%_)
                   (let* ((_%accessor171642%_
                           (let ((__tmp176782
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _%L171620%_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp176782)))
                          (_%klass171644%_
                           (let ((__tmp176783
                                  (##structure-ref
                                   _%accessor171642%_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _%stx171213%_
                              __tmp176783)))
                          (_%slot171646%_
                           (##structure-ref
                            _%accessor171642%_
                            '3
                            gxc#!accessor::t
                            '#f)))
                     (if (if (##structure-ref
                              _%accessor171642%_
                              '4
                              gxc#!accessor::t
                              '#f)
                             '#f
                             (or (let ()
                                   (declare (not safe))
                                   (gxc#!class-struct-slot?
                                    _%klass171644%_
                                    _%slot171646%_))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%klass171644%_
                                    '8
                                    '#f
                                    '#f))))
                         '#!void
                         (let ((__tmp176785
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _%self171212%_ 'slots)))
                               (__tmp176784
                                (##structure-ref
                                 _%accessor171642%_
                                 '3
                                 gxc#!accessor::t
                                 '#f)))
                           (declare (not safe))
                           (hash-put! __tmp176785 __tmp176784 '#t))))))
                (_%__kont175683175684%_
                 (lambda (_%L171519%_ _%L171520%_ _%L171521%_)
                   (let* ((_%mutator171548%_
                           (let ((__tmp176786
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _%L171521%_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp176786)))
                          (_%klass171550%_
                           (let ((__tmp176787
                                  (##structure-ref
                                   _%mutator171548%_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _%stx171213%_
                              __tmp176787)))
                          (_%slot171552%_
                           (##structure-ref
                            _%mutator171548%_
                            '3
                            gxc#!mutator::t
                            '#f)))
                     (if (if (##structure-ref
                              _%mutator171548%_
                              '4
                              gxc#!mutator::t
                              '#f)
                             '#f
                             (or (let ()
                                   (declare (not safe))
                                   (gxc#!class-struct-slot?
                                    _%klass171550%_
                                    _%slot171552%_))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%klass171550%_
                                    '8
                                    '#f
                                    '#f))))
                         '#!void
                         (let ((__tmp176788
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _%self171212%_ 'slots))))
                           (declare (not safe))
                           (hash-put! __tmp176788 _%slot171552%_ '#t)))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-e__1 _%self171212%_ _%L171519%_)))))
                (_%__kont175685175686%_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#apply-operands _%self171212%_ _%stx171213%_)))))
            (let* ((_%__match176166176167%_
                    (lambda (_%e171415171455%_
                             _%hd171416171458%_
                             _%tl171417171460%_
                             _%e171418171463%_
                             _%hd171419171466%_
                             _%tl171420171468%_
                             _%e171421171471%_
                             _%hd171422171474%_
                             _%tl171423171476%_
                             _%e171424171479%_
                             _%hd171425171482%_
                             _%tl171426171484%_
                             _%e171427171487%_
                             _%hd171428171490%_
                             _%tl171429171492%_
                             _%e171430171495%_
                             _%hd171431171498%_
                             _%tl171432171500%_
                             _%e171433171503%_
                             _%hd171434171506%_
                             _%tl171435171508%_
                             _%e171436171511%_
                             _%hd171437171514%_
                             _%tl171438171516%_)
                      (let ((_%L171519%_ _%hd171437171514%_)
                            (_%L171520%_ _%hd171434171506%_)
                            (_%L171521%_ _%hd171425171482%_))
                        (if (and (let ((__tmp176789
                                        (let ((__tmp176790
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _%L171521%_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp176790))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp176789
                                    'gxc#!mutator::t))
                                 (let ((__tmp176791
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self171212%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L171520%_
                                    __tmp176791)))
                            (_%__kont175683175684%_
                             _%L171519%_
                             _%L171520%_
                             _%L171521%_)
                            (_%__kont175685175686%_)))))
                   (_%__match176164176165%_
                    (lambda (_%e171415171455%_
                             _%hd171416171458%_
                             _%tl171417171460%_
                             _%e171418171463%_
                             _%hd171419171466%_
                             _%tl171420171468%_
                             _%e171421171471%_
                             _%hd171422171474%_
                             _%tl171423171476%_
                             _%e171424171479%_
                             _%hd171425171482%_
                             _%tl171426171484%_
                             _%e171427171487%_
                             _%hd171428171490%_
                             _%tl171429171492%_
                             _%e171430171495%_
                             _%hd171431171498%_
                             _%tl171432171500%_
                             _%e171433171503%_
                             _%hd171434171506%_
                             _%tl171435171508%_
                             _%e171436171511%_
                             _%hd171437171514%_
                             _%tl171438171516%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl171438171516%_))
                          (_%__match176166176167%_
                           _%e171415171455%_
                           _%hd171416171458%_
                           _%tl171417171460%_
                           _%e171418171463%_
                           _%hd171419171466%_
                           _%tl171420171468%_
                           _%e171421171471%_
                           _%hd171422171474%_
                           _%tl171423171476%_
                           _%e171424171479%_
                           _%hd171425171482%_
                           _%tl171426171484%_
                           _%e171427171487%_
                           _%hd171428171490%_
                           _%tl171429171492%_
                           _%e171430171495%_
                           _%hd171431171498%_
                           _%tl171432171500%_
                           _%e171433171503%_
                           _%hd171434171506%_
                           _%tl171435171508%_
                           _%e171436171511%_
                           _%hd171437171514%_
                           _%tl171438171516%_)
                          (_%__kont175685175686%_))))
                   (_%__match176158176159%_
                    (lambda (_%e171415171455%_
                             _%hd171416171458%_
                             _%tl171417171460%_
                             _%e171418171463%_
                             _%hd171419171466%_
                             _%tl171420171468%_
                             _%e171421171471%_
                             _%hd171422171474%_
                             _%tl171423171476%_
                             _%e171424171479%_
                             _%hd171425171482%_
                             _%tl171426171484%_
                             _%e171427171487%_
                             _%hd171428171490%_
                             _%tl171429171492%_
                             _%e171430171495%_
                             _%hd171431171498%_
                             _%tl171432171500%_
                             _%e171433171503%_
                             _%hd171434171506%_
                             _%tl171435171508%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl171429171492%_))
                          (let ((_%e171436171511%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl171429171492%_))))
                            (let ((_%tl171438171516%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e171436171511%_)))
                                  (_%hd171437171514%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e171436171511%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl171438171516%_))
                                  (_%__match176166176167%_
                                   _%e171415171455%_
                                   _%hd171416171458%_
                                   _%tl171417171460%_
                                   _%e171418171463%_
                                   _%hd171419171466%_
                                   _%tl171420171468%_
                                   _%e171421171471%_
                                   _%hd171422171474%_
                                   _%tl171423171476%_
                                   _%e171424171479%_
                                   _%hd171425171482%_
                                   _%tl171426171484%_
                                   _%e171427171487%_
                                   _%hd171428171490%_
                                   _%tl171429171492%_
                                   _%e171430171495%_
                                   _%hd171431171498%_
                                   _%tl171432171500%_
                                   _%e171433171503%_
                                   _%hd171434171506%_
                                   _%tl171435171508%_
                                   _%e171436171511%_
                                   _%hd171437171514%_
                                   _%tl171438171516%_)
                                  (_%__kont175685175686%_))))
                          (_%__kont175685175686%_))))
                   (_%__match176104176105%_
                    (lambda (_%e171391171563%_
                             _%hd171392171566%_
                             _%tl171393171568%_
                             _%e171394171571%_
                             _%hd171395171574%_
                             _%tl171396171576%_
                             _%e171397171579%_
                             _%hd171398171582%_
                             _%tl171399171584%_
                             _%e171400171587%_
                             _%hd171401171590%_
                             _%tl171402171592%_
                             _%e171403171595%_
                             _%hd171404171598%_
                             _%tl171405171600%_
                             _%e171406171603%_
                             _%hd171407171606%_
                             _%tl171408171608%_
                             _%e171409171611%_
                             _%hd171410171614%_
                             _%tl171411171616%_)
                      (let ((_%L171619%_ _%hd171410171614%_)
                            (_%L171620%_ _%hd171401171590%_))
                        (if (and (let ((__tmp176792
                                        (let ((__tmp176793
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _%L171620%_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp176793))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp176792
                                    'gxc#!accessor::t))
                                 (let ((__tmp176794
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self171212%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L171619%_
                                    __tmp176794)))
                            (_%__kont175681175682%_ _%L171619%_ _%L171620%_)
                            (_%__kont175685175686%_)))))
                   (_%__match176102176103%_
                    (lambda (_%e171391171563%_
                             _%hd171392171566%_
                             _%tl171393171568%_
                             _%e171394171571%_
                             _%hd171395171574%_
                             _%tl171396171576%_
                             _%e171397171579%_
                             _%hd171398171582%_
                             _%tl171399171584%_
                             _%e171400171587%_
                             _%hd171401171590%_
                             _%tl171402171592%_
                             _%e171403171595%_
                             _%hd171404171598%_
                             _%tl171405171600%_
                             _%e171406171603%_
                             _%hd171407171606%_
                             _%tl171408171608%_
                             _%e171409171611%_
                             _%hd171410171614%_
                             _%tl171411171616%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl171405171600%_))
                          (_%__match176104176105%_
                           _%e171391171563%_
                           _%hd171392171566%_
                           _%tl171393171568%_
                           _%e171394171571%_
                           _%hd171395171574%_
                           _%tl171396171576%_
                           _%e171397171579%_
                           _%hd171398171582%_
                           _%tl171399171584%_
                           _%e171400171587%_
                           _%hd171401171590%_
                           _%tl171402171592%_
                           _%e171403171595%_
                           _%hd171404171598%_
                           _%tl171405171600%_
                           _%e171406171603%_
                           _%hd171407171606%_
                           _%tl171408171608%_
                           _%e171409171611%_
                           _%hd171410171614%_
                           _%tl171411171616%_)
                          (_%__match176158176159%_
                           _%e171391171563%_
                           _%hd171392171566%_
                           _%tl171393171568%_
                           _%e171394171571%_
                           _%hd171395171574%_
                           _%tl171396171576%_
                           _%e171397171579%_
                           _%hd171398171582%_
                           _%tl171399171584%_
                           _%e171400171587%_
                           _%hd171401171590%_
                           _%tl171402171592%_
                           _%e171403171595%_
                           _%hd171404171598%_
                           _%tl171405171600%_
                           _%e171406171603%_
                           _%hd171407171606%_
                           _%tl171408171608%_
                           _%e171409171611%_
                           _%hd171410171614%_
                           _%tl171411171616%_))))
                   (_%__match176048176049%_
                    (lambda (_%e171356171657%_
                             _%hd171357171660%_
                             _%tl171358171662%_
                             _%e171359171665%_
                             _%hd171360171668%_
                             _%tl171361171670%_
                             _%e171362171673%_
                             _%hd171363171676%_
                             _%tl171364171678%_
                             _%e171365171681%_
                             _%hd171366171684%_
                             _%tl171367171686%_
                             _%e171368171689%_
                             _%hd171369171692%_
                             _%tl171370171694%_
                             _%e171371171697%_
                             _%hd171372171700%_
                             _%tl171373171702%_
                             _%e171374171705%_
                             _%hd171375171708%_
                             _%tl171376171710%_
                             _%e171377171713%_
                             _%hd171378171716%_
                             _%tl171379171718%_
                             _%e171380171721%_
                             _%hd171381171724%_
                             _%tl171382171726%_
                             _%e171383171729%_
                             _%hd171384171732%_
                             _%tl171385171734%_
                             _%e171386171737%_
                             _%hd171387171740%_
                             _%tl171388171742%_)
                      (let ((_%L171745%_ _%hd171387171740%_)
                            (_%L171746%_ _%hd171384171732%_)
                            (_%L171747%_ _%hd171375171708%_)
                            (_%L171748%_ _%hd171366171684%_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L171748%_
                                        'slot-set!))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L171748%_
                                        'unchecked-slot-set!)))
                                 (let ((__tmp176795
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self171212%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L171747%_
                                    __tmp176795)))
                            (_%__kont175679175680%_
                             _%L171745%_
                             _%L171746%_
                             _%L171747%_
                             _%L171748%_)
                            (_%__kont175685175686%_)))))
                   (_%__match176040176041%_
                    (lambda (_%e171356171657%_
                             _%hd171357171660%_
                             _%tl171358171662%_
                             _%e171359171665%_
                             _%hd171360171668%_
                             _%tl171361171670%_
                             _%e171362171673%_
                             _%hd171363171676%_
                             _%tl171364171678%_
                             _%e171365171681%_
                             _%hd171366171684%_
                             _%tl171367171686%_
                             _%e171368171689%_
                             _%hd171369171692%_
                             _%tl171370171694%_
                             _%e171371171697%_
                             _%hd171372171700%_
                             _%tl171373171702%_
                             _%e171374171705%_
                             _%hd171375171708%_
                             _%tl171376171710%_
                             _%e171377171713%_
                             _%hd171378171716%_
                             _%tl171379171718%_
                             _%e171380171721%_
                             _%hd171381171724%_
                             _%tl171382171726%_
                             _%e171383171729%_
                             _%hd171384171732%_
                             _%tl171385171734%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl171379171718%_))
                          (let ((_%e171386171737%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl171379171718%_))))
                            (let ((_%tl171388171742%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e171386171737%_)))
                                  (_%hd171387171740%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e171386171737%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl171388171742%_))
                                  (_%__match176048176049%_
                                   _%e171356171657%_
                                   _%hd171357171660%_
                                   _%tl171358171662%_
                                   _%e171359171665%_
                                   _%hd171360171668%_
                                   _%tl171361171670%_
                                   _%e171362171673%_
                                   _%hd171363171676%_
                                   _%tl171364171678%_
                                   _%e171365171681%_
                                   _%hd171366171684%_
                                   _%tl171367171686%_
                                   _%e171368171689%_
                                   _%hd171369171692%_
                                   _%tl171370171694%_
                                   _%e171371171697%_
                                   _%hd171372171700%_
                                   _%tl171373171702%_
                                   _%e171374171705%_
                                   _%hd171375171708%_
                                   _%tl171376171710%_
                                   _%e171377171713%_
                                   _%hd171378171716%_
                                   _%tl171379171718%_
                                   _%e171380171721%_
                                   _%hd171381171724%_
                                   _%tl171382171726%_
                                   _%e171383171729%_
                                   _%hd171384171732%_
                                   _%tl171385171734%_
                                   _%e171386171737%_
                                   _%hd171387171740%_
                                   _%tl171388171742%_)
                                  (_%__kont175685175686%_))))
                          (_%__match176164176165%_
                           _%e171356171657%_
                           _%hd171357171660%_
                           _%tl171358171662%_
                           _%e171359171665%_
                           _%hd171360171668%_
                           _%tl171361171670%_
                           _%e171362171673%_
                           _%hd171363171676%_
                           _%tl171364171678%_
                           _%e171365171681%_
                           _%hd171366171684%_
                           _%tl171367171686%_
                           _%e171368171689%_
                           _%hd171369171692%_
                           _%tl171370171694%_
                           _%e171371171697%_
                           _%hd171372171700%_
                           _%tl171373171702%_
                           _%e171374171705%_
                           _%hd171375171708%_
                           _%tl171376171710%_
                           _%e171377171713%_
                           _%hd171378171716%_
                           _%tl171379171718%_))))
                   (_%__match175962175963%_
                    (lambda (_%e171322171788%_
                             _%hd171323171791%_
                             _%tl171324171793%_
                             _%e171325171796%_
                             _%hd171326171799%_
                             _%tl171327171801%_
                             _%e171328171804%_
                             _%hd171329171807%_
                             _%tl171330171809%_
                             _%e171331171812%_
                             _%hd171332171815%_
                             _%tl171333171817%_
                             _%e171334171820%_
                             _%hd171335171823%_
                             _%tl171336171825%_
                             _%e171337171828%_
                             _%hd171338171831%_
                             _%tl171339171833%_
                             _%e171340171836%_
                             _%hd171341171839%_
                             _%tl171342171841%_
                             _%e171343171844%_
                             _%hd171344171847%_
                             _%tl171345171849%_
                             _%e171346171852%_
                             _%hd171347171855%_
                             _%tl171348171857%_
                             _%e171349171860%_
                             _%hd171350171863%_
                             _%tl171351171865%_)
                      (let ((_%L171868%_ _%hd171350171863%_)
                            (_%L171869%_ _%hd171341171839%_)
                            (_%L171870%_ _%hd171332171815%_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L171870%_
                                        'slot-ref))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L171870%_
                                        'unchecked-slot-ref)))
                                 (let ((__tmp176796
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self171212%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L171869%_
                                    __tmp176796)))
                            (_%__kont175677175678%_
                             _%L171868%_
                             _%L171869%_
                             _%L171870%_)
                            (_%__match176166176167%_
                             _%e171322171788%_
                             _%hd171323171791%_
                             _%tl171324171793%_
                             _%e171325171796%_
                             _%hd171326171799%_
                             _%tl171327171801%_
                             _%e171328171804%_
                             _%hd171329171807%_
                             _%tl171330171809%_
                             _%e171331171812%_
                             _%hd171332171815%_
                             _%tl171333171817%_
                             _%e171334171820%_
                             _%hd171335171823%_
                             _%tl171336171825%_
                             _%e171337171828%_
                             _%hd171338171831%_
                             _%tl171339171833%_
                             _%e171340171836%_
                             _%hd171341171839%_
                             _%tl171342171841%_
                             _%e171343171844%_
                             _%hd171344171847%_
                             _%tl171345171849%_)))))
                   (_%__match175960175961%_
                    (lambda (_%e171322171788%_
                             _%hd171323171791%_
                             _%tl171324171793%_
                             _%e171325171796%_
                             _%hd171326171799%_
                             _%tl171327171801%_
                             _%e171328171804%_
                             _%hd171329171807%_
                             _%tl171330171809%_
                             _%e171331171812%_
                             _%hd171332171815%_
                             _%tl171333171817%_
                             _%e171334171820%_
                             _%hd171335171823%_
                             _%tl171336171825%_
                             _%e171337171828%_
                             _%hd171338171831%_
                             _%tl171339171833%_
                             _%e171340171836%_
                             _%hd171341171839%_
                             _%tl171342171841%_
                             _%e171343171844%_
                             _%hd171344171847%_
                             _%tl171345171849%_
                             _%e171346171852%_
                             _%hd171347171855%_
                             _%tl171348171857%_
                             _%e171349171860%_
                             _%hd171350171863%_
                             _%tl171351171865%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl171345171849%_))
                          (_%__match175962175963%_
                           _%e171322171788%_
                           _%hd171323171791%_
                           _%tl171324171793%_
                           _%e171325171796%_
                           _%hd171326171799%_
                           _%tl171327171801%_
                           _%e171328171804%_
                           _%hd171329171807%_
                           _%tl171330171809%_
                           _%e171331171812%_
                           _%hd171332171815%_
                           _%tl171333171817%_
                           _%e171334171820%_
                           _%hd171335171823%_
                           _%tl171336171825%_
                           _%e171337171828%_
                           _%hd171338171831%_
                           _%tl171339171833%_
                           _%e171340171836%_
                           _%hd171341171839%_
                           _%tl171342171841%_
                           _%e171343171844%_
                           _%hd171344171847%_
                           _%tl171345171849%_
                           _%e171346171852%_
                           _%hd171347171855%_
                           _%tl171348171857%_
                           _%e171349171860%_
                           _%hd171350171863%_
                           _%tl171351171865%_)
                          (_%__match176040176041%_
                           _%e171322171788%_
                           _%hd171323171791%_
                           _%tl171324171793%_
                           _%e171325171796%_
                           _%hd171326171799%_
                           _%tl171327171801%_
                           _%e171328171804%_
                           _%hd171329171807%_
                           _%tl171330171809%_
                           _%e171331171812%_
                           _%hd171332171815%_
                           _%tl171333171817%_
                           _%e171334171820%_
                           _%hd171335171823%_
                           _%tl171336171825%_
                           _%e171337171828%_
                           _%hd171338171831%_
                           _%tl171339171833%_
                           _%e171340171836%_
                           _%hd171341171839%_
                           _%tl171342171841%_
                           _%e171343171844%_
                           _%hd171344171847%_
                           _%tl171345171849%_
                           _%e171346171852%_
                           _%hd171347171855%_
                           _%tl171348171857%_
                           _%e171349171860%_
                           _%hd171350171863%_
                           _%tl171351171865%_))))
                   (_%__match175950175951%_
                    (lambda (_%e171322171788%_
                             _%hd171323171791%_
                             _%tl171324171793%_
                             _%e171325171796%_
                             _%hd171326171799%_
                             _%tl171327171801%_
                             _%e171328171804%_
                             _%hd171329171807%_
                             _%tl171330171809%_
                             _%e171331171812%_
                             _%hd171332171815%_
                             _%tl171333171817%_
                             _%e171334171820%_
                             _%hd171335171823%_
                             _%tl171336171825%_
                             _%e171337171828%_
                             _%hd171338171831%_
                             _%tl171339171833%_
                             _%e171340171836%_
                             _%hd171341171839%_
                             _%tl171342171841%_
                             _%e171343171844%_
                             _%hd171344171847%_
                             _%tl171345171849%_
                             _%e171346171852%_
                             _%hd171347171855%_
                             _%tl171348171857%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#quote _%hd171347171855%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl171348171857%_))
                              (let ((_%e171349171860%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl171348171857%_))))
                                (let ((_%tl171351171865%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e171349171860%_)))
                                      (_%hd171350171863%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e171349171860%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl171351171865%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl171345171849%_))
                                          (_%__match175962175963%_
                                           _%e171322171788%_
                                           _%hd171323171791%_
                                           _%tl171324171793%_
                                           _%e171325171796%_
                                           _%hd171326171799%_
                                           _%tl171327171801%_
                                           _%e171328171804%_
                                           _%hd171329171807%_
                                           _%tl171330171809%_
                                           _%e171331171812%_
                                           _%hd171332171815%_
                                           _%tl171333171817%_
                                           _%e171334171820%_
                                           _%hd171335171823%_
                                           _%tl171336171825%_
                                           _%e171337171828%_
                                           _%hd171338171831%_
                                           _%tl171339171833%_
                                           _%e171340171836%_
                                           _%hd171341171839%_
                                           _%tl171342171841%_
                                           _%e171343171844%_
                                           _%hd171344171847%_
                                           _%tl171345171849%_
                                           _%e171346171852%_
                                           _%hd171347171855%_
                                           _%tl171348171857%_
                                           _%e171349171860%_
                                           _%hd171350171863%_
                                           _%tl171351171865%_)
                                          (_%__match176040176041%_
                                           _%e171322171788%_
                                           _%hd171323171791%_
                                           _%tl171324171793%_
                                           _%e171325171796%_
                                           _%hd171326171799%_
                                           _%tl171327171801%_
                                           _%e171328171804%_
                                           _%hd171329171807%_
                                           _%tl171330171809%_
                                           _%e171331171812%_
                                           _%hd171332171815%_
                                           _%tl171333171817%_
                                           _%e171334171820%_
                                           _%hd171335171823%_
                                           _%tl171336171825%_
                                           _%e171337171828%_
                                           _%hd171338171831%_
                                           _%tl171339171833%_
                                           _%e171340171836%_
                                           _%hd171341171839%_
                                           _%tl171342171841%_
                                           _%e171343171844%_
                                           _%hd171344171847%_
                                           _%tl171345171849%_
                                           _%e171346171852%_
                                           _%hd171347171855%_
                                           _%tl171348171857%_
                                           _%e171349171860%_
                                           _%hd171350171863%_
                                           _%tl171351171865%_))
                                      (_%__match176164176165%_
                                       _%e171322171788%_
                                       _%hd171323171791%_
                                       _%tl171324171793%_
                                       _%e171325171796%_
                                       _%hd171326171799%_
                                       _%tl171327171801%_
                                       _%e171328171804%_
                                       _%hd171329171807%_
                                       _%tl171330171809%_
                                       _%e171331171812%_
                                       _%hd171332171815%_
                                       _%tl171333171817%_
                                       _%e171334171820%_
                                       _%hd171335171823%_
                                       _%tl171336171825%_
                                       _%e171337171828%_
                                       _%hd171338171831%_
                                       _%tl171339171833%_
                                       _%e171340171836%_
                                       _%hd171341171839%_
                                       _%tl171342171841%_
                                       _%e171343171844%_
                                       _%hd171344171847%_
                                       _%tl171345171849%_))))
                              (_%__match176164176165%_
                               _%e171322171788%_
                               _%hd171323171791%_
                               _%tl171324171793%_
                               _%e171325171796%_
                               _%hd171326171799%_
                               _%tl171327171801%_
                               _%e171328171804%_
                               _%hd171329171807%_
                               _%tl171330171809%_
                               _%e171331171812%_
                               _%hd171332171815%_
                               _%tl171333171817%_
                               _%e171334171820%_
                               _%hd171335171823%_
                               _%tl171336171825%_
                               _%e171337171828%_
                               _%hd171338171831%_
                               _%tl171339171833%_
                               _%e171340171836%_
                               _%hd171341171839%_
                               _%tl171342171841%_
                               _%e171343171844%_
                               _%hd171344171847%_
                               _%tl171345171849%_))
                          (_%__match176164176165%_
                           _%e171322171788%_
                           _%hd171323171791%_
                           _%tl171324171793%_
                           _%e171325171796%_
                           _%hd171326171799%_
                           _%tl171327171801%_
                           _%e171328171804%_
                           _%hd171329171807%_
                           _%tl171330171809%_
                           _%e171331171812%_
                           _%hd171332171815%_
                           _%tl171333171817%_
                           _%e171334171820%_
                           _%hd171335171823%_
                           _%tl171336171825%_
                           _%e171337171828%_
                           _%hd171338171831%_
                           _%tl171339171833%_
                           _%e171340171836%_
                           _%hd171341171839%_
                           _%tl171342171841%_
                           _%e171343171844%_
                           _%hd171344171847%_
                           _%tl171345171849%_))))
                   (_%__match175882175883%_
                    (lambda (_%e171271171907%_
                             _%hd171272171910%_
                             _%tl171273171912%_
                             _%e171274171915%_
                             _%hd171275171918%_
                             _%tl171276171920%_
                             _%e171277171923%_
                             _%hd171278171926%_
                             _%tl171279171928%_
                             _%e171280171931%_
                             _%hd171281171934%_
                             _%tl171282171936%_
                             _%e171283171939%_
                             _%hd171284171942%_
                             _%tl171285171944%_
                             _%e171286171947%_
                             _%hd171287171950%_
                             _%tl171288171952%_
                             _%e171289171955%_
                             _%hd171290171958%_
                             _%tl171291171960%_
                             _%e171292171963%_
                             _%hd171293171966%_
                             _%tl171294171968%_
                             _%e171295171971%_
                             _%hd171296171974%_
                             _%tl171297171976%_
                             _%e171298171979%_
                             _%hd171299171982%_
                             _%tl171300171984%_
                             _%e171301171987%_
                             _%hd171302171990%_
                             _%tl171303171992%_
                             _%e171304171995%_
                             _%hd171305171998%_
                             _%tl171306172000%_
                             _%e171307172003%_
                             _%hd171308172006%_
                             _%tl171309172008%_
                             _%__splice175675175676%_
                             _%target171310172011%_
                             _%tl171312172013%_)
                      (letrec ((_%loop171313172016%_
                                (lambda (_%hd171311172019%_
                                         _%args171317172021%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd171311172019%_))
                                      (let ((_%e171314172024%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd171311172019%_))))
                                        (let ((_%lp-tl171316172029%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e171314172024%_)))
                                              (_%lp-hd171315172027%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e171314172024%_))))
                                          (_%loop171313172016%_
                                           _%lp-tl171316172029%_
                                           (cons _%lp-hd171315172027%_
                                                 _%args171317172021%_))))
                                      (let ((_%args171318172032%_
                                             (reverse _%args171317172021%_)))
                                        (let ((_%L172035%_
                                               _%args171318172032%_)
                                              (_%L172036%_ _%hd171308172006%_)
                                              (_%L172037%_ _%hd171299171982%_)
                                              (_%L172038%_ _%hd171290171958%_)
                                              (_%L172039%_ _%hd171281171934%_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%L172039%_
                                                      'apply))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%L172038%_
                                                      'call-method))
                                                   (let ((__tmp176797
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self171212%_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%L172037%_
                                                      __tmp176797)))
                                              (_%__kont175673175674%_
                                               _%L172035%_
                                               _%L172036%_
                                               _%L172037%_
                                               _%L172038%_
                                               _%L172039%_)
                                              (_%__kont175685175686%_))))))))
                        (_%loop171313172016%_ _%target171310172011%_ '()))))
                   (_%__match175840175841%_
                    (lambda (_%e171271171907%_
                             _%hd171272171910%_
                             _%tl171273171912%_
                             _%e171274171915%_
                             _%hd171275171918%_
                             _%tl171276171920%_
                             _%e171277171923%_
                             _%hd171278171926%_
                             _%tl171279171928%_
                             _%e171280171931%_
                             _%hd171281171934%_
                             _%tl171282171936%_
                             _%e171283171939%_
                             _%hd171284171942%_
                             _%tl171285171944%_
                             _%e171286171947%_
                             _%hd171287171950%_
                             _%tl171288171952%_
                             _%e171289171955%_
                             _%hd171290171958%_
                             _%tl171291171960%_
                             _%e171292171963%_
                             _%hd171293171966%_
                             _%tl171294171968%_
                             _%e171295171971%_
                             _%hd171296171974%_
                             _%tl171297171976%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _%hd171296171974%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl171297171976%_))
                              (let ((_%e171298171979%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl171297171976%_))))
                                (let ((_%tl171300171984%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e171298171979%_)))
                                      (_%hd171299171982%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e171298171979%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl171300171984%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl171294171968%_))
                                          (let ((_%e171301171987%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl171294171968%_))))
                                            (let ((_%tl171303171992%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e171301171987%_)))
                                                  (_%hd171302171990%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e171301171987%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd171302171990%_))
                                                  (let ((_%e171304171995%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd171302171990%_))))
                                                    (let ((_%tl171306172000%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e171304171995%_)))
                                                          (_%hd171305171998%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e171304171995%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd171305171998%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#quote _%hd171305171998%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl171306172000%_))
                          (let ((_%e171307172003%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl171306172000%_))))
                            (let ((_%tl171309172008%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e171307172003%_)))
                                  (_%hd171308172006%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e171307172003%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl171309172008%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl171303171992%_))
                                      (let ((_%__splice175675175676%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl171303171992%_
                                                '0))))
                                        (let ((_%tl171312172013%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice175675175676%_
                                                  '1)))
                                              (_%target171310172011%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice175675175676%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl171312172013%_))
                                              (_%__match175882175883%_
                                               _%e171271171907%_
                                               _%hd171272171910%_
                                               _%tl171273171912%_
                                               _%e171274171915%_
                                               _%hd171275171918%_
                                               _%tl171276171920%_
                                               _%e171277171923%_
                                               _%hd171278171926%_
                                               _%tl171279171928%_
                                               _%e171280171931%_
                                               _%hd171281171934%_
                                               _%tl171282171936%_
                                               _%e171283171939%_
                                               _%hd171284171942%_
                                               _%tl171285171944%_
                                               _%e171286171947%_
                                               _%hd171287171950%_
                                               _%tl171288171952%_
                                               _%e171289171955%_
                                               _%hd171290171958%_
                                               _%tl171291171960%_
                                               _%e171292171963%_
                                               _%hd171293171966%_
                                               _%tl171294171968%_
                                               _%e171295171971%_
                                               _%hd171296171974%_
                                               _%tl171297171976%_
                                               _%e171298171979%_
                                               _%hd171299171982%_
                                               _%tl171300171984%_
                                               _%e171301171987%_
                                               _%hd171302171990%_
                                               _%tl171303171992%_
                                               _%e171304171995%_
                                               _%hd171305171998%_
                                               _%tl171306172000%_
                                               _%e171307172003%_
                                               _%hd171308172006%_
                                               _%tl171309172008%_
                                               _%__splice175675175676%_
                                               _%target171310172011%_
                                               _%tl171312172013%_)
                                              (_%__kont175685175686%_))))
                                      (_%__kont175685175686%_))
                                  (_%__kont175685175686%_))))
                          (_%__kont175685175686%_))
                      (_%__kont175685175686%_))
                  (_%__kont175685175686%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont175685175686%_))))
                                          (_%__match176164176165%_
                                           _%e171271171907%_
                                           _%hd171272171910%_
                                           _%tl171273171912%_
                                           _%e171274171915%_
                                           _%hd171275171918%_
                                           _%tl171276171920%_
                                           _%e171277171923%_
                                           _%hd171278171926%_
                                           _%tl171279171928%_
                                           _%e171280171931%_
                                           _%hd171281171934%_
                                           _%tl171282171936%_
                                           _%e171283171939%_
                                           _%hd171284171942%_
                                           _%tl171285171944%_
                                           _%e171286171947%_
                                           _%hd171287171950%_
                                           _%tl171288171952%_
                                           _%e171289171955%_
                                           _%hd171290171958%_
                                           _%tl171291171960%_
                                           _%e171292171963%_
                                           _%hd171293171966%_
                                           _%tl171294171968%_))
                                      (_%__match176164176165%_
                                       _%e171271171907%_
                                       _%hd171272171910%_
                                       _%tl171273171912%_
                                       _%e171274171915%_
                                       _%hd171275171918%_
                                       _%tl171276171920%_
                                       _%e171277171923%_
                                       _%hd171278171926%_
                                       _%tl171279171928%_
                                       _%e171280171931%_
                                       _%hd171281171934%_
                                       _%tl171282171936%_
                                       _%e171283171939%_
                                       _%hd171284171942%_
                                       _%tl171285171944%_
                                       _%e171286171947%_
                                       _%hd171287171950%_
                                       _%tl171288171952%_
                                       _%e171289171955%_
                                       _%hd171290171958%_
                                       _%tl171291171960%_
                                       _%e171292171963%_
                                       _%hd171293171966%_
                                       _%tl171294171968%_))))
                              (_%__match176164176165%_
                               _%e171271171907%_
                               _%hd171272171910%_
                               _%tl171273171912%_
                               _%e171274171915%_
                               _%hd171275171918%_
                               _%tl171276171920%_
                               _%e171277171923%_
                               _%hd171278171926%_
                               _%tl171279171928%_
                               _%e171280171931%_
                               _%hd171281171934%_
                               _%tl171282171936%_
                               _%e171283171939%_
                               _%hd171284171942%_
                               _%tl171285171944%_
                               _%e171286171947%_
                               _%hd171287171950%_
                               _%tl171288171952%_
                               _%e171289171955%_
                               _%hd171290171958%_
                               _%tl171291171960%_
                               _%e171292171963%_
                               _%hd171293171966%_
                               _%tl171294171968%_))
                          (_%__match175950175951%_
                           _%e171271171907%_
                           _%hd171272171910%_
                           _%tl171273171912%_
                           _%e171274171915%_
                           _%hd171275171918%_
                           _%tl171276171920%_
                           _%e171277171923%_
                           _%hd171278171926%_
                           _%tl171279171928%_
                           _%e171280171931%_
                           _%hd171281171934%_
                           _%tl171282171936%_
                           _%e171283171939%_
                           _%hd171284171942%_
                           _%tl171285171944%_
                           _%e171286171947%_
                           _%hd171287171950%_
                           _%tl171288171952%_
                           _%e171289171955%_
                           _%hd171290171958%_
                           _%tl171291171960%_
                           _%e171292171963%_
                           _%hd171293171966%_
                           _%tl171294171968%_
                           _%e171295171971%_
                           _%hd171296171974%_
                           _%tl171297171976%_))))
                   (_%__match175772175773%_
                    (lambda (_%e171227172096%_
                             _%hd171228172099%_
                             _%tl171229172101%_
                             _%e171230172104%_
                             _%hd171231172107%_
                             _%tl171232172109%_
                             _%e171233172112%_
                             _%hd171234172115%_
                             _%tl171235172117%_
                             _%e171236172120%_
                             _%hd171237172123%_
                             _%tl171238172125%_
                             _%e171239172128%_
                             _%hd171240172131%_
                             _%tl171241172133%_
                             _%e171242172136%_
                             _%hd171243172139%_
                             _%tl171244172141%_
                             _%e171245172144%_
                             _%hd171246172147%_
                             _%tl171247172149%_
                             _%e171248172152%_
                             _%hd171249172155%_
                             _%tl171250172157%_
                             _%e171251172160%_
                             _%hd171252172163%_
                             _%tl171253172165%_
                             _%e171254172168%_
                             _%hd171255172171%_
                             _%tl171256172173%_
                             _%__splice175671175672%_
                             _%target171257172176%_
                             _%tl171259172178%_)
                      (letrec ((_%loop171260172181%_
                                (lambda (_%hd171258172184%_
                                         _%args171264172186%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd171258172184%_))
                                      (let ((_%e171261172189%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd171258172184%_))))
                                        (let ((_%lp-tl171263172194%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e171261172189%_)))
                                              (_%lp-hd171262172192%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e171261172189%_))))
                                          (_%loop171260172181%_
                                           _%lp-tl171263172194%_
                                           (cons _%lp-hd171262172192%_
                                                 _%args171264172186%_))))
                                      (let ((_%args171265172197%_
                                             (reverse _%args171264172186%_)))
                                        (let ((_%L172200%_
                                               _%args171265172197%_)
                                              (_%L172201%_ _%hd171255172171%_)
                                              (_%L172202%_ _%hd171246172147%_)
                                              (_%L172203%_ _%hd171237172123%_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%L172203%_
                                                      'call-method))
                                                   (let ((__tmp176798
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self171212%_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%L172202%_
                                                      __tmp176798)))
                                              (_%__kont175669175670%_
                                               _%L172200%_
                                               _%L172201%_
                                               _%L172202%_
                                               _%L172203%_)
                                              (_%__match175960175961%_
                                               _%e171227172096%_
                                               _%hd171228172099%_
                                               _%tl171229172101%_
                                               _%e171230172104%_
                                               _%hd171231172107%_
                                               _%tl171232172109%_
                                               _%e171233172112%_
                                               _%hd171234172115%_
                                               _%tl171235172117%_
                                               _%e171236172120%_
                                               _%hd171237172123%_
                                               _%tl171238172125%_
                                               _%e171239172128%_
                                               _%hd171240172131%_
                                               _%tl171241172133%_
                                               _%e171242172136%_
                                               _%hd171243172139%_
                                               _%tl171244172141%_
                                               _%e171245172144%_
                                               _%hd171246172147%_
                                               _%tl171247172149%_
                                               _%e171248172152%_
                                               _%hd171249172155%_
                                               _%tl171250172157%_
                                               _%e171251172160%_
                                               _%hd171252172163%_
                                               _%tl171253172165%_
                                               _%e171254172168%_
                                               _%hd171255172171%_
                                               _%tl171256172173%_))))))))
                        (_%loop171260172181%_ _%target171257172176%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx175667175668%_))
                  (let ((_%e171227172096%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx175667175668%_))))
                    (let ((_%tl171229172101%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e171227172096%_)))
                          (_%hd171228172099%_
                           (let ()
                             (declare (not safe))
                             (##car _%e171227172096%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl171229172101%_))
                          (let ((_%e171230172104%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl171229172101%_))))
                            (let ((_%tl171232172109%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e171230172104%_)))
                                  (_%hd171231172107%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e171230172104%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd171231172107%_))
                                  (let ((_%e171233172112%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd171231172107%_))))
                                    (let ((_%tl171235172117%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e171233172112%_)))
                                          (_%hd171234172115%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e171233172112%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd171234172115%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd171234172115%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl171235172117%_))
                                                  (let ((_%e171236172120%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl171235172117%_))))
                                                    (let ((_%tl171238172125%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e171236172120%_)))
                                                          (_%hd171237172123%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e171236172120%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl171238172125%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl171232172109%_))
                      (let ((_%e171239172128%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl171232172109%_))))
                        (let ((_%tl171241172133%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e171239172128%_)))
                              (_%hd171240172131%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e171239172128%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd171240172131%_))
                              (let ((_%e171242172136%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd171240172131%_))))
                                (let ((_%tl171244172141%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e171242172136%_)))
                                      (_%hd171243172139%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e171242172136%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd171243172139%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd171243172139%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl171244172141%_))
                                              (let ((_%e171245172144%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl171244172141%_))))
                                                (let ((_%tl171247172149%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e171245172144%_)))
                                                      (_%hd171246172147%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e171245172144%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl171247172149%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl171241172133%_))
                                                          (let ((_%e171248172152%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl171241172133%_))))
                    (let ((_%tl171250172157%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e171248172152%_)))
                          (_%hd171249172155%_
                           (let ()
                             (declare (not safe))
                             (##car _%e171248172152%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd171249172155%_))
                          (let ((_%e171251172160%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd171249172155%_))))
                            (let ((_%tl171253172165%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e171251172160%_)))
                                  (_%hd171252172163%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e171251172160%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd171252172163%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%hd171252172163%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl171253172165%_))
                                          (let ((_%e171254172168%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl171253172165%_))))
                                            (let ((_%tl171256172173%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e171254172168%_)))
                                                  (_%hd171255172171%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e171254172168%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl171256172173%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl171250172157%_))
                                                      (let ((_%__splice175671175672%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%tl171250172157%_ '0))))
                (let ((_%tl171259172178%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice175671175672%_ '1)))
                      (_%target171257172176%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice175671175672%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl171259172178%_))
                      (_%__match175772175773%_
                       _%e171227172096%_
                       _%hd171228172099%_
                       _%tl171229172101%_
                       _%e171230172104%_
                       _%hd171231172107%_
                       _%tl171232172109%_
                       _%e171233172112%_
                       _%hd171234172115%_
                       _%tl171235172117%_
                       _%e171236172120%_
                       _%hd171237172123%_
                       _%tl171238172125%_
                       _%e171239172128%_
                       _%hd171240172131%_
                       _%tl171241172133%_
                       _%e171242172136%_
                       _%hd171243172139%_
                       _%tl171244172141%_
                       _%e171245172144%_
                       _%hd171246172147%_
                       _%tl171247172149%_
                       _%e171248172152%_
                       _%hd171249172155%_
                       _%tl171250172157%_
                       _%e171251172160%_
                       _%hd171252172163%_
                       _%tl171253172165%_
                       _%e171254172168%_
                       _%hd171255172171%_
                       _%tl171256172173%_
                       _%__splice175671175672%_
                       _%target171257172176%_
                       _%tl171259172178%_)
                      (_%__match175960175961%_
                       _%e171227172096%_
                       _%hd171228172099%_
                       _%tl171229172101%_
                       _%e171230172104%_
                       _%hd171231172107%_
                       _%tl171232172109%_
                       _%e171233172112%_
                       _%hd171234172115%_
                       _%tl171235172117%_
                       _%e171236172120%_
                       _%hd171237172123%_
                       _%tl171238172125%_
                       _%e171239172128%_
                       _%hd171240172131%_
                       _%tl171241172133%_
                       _%e171242172136%_
                       _%hd171243172139%_
                       _%tl171244172141%_
                       _%e171245172144%_
                       _%hd171246172147%_
                       _%tl171247172149%_
                       _%e171248172152%_
                       _%hd171249172155%_
                       _%tl171250172157%_
                       _%e171251172160%_
                       _%hd171252172163%_
                       _%tl171253172165%_
                       _%e171254172168%_
                       _%hd171255172171%_
                       _%tl171256172173%_))))
              (_%__match175960175961%_
               _%e171227172096%_
               _%hd171228172099%_
               _%tl171229172101%_
               _%e171230172104%_
               _%hd171231172107%_
               _%tl171232172109%_
               _%e171233172112%_
               _%hd171234172115%_
               _%tl171235172117%_
               _%e171236172120%_
               _%hd171237172123%_
               _%tl171238172125%_
               _%e171239172128%_
               _%hd171240172131%_
               _%tl171241172133%_
               _%e171242172136%_
               _%hd171243172139%_
               _%tl171244172141%_
               _%e171245172144%_
               _%hd171246172147%_
               _%tl171247172149%_
               _%e171248172152%_
               _%hd171249172155%_
               _%tl171250172157%_
               _%e171251172160%_
               _%hd171252172163%_
               _%tl171253172165%_
               _%e171254172168%_
               _%hd171255172171%_
               _%tl171256172173%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__match176164176165%_
                                                   _%e171227172096%_
                                                   _%hd171228172099%_
                                                   _%tl171229172101%_
                                                   _%e171230172104%_
                                                   _%hd171231172107%_
                                                   _%tl171232172109%_
                                                   _%e171233172112%_
                                                   _%hd171234172115%_
                                                   _%tl171235172117%_
                                                   _%e171236172120%_
                                                   _%hd171237172123%_
                                                   _%tl171238172125%_
                                                   _%e171239172128%_
                                                   _%hd171240172131%_
                                                   _%tl171241172133%_
                                                   _%e171242172136%_
                                                   _%hd171243172139%_
                                                   _%tl171244172141%_
                                                   _%e171245172144%_
                                                   _%hd171246172147%_
                                                   _%tl171247172149%_
                                                   _%e171248172152%_
                                                   _%hd171249172155%_
                                                   _%tl171250172157%_))))
                                          (_%__match176164176165%_
                                           _%e171227172096%_
                                           _%hd171228172099%_
                                           _%tl171229172101%_
                                           _%e171230172104%_
                                           _%hd171231172107%_
                                           _%tl171232172109%_
                                           _%e171233172112%_
                                           _%hd171234172115%_
                                           _%tl171235172117%_
                                           _%e171236172120%_
                                           _%hd171237172123%_
                                           _%tl171238172125%_
                                           _%e171239172128%_
                                           _%hd171240172131%_
                                           _%tl171241172133%_
                                           _%e171242172136%_
                                           _%hd171243172139%_
                                           _%tl171244172141%_
                                           _%e171245172144%_
                                           _%hd171246172147%_
                                           _%tl171247172149%_
                                           _%e171248172152%_
                                           _%hd171249172155%_
                                           _%tl171250172157%_))
                                      (_%__match175840175841%_
                                       _%e171227172096%_
                                       _%hd171228172099%_
                                       _%tl171229172101%_
                                       _%e171230172104%_
                                       _%hd171231172107%_
                                       _%tl171232172109%_
                                       _%e171233172112%_
                                       _%hd171234172115%_
                                       _%tl171235172117%_
                                       _%e171236172120%_
                                       _%hd171237172123%_
                                       _%tl171238172125%_
                                       _%e171239172128%_
                                       _%hd171240172131%_
                                       _%tl171241172133%_
                                       _%e171242172136%_
                                       _%hd171243172139%_
                                       _%tl171244172141%_
                                       _%e171245172144%_
                                       _%hd171246172147%_
                                       _%tl171247172149%_
                                       _%e171248172152%_
                                       _%hd171249172155%_
                                       _%tl171250172157%_
                                       _%e171251172160%_
                                       _%hd171252172163%_
                                       _%tl171253172165%_))
                                  (_%__match176164176165%_
                                   _%e171227172096%_
                                   _%hd171228172099%_
                                   _%tl171229172101%_
                                   _%e171230172104%_
                                   _%hd171231172107%_
                                   _%tl171232172109%_
                                   _%e171233172112%_
                                   _%hd171234172115%_
                                   _%tl171235172117%_
                                   _%e171236172120%_
                                   _%hd171237172123%_
                                   _%tl171238172125%_
                                   _%e171239172128%_
                                   _%hd171240172131%_
                                   _%tl171241172133%_
                                   _%e171242172136%_
                                   _%hd171243172139%_
                                   _%tl171244172141%_
                                   _%e171245172144%_
                                   _%hd171246172147%_
                                   _%tl171247172149%_
                                   _%e171248172152%_
                                   _%hd171249172155%_
                                   _%tl171250172157%_))))
                          (_%__match176164176165%_
                           _%e171227172096%_
                           _%hd171228172099%_
                           _%tl171229172101%_
                           _%e171230172104%_
                           _%hd171231172107%_
                           _%tl171232172109%_
                           _%e171233172112%_
                           _%hd171234172115%_
                           _%tl171235172117%_
                           _%e171236172120%_
                           _%hd171237172123%_
                           _%tl171238172125%_
                           _%e171239172128%_
                           _%hd171240172131%_
                           _%tl171241172133%_
                           _%e171242172136%_
                           _%hd171243172139%_
                           _%tl171244172141%_
                           _%e171245172144%_
                           _%hd171246172147%_
                           _%tl171247172149%_
                           _%e171248172152%_
                           _%hd171249172155%_
                           _%tl171250172157%_))))
                  (_%__match176102176103%_
                   _%e171227172096%_
                   _%hd171228172099%_
                   _%tl171229172101%_
                   _%e171230172104%_
                   _%hd171231172107%_
                   _%tl171232172109%_
                   _%e171233172112%_
                   _%hd171234172115%_
                   _%tl171235172117%_
                   _%e171236172120%_
                   _%hd171237172123%_
                   _%tl171238172125%_
                   _%e171239172128%_
                   _%hd171240172131%_
                   _%tl171241172133%_
                   _%e171242172136%_
                   _%hd171243172139%_
                   _%tl171244172141%_
                   _%e171245172144%_
                   _%hd171246172147%_
                   _%tl171247172149%_))
              (_%__kont175685175686%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont175685175686%_))
                                          (_%__kont175685175686%_))
                                      (_%__kont175685175686%_))))
                              (_%__kont175685175686%_))))
                      (_%__kont175685175686%_))
                  (_%__kont175685175686%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont175685175686%_))
                                              (_%__kont175685175686%_))
                                          (_%__kont175685175686%_))))
                                  (_%__kont175685175686%_))))
                          (_%__kont175685175686%_))))
                  (_%__kont175685175686%_)))))))
    (define gxc#subst-object-refs-call%
      (lambda (_%self170151%_ _%stx170152%_)
        (letrec ((_%force-e170154%_
                  (lambda (_%target171210%_)
                    (cons '%#call
                          (cons (cons '%#ref (cons 'force '()))
                                (cons (cons '%#ref (cons _%target171210%_ '()))
                                      '()))))))
          (let* ((_%__stx176169176170%_ _%stx170152%_)
                 (_%g170162170384%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx176169176170%_)))))
            (let ((_%__kont176171176172%_
                   (lambda (_%L171156%_ _%L171157%_ _%L171158%_ _%L171159%_)
                     (let ((_%$method171204%_
                            (let ((__tmp176800
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self170151%_ 'methods)))
                                  (__tmp176799
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L171157%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp176800 __tmp176799)))
                           (_%args171205%_
                            (map (lambda (_%g171192171194%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self170151%_
                                      _%g171192171194%_)))
                                 (let ((__tmp176801
                                        (lambda (_%g171196171199%_
                                                 _%g171197171201%_)
                                          (cons _%g171196171199%_
                                                _%g171197171201%_))))
                                   (declare (not safe))
                                   (__foldr1 __tmp176801 '() _%L171156%_)))))
                       (let ((__tmp176802
                              (cons '%#call
                                    (cons (_%force-e170154%_ _%$method171204%_)
                                          (cons (cons '%#ref
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self170151%_
                                                               'receiver))
                                                            '()))
                                                _%args171205%_)))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp176802 _%stx170152%_)))))
                  (_%__kont176175176176%_
                   (lambda (_%L170988%_
                            _%L170989%_
                            _%L170990%_
                            _%L170991%_
                            _%L170992%_)
                     (let ((_%$method171044%_
                            (let ((__tmp176804
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self170151%_ 'methods)))
                                  (__tmp176803
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L170989%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp176804 __tmp176803)))
                           (_%args171045%_
                            (map (lambda (_%g171032171034%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self170151%_
                                      _%g171032171034%_)))
                                 (let ((__tmp176805
                                        (lambda (_%g171036171039%_
                                                 _%g171037171041%_)
                                          (cons _%g171036171039%_
                                                _%g171037171041%_))))
                                   (declare (not safe))
                                   (__foldr1 __tmp176805 '() _%L170988%_)))))
                       (let ((__tmp176806
                              (cons '%#call
                                    (cons (cons '%#ref (cons 'apply '()))
                                          (cons (_%force-e170154%_
                                                 _%$method171044%_)
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (slot-ref__0 _%self170151%_ 'receiver))
                          '()))
              _%args171045%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp176806 _%stx170152%_)))))
                  (_%__kont176179176180%_
                   (lambda (_%L170819%_ _%L170820%_ _%L170821%_)
                     (let* ((_%$field170853%_
                             (let ((__tmp176808
                                    (let ()
                                      (declare (not safe))
                                      (slot-ref__0 _%self170151%_ 'slots)))
                                   (__tmp176807
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%L170819%_))))
                               (declare (not safe))
                               (hash-ref__0 __tmp176808 __tmp176807)))
                            (__tmp176809
                             (cons '%#struct-unchecked-ref
                                   (cons (cons '%#ref
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (slot-ref__0
                                                        _%self170151%_
                                                        'klass))
                                                     '()))
                                         (cons (cons '%#ref
                                                     (cons _%$field170853%_
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (slot-ref__0 _%self170151%_ 'receiver))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp176809 _%stx170152%_))))
                  (_%__kont176181176182%_
                   (lambda (_%L170693%_ _%L170694%_ _%L170695%_ _%L170696%_)
                     (let ((_%$field170731%_
                            (let ((__tmp176811
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self170151%_ 'slots)))
                                  (__tmp176810
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L170694%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp176811 __tmp176810)))
                           (_%expr170732%_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-e__1 _%self170151%_ _%L170693%_))))
                       (let ((__tmp176812
                              (cons '%#struct-unchecked-set!
                                    (cons (cons '%#ref
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (slot-ref__0
                                                         _%self170151%_
                                                         'klass))
                                                      '()))
                                          (cons (cons '%#ref
                                                      (cons _%$field170731%_
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (slot-ref__0 _%self170151%_ 'receiver))
                          '()))
              (cons _%expr170732%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp176812 _%stx170152%_)))))
                  (_%__kont176183176184%_
                   (lambda (_%L170565%_ _%L170566%_)
                     (let* ((_%accessor170588%_
                             (let ((__tmp176813
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _%L170566%_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp176813)))
                            (_%klass170590%_
                             (let ((__tmp176814
                                    (##structure-ref
                                     _%accessor170588%_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _%stx170152%_
                                __tmp176814)))
                            (_%slot170592%_
                             (##structure-ref
                              _%accessor170588%_
                              '3
                              gxc#!accessor::t
                              '#f)))
                       (if (if (##structure-ref
                                _%accessor170588%_
                                '4
                                gxc#!accessor::t
                                '#f)
                               '#f
                               (or (let ()
                                     (declare (not safe))
                                     (gxc#!class-struct-slot?
                                      _%klass170590%_
                                      _%slot170592%_))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass170590%_
                                      '8
                                      '#f
                                      '#f))))
                           _%stx170152%_
                           (let* ((_%$field170598%_
                                   (let ((__tmp176815
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self170151%_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp176815 _%slot170592%_)))
                                  (__tmp176816
                                   (cons '%#struct-unchecked-ref
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (slot-ref__0
                                                              _%self170151%_
                                                              'klass))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$field170598%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _%self170151%_ 'receiver))
                               '()))
                   '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp176816
                              _%stx170152%_))))))
                  (_%__kont176185176186%_
                   (lambda (_%L170460%_ _%L170461%_ _%L170462%_)
                     (let* ((_%mutator170490%_
                             (let ((__tmp176817
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _%L170462%_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp176817)))
                            (_%klass170492%_
                             (let ((__tmp176818
                                    (##structure-ref
                                     _%mutator170490%_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _%stx170152%_
                                __tmp176818)))
                            (_%slot170494%_
                             (##structure-ref
                              _%mutator170490%_
                              '3
                              gxc#!mutator::t
                              '#f))
                            (_%expr170496%_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-e__1 _%self170151%_ _%L170460%_))))
                       (if (if (##structure-ref
                                _%mutator170490%_
                                '4
                                gxc#!mutator::t
                                '#f)
                               '#f
                               (or (let ()
                                     (declare (not safe))
                                     (gxc#!class-struct-slot?
                                      _%klass170492%_
                                      _%slot170494%_))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass170492%_
                                      '8
                                      '#f
                                      '#f))))
                           (let ((__tmp176819
                                  (cons '%#call
                                        (cons (cons (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       '%#ref))
                                                    (cons _%L170462%_ '()))
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#ref))
                                                          (cons _%L170461%_
                                                                '()))
                                                    (cons _%expr170496%_
                                                          '()))))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp176819 _%stx170152%_))
                           (let* ((_%$field170502%_
                                   (let ((__tmp176820
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self170151%_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp176820 _%slot170494%_)))
                                  (__tmp176821
                                   (cons '%#struct-unchecked-set!
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (slot-ref__0
                                                              _%self170151%_
                                                              'klass))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$field170502%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _%self170151%_ 'receiver))
                               '()))
                   (cons _%expr170496%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp176821
                              _%stx170152%_))))))
                  (_%__kont176187176188%_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-operands _%self170151%_ _%stx170152%_)))))
              (let* ((_%__match176668176669%_
                      (lambda (_%e170356170396%_
                               _%hd170357170399%_
                               _%tl170358170401%_
                               _%e170359170404%_
                               _%hd170360170407%_
                               _%tl170361170409%_
                               _%e170362170412%_
                               _%hd170363170415%_
                               _%tl170364170417%_
                               _%e170365170420%_
                               _%hd170366170423%_
                               _%tl170367170425%_
                               _%e170368170428%_
                               _%hd170369170431%_
                               _%tl170370170433%_
                               _%e170371170436%_
                               _%hd170372170439%_
                               _%tl170373170441%_
                               _%e170374170444%_
                               _%hd170375170447%_
                               _%tl170376170449%_
                               _%e170377170452%_
                               _%hd170378170455%_
                               _%tl170379170457%_)
                        (let ((_%L170460%_ _%hd170378170455%_)
                              (_%L170461%_ _%hd170375170447%_)
                              (_%L170462%_ _%hd170366170423%_))
                          (if (and (let ((__tmp176822
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self170151%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L170461%_
                                      __tmp176822))
                                   (let ((__tmp176823
                                          (let ((__tmp176824
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%L170462%_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp176824))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp176823
                                      'gxc#!mutator::t)))
                              (_%__kont176185176186%_
                               _%L170460%_
                               _%L170461%_
                               _%L170462%_)
                              (_%__kont176187176188%_)))))
                     (_%__match176666176667%_
                      (lambda (_%e170356170396%_
                               _%hd170357170399%_
                               _%tl170358170401%_
                               _%e170359170404%_
                               _%hd170360170407%_
                               _%tl170361170409%_
                               _%e170362170412%_
                               _%hd170363170415%_
                               _%tl170364170417%_
                               _%e170365170420%_
                               _%hd170366170423%_
                               _%tl170367170425%_
                               _%e170368170428%_
                               _%hd170369170431%_
                               _%tl170370170433%_
                               _%e170371170436%_
                               _%hd170372170439%_
                               _%tl170373170441%_
                               _%e170374170444%_
                               _%hd170375170447%_
                               _%tl170376170449%_
                               _%e170377170452%_
                               _%hd170378170455%_
                               _%tl170379170457%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl170379170457%_))
                            (_%__match176668176669%_
                             _%e170356170396%_
                             _%hd170357170399%_
                             _%tl170358170401%_
                             _%e170359170404%_
                             _%hd170360170407%_
                             _%tl170361170409%_
                             _%e170362170412%_
                             _%hd170363170415%_
                             _%tl170364170417%_
                             _%e170365170420%_
                             _%hd170366170423%_
                             _%tl170367170425%_
                             _%e170368170428%_
                             _%hd170369170431%_
                             _%tl170370170433%_
                             _%e170371170436%_
                             _%hd170372170439%_
                             _%tl170373170441%_
                             _%e170374170444%_
                             _%hd170375170447%_
                             _%tl170376170449%_
                             _%e170377170452%_
                             _%hd170378170455%_
                             _%tl170379170457%_)
                            (_%__kont176187176188%_))))
                     (_%__match176660176661%_
                      (lambda (_%e170356170396%_
                               _%hd170357170399%_
                               _%tl170358170401%_
                               _%e170359170404%_
                               _%hd170360170407%_
                               _%tl170361170409%_
                               _%e170362170412%_
                               _%hd170363170415%_
                               _%tl170364170417%_
                               _%e170365170420%_
                               _%hd170366170423%_
                               _%tl170367170425%_
                               _%e170368170428%_
                               _%hd170369170431%_
                               _%tl170370170433%_
                               _%e170371170436%_
                               _%hd170372170439%_
                               _%tl170373170441%_
                               _%e170374170444%_
                               _%hd170375170447%_
                               _%tl170376170449%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl170370170433%_))
                            (let ((_%e170377170452%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl170370170433%_))))
                              (let ((_%tl170379170457%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e170377170452%_)))
                                    (_%hd170378170455%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e170377170452%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl170379170457%_))
                                    (_%__match176668176669%_
                                     _%e170356170396%_
                                     _%hd170357170399%_
                                     _%tl170358170401%_
                                     _%e170359170404%_
                                     _%hd170360170407%_
                                     _%tl170361170409%_
                                     _%e170362170412%_
                                     _%hd170363170415%_
                                     _%tl170364170417%_
                                     _%e170365170420%_
                                     _%hd170366170423%_
                                     _%tl170367170425%_
                                     _%e170368170428%_
                                     _%hd170369170431%_
                                     _%tl170370170433%_
                                     _%e170371170436%_
                                     _%hd170372170439%_
                                     _%tl170373170441%_
                                     _%e170374170444%_
                                     _%hd170375170447%_
                                     _%tl170376170449%_
                                     _%e170377170452%_
                                     _%hd170378170455%_
                                     _%tl170379170457%_)
                                    (_%__kont176187176188%_))))
                            (_%__kont176187176188%_))))
                     (_%__match176606176607%_
                      (lambda (_%e170332170509%_
                               _%hd170333170512%_
                               _%tl170334170514%_
                               _%e170335170517%_
                               _%hd170336170520%_
                               _%tl170337170522%_
                               _%e170338170525%_
                               _%hd170339170528%_
                               _%tl170340170530%_
                               _%e170341170533%_
                               _%hd170342170536%_
                               _%tl170343170538%_
                               _%e170344170541%_
                               _%hd170345170544%_
                               _%tl170346170546%_
                               _%e170347170549%_
                               _%hd170348170552%_
                               _%tl170349170554%_
                               _%e170350170557%_
                               _%hd170351170560%_
                               _%tl170352170562%_)
                        (let ((_%L170565%_ _%hd170351170560%_)
                              (_%L170566%_ _%hd170342170536%_))
                          (if (and (let ((__tmp176825
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self170151%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L170565%_
                                      __tmp176825))
                                   (let ((__tmp176826
                                          (let ((__tmp176827
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%L170566%_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp176827))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp176826
                                      'gxc#!accessor::t)))
                              (_%__kont176183176184%_ _%L170565%_ _%L170566%_)
                              (_%__kont176187176188%_)))))
                     (_%__match176604176605%_
                      (lambda (_%e170332170509%_
                               _%hd170333170512%_
                               _%tl170334170514%_
                               _%e170335170517%_
                               _%hd170336170520%_
                               _%tl170337170522%_
                               _%e170338170525%_
                               _%hd170339170528%_
                               _%tl170340170530%_
                               _%e170341170533%_
                               _%hd170342170536%_
                               _%tl170343170538%_
                               _%e170344170541%_
                               _%hd170345170544%_
                               _%tl170346170546%_
                               _%e170347170549%_
                               _%hd170348170552%_
                               _%tl170349170554%_
                               _%e170350170557%_
                               _%hd170351170560%_
                               _%tl170352170562%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl170346170546%_))
                            (_%__match176606176607%_
                             _%e170332170509%_
                             _%hd170333170512%_
                             _%tl170334170514%_
                             _%e170335170517%_
                             _%hd170336170520%_
                             _%tl170337170522%_
                             _%e170338170525%_
                             _%hd170339170528%_
                             _%tl170340170530%_
                             _%e170341170533%_
                             _%hd170342170536%_
                             _%tl170343170538%_
                             _%e170344170541%_
                             _%hd170345170544%_
                             _%tl170346170546%_
                             _%e170347170549%_
                             _%hd170348170552%_
                             _%tl170349170554%_
                             _%e170350170557%_
                             _%hd170351170560%_
                             _%tl170352170562%_)
                            (_%__match176660176661%_
                             _%e170332170509%_
                             _%hd170333170512%_
                             _%tl170334170514%_
                             _%e170335170517%_
                             _%hd170336170520%_
                             _%tl170337170522%_
                             _%e170338170525%_
                             _%hd170339170528%_
                             _%tl170340170530%_
                             _%e170341170533%_
                             _%hd170342170536%_
                             _%tl170343170538%_
                             _%e170344170541%_
                             _%hd170345170544%_
                             _%tl170346170546%_
                             _%e170347170549%_
                             _%hd170348170552%_
                             _%tl170349170554%_
                             _%e170350170557%_
                             _%hd170351170560%_
                             _%tl170352170562%_))))
                     (_%__match176550176551%_
                      (lambda (_%e170297170605%_
                               _%hd170298170608%_
                               _%tl170299170610%_
                               _%e170300170613%_
                               _%hd170301170616%_
                               _%tl170302170618%_
                               _%e170303170621%_
                               _%hd170304170624%_
                               _%tl170305170626%_
                               _%e170306170629%_
                               _%hd170307170632%_
                               _%tl170308170634%_
                               _%e170309170637%_
                               _%hd170310170640%_
                               _%tl170311170642%_
                               _%e170312170645%_
                               _%hd170313170648%_
                               _%tl170314170650%_
                               _%e170315170653%_
                               _%hd170316170656%_
                               _%tl170317170658%_
                               _%e170318170661%_
                               _%hd170319170664%_
                               _%tl170320170666%_
                               _%e170321170669%_
                               _%hd170322170672%_
                               _%tl170323170674%_
                               _%e170324170677%_
                               _%hd170325170680%_
                               _%tl170326170682%_
                               _%e170327170685%_
                               _%hd170328170688%_
                               _%tl170329170690%_)
                        (let ((_%L170693%_ _%hd170328170688%_)
                              (_%L170694%_ _%hd170325170680%_)
                              (_%L170695%_ _%hd170316170656%_)
                              (_%L170696%_ _%hd170307170632%_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L170696%_
                                          'slot-set!))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L170696%_
                                          'unchecked-slot-set!)))
                                   (let ((__tmp176828
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self170151%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L170695%_
                                      __tmp176828)))
                              (_%__kont176181176182%_
                               _%L170693%_
                               _%L170694%_
                               _%L170695%_
                               _%L170696%_)
                              (_%__kont176187176188%_)))))
                     (_%__match176542176543%_
                      (lambda (_%e170297170605%_
                               _%hd170298170608%_
                               _%tl170299170610%_
                               _%e170300170613%_
                               _%hd170301170616%_
                               _%tl170302170618%_
                               _%e170303170621%_
                               _%hd170304170624%_
                               _%tl170305170626%_
                               _%e170306170629%_
                               _%hd170307170632%_
                               _%tl170308170634%_
                               _%e170309170637%_
                               _%hd170310170640%_
                               _%tl170311170642%_
                               _%e170312170645%_
                               _%hd170313170648%_
                               _%tl170314170650%_
                               _%e170315170653%_
                               _%hd170316170656%_
                               _%tl170317170658%_
                               _%e170318170661%_
                               _%hd170319170664%_
                               _%tl170320170666%_
                               _%e170321170669%_
                               _%hd170322170672%_
                               _%tl170323170674%_
                               _%e170324170677%_
                               _%hd170325170680%_
                               _%tl170326170682%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl170320170666%_))
                            (let ((_%e170327170685%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl170320170666%_))))
                              (let ((_%tl170329170690%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e170327170685%_)))
                                    (_%hd170328170688%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e170327170685%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl170329170690%_))
                                    (_%__match176550176551%_
                                     _%e170297170605%_
                                     _%hd170298170608%_
                                     _%tl170299170610%_
                                     _%e170300170613%_
                                     _%hd170301170616%_
                                     _%tl170302170618%_
                                     _%e170303170621%_
                                     _%hd170304170624%_
                                     _%tl170305170626%_
                                     _%e170306170629%_
                                     _%hd170307170632%_
                                     _%tl170308170634%_
                                     _%e170309170637%_
                                     _%hd170310170640%_
                                     _%tl170311170642%_
                                     _%e170312170645%_
                                     _%hd170313170648%_
                                     _%tl170314170650%_
                                     _%e170315170653%_
                                     _%hd170316170656%_
                                     _%tl170317170658%_
                                     _%e170318170661%_
                                     _%hd170319170664%_
                                     _%tl170320170666%_
                                     _%e170321170669%_
                                     _%hd170322170672%_
                                     _%tl170323170674%_
                                     _%e170324170677%_
                                     _%hd170325170680%_
                                     _%tl170326170682%_
                                     _%e170327170685%_
                                     _%hd170328170688%_
                                     _%tl170329170690%_)
                                    (_%__kont176187176188%_))))
                            (_%__match176666176667%_
                             _%e170297170605%_
                             _%hd170298170608%_
                             _%tl170299170610%_
                             _%e170300170613%_
                             _%hd170301170616%_
                             _%tl170302170618%_
                             _%e170303170621%_
                             _%hd170304170624%_
                             _%tl170305170626%_
                             _%e170306170629%_
                             _%hd170307170632%_
                             _%tl170308170634%_
                             _%e170309170637%_
                             _%hd170310170640%_
                             _%tl170311170642%_
                             _%e170312170645%_
                             _%hd170313170648%_
                             _%tl170314170650%_
                             _%e170315170653%_
                             _%hd170316170656%_
                             _%tl170317170658%_
                             _%e170318170661%_
                             _%hd170319170664%_
                             _%tl170320170666%_))))
                     (_%__match176464176465%_
                      (lambda (_%e170263170739%_
                               _%hd170264170742%_
                               _%tl170265170744%_
                               _%e170266170747%_
                               _%hd170267170750%_
                               _%tl170268170752%_
                               _%e170269170755%_
                               _%hd170270170758%_
                               _%tl170271170760%_
                               _%e170272170763%_
                               _%hd170273170766%_
                               _%tl170274170768%_
                               _%e170275170771%_
                               _%hd170276170774%_
                               _%tl170277170776%_
                               _%e170278170779%_
                               _%hd170279170782%_
                               _%tl170280170784%_
                               _%e170281170787%_
                               _%hd170282170790%_
                               _%tl170283170792%_
                               _%e170284170795%_
                               _%hd170285170798%_
                               _%tl170286170800%_
                               _%e170287170803%_
                               _%hd170288170806%_
                               _%tl170289170808%_
                               _%e170290170811%_
                               _%hd170291170814%_
                               _%tl170292170816%_)
                        (let ((_%L170819%_ _%hd170291170814%_)
                              (_%L170820%_ _%hd170282170790%_)
                              (_%L170821%_ _%hd170273170766%_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L170821%_
                                          'slot-ref))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L170821%_
                                          'unchecked-slot-ref)))
                                   (let ((__tmp176829
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self170151%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L170820%_
                                      __tmp176829)))
                              (_%__kont176179176180%_
                               _%L170819%_
                               _%L170820%_
                               _%L170821%_)
                              (_%__match176668176669%_
                               _%e170263170739%_
                               _%hd170264170742%_
                               _%tl170265170744%_
                               _%e170266170747%_
                               _%hd170267170750%_
                               _%tl170268170752%_
                               _%e170269170755%_
                               _%hd170270170758%_
                               _%tl170271170760%_
                               _%e170272170763%_
                               _%hd170273170766%_
                               _%tl170274170768%_
                               _%e170275170771%_
                               _%hd170276170774%_
                               _%tl170277170776%_
                               _%e170278170779%_
                               _%hd170279170782%_
                               _%tl170280170784%_
                               _%e170281170787%_
                               _%hd170282170790%_
                               _%tl170283170792%_
                               _%e170284170795%_
                               _%hd170285170798%_
                               _%tl170286170800%_)))))
                     (_%__match176462176463%_
                      (lambda (_%e170263170739%_
                               _%hd170264170742%_
                               _%tl170265170744%_
                               _%e170266170747%_
                               _%hd170267170750%_
                               _%tl170268170752%_
                               _%e170269170755%_
                               _%hd170270170758%_
                               _%tl170271170760%_
                               _%e170272170763%_
                               _%hd170273170766%_
                               _%tl170274170768%_
                               _%e170275170771%_
                               _%hd170276170774%_
                               _%tl170277170776%_
                               _%e170278170779%_
                               _%hd170279170782%_
                               _%tl170280170784%_
                               _%e170281170787%_
                               _%hd170282170790%_
                               _%tl170283170792%_
                               _%e170284170795%_
                               _%hd170285170798%_
                               _%tl170286170800%_
                               _%e170287170803%_
                               _%hd170288170806%_
                               _%tl170289170808%_
                               _%e170290170811%_
                               _%hd170291170814%_
                               _%tl170292170816%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl170286170800%_))
                            (_%__match176464176465%_
                             _%e170263170739%_
                             _%hd170264170742%_
                             _%tl170265170744%_
                             _%e170266170747%_
                             _%hd170267170750%_
                             _%tl170268170752%_
                             _%e170269170755%_
                             _%hd170270170758%_
                             _%tl170271170760%_
                             _%e170272170763%_
                             _%hd170273170766%_
                             _%tl170274170768%_
                             _%e170275170771%_
                             _%hd170276170774%_
                             _%tl170277170776%_
                             _%e170278170779%_
                             _%hd170279170782%_
                             _%tl170280170784%_
                             _%e170281170787%_
                             _%hd170282170790%_
                             _%tl170283170792%_
                             _%e170284170795%_
                             _%hd170285170798%_
                             _%tl170286170800%_
                             _%e170287170803%_
                             _%hd170288170806%_
                             _%tl170289170808%_
                             _%e170290170811%_
                             _%hd170291170814%_
                             _%tl170292170816%_)
                            (_%__match176542176543%_
                             _%e170263170739%_
                             _%hd170264170742%_
                             _%tl170265170744%_
                             _%e170266170747%_
                             _%hd170267170750%_
                             _%tl170268170752%_
                             _%e170269170755%_
                             _%hd170270170758%_
                             _%tl170271170760%_
                             _%e170272170763%_
                             _%hd170273170766%_
                             _%tl170274170768%_
                             _%e170275170771%_
                             _%hd170276170774%_
                             _%tl170277170776%_
                             _%e170278170779%_
                             _%hd170279170782%_
                             _%tl170280170784%_
                             _%e170281170787%_
                             _%hd170282170790%_
                             _%tl170283170792%_
                             _%e170284170795%_
                             _%hd170285170798%_
                             _%tl170286170800%_
                             _%e170287170803%_
                             _%hd170288170806%_
                             _%tl170289170808%_
                             _%e170290170811%_
                             _%hd170291170814%_
                             _%tl170292170816%_))))
                     (_%__match176452176453%_
                      (lambda (_%e170263170739%_
                               _%hd170264170742%_
                               _%tl170265170744%_
                               _%e170266170747%_
                               _%hd170267170750%_
                               _%tl170268170752%_
                               _%e170269170755%_
                               _%hd170270170758%_
                               _%tl170271170760%_
                               _%e170272170763%_
                               _%hd170273170766%_
                               _%tl170274170768%_
                               _%e170275170771%_
                               _%hd170276170774%_
                               _%tl170277170776%_
                               _%e170278170779%_
                               _%hd170279170782%_
                               _%tl170280170784%_
                               _%e170281170787%_
                               _%hd170282170790%_
                               _%tl170283170792%_
                               _%e170284170795%_
                               _%hd170285170798%_
                               _%tl170286170800%_
                               _%e170287170803%_
                               _%hd170288170806%_
                               _%tl170289170808%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#quote _%hd170288170806%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl170289170808%_))
                                (let ((_%e170290170811%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl170289170808%_))))
                                  (let ((_%tl170292170816%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e170290170811%_)))
                                        (_%hd170291170814%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e170290170811%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl170292170816%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl170286170800%_))
                                            (_%__match176464176465%_
                                             _%e170263170739%_
                                             _%hd170264170742%_
                                             _%tl170265170744%_
                                             _%e170266170747%_
                                             _%hd170267170750%_
                                             _%tl170268170752%_
                                             _%e170269170755%_
                                             _%hd170270170758%_
                                             _%tl170271170760%_
                                             _%e170272170763%_
                                             _%hd170273170766%_
                                             _%tl170274170768%_
                                             _%e170275170771%_
                                             _%hd170276170774%_
                                             _%tl170277170776%_
                                             _%e170278170779%_
                                             _%hd170279170782%_
                                             _%tl170280170784%_
                                             _%e170281170787%_
                                             _%hd170282170790%_
                                             _%tl170283170792%_
                                             _%e170284170795%_
                                             _%hd170285170798%_
                                             _%tl170286170800%_
                                             _%e170287170803%_
                                             _%hd170288170806%_
                                             _%tl170289170808%_
                                             _%e170290170811%_
                                             _%hd170291170814%_
                                             _%tl170292170816%_)
                                            (_%__match176542176543%_
                                             _%e170263170739%_
                                             _%hd170264170742%_
                                             _%tl170265170744%_
                                             _%e170266170747%_
                                             _%hd170267170750%_
                                             _%tl170268170752%_
                                             _%e170269170755%_
                                             _%hd170270170758%_
                                             _%tl170271170760%_
                                             _%e170272170763%_
                                             _%hd170273170766%_
                                             _%tl170274170768%_
                                             _%e170275170771%_
                                             _%hd170276170774%_
                                             _%tl170277170776%_
                                             _%e170278170779%_
                                             _%hd170279170782%_
                                             _%tl170280170784%_
                                             _%e170281170787%_
                                             _%hd170282170790%_
                                             _%tl170283170792%_
                                             _%e170284170795%_
                                             _%hd170285170798%_
                                             _%tl170286170800%_
                                             _%e170287170803%_
                                             _%hd170288170806%_
                                             _%tl170289170808%_
                                             _%e170290170811%_
                                             _%hd170291170814%_
                                             _%tl170292170816%_))
                                        (_%__match176666176667%_
                                         _%e170263170739%_
                                         _%hd170264170742%_
                                         _%tl170265170744%_
                                         _%e170266170747%_
                                         _%hd170267170750%_
                                         _%tl170268170752%_
                                         _%e170269170755%_
                                         _%hd170270170758%_
                                         _%tl170271170760%_
                                         _%e170272170763%_
                                         _%hd170273170766%_
                                         _%tl170274170768%_
                                         _%e170275170771%_
                                         _%hd170276170774%_
                                         _%tl170277170776%_
                                         _%e170278170779%_
                                         _%hd170279170782%_
                                         _%tl170280170784%_
                                         _%e170281170787%_
                                         _%hd170282170790%_
                                         _%tl170283170792%_
                                         _%e170284170795%_
                                         _%hd170285170798%_
                                         _%tl170286170800%_))))
                                (_%__match176666176667%_
                                 _%e170263170739%_
                                 _%hd170264170742%_
                                 _%tl170265170744%_
                                 _%e170266170747%_
                                 _%hd170267170750%_
                                 _%tl170268170752%_
                                 _%e170269170755%_
                                 _%hd170270170758%_
                                 _%tl170271170760%_
                                 _%e170272170763%_
                                 _%hd170273170766%_
                                 _%tl170274170768%_
                                 _%e170275170771%_
                                 _%hd170276170774%_
                                 _%tl170277170776%_
                                 _%e170278170779%_
                                 _%hd170279170782%_
                                 _%tl170280170784%_
                                 _%e170281170787%_
                                 _%hd170282170790%_
                                 _%tl170283170792%_
                                 _%e170284170795%_
                                 _%hd170285170798%_
                                 _%tl170286170800%_))
                            (_%__match176666176667%_
                             _%e170263170739%_
                             _%hd170264170742%_
                             _%tl170265170744%_
                             _%e170266170747%_
                             _%hd170267170750%_
                             _%tl170268170752%_
                             _%e170269170755%_
                             _%hd170270170758%_
                             _%tl170271170760%_
                             _%e170272170763%_
                             _%hd170273170766%_
                             _%tl170274170768%_
                             _%e170275170771%_
                             _%hd170276170774%_
                             _%tl170277170776%_
                             _%e170278170779%_
                             _%hd170279170782%_
                             _%tl170280170784%_
                             _%e170281170787%_
                             _%hd170282170790%_
                             _%tl170283170792%_
                             _%e170284170795%_
                             _%hd170285170798%_
                             _%tl170286170800%_))))
                     (_%__match176384176385%_
                      (lambda (_%e170212170860%_
                               _%hd170213170863%_
                               _%tl170214170865%_
                               _%e170215170868%_
                               _%hd170216170871%_
                               _%tl170217170873%_
                               _%e170218170876%_
                               _%hd170219170879%_
                               _%tl170220170881%_
                               _%e170221170884%_
                               _%hd170222170887%_
                               _%tl170223170889%_
                               _%e170224170892%_
                               _%hd170225170895%_
                               _%tl170226170897%_
                               _%e170227170900%_
                               _%hd170228170903%_
                               _%tl170229170905%_
                               _%e170230170908%_
                               _%hd170231170911%_
                               _%tl170232170913%_
                               _%e170233170916%_
                               _%hd170234170919%_
                               _%tl170235170921%_
                               _%e170236170924%_
                               _%hd170237170927%_
                               _%tl170238170929%_
                               _%e170239170932%_
                               _%hd170240170935%_
                               _%tl170241170937%_
                               _%e170242170940%_
                               _%hd170243170943%_
                               _%tl170244170945%_
                               _%e170245170948%_
                               _%hd170246170951%_
                               _%tl170247170953%_
                               _%e170248170956%_
                               _%hd170249170959%_
                               _%tl170250170961%_
                               _%__splice176177176178%_
                               _%target170251170964%_
                               _%tl170253170966%_)
                        (letrec ((_%loop170254170969%_
                                  (lambda (_%hd170252170972%_
                                           _%args170258170974%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd170252170972%_))
                                        (let ((_%e170255170977%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd170252170972%_))))
                                          (let ((_%lp-tl170257170982%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e170255170977%_)))
                                                (_%lp-hd170256170980%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e170255170977%_))))
                                            (_%loop170254170969%_
                                             _%lp-tl170257170982%_
                                             (cons _%lp-hd170256170980%_
                                                   _%args170258170974%_))))
                                        (let ((_%args170259170985%_
                                               (reverse _%args170258170974%_)))
                                          (let ((_%L170988%_
                                                 _%args170259170985%_)
                                                (_%L170989%_
                                                 _%hd170249170959%_)
                                                (_%L170990%_
                                                 _%hd170240170935%_)
                                                (_%L170991%_
                                                 _%hd170231170911%_)
                                                (_%L170992%_
                                                 _%hd170222170887%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%L170992%_
                                                        'apply))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%L170991%_
                                                        'call-method))
                                                     (let ((__tmp176830
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self170151%_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _%L170990%_
                                                        __tmp176830)))
                                                (_%__kont176175176176%_
                                                 _%L170988%_
                                                 _%L170989%_
                                                 _%L170990%_
                                                 _%L170991%_
                                                 _%L170992%_)
                                                (_%__kont176187176188%_))))))))
                          (_%loop170254170969%_ _%target170251170964%_ '()))))
                     (_%__match176342176343%_
                      (lambda (_%e170212170860%_
                               _%hd170213170863%_
                               _%tl170214170865%_
                               _%e170215170868%_
                               _%hd170216170871%_
                               _%tl170217170873%_
                               _%e170218170876%_
                               _%hd170219170879%_
                               _%tl170220170881%_
                               _%e170221170884%_
                               _%hd170222170887%_
                               _%tl170223170889%_
                               _%e170224170892%_
                               _%hd170225170895%_
                               _%tl170226170897%_
                               _%e170227170900%_
                               _%hd170228170903%_
                               _%tl170229170905%_
                               _%e170230170908%_
                               _%hd170231170911%_
                               _%tl170232170913%_
                               _%e170233170916%_
                               _%hd170234170919%_
                               _%tl170235170921%_
                               _%e170236170924%_
                               _%hd170237170927%_
                               _%tl170238170929%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _%hd170237170927%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl170238170929%_))
                                (let ((_%e170239170932%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl170238170929%_))))
                                  (let ((_%tl170241170937%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e170239170932%_)))
                                        (_%hd170240170935%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e170239170932%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl170241170937%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl170235170921%_))
                                            (let ((_%e170242170940%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl170235170921%_))))
                                              (let ((_%tl170244170945%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e170242170940%_)))
                                                    (_%hd170243170943%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e170242170940%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%hd170243170943%_))
                                                    (let ((_%e170245170948%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd170243170943%_))))
                                                      (let ((_%tl170247170953%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e170245170948%_)))
                    (_%hd170246170951%_
                     (let () (declare (not safe)) (##car _%e170245170948%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _%hd170246170951%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _%hd170246170951%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl170247170953%_))
                            (let ((_%e170248170956%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl170247170953%_))))
                              (let ((_%tl170250170961%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e170248170956%_)))
                                    (_%hd170249170959%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e170248170956%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl170250170961%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl170244170945%_))
                                        (let ((_%__splice176177176178%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl170244170945%_
                                                  '0))))
                                          (let ((_%tl170253170966%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice176177176178%_
                                                    '1)))
                                                (_%target170251170964%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice176177176178%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl170253170966%_))
                                                (_%__match176384176385%_
                                                 _%e170212170860%_
                                                 _%hd170213170863%_
                                                 _%tl170214170865%_
                                                 _%e170215170868%_
                                                 _%hd170216170871%_
                                                 _%tl170217170873%_
                                                 _%e170218170876%_
                                                 _%hd170219170879%_
                                                 _%tl170220170881%_
                                                 _%e170221170884%_
                                                 _%hd170222170887%_
                                                 _%tl170223170889%_
                                                 _%e170224170892%_
                                                 _%hd170225170895%_
                                                 _%tl170226170897%_
                                                 _%e170227170900%_
                                                 _%hd170228170903%_
                                                 _%tl170229170905%_
                                                 _%e170230170908%_
                                                 _%hd170231170911%_
                                                 _%tl170232170913%_
                                                 _%e170233170916%_
                                                 _%hd170234170919%_
                                                 _%tl170235170921%_
                                                 _%e170236170924%_
                                                 _%hd170237170927%_
                                                 _%tl170238170929%_
                                                 _%e170239170932%_
                                                 _%hd170240170935%_
                                                 _%tl170241170937%_
                                                 _%e170242170940%_
                                                 _%hd170243170943%_
                                                 _%tl170244170945%_
                                                 _%e170245170948%_
                                                 _%hd170246170951%_
                                                 _%tl170247170953%_
                                                 _%e170248170956%_
                                                 _%hd170249170959%_
                                                 _%tl170250170961%_
                                                 _%__splice176177176178%_
                                                 _%target170251170964%_
                                                 _%tl170253170966%_)
                                                (_%__kont176187176188%_))))
                                        (_%__kont176187176188%_))
                                    (_%__kont176187176188%_))))
                            (_%__kont176187176188%_))
                        (_%__kont176187176188%_))
                    (_%__kont176187176188%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont176187176188%_))))
                                            (_%__match176666176667%_
                                             _%e170212170860%_
                                             _%hd170213170863%_
                                             _%tl170214170865%_
                                             _%e170215170868%_
                                             _%hd170216170871%_
                                             _%tl170217170873%_
                                             _%e170218170876%_
                                             _%hd170219170879%_
                                             _%tl170220170881%_
                                             _%e170221170884%_
                                             _%hd170222170887%_
                                             _%tl170223170889%_
                                             _%e170224170892%_
                                             _%hd170225170895%_
                                             _%tl170226170897%_
                                             _%e170227170900%_
                                             _%hd170228170903%_
                                             _%tl170229170905%_
                                             _%e170230170908%_
                                             _%hd170231170911%_
                                             _%tl170232170913%_
                                             _%e170233170916%_
                                             _%hd170234170919%_
                                             _%tl170235170921%_))
                                        (_%__match176666176667%_
                                         _%e170212170860%_
                                         _%hd170213170863%_
                                         _%tl170214170865%_
                                         _%e170215170868%_
                                         _%hd170216170871%_
                                         _%tl170217170873%_
                                         _%e170218170876%_
                                         _%hd170219170879%_
                                         _%tl170220170881%_
                                         _%e170221170884%_
                                         _%hd170222170887%_
                                         _%tl170223170889%_
                                         _%e170224170892%_
                                         _%hd170225170895%_
                                         _%tl170226170897%_
                                         _%e170227170900%_
                                         _%hd170228170903%_
                                         _%tl170229170905%_
                                         _%e170230170908%_
                                         _%hd170231170911%_
                                         _%tl170232170913%_
                                         _%e170233170916%_
                                         _%hd170234170919%_
                                         _%tl170235170921%_))))
                                (_%__match176666176667%_
                                 _%e170212170860%_
                                 _%hd170213170863%_
                                 _%tl170214170865%_
                                 _%e170215170868%_
                                 _%hd170216170871%_
                                 _%tl170217170873%_
                                 _%e170218170876%_
                                 _%hd170219170879%_
                                 _%tl170220170881%_
                                 _%e170221170884%_
                                 _%hd170222170887%_
                                 _%tl170223170889%_
                                 _%e170224170892%_
                                 _%hd170225170895%_
                                 _%tl170226170897%_
                                 _%e170227170900%_
                                 _%hd170228170903%_
                                 _%tl170229170905%_
                                 _%e170230170908%_
                                 _%hd170231170911%_
                                 _%tl170232170913%_
                                 _%e170233170916%_
                                 _%hd170234170919%_
                                 _%tl170235170921%_))
                            (_%__match176452176453%_
                             _%e170212170860%_
                             _%hd170213170863%_
                             _%tl170214170865%_
                             _%e170215170868%_
                             _%hd170216170871%_
                             _%tl170217170873%_
                             _%e170218170876%_
                             _%hd170219170879%_
                             _%tl170220170881%_
                             _%e170221170884%_
                             _%hd170222170887%_
                             _%tl170223170889%_
                             _%e170224170892%_
                             _%hd170225170895%_
                             _%tl170226170897%_
                             _%e170227170900%_
                             _%hd170228170903%_
                             _%tl170229170905%_
                             _%e170230170908%_
                             _%hd170231170911%_
                             _%tl170232170913%_
                             _%e170233170916%_
                             _%hd170234170919%_
                             _%tl170235170921%_
                             _%e170236170924%_
                             _%hd170237170927%_
                             _%tl170238170929%_))))
                     (_%__match176274176275%_
                      (lambda (_%e170168171052%_
                               _%hd170169171055%_
                               _%tl170170171057%_
                               _%e170171171060%_
                               _%hd170172171063%_
                               _%tl170173171065%_
                               _%e170174171068%_
                               _%hd170175171071%_
                               _%tl170176171073%_
                               _%e170177171076%_
                               _%hd170178171079%_
                               _%tl170179171081%_
                               _%e170180171084%_
                               _%hd170181171087%_
                               _%tl170182171089%_
                               _%e170183171092%_
                               _%hd170184171095%_
                               _%tl170185171097%_
                               _%e170186171100%_
                               _%hd170187171103%_
                               _%tl170188171105%_
                               _%e170189171108%_
                               _%hd170190171111%_
                               _%tl170191171113%_
                               _%e170192171116%_
                               _%hd170193171119%_
                               _%tl170194171121%_
                               _%e170195171124%_
                               _%hd170196171127%_
                               _%tl170197171129%_
                               _%__splice176173176174%_
                               _%target170198171132%_
                               _%tl170200171134%_)
                        (letrec ((_%loop170201171137%_
                                  (lambda (_%hd170199171140%_
                                           _%args170205171142%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd170199171140%_))
                                        (let ((_%e170202171145%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd170199171140%_))))
                                          (let ((_%lp-tl170204171150%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e170202171145%_)))
                                                (_%lp-hd170203171148%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e170202171145%_))))
                                            (_%loop170201171137%_
                                             _%lp-tl170204171150%_
                                             (cons _%lp-hd170203171148%_
                                                   _%args170205171142%_))))
                                        (let ((_%args170206171153%_
                                               (reverse _%args170205171142%_)))
                                          (let ((_%L171156%_
                                                 _%args170206171153%_)
                                                (_%L171157%_
                                                 _%hd170196171127%_)
                                                (_%L171158%_
                                                 _%hd170187171103%_)
                                                (_%L171159%_
                                                 _%hd170178171079%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%L171159%_
                                                        'call-method))
                                                     (let ((__tmp176831
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self170151%_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _%L171158%_
                                                        __tmp176831)))
                                                (_%__kont176171176172%_
                                                 _%L171156%_
                                                 _%L171157%_
                                                 _%L171158%_
                                                 _%L171159%_)
                                                (_%__match176462176463%_
                                                 _%e170168171052%_
                                                 _%hd170169171055%_
                                                 _%tl170170171057%_
                                                 _%e170171171060%_
                                                 _%hd170172171063%_
                                                 _%tl170173171065%_
                                                 _%e170174171068%_
                                                 _%hd170175171071%_
                                                 _%tl170176171073%_
                                                 _%e170177171076%_
                                                 _%hd170178171079%_
                                                 _%tl170179171081%_
                                                 _%e170180171084%_
                                                 _%hd170181171087%_
                                                 _%tl170182171089%_
                                                 _%e170183171092%_
                                                 _%hd170184171095%_
                                                 _%tl170185171097%_
                                                 _%e170186171100%_
                                                 _%hd170187171103%_
                                                 _%tl170188171105%_
                                                 _%e170189171108%_
                                                 _%hd170190171111%_
                                                 _%tl170191171113%_
                                                 _%e170192171116%_
                                                 _%hd170193171119%_
                                                 _%tl170194171121%_
                                                 _%e170195171124%_
                                                 _%hd170196171127%_
                                                 _%tl170197171129%_))))))))
                          (_%loop170201171137%_ _%target170198171132%_ '())))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx176169176170%_))
                    (let ((_%e170168171052%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx176169176170%_))))
                      (let ((_%tl170170171057%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e170168171052%_)))
                            (_%hd170169171055%_
                             (let ()
                               (declare (not safe))
                               (##car _%e170168171052%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl170170171057%_))
                            (let ((_%e170171171060%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl170170171057%_))))
                              (let ((_%tl170173171065%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e170171171060%_)))
                                    (_%hd170172171063%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e170171171060%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd170172171063%_))
                                    (let ((_%e170174171068%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd170172171063%_))))
                                      (let ((_%tl170176171073%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e170174171068%_)))
                                            (_%hd170175171071%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e170174171068%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _%hd170175171071%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _%hd170175171071%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl170176171073%_))
                                                    (let ((_%e170177171076%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl170176171073%_))))
                                                      (let ((_%tl170179171081%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e170177171076%_)))
                    (_%hd170178171079%_
                     (let () (declare (not safe)) (##car _%e170177171076%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl170179171081%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl170173171065%_))
                        (let ((_%e170180171084%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl170173171065%_))))
                          (let ((_%tl170182171089%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e170180171084%_)))
                                (_%hd170181171087%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e170180171084%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd170181171087%_))
                                (let ((_%e170183171092%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd170181171087%_))))
                                  (let ((_%tl170185171097%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e170183171092%_)))
                                        (_%hd170184171095%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e170183171092%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd170184171095%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _%hd170184171095%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl170185171097%_))
                                                (let ((_%e170186171100%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl170185171097%_))))
                                                  (let ((_%tl170188171105%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e170186171100%_)))
                                                        (_%hd170187171103%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e170186171100%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl170188171105%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl170182171089%_))
                                                            (let ((_%e170189171108%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl170182171089%_))))
                      (let ((_%tl170191171113%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e170189171108%_)))
                            (_%hd170190171111%_
                             (let ()
                               (declare (not safe))
                               (##car _%e170189171108%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd170190171111%_))
                            (let ((_%e170192171116%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd170190171111%_))))
                              (let ((_%tl170194171121%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e170192171116%_)))
                                    (_%hd170193171119%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e170192171116%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd170193171119%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd170193171119%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl170194171121%_))
                                            (let ((_%e170195171124%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl170194171121%_))))
                                              (let ((_%tl170197171129%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e170195171124%_)))
                                                    (_%hd170196171127%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e170195171124%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl170197171129%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair/null?
                                                           _%tl170191171113%_))
                                                        (let ((_%__splice176173176174%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-split-splice _%tl170191171113%_ '0))))
                  (let ((_%tl170200171134%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice176173176174%_ '1)))
                        (_%target170198171132%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice176173176174%_ '0))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl170200171134%_))
                        (_%__match176274176275%_
                         _%e170168171052%_
                         _%hd170169171055%_
                         _%tl170170171057%_
                         _%e170171171060%_
                         _%hd170172171063%_
                         _%tl170173171065%_
                         _%e170174171068%_
                         _%hd170175171071%_
                         _%tl170176171073%_
                         _%e170177171076%_
                         _%hd170178171079%_
                         _%tl170179171081%_
                         _%e170180171084%_
                         _%hd170181171087%_
                         _%tl170182171089%_
                         _%e170183171092%_
                         _%hd170184171095%_
                         _%tl170185171097%_
                         _%e170186171100%_
                         _%hd170187171103%_
                         _%tl170188171105%_
                         _%e170189171108%_
                         _%hd170190171111%_
                         _%tl170191171113%_
                         _%e170192171116%_
                         _%hd170193171119%_
                         _%tl170194171121%_
                         _%e170195171124%_
                         _%hd170196171127%_
                         _%tl170197171129%_
                         _%__splice176173176174%_
                         _%target170198171132%_
                         _%tl170200171134%_)
                        (_%__match176462176463%_
                         _%e170168171052%_
                         _%hd170169171055%_
                         _%tl170170171057%_
                         _%e170171171060%_
                         _%hd170172171063%_
                         _%tl170173171065%_
                         _%e170174171068%_
                         _%hd170175171071%_
                         _%tl170176171073%_
                         _%e170177171076%_
                         _%hd170178171079%_
                         _%tl170179171081%_
                         _%e170180171084%_
                         _%hd170181171087%_
                         _%tl170182171089%_
                         _%e170183171092%_
                         _%hd170184171095%_
                         _%tl170185171097%_
                         _%e170186171100%_
                         _%hd170187171103%_
                         _%tl170188171105%_
                         _%e170189171108%_
                         _%hd170190171111%_
                         _%tl170191171113%_
                         _%e170192171116%_
                         _%hd170193171119%_
                         _%tl170194171121%_
                         _%e170195171124%_
                         _%hd170196171127%_
                         _%tl170197171129%_))))
                (_%__match176462176463%_
                 _%e170168171052%_
                 _%hd170169171055%_
                 _%tl170170171057%_
                 _%e170171171060%_
                 _%hd170172171063%_
                 _%tl170173171065%_
                 _%e170174171068%_
                 _%hd170175171071%_
                 _%tl170176171073%_
                 _%e170177171076%_
                 _%hd170178171079%_
                 _%tl170179171081%_
                 _%e170180171084%_
                 _%hd170181171087%_
                 _%tl170182171089%_
                 _%e170183171092%_
                 _%hd170184171095%_
                 _%tl170185171097%_
                 _%e170186171100%_
                 _%hd170187171103%_
                 _%tl170188171105%_
                 _%e170189171108%_
                 _%hd170190171111%_
                 _%tl170191171113%_
                 _%e170192171116%_
                 _%hd170193171119%_
                 _%tl170194171121%_
                 _%e170195171124%_
                 _%hd170196171127%_
                 _%tl170197171129%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match176666176667%_
                                                     _%e170168171052%_
                                                     _%hd170169171055%_
                                                     _%tl170170171057%_
                                                     _%e170171171060%_
                                                     _%hd170172171063%_
                                                     _%tl170173171065%_
                                                     _%e170174171068%_
                                                     _%hd170175171071%_
                                                     _%tl170176171073%_
                                                     _%e170177171076%_
                                                     _%hd170178171079%_
                                                     _%tl170179171081%_
                                                     _%e170180171084%_
                                                     _%hd170181171087%_
                                                     _%tl170182171089%_
                                                     _%e170183171092%_
                                                     _%hd170184171095%_
                                                     _%tl170185171097%_
                                                     _%e170186171100%_
                                                     _%hd170187171103%_
                                                     _%tl170188171105%_
                                                     _%e170189171108%_
                                                     _%hd170190171111%_
                                                     _%tl170191171113%_))))
                                            (_%__match176666176667%_
                                             _%e170168171052%_
                                             _%hd170169171055%_
                                             _%tl170170171057%_
                                             _%e170171171060%_
                                             _%hd170172171063%_
                                             _%tl170173171065%_
                                             _%e170174171068%_
                                             _%hd170175171071%_
                                             _%tl170176171073%_
                                             _%e170177171076%_
                                             _%hd170178171079%_
                                             _%tl170179171081%_
                                             _%e170180171084%_
                                             _%hd170181171087%_
                                             _%tl170182171089%_
                                             _%e170183171092%_
                                             _%hd170184171095%_
                                             _%tl170185171097%_
                                             _%e170186171100%_
                                             _%hd170187171103%_
                                             _%tl170188171105%_
                                             _%e170189171108%_
                                             _%hd170190171111%_
                                             _%tl170191171113%_))
                                        (_%__match176342176343%_
                                         _%e170168171052%_
                                         _%hd170169171055%_
                                         _%tl170170171057%_
                                         _%e170171171060%_
                                         _%hd170172171063%_
                                         _%tl170173171065%_
                                         _%e170174171068%_
                                         _%hd170175171071%_
                                         _%tl170176171073%_
                                         _%e170177171076%_
                                         _%hd170178171079%_
                                         _%tl170179171081%_
                                         _%e170180171084%_
                                         _%hd170181171087%_
                                         _%tl170182171089%_
                                         _%e170183171092%_
                                         _%hd170184171095%_
                                         _%tl170185171097%_
                                         _%e170186171100%_
                                         _%hd170187171103%_
                                         _%tl170188171105%_
                                         _%e170189171108%_
                                         _%hd170190171111%_
                                         _%tl170191171113%_
                                         _%e170192171116%_
                                         _%hd170193171119%_
                                         _%tl170194171121%_))
                                    (_%__match176666176667%_
                                     _%e170168171052%_
                                     _%hd170169171055%_
                                     _%tl170170171057%_
                                     _%e170171171060%_
                                     _%hd170172171063%_
                                     _%tl170173171065%_
                                     _%e170174171068%_
                                     _%hd170175171071%_
                                     _%tl170176171073%_
                                     _%e170177171076%_
                                     _%hd170178171079%_
                                     _%tl170179171081%_
                                     _%e170180171084%_
                                     _%hd170181171087%_
                                     _%tl170182171089%_
                                     _%e170183171092%_
                                     _%hd170184171095%_
                                     _%tl170185171097%_
                                     _%e170186171100%_
                                     _%hd170187171103%_
                                     _%tl170188171105%_
                                     _%e170189171108%_
                                     _%hd170190171111%_
                                     _%tl170191171113%_))))
                            (_%__match176666176667%_
                             _%e170168171052%_
                             _%hd170169171055%_
                             _%tl170170171057%_
                             _%e170171171060%_
                             _%hd170172171063%_
                             _%tl170173171065%_
                             _%e170174171068%_
                             _%hd170175171071%_
                             _%tl170176171073%_
                             _%e170177171076%_
                             _%hd170178171079%_
                             _%tl170179171081%_
                             _%e170180171084%_
                             _%hd170181171087%_
                             _%tl170182171089%_
                             _%e170183171092%_
                             _%hd170184171095%_
                             _%tl170185171097%_
                             _%e170186171100%_
                             _%hd170187171103%_
                             _%tl170188171105%_
                             _%e170189171108%_
                             _%hd170190171111%_
                             _%tl170191171113%_))))
                    (_%__match176604176605%_
                     _%e170168171052%_
                     _%hd170169171055%_
                     _%tl170170171057%_
                     _%e170171171060%_
                     _%hd170172171063%_
                     _%tl170173171065%_
                     _%e170174171068%_
                     _%hd170175171071%_
                     _%tl170176171073%_
                     _%e170177171076%_
                     _%hd170178171079%_
                     _%tl170179171081%_
                     _%e170180171084%_
                     _%hd170181171087%_
                     _%tl170182171089%_
                     _%e170183171092%_
                     _%hd170184171095%_
                     _%tl170185171097%_
                     _%e170186171100%_
                     _%hd170187171103%_
                     _%tl170188171105%_))
                (_%__kont176187176188%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont176187176188%_))
                                            (_%__kont176187176188%_))
                                        (_%__kont176187176188%_))))
                                (_%__kont176187176188%_))))
                        (_%__kont176187176188%_))
                    (_%__kont176187176188%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont176187176188%_))
                                                (_%__kont176187176188%_))
                                            (_%__kont176187176188%_))))
                                    (_%__kont176187176188%_))))
                            (_%__kont176187176188%_))))
                    (_%__kont176187176188%_))))))))))
