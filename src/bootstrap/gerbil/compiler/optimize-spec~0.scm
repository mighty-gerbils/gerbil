(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-spec::timestamp 1756721299)
  (begin
    (define gxc#::generate-method-specializers::t
      (let ((__tmp186683 (list gxc#::identity::t))
            (__tmp186682 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-method-specializers::t
         '::generate-method-specializers
         __tmp186683
         '()
         __tmp186682
         '#f)))
    (define gxc#::generate-method-specializers?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-method-specializers::t)))
    (define gxc#make-::generate-method-specializers
      (lambda _%$args185480%_
        (apply make-instance
               gxc#::generate-method-specializers::t
               _%$args185480%_)))
    (define gxc#::generate-method-specializers-bind-methods!
      (let ((__tmp186684
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
        (__make-atomic-promise __tmp186684)))
    (define gxc#apply-generate-method-specializers
      (lambda (_%stx185472%_)
        (force gxc#::generate-method-specializers-bind-methods!)
        (let* ((_%self185475%_
                (let ((__obj186675
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-method-specializers::t))))
                  __obj186675))
               (__tmp186685
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self185475%_ _%stx185472%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp186685
           gxc#current-compile-method
           _%self185475%_))))
    (define gxc#::extract-receiver::t
      (let ((__tmp186687 (list gxc#::false::t))
            (__tmp186686 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::extract-receiver::t
         '::extract-receiver
         __tmp186687
         '()
         __tmp186686
         '#f)))
    (define gxc#::extract-receiver?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::extract-receiver::t)))
    (define gxc#make-::extract-receiver
      (lambda _%$args185469%_
        (apply make-instance gxc#::extract-receiver::t _%$args185469%_)))
    (define gxc#::extract-receiver-bind-methods!
      (let ((__tmp186688
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
        (__make-atomic-promise __tmp186688)))
    (define gxc#apply-extract-receiver
      (lambda (_%stx185461%_)
        (force gxc#::extract-receiver-bind-methods!)
        (let* ((_%self185464%_
                (let ((__obj186677
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::extract-receiver::t))))
                  __obj186677))
               (__tmp186689
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self185464%_ _%stx185461%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp186689
           gxc#current-compile-method
           _%self185464%_))))
    (define gxc#::collect-object-refs::t
      (let ((__tmp186691 (list gxc#::void::t))
            (__tmp186690 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-object-refs::t
         '::collect-object-refs
         __tmp186691
         '(receiver methods slots)
         __tmp186690
         '#f)))
    (define gxc#::collect-object-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-object-refs::t)))
    (define gxc#make-::collect-object-refs
      (lambda _%$args185458%_
        (apply make-instance gxc#::collect-object-refs::t _%$args185458%_)))
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
      (let ((__tmp186692
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
        (__make-atomic-promise __tmp186692)))
    (define gxc#apply-collect-object-refs__%
      (lambda (_%@@keywords185424%_
               _%receiver185419185425%_
               _%methods185420185427%_
               _%slots185421185429%_
               _%stx185431%_)
        (let* ((_%receiver185434%_
                (if (eq? _%receiver185419185425%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _%receiver185419185425%_))
               (_%methods185436%_
                (if (eq? _%methods185420185427%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _%methods185420185427%_))
               (_%slots185438%_
                (if (eq? _%slots185421185429%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _%slots185421185429%_)))
          (force gxc#::collect-object-refs-bind-methods!)
          (let* ((_%self185440%_
                  (let ((__obj186679
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
                       __obj186679
                       _%receiver185434%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj186679
                       _%methods185436%_
                       '2
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj186679
                       _%slots185438%_
                       '3
                       '#f
                       '#f))
                    __obj186679))
                 (__tmp186693
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self185440%_ _%stx185431%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp186693
             gxc#current-compile-method
             _%self185440%_)))))
    (define gxc#apply-collect-object-refs__@
      (lambda (_%@@keywords185447%_ . _%args185448%_)
        (apply gxc#apply-collect-object-refs__%
               _%@@keywords185447%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords185447%_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords185447%_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords185447%_
                  'slots:
                  absent-value))
               _%args185448%_)))
    (define gxc#apply-collect-object-refs
      (lambda _%args185422185454%_
        (apply keyword-dispatch
               '#(receiver: slots: methods:)
               gxc#apply-collect-object-refs__@
               _%args185422185454%_)))
    (define gxc#::subst-object-refs::t
      (let ((__tmp186695 (list gxc#::basic-xform-expression::t))
            (__tmp186694 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::subst-object-refs::t
         '::subst-object-refs
         __tmp186695
         '(receiver klass methods slots)
         __tmp186694
         '#f)))
    (define gxc#::subst-object-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::subst-object-refs::t)))
    (define gxc#make-::subst-object-refs
      (lambda _%$args185415%_
        (apply make-instance gxc#::subst-object-refs::t _%$args185415%_)))
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
      (let ((__tmp186696
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
        (__make-atomic-promise __tmp186696)))
    (define gxc#apply-subst-object-refs__%
      (lambda (_%@@keywords185377%_
               _%receiver185371185378%_
               _%klass185372185380%_
               _%methods185373185382%_
               _%slots185374185384%_
               _%stx185386%_)
        (let* ((_%receiver185389%_
                (if (eq? _%receiver185371185378%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _%receiver185371185378%_))
               (_%klass185391%_
                (if (eq? _%klass185372185380%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'klass:))
                    _%klass185372185380%_))
               (_%methods185393%_
                (if (eq? _%methods185373185382%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _%methods185373185382%_))
               (_%slots185395%_
                (if (eq? _%slots185374185384%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _%slots185374185384%_)))
          (force gxc#::subst-object-refs-bind-methods!)
          (let* ((_%self185397%_
                  (let ((__obj186681
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
                       __obj186681
                       _%receiver185389%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj186681
                       _%klass185391%_
                       '2
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj186681
                       _%methods185393%_
                       '3
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj186681
                       _%slots185395%_
                       '4
                       '#f
                       '#f))
                    __obj186681))
                 (__tmp186697
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self185397%_ _%stx185386%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp186697
             gxc#current-compile-method
             _%self185397%_)))))
    (define gxc#apply-subst-object-refs__@
      (lambda (_%@@keywords185404%_ . _%args185405%_)
        (apply gxc#apply-subst-object-refs__%
               _%@@keywords185404%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords185404%_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords185404%_
                  'klass:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords185404%_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords185404%_
                  'slots:
                  absent-value))
               _%args185405%_)))
    (define gxc#apply-subst-object-refs
      (lambda _%args185375185411%_
        (apply keyword-dispatch
               '#(receiver: methods: slots: klass:)
               gxc#apply-subst-object-refs__@
               _%args185375185411%_)))
    (define gxc#generate-method-specializers-define-values%
      (lambda (_%self182486%_ _%stx182487%_)
        (letrec ((_%generate-method-bind182489%_
                  (lambda (_%$klass185363%_
                           _%$method-table185364%_
                           _%id185365%_
                           _%$id185366%_)
                    (let ((_%$tmp185368%_
                           (let ((__tmp186698
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__method))))
                             (declare (not safe))
                             (make-symbol__0 __tmp186698))))
                      (cons (cons _%$id185366%_ '())
                            (cons (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons 'make-promise '()))
                                              (cons (cons '%#lambda
                                                          (cons '()
                                                                (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons (cons (cons _%$tmp185368%_ '())
                                                      (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#ref (cons 'symbolic-table-ref '()))
                                (cons (cons '%#ref
                                            (cons _%$method-table185364%_ '()))
                                      (cons (cons '%#quote
                                                  (cons _%id185365%_ '()))
                                            (cons (cons '%#quote
                                                        (cons '#f '()))
                                                  '())))))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())
                                          (cons (cons '%#if
                                                      (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%$tmp185368%_ '()))
                    (cons (cons '%#ref (cons _%$tmp185368%_ '()))
                          (cons (cons '%#call
                                      (cons (cons '%#ref (cons 'error '()))
                                            (cons (cons '%#quote
                                                        (cons '"Missing method"
                                                              '()))
                                                  (cons (cons '%#quote
                                                              (cons _%id185365%_
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
                 (_%generate-slot-bind182490%_
                  (lambda (_%$klass185357%_ _%id185358%_ _%$id185359%_)
                    (let ((_%$tmp185361%_
                           (let ((__tmp186699
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__slot))))
                             (declare (not safe))
                             (make-symbol__0 __tmp186699))))
                      (cons (cons _%$id185359%_ '())
                            (cons (cons '%#let-values
                                        (cons (cons (cons (cons _%$tmp185361%_
                                                                '())
                                                          (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '%#ref (cons 'class-slot-offset '()))
                                    (cons (cons '%#ref
                                                (cons _%$klass185357%_ '()))
                                          (cons (cons '%#quote
                                                      (cons _%id185358%_ '()))
                                                '()))))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())
                                              (cons (cons '%#if
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$tmp185361%_ '()))
                        (cons (cons '%#ref (cons _%$tmp185361%_ '()))
                              (cons (cons '%#call
                                          (cons (cons '%#ref (cons 'error '()))
                                                (cons (cons '%#quote
                                                            (cons '"Unknown slot"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#quote (cons _%id185358%_ '())) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '())))))
                 (_%generate-specializer-impl182491%_
                  (lambda (_%$klass185351%_
                           _%$method-table185352%_
                           _%methods-bind185353%_
                           _%slots-bind185354%_
                           _%specializer-impl185355%_)
                    (let ((__tmp186700
                           (cons '%#lambda
                                 (cons (cons _%$klass185351%_
                                             (cons _%$method-table185352%_
                                                   '()))
                                       (cons (cons '%#let-values
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (__foldr1
                                                            cons
                                                            _%slots-bind185354%_
                                                            _%methods-bind185353%_))
                                                         (cons _%specializer-impl185355%_
                                                               '())))
                                             '())))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp186700 _%stx182487%_))))
                 (_%generate-specializer-def182492%_
                  (lambda (_%id185347%_
                           _%specializer-id185348%_
                           _%specializer-impl185349%_)
                    (let ((__tmp186701
                           (cons '%#begin
                                 (cons _%stx182487%_
                                       (cons (let ((__tmp186702
                                                    (cons '%#define-values
                                                          (cons (cons _%specializer-id185348%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons _%specializer-impl185349%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp186702
                                                _%stx182487%_))
                                             (cons (let ((__tmp186703
                                                          (cons '%#call
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons 'bind-specializer! '()))
                              (cons (cons '%#ref (cons _%id185347%_ '()))
                                    (cons (cons '%#ref
                                                (cons _%specializer-id185348%_
                                                      '()))
                                          '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp186703
                                                      _%stx182487%_))
                                                   '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp186701 _%stx182487%_)))))
          (let* ((_%__stx185569185570%_ _%stx182487%_)
                 (_%g182495182515%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx185569185570%_)))))
            (let ((_%__kont185571185572%_
                   (lambda (_%L182559%_ _%L182560%_)
                     (let ((_%method-calls182579%_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_%slot-refs182580%_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_%empty182581%_
                            (let ()
                              (declare (not safe))
                              (make-hash-table-eq))))
                       (letrec ((_%no-specializer?182583%_
                                 (lambda ()
                                   (if (let ((__tmp186704
                                              (let ()
                                                (declare (not safe))
                                                (__hash-length
                                                 _%method-calls182579%_))))
                                         (declare (not safe))
                                         (##fxzero? __tmp186704))
                                       (let ((__tmp186705
                                              (let ()
                                                (declare (not safe))
                                                (__hash-length
                                                 _%slot-refs182580%_))))
                                         (declare (not safe))
                                         (##fxzero? __tmp186705))
                                       '#f))))
                         (if (let ()
                               (declare (not safe))
                               (gxc#lambda-expr? _%L182559%_))
                             (let* ((_%__stx185483185484%_ _%L182559%_)
                                    (_%g182971182989%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx185483185484%_)))))
                               (let ((_%__kont185485185486%_
                                      (lambda (_%L183025%_
                                               _%L183026%_
                                               _%L183027%_)
                                        (let ((_%receiver183047%_
                                               (let ((_%$e183044%_
                                                      (gxc#apply-extract-receiver
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f '%#begin))
                     _%L183025%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e183044%_
                                                     _%$e183044%_
                                                     _%L183027%_))))
                                          (for-each
                                           (lambda (_%g183048183050%_)
                                             (gxc#apply-collect-object-refs__%
                                              '#f
                                              _%receiver183047%_
                                              _%method-calls182579%_
                                              _%slot-refs182580%_
                                              _%g183048183050%_))
                                           _%L183025%_)
                                          (if (_%no-specializer?182583%_)
                                              _%stx182487%_
                                              (let* ((_%specializer-id183059%_
                                                      (let* ((_%id183053%_
                                                              (let ((__tmp186706
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%L182560%_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp186706 '"::specialize")))
                     (_%specializer-id183056%_
                      (let ((__tmp186707
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _%stx182487%_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _%id183053%_ __tmp186707))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _%specializer-id183056%_))
                _%specializer-id183056%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$klass183061%_
                                                      (let ((__tmp186708
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__klass))))
                (declare (not safe))
                (make-symbol__0 __tmp186708)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$method-table183063%_
                                                      (let ((__tmp186709
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__method-table))))
                (declare (not safe))
                (make-symbol__0 __tmp186709)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods183065%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%method-calls182579%_)))
                                                     (_%$methods183069%_
                                                      (let ((__tmp186710
                                                             (lambda (_%id183067%_)
                                                               (let ((__tmp186711
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gensym _%id183067%_)))
                         (declare (not safe))
                         (make-symbol__1 '"__" __tmp186711)))))
                (declare (not safe))
                (##map __tmp186710 _%methods183065%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_183078%_
                                                      (let ((__tmp186712
                                                             (lambda (_%g183070183073%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g183071183075%_)
                       (let ()
                         (declare (not safe))
                         (__hash-put!
                          _%method-calls182579%_
                          _%g183070183073%_
                          _%g183071183075%_)))))
                (declare (not safe))
                (##for-each __tmp186712 _%methods183065%_ _%$methods183069%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods-bind183088%_
                                                      (let ((__tmp186713
                                                             (lambda (_%g183080183083%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g183081183085%_)
                       (_%generate-method-bind182489%_
                        _%$klass183061%_
                        _%$method-table183063%_
                        _%g183080183083%_
                        _%g183081183085%_))))
                (declare (not safe))
                (##map __tmp186713 _%methods183065%_ _%$methods183069%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots183090%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%slot-refs182580%_)))
                                                     (_%$slots183094%_
                                                      (let ((__tmp186714
                                                             (lambda (_%id183092%_)
                                                               (let ((__tmp186715
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gensym _%id183092%_)))
                         (declare (not safe))
                         (make-symbol__1 '"__" __tmp186715)))))
                (declare (not safe))
                (##map __tmp186714 _%slots183090%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_183103%_
                                                      (let ((__tmp186716
                                                             (lambda (_%g183095183098%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g183096183100%_)
                       (let ()
                         (declare (not safe))
                         (__hash-put!
                          _%slot-refs182580%_
                          _%g183095183098%_
                          _%g183096183100%_)))))
                (declare (not safe))
                (##for-each __tmp186716 _%slots183090%_ _%$slots183094%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots-bind183112%_
                                                      (let ((__tmp186717
                                                             (lambda (_%g183104183107%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g183105183109%_)
                       (_%generate-slot-bind182490%_
                        _%$klass183061%_
                        _%g183104183107%_
                        _%g183105183109%_))))
                (declare (not safe))
                (##map __tmp186717 _%slots183090%_ _%$slots183094%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-body183118%_
                                                      (map (lambda (_%g183113183115%_)
                                                             (gxc#apply-subst-object-refs__%
                                                              '#f
                                                              _%receiver183047%_
                                                              _%$klass183061%_
                                                              _%method-calls182579%_
                                                              _%slot-refs182580%_
                                                              _%g183113183115%_))
                                                           _%L183025%_))
                                                     (_%specializer-impl183120%_
                                                      (let ((__tmp186718
                                                             (cons '%#lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons _%L183027%_ _%L183026%_)
                                 _%specializer-body183118%_))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp186718 _%stx182487%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl183122%_
                                                      (_%generate-specializer-impl182491%_
                                                       _%$klass183061%_
                                                       _%$method-table183063%_
                                                       _%methods-bind183088%_
                                                       _%slots-bind183112%_
                                                       _%specializer-impl183120%_)))
                                                (let ((__tmp186720
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%L182560%_)))
                                                      (__tmp186719
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%specializer-id183059%_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp186720
                                                   '" => "
                                                   __tmp186719))
                                                (_%generate-specializer-def182492%_
                                                 _%L182560%_
                                                 _%specializer-id183059%_
                                                 _%specializer-impl183122%_))))))
                                     (_%__kont185487185488%_
                                      (lambda () _%stx182487%_)))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%__stx185483185484%_))
                                     (let ((_%e182976183001%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e
                                               _%__stx185483185484%_))))
                                       (let ((_%tl182978183006%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e182976183001%_)))
                                             (_%hd182977183004%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e182976183001%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl182978183006%_))
                                             (let ((_%e182979183009%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%tl182978183006%_))))
                                               (let ((_%tl182981183014%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e182979183009%_)))
                                                     (_%hd182980183012%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e182979183009%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%hd182980183012%_))
                                                     (let ((_%e182982183017%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%hd182980183012%_))))
                                                       (let ((_%tl182984183022%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e182982183017%_)))
                     (_%hd182983183020%_
                      (let () (declare (not safe)) (##car _%e182982183017%_))))
                 (_%__kont185485185486%_
                  _%tl182981183014%_
                  _%tl182984183022%_
                  _%hd182983183020%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont185487185488%_))))
                                             (_%__kont185487185488%_))))
                                     (_%__kont185487185488%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gxc#case-lambda-expr? _%L182559%_))
                                 (let* ((_%g183129183148%_
                                         (lambda (_%g183130183145%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g183130183145%_))))
                                        (_%g183128183446%_
                                         (lambda (_%g183130183151%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g183130183151%_))
                                               (let ((_%e183132183153%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%g183130183151%_))))
                                                 (let ((_%hd183133183156%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e183132183153%_)))
                                                       (_%tl183134183158%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e183132183153%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair/null?
                                                          _%tl183134183158%_))
                                                       (let ((_g186721_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-split-splice _%tl183134183158%_ '0))))
                 (begin
                   (let ((_g186722_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g186721_)
                                (##values-length _g186721_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g186722_ 2)))
                         (error "Context expects 2 values" _g186722_)))
                   (let ((_%target183135183161%_
                          (let ()
                            (declare (not safe))
                            (##values-ref _g186721_ 0)))
                         (_%tl183137183163%_
                          (let ()
                            (declare (not safe))
                            (##values-ref _g186721_ 1))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl183137183163%_))
                         (letrec ((_%loop183138183166%_
                                   (lambda (_%hd183136183169%_
                                            _%clause183142183171%_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd183136183169%_))
                                         (let ((_%e183139183174%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd183136183169%_))))
                                           (let ((_%lp-hd183140183177%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e183139183174%_)))
                                                 (_%lp-tl183141183179%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e183139183174%_))))
                                             (_%loop183138183166%_
                                              _%lp-tl183141183179%_
                                              (cons _%lp-hd183140183177%_
                                                    _%clause183142183171%_))))
                                         (let ((_%clause183143183182%_
                                                (reverse _%clause183142183171%_)))
                                           ((lambda (_%L183185%_)
                                              (for-each
                                               (lambda (_%clause183199%_)
                                                 (let* ((_%__stx185509185510%_
                                                         _%clause183199%_)
                                                        (_%g183202183217%_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%__stx185509185510%_)))))
                                                   (let ((_%__kont185511185512%_
                                                          (lambda (_%L183245%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%L183246%_
                           _%L183247%_)
                    (let ((_%receiver183266%_
                           (let ((_%$e183263%_
                                  (gxc#apply-extract-receiver
                                   (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f '%#begin))
                                         _%L183245%_))))
                             (if _%$e183263%_ _%$e183263%_ _%L183247%_))))
                      (for-each
                       (lambda (_%g183267183269%_)
                         (gxc#apply-collect-object-refs__%
                          '#f
                          _%receiver183266%_
                          _%method-calls182579%_
                          _%slot-refs182580%_
                          _%g183267183269%_))
                       _%L183245%_))))
                 (_%__kont185513185514%_ (lambda () '#!void)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%__stx185509185510%_))
                                                         (let ((_%e183207183229%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%__stx185509185510%_))))
                   (let ((_%tl183209183234%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e183207183229%_)))
                         (_%hd183208183232%_
                          (let ()
                            (declare (not safe))
                            (##car _%e183207183229%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%hd183208183232%_))
                         (let ((_%e183210183237%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd183208183232%_))))
                           (let ((_%tl183212183242%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e183210183237%_)))
                                 (_%hd183211183240%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e183210183237%_))))
                             (_%__kont185511185512%_
                              _%tl183209183234%_
                              _%tl183212183242%_
                              _%hd183211183240%_)))
                         (_%__kont185513185514%_))))
                 (_%__kont185513185514%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((__tmp186723
                                                      (lambda (_%g183274183277%_
                                                               _%g183275183279%_)
                                                        (cons _%g183274183277%_
                                                              _%g183275183279%_))))
                                                 (declare (not safe))
                                                 (__foldr1
                                                  __tmp186723
                                                  '()
                                                  _%L183185%_)))
                                              (if (_%no-specializer?182583%_)
                                                  _%stx182487%_
                                                  (let* ((_%specializer-id183288%_
                                                          (let* ((_%id183282%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp186724
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%L182560%_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp186724 '"::specialize")))
                         (_%specializer-id183285%_
                          (let ((__tmp186725
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _%stx182487%_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _%id183282%_
                             __tmp186725))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _%specializer-id183285%_))
                    _%specializer-id183285%_))
                 (_%$klass183290%_
                  (let ((__tmp186726
                         (let () (declare (not safe)) (##gensym '__klass))))
                    (declare (not safe))
                    (make-symbol__0 __tmp186726)))
                 (_%$method-table183292%_
                  (let ((__tmp186727
                         (let ()
                           (declare (not safe))
                           (##gensym '__method-table))))
                    (declare (not safe))
                    (make-symbol__0 __tmp186727)))
                 (_%methods183294%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%method-calls182579%_)))
                 (_%$methods183298%_
                  (let ((__tmp186728
                         (lambda (_%id183296%_)
                           (let ((__tmp186729 (gensym _%id183296%_)))
                             (declare (not safe))
                             (make-symbol__1 '"__" __tmp186729)))))
                    (declare (not safe))
                    (##map __tmp186728 _%methods183294%_)))
                 (_%_183307%_
                  (let ((__tmp186730
                         (lambda (_%g183299183302%_ _%g183300183304%_)
                           (let ()
                             (declare (not safe))
                             (__hash-put!
                              _%method-calls182579%_
                              _%g183299183302%_
                              _%g183300183304%_)))))
                    (declare (not safe))
                    (##for-each
                     __tmp186730
                     _%methods183294%_
                     _%$methods183298%_)))
                 (_%methods-bind183317%_
                  (let ((__tmp186731
                         (lambda (_%g183309183312%_ _%g183310183314%_)
                           (_%generate-method-bind182489%_
                            _%$klass183290%_
                            _%$method-table183292%_
                            _%g183309183312%_
                            _%g183310183314%_))))
                    (declare (not safe))
                    (##map __tmp186731 _%methods183294%_ _%$methods183298%_)))
                 (_%slots183319%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%slot-refs182580%_)))
                 (_%$slots183323%_
                  (let ((__tmp186732
                         (lambda (_%id183321%_)
                           (let ((__tmp186733 (gensym _%id183321%_)))
                             (declare (not safe))
                             (make-symbol__1 '"__" __tmp186733)))))
                    (declare (not safe))
                    (##map __tmp186732 _%slots183319%_)))
                 (_%_183332%_
                  (let ((__tmp186734
                         (lambda (_%g183324183327%_ _%g183325183329%_)
                           (let ()
                             (declare (not safe))
                             (__hash-put!
                              _%slot-refs182580%_
                              _%g183324183327%_
                              _%g183325183329%_)))))
                    (declare (not safe))
                    (##for-each __tmp186734 _%slots183319%_ _%$slots183323%_)))
                 (_%slots-bind183341%_
                  (let ((__tmp186735
                         (lambda (_%g183333183336%_ _%g183334183338%_)
                           (_%generate-slot-bind182490%_
                            _%$klass183290%_
                            _%g183333183336%_
                            _%g183334183338%_))))
                    (declare (not safe))
                    (##map __tmp186735 _%slots183319%_ _%$slots183323%_)))
                 (_%specializer-clauses183439%_
                  (map (lambda (_%clause183343%_)
                         (let* ((_%__stx185529185530%_ _%clause183343%_)
                                (_%g183346183361%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx185529185530%_)))))
                           (let ((_%__kont185531185532%_
                                  (lambda (_%L183389%_ _%L183390%_ _%L183391%_)
                                    (let* ((_%receiver183420%_
                                            (let ((_%$e183417%_
                                                   (gxc#apply-extract-receiver
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#begin))
                                                          _%L183389%_))))
                                              (if _%$e183417%_
                                                  _%$e183417%_
                                                  _%L183391%_)))
                                           (_%body183426%_
                                            (map (lambda (_%g183421183423%_)
                                                   (gxc#apply-subst-object-refs__%
                                                    '#f
                                                    _%receiver183420%_
                                                    _%$klass183290%_
                                                    _%method-calls182579%_
                                                    _%slot-refs182580%_
                                                    _%g183421183423%_))
                                                 _%L183389%_)))
                                      (cons (cons _%L183391%_ _%L183390%_)
                                            _%body183426%_))))
                                 (_%__kont185533185534%_
                                  (lambda () _%clause183343%_)))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx185529185530%_))
                                 (let ((_%e183351183373%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx185529185530%_))))
                                   (let ((_%tl183353183378%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e183351183373%_)))
                                         (_%hd183352183376%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e183351183373%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd183352183376%_))
                                         (let ((_%e183354183381%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd183352183376%_))))
                                           (let ((_%tl183356183386%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e183354183381%_)))
                                                 (_%hd183355183384%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e183354183381%_))))
                                             (_%__kont185531185532%_
                                              _%tl183353183378%_
                                              _%tl183356183386%_
                                              _%hd183355183384%_)))
                                         (_%__kont185533185534%_))))
                                 (_%__kont185533185534%_)))))
                       (let ((__tmp186736
                              (lambda (_%g183431183434%_ _%g183432183436%_)
                                (cons _%g183431183434%_ _%g183432183436%_))))
                         (declare (not safe))
                         (__foldr1 __tmp186736 '() _%L183185%_))))
                 (_%specializer-impl183441%_
                  (let ((__tmp186737
                         (cons '%#case-lambda _%specializer-clauses183439%_)))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp186737 _%stx182487%_)))
                 (_%specializer-impl183443%_
                  (_%generate-specializer-impl182491%_
                   _%$klass183290%_
                   _%$method-table183292%_
                   _%methods-bind183317%_
                   _%slots-bind183341%_
                   _%specializer-impl183441%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp186739
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%L182560%_)))
                                                          (__tmp186738
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%specializer-id183288%_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp186739
                                                       '" => "
                                                       __tmp186738))
                                                    (_%generate-specializer-def182492%_
                                                     _%L182560%_
                                                     _%specializer-id183288%_
                                                     _%specializer-impl183443%_))))
                                            _%clause183143183182%_))))))
                           (_%loop183138183166%_ _%target183135183161%_ '()))
                         (_%g183129183148%_ _%g183130183151%_)))))
               (_%g183129183148%_ _%g183130183151%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g183129183148%_
                                                _%g183130183151%_)))))
                                   (_%g183128183446%_ _%L182559%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#opt-lambda-expr? _%L182559%_))
                                     (let* ((_%g183450183480%_
                                             (lambda (_%g183451183477%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g183451183477%_))))
                                            (_%g183449184111%_
                                             (lambda (_%g183451183483%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%g183451183483%_))
                                                   (let ((_%e183455183485%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%g183451183483%_))))
                                                     (let ((_%hd183456183488%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e183455183485%_)))
                                                           (_%tl183457183490%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e183455183485%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl183457183490%_))
                                                           (let ((_%e183458183493%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl183457183490%_))))
                     (let ((_%hd183459183496%_
                            (let ()
                              (declare (not safe))
                              (##car _%e183458183493%_)))
                           (_%tl183460183498%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e183458183493%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%hd183459183496%_))
                           (let ((_%e183461183501%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd183459183496%_))))
                             (let ((_%hd183462183504%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e183461183501%_)))
                                   (_%tl183463183506%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e183461183501%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd183462183504%_))
                                   (let ((_%e183464183509%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd183462183504%_))))
                                     (let ((_%hd183465183512%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e183464183509%_)))
                                           (_%tl183466183514%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e183464183509%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%hd183465183512%_))
                                           (let ((_%e183467183517%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%hd183465183512%_))))
                                             (let ((_%hd183468183520%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e183467183517%_)))
                                                   (_%tl183469183522%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e183467183517%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl183469183522%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl183466183514%_))
                                                       (let ((_%e183470183525%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%tl183466183514%_))))
                 (let ((_%hd183471183528%_
                        (let ()
                          (declare (not safe))
                          (##car _%e183470183525%_)))
                       (_%tl183472183530%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e183470183525%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl183472183530%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl183463183506%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl183460183498%_))
                               (let ((_%e183473183533%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%tl183460183498%_))))
                                 (let ((_%hd183474183536%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e183473183533%_)))
                                       (_%tl183475183538%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e183473183533%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%tl183475183538%_))
                                       ((lambda (_%L183541%_
                                                 _%L183542%_
                                                 _%L183543%_)
                                          (let* ((_%g183567183585%_
                                                  (lambda (_%g183568183582%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g183568183582%_))))
                                                 (_%g183566183641%_
                                                  (lambda (_%g183568183588%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%g183568183588%_))
                                                        (let ((_%e183572183590%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%g183568183588%_))))
                  (let ((_%hd183573183593%_
                         (let ()
                           (declare (not safe))
                           (##car _%e183572183590%_)))
                        (_%tl183574183595%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e183572183590%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl183574183595%_))
                        (let ((_%e183575183598%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl183574183595%_))))
                          (let ((_%hd183576183601%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e183575183598%_)))
                                (_%tl183577183603%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e183575183598%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd183576183601%_))
                                (let ((_%e183578183606%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd183576183601%_))))
                                  (let ((_%hd183579183609%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e183578183606%_)))
                                        (_%tl183580183611%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e183578183606%_))))
                                    ((lambda (_%L183614%_
                                              _%L183615%_
                                              _%L183616%_)
                                       (let ((_%receiver183635%_
                                              (let ((_%$e183632%_
                                                     (gxc#apply-extract-receiver
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               '%#begin))
                                                            _%L183614%_))))
                                                (if _%$e183632%_
                                                    _%$e183632%_
                                                    _%L183616%_))))
                                         (for-each
                                          (lambda (_%g183636183638%_)
                                            (gxc#apply-collect-object-refs__%
                                             '#f
                                             _%receiver183635%_
                                             _%method-calls182579%_
                                             _%slot-refs182580%_
                                             _%g183636183638%_))
                                          _%L183614%_)))
                                     _%tl183577183603%_
                                     _%tl183580183611%_
                                     _%hd183579183609%_)))
                                (_%g183567183585%_ _%g183568183588%_))))
                        (_%g183567183585%_ _%g183568183588%_))))
                (_%g183567183585%_ _%g183568183588%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g183566183641%_ _%L183542%_))
                                          (let* ((_%g183644183663%_
                                                  (lambda (_%g183645183660%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g183645183660%_))))
                                                 (_%g183643183787%_
                                                  (lambda (_%g183645183666%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%g183645183666%_))
                                                        (let ((_%e183647183668%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%g183645183666%_))))
                  (let ((_%hd183648183671%_
                         (let ()
                           (declare (not safe))
                           (##car _%e183647183668%_)))
                        (_%tl183649183673%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e183647183668%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%tl183649183673%_))
                        (let ((_g186740_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _%tl183649183673%_
                                  '0))))
                          (begin
                            (let ((_g186741_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g186740_)
                                         (##values-length _g186740_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g186741_ 2)))
                                  (error "Context expects 2 values"
                                         _g186741_)))
                            (let ((_%target183650183676%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g186740_ 0)))
                                  (_%tl183652183678%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g186740_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl183652183678%_))
                                  (letrec ((_%loop183653183681%_
                                            (lambda (_%hd183651183684%_
                                                     _%clause183657183686%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd183651183684%_))
                                                  (let ((_%e183654183689%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd183651183684%_))))
                                                    (let ((_%lp-hd183655183692%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e183654183689%_)))
                                                          (_%lp-tl183656183694%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e183654183689%_))))
                                                      (_%loop183653183681%_
                                                       _%lp-tl183656183694%_
                                                       (cons _%lp-hd183655183692%_
                                                             _%clause183657183686%_))))
                                                  (let ((_%clause183658183697%_
                                                         (reverse _%clause183657183686%_)))
                                                    ((lambda (_%L183700%_)
                                                       (for-each
                                                        (lambda (_%clause183713%_)
                                                          (let* ((_%g183715183730%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%g183716183727%_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g183716183727%_))))
                         (_%g183714183777%_
                          (lambda (_%g183716183733%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%g183716183733%_))
                                (let ((_%e183720183735%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%g183716183733%_))))
                                  (let ((_%hd183721183738%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e183720183735%_)))
                                        (_%tl183722183740%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e183720183735%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd183721183738%_))
                                        (let ((_%e183723183743%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd183721183738%_))))
                                          (let ((_%hd183724183746%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e183723183743%_)))
                                                (_%tl183725183748%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e183723183743%_))))
                                            ((lambda (_%L183751%_
                                                      _%L183752%_
                                                      _%L183753%_)
                                               (let ((_%receiver183771%_
                                                      (let ((_%$e183768%_
                                                             (gxc#apply-extract-receiver
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f '%#begin))
                            _%L183751%_))))
                (if _%$e183768%_ _%$e183768%_ _%L183753%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (for-each
                                                  (lambda (_%g183772183774%_)
                                                    (gxc#apply-collect-object-refs__%
                                                     '#f
                                                     _%receiver183771%_
                                                     _%method-calls182579%_
                                                     _%slot-refs182580%_
                                                     _%g183772183774%_))
                                                  _%L183751%_)))
                                             _%tl183722183740%_
                                             _%tl183725183748%_
                                             _%hd183724183746%_)))
                                        (_%g183715183730%_
                                         _%g183716183733%_))))
                                (_%g183715183730%_ _%g183716183733%_)))))
                    (_%g183714183777%_ _%clause183713%_)))
                (let ((__tmp186742
                       (lambda (_%g183779183782%_ _%g183780183784%_)
                         (cons _%g183779183782%_ _%g183780183784%_))))
                  (declare (not safe))
                  (__foldr1 __tmp186742 '() _%L183700%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%clause183658183697%_))))))
                                    (_%loop183653183681%_
                                     _%target183650183676%_
                                     '()))
                                  (_%g183644183663%_ _%g183645183666%_)))))
                        (_%g183644183663%_ _%g183645183666%_))))
                (_%g183644183663%_ _%g183645183666%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g183643183787%_ _%L183541%_))
                                          (if (_%no-specializer?182583%_)
                                              _%stx182487%_
                                              (let* ((_%specializer-id183796%_
                                                      (let* ((_%id183790%_
                                                              (let ((__tmp186743
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%L182560%_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp186743 '"::specialize")))
                     (_%specializer-id183793%_
                      (let ((__tmp186744
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _%stx182487%_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _%id183790%_ __tmp186744))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _%specializer-id183793%_))
                _%specializer-id183793%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$klass183798%_
                                                      (let ((__tmp186745
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__klass))))
                (declare (not safe))
                (make-symbol__0 __tmp186745)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$method-table183800%_
                                                      (let ((__tmp186746
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__method-table))))
                (declare (not safe))
                (make-symbol__0 __tmp186746)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods183802%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%method-calls182579%_)))
                                                     (_%$methods183806%_
                                                      (let ((__tmp186747
                                                             (lambda (_%id183804%_)
                                                               (let ((__tmp186748
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gensym _%id183804%_)))
                         (declare (not safe))
                         (make-symbol__1 '"__" __tmp186748)))))
                (declare (not safe))
                (##map __tmp186747 _%methods183802%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_183815%_
                                                      (let ((__tmp186749
                                                             (lambda (_%g183807183810%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g183808183812%_)
                       (let ()
                         (declare (not safe))
                         (__hash-put!
                          _%method-calls182579%_
                          _%g183807183810%_
                          _%g183808183812%_)))))
                (declare (not safe))
                (##for-each __tmp186749 _%methods183802%_ _%$methods183806%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods-bind183825%_
                                                      (let ((__tmp186750
                                                             (lambda (_%g183817183820%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g183818183822%_)
                       (_%generate-method-bind182489%_
                        _%$klass183798%_
                        _%$method-table183800%_
                        _%g183817183820%_
                        _%g183818183822%_))))
                (declare (not safe))
                (##map __tmp186750 _%methods183802%_ _%$methods183806%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots183827%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%slot-refs182580%_)))
                                                     (_%$slots183831%_
                                                      (let ((__tmp186751
                                                             (lambda (_%id183829%_)
                                                               (let ((__tmp186752
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gensym _%id183829%_)))
                         (declare (not safe))
                         (make-symbol__1 '"__" __tmp186752)))))
                (declare (not safe))
                (##map __tmp186751 _%slots183827%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_183840%_
                                                      (let ((__tmp186753
                                                             (lambda (_%g183832183835%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g183833183837%_)
                       (let ()
                         (declare (not safe))
                         (__hash-put!
                          _%slot-refs182580%_
                          _%g183832183835%_
                          _%g183833183837%_)))))
                (declare (not safe))
                (##for-each __tmp186753 _%slots183827%_ _%$slots183831%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots-bind183849%_
                                                      (let ((__tmp186754
                                                             (lambda (_%g183841183844%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g183842183846%_)
                       (_%generate-slot-bind182490%_
                        _%$klass183798%_
                        _%g183841183844%_
                        _%g183842183846%_))))
                (declare (not safe))
                (##map __tmp186754 _%slots183827%_ _%$slots183831%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-lambda-expr183941%_
                                                      (let* ((_%g183851183869%_
                                                              (lambda (_%g183852183866%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g183852183866%_))))
                     (_%g183850183938%_
                      (lambda (_%g183852183872%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g183852183872%_))
                            (let ((_%e183856183874%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g183852183872%_))))
                              (let ((_%hd183857183877%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e183856183874%_)))
                                    (_%tl183858183879%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e183856183874%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl183858183879%_))
                                    (let ((_%e183859183882%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl183858183879%_))))
                                      (let ((_%hd183860183885%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e183859183882%_)))
                                            (_%tl183861183887%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e183859183882%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd183860183885%_))
                                            (let ((_%e183862183890%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd183860183885%_))))
                                              (let ((_%hd183863183893%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e183862183890%_)))
                                                    (_%tl183864183895%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e183862183890%_))))
                                                ((lambda (_%L183898%_
                                                          _%L183899%_
                                                          _%L183900%_)
                                                   (let* ((_%receiver183929%_
                                                           (let ((_%$e183926%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gxc#apply-extract-receiver
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '%#begin))
                                 _%L183898%_))))
                     (if _%$e183926%_ _%$e183926%_ _%L183900%_)))
                  (_%body183935%_
                   (map (lambda (_%g183930183932%_)
                          (gxc#apply-subst-object-refs__%
                           '#f
                           _%receiver183929%_
                           _%$klass183798%_
                           _%method-calls182579%_
                           _%slot-refs182580%_
                           _%g183930183932%_))
                        _%L183898%_))
                  (__tmp186755
                   (cons '%#lambda
                         (cons (cons _%L183900%_ _%L183899%_)
                               _%body183935%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp186755
                                                      _%L183542%_)))
                                                 _%tl183861183887%_
                                                 _%tl183864183895%_
                                                 _%hd183863183893%_)))
                                            (_%g183851183869%_
                                             _%g183852183872%_))))
                                    (_%g183851183869%_ _%g183852183872%_))))
                            (_%g183851183869%_ _%g183852183872%_)))))
                (_%g183850183938%_ _%L183542%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-case-lambda-expr184104%_
                                                      (let* ((_%g183943183962%_
                                                              (lambda (_%g183944183959%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g183944183959%_))))
                     (_%g183942184101%_
                      (lambda (_%g183944183965%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g183944183965%_))
                            (let ((_%e183946183967%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g183944183965%_))))
                              (let ((_%hd183947183970%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e183946183967%_)))
                                    (_%tl183948183972%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e183946183967%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl183948183972%_))
                                    (let ((_g186756_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _%tl183948183972%_
                                              '0))))
                                      (begin
                                        (let ((_g186757_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g186756_)
                                                     (##values-length
                                                      _g186756_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g186757_ 2)))
                                              (error "Context expects 2 values"
                                                     _g186757_)))
                                        (let ((_%target183949183975%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g186756_ 0)))
                                              (_%tl183951183977%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g186756_ 1))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl183951183977%_))
                                              (letrec ((_%loop183952183980%_
                                                        (lambda (_%hd183950183983%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%clause183956183985%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd183950183983%_))
                      (let ((_%e183953183988%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd183950183983%_))))
                        (let ((_%lp-hd183954183991%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e183953183988%_)))
                              (_%lp-tl183955183993%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e183953183988%_))))
                          (_%loop183952183980%_
                           _%lp-tl183955183993%_
                           (cons _%lp-hd183954183991%_
                                 _%clause183956183985%_))))
                      (let ((_%clause183957183996%_
                             (reverse _%clause183956183985%_)))
                        ((lambda (_%L183999%_)
                           (let* ((_%clauses184099%_
                                   (map (lambda (_%clause184013%_)
                                          (let* ((_%__stx185549185550%_
                                                  _%clause184013%_)
                                                 (_%g184016184031%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx185549185550%_)))))
                                            (let ((_%__kont185551185552%_
                                                   (lambda (_%L184059%_
                                                            _%L184060%_
                                                            _%L184061%_)
                                                     (let* ((_%receiver184080%_
                                                             (let ((_%$e184077%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gxc#apply-extract-receiver
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f '%#begin))
                                   _%L184059%_))))
                       (if _%$e184077%_ _%$e184077%_ _%L184061%_)))
                    (_%body184086%_
                     (map (lambda (_%g184081184083%_)
                            (gxc#apply-subst-object-refs__%
                             '#f
                             _%receiver184080%_
                             _%$klass183798%_
                             _%method-calls182579%_
                             _%slot-refs182580%_
                             _%g184081184083%_))
                          _%L184059%_)))
               (cons (cons _%L184061%_ _%L184060%_) _%body184086%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont185553185554%_
                                                   (lambda ()
                                                     _%clause184013%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%__stx185549185550%_))
                                                  (let ((_%e184021184043%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%__stx185549185550%_))))
                                                    (let ((_%tl184023184048%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e184021184043%_)))
                                                          (_%hd184022184046%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e184021184043%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd184022184046%_))
                                                          (let ((_%e184024184051%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd184022184046%_))))
                    (let ((_%tl184026184056%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e184024184051%_)))
                          (_%hd184025184054%_
                           (let ()
                             (declare (not safe))
                             (##car _%e184024184051%_))))
                      (_%__kont185551185552%_
                       _%tl184023184048%_
                       _%tl184026184056%_
                       _%hd184025184054%_)))
                  (_%__kont185553185554%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont185553185554%_)))))
                                        (let ((__tmp186758
                                               (lambda (_%g184091184094%_
                                                        _%g184092184096%_)
                                                 (cons _%g184091184094%_
                                                       _%g184092184096%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp186758
                                           '()
                                           _%L183999%_))))
                                  (__tmp186759
                                   (cons '%#case-lambda _%clauses184099%_)))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp186759 _%L183541%_)))
                         _%clause183957183996%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop183952183980%_
                                                 _%target183949183975%_
                                                 '()))
                                              (_%g183943183962%_
                                               _%g183944183965%_)))))
                                    (_%g183943183962%_ _%g183944183965%_))))
                            (_%g183943183962%_ _%g183944183965%_)))))
                (_%g183942184101%_ _%L183541%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl184106%_
                                                      (let ((__tmp186760
                                                             (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (cons (cons _%L183543%_ '())
                                             (cons _%specializer-lambda-expr183941%_
                                                   '()))
                                       '())
                                 (cons _%specializer-case-lambda-expr184104%_
                                       '())))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp186760 _%stx182487%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl184108%_
                                                      (_%generate-specializer-impl182491%_
                                                       _%$klass183798%_
                                                       _%$method-table183800%_
                                                       _%methods-bind183825%_
                                                       _%slots-bind183849%_
                                                       _%specializer-impl184106%_)))
                                                (let ((__tmp186762
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%L182560%_)))
                                                      (__tmp186761
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%specializer-id183796%_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp186762
                                                   '" => "
                                                   __tmp186761))
                                                (_%generate-specializer-def182492%_
                                                 _%L182560%_
                                                 _%specializer-id183796%_
                                                 _%specializer-impl184108%_))))
                                        _%hd183474183536%_
                                        _%hd183471183528%_
                                        _%hd183468183520%_)
                                       (_%g183450183480%_ _%g183451183483%_))))
                               (_%g183450183480%_ _%g183451183483%_))
                           (_%g183450183480%_ _%g183451183483%_))
                       (_%g183450183480%_ _%g183451183483%_))))
               (_%g183450183480%_ _%g183451183483%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g183450183480%_
                                                    _%g183451183483%_))))
                                           (_%g183450183480%_
                                            _%g183451183483%_))))
                                   (_%g183450183480%_ _%g183451183483%_))))
                           (_%g183450183480%_ _%g183451183483%_))))
                   (_%g183450183480%_ _%g183451183483%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g183450183480%_
                                                    _%g183451183483%_)))))
                                       (_%g183449184111%_ _%L182559%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#kw-lambda-expr? _%L182559%_))
                                         (let* ((_%g184115184168%_
                                                 (lambda (_%g184116184165%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g184116184165%_))))
                                                (_%g184114185339%_
                                                 (lambda (_%g184116184171%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%g184116184171%_))
                                                       (let ((_%e184122184173%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%g184116184171%_))))
                 (let ((_%hd184123184176%_
                        (let ()
                          (declare (not safe))
                          (##car _%e184122184173%_)))
                       (_%tl184124184178%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e184122184173%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#identifier? _%hd184123184176%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-eq? '%#let-values _%hd184123184176%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl184124184178%_))
                               (let ((_%e184125184181%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%tl184124184178%_))))
                                 (let ((_%hd184126184184%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e184125184181%_)))
                                       (_%tl184127184186%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e184125184181%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd184126184184%_))
                                       (let ((_%e184128184189%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd184126184184%_))))
                                         (let ((_%hd184129184192%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e184128184189%_)))
                                               (_%tl184130184194%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e184128184189%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%hd184129184192%_))
                                               (let ((_%e184131184197%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%hd184129184192%_))))
                                                 (let ((_%hd184132184200%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e184131184197%_)))
                                                       (_%tl184133184202%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e184131184197%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%hd184132184200%_))
                                                       (let ((_%e184134184205%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%hd184132184200%_))))
                 (let ((_%hd184135184208%_
                        (let ()
                          (declare (not safe))
                          (##car _%e184134184205%_)))
                       (_%tl184136184210%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e184134184205%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl184136184210%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%tl184133184202%_))
                           (let ((_%e184137184213%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%tl184133184202%_))))
                             (let ((_%hd184138184216%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e184137184213%_)))
                                   (_%tl184139184218%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e184137184213%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd184138184216%_))
                                   (let ((_%e184140184221%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd184138184216%_))))
                                     (let ((_%hd184141184224%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e184140184221%_)))
                                           (_%tl184142184226%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e184140184221%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#identifier?
                                              _%hd184141184224%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-eq?
                                                  '%#let-values
                                                  _%hd184141184224%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%tl184142184226%_))
                                                   (let ((_%e184143184229%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%tl184142184226%_))))
                                                     (let ((_%hd184144184232%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e184143184229%_)))
                                                           (_%tl184145184234%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e184143184229%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%hd184144184232%_))
                                                           (let ((_%e184146184237%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%hd184144184232%_))))
                     (let ((_%hd184147184240%_
                            (let ()
                              (declare (not safe))
                              (##car _%e184146184237%_)))
                           (_%tl184148184242%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e184146184237%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%hd184147184240%_))
                           (let ((_%e184149184245%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd184147184240%_))))
                             (let ((_%hd184150184248%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e184149184245%_)))
                                   (_%tl184151184250%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e184149184245%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd184150184248%_))
                                   (let ((_%e184152184253%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd184150184248%_))))
                                     (let ((_%hd184153184256%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e184152184253%_)))
                                           (_%tl184154184258%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e184152184253%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl184154184258%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl184151184250%_))
                                               (let ((_%e184155184261%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%tl184151184250%_))))
                                                 (let ((_%hd184156184264%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e184155184261%_)))
                                                       (_%tl184157184266%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e184155184261%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl184157184266%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _%tl184148184242%_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _%tl184145184234%_))
                       (let ((_%e184158184269%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%tl184145184234%_))))
                         (let ((_%hd184159184272%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e184158184269%_)))
                               (_%tl184160184274%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e184158184269%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%tl184160184274%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl184139184218%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%tl184130184194%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%tl184127184186%_))
                                           (let ((_%e184161184277%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%tl184127184186%_))))
                                             (let ((_%hd184162184280%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e184161184277%_)))
                                                   (_%tl184163184282%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e184161184277%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl184163184282%_))
                                                   ((lambda (_%L184285%_
                                                             _%L184286%_
                                                             _%L184287%_
                                                             _%L184288%_
                                                             _%L184289%_)
                                                      (let* ((_%g184329184391%_
                                                              (lambda (_%g184330184388%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g184330184388%_))))
                     (_%g184328185336%_
                      (lambda (_%g184330184394%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g184330184394%_))
                            (let ((_%e184336184396%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g184330184394%_))))
                              (let ((_%hd184337184399%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e184336184396%_)))
                                    (_%tl184338184401%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e184336184396%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd184337184399%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _%hd184337184399%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl184338184401%_))
                                            (let ((_%e184339184404%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl184338184401%_))))
                                              (let ((_%hd184340184407%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e184339184404%_)))
                                                    (_%tl184341184409%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e184339184404%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl184341184409%_))
                                                    (let ((_%e184342184412%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl184341184409%_))))
                                                      (let ((_%hd184343184415%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e184342184412%_)))
                    (_%tl184344184417%_
                     (let () (declare (not safe)) (##cdr _%e184342184412%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%hd184343184415%_))
                    (let ((_%e184345184420%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd184343184415%_))))
                      (let ((_%hd184346184423%_
                             (let ()
                               (declare (not safe))
                               (##car _%e184345184420%_)))
                            (_%tl184347184425%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e184345184420%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%hd184346184423%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#call _%hd184346184423%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl184347184425%_))
                                    (let ((_%e184348184428%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl184347184425%_))))
                                      (let ((_%hd184349184431%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e184348184428%_)))
                                            (_%tl184350184433%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e184348184428%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd184349184431%_))
                                            (let ((_%e184351184436%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd184349184431%_))))
                                              (let ((_%hd184352184439%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e184351184436%_)))
                                                    (_%tl184353184441%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e184351184436%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd184352184439%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd184352184439%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl184353184441%_))
                                                            (let ((_%e184354184444%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl184353184441%_))))
                      (let ((_%hd184355184447%_
                             (let ()
                               (declare (not safe))
                               (##car _%e184354184444%_)))
                            (_%tl184356184449%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e184354184444%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl184356184449%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl184350184433%_))
                                (let ((_%e184357184452%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl184350184433%_))))
                                  (let ((_%hd184358184455%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e184357184452%_)))
                                        (_%tl184359184457%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e184357184452%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd184358184455%_))
                                        (let ((_%e184360184460%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd184358184455%_))))
                                          (let ((_%hd184361184463%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e184360184460%_)))
                                                (_%tl184362184465%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e184360184460%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _%hd184361184463%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _%hd184361184463%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl184362184465%_))
                                                        (let ((_%e184363184468%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl184362184465%_))))
                  (let ((_%hd184364184471%_
                         (let ()
                           (declare (not safe))
                           (##car _%e184363184468%_)))
                        (_%tl184365184473%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e184363184468%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl184365184473%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl184359184457%_))
                            (let ((_%e184366184476%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl184359184457%_))))
                              (let ((_%hd184367184479%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e184366184476%_)))
                                    (_%tl184368184481%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e184366184476%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd184367184479%_))
                                    (let ((_%e184369184484%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd184367184479%_))))
                                      (let ((_%hd184370184487%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e184369184484%_)))
                                            (_%tl184371184489%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e184369184484%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _%hd184370184487%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _%hd184370184487%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl184371184489%_))
                                                    (let ((_%e184372184492%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl184371184489%_))))
                                                      (let ((_%hd184373184495%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e184372184492%_)))
                    (_%tl184374184497%_
                     (let () (declare (not safe)) (##cdr _%e184372184492%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl184374184497%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%tl184368184481%_))
                        (if (let ((__tmp186763
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-length _%tl184368184481%_))))
                              (declare (not safe))
                              (##fx>= __tmp186763 '1))
                            (let ((_g186764_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _%tl184368184481%_
                                      '1))))
                              (begin
                                (let ((_g186765_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g186764_)
                                             (##values-length _g186764_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g186765_ 2)))
                                      (error "Context expects 2 values"
                                             _g186765_)))
                                (let ((_%target184375184500%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g186764_ 0)))
                                      (_%tl184377184502%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g186764_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl184377184502%_))
                                      (let ((_%e184384184505%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl184377184502%_))))
                                        (let ((_%hd184385184508%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e184384184505%_)))
                                              (_%tl184386184510%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e184384184505%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl184386184510%_))
                                              (letrec ((_%loop184378184513%_
                                                        (lambda (_%hd184376184516%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%kw-ref184382184518%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd184376184516%_))
                      (let ((_%e184379184521%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd184376184516%_))))
                        (let ((_%lp-hd184380184524%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e184379184521%_)))
                              (_%lp-tl184381184526%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e184379184521%_))))
                          (_%loop184378184513%_
                           _%lp-tl184381184526%_
                           (cons _%lp-hd184380184524%_
                                 _%kw-ref184382184518%_))))
                      (let ((_%kw-ref184383184529%_
                             (reverse _%kw-ref184382184518%_)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl184344184417%_))
                            ((lambda (_%L184532%_
                                      _%L184533%_
                                      _%L184534%_
                                      _%L184535%_
                                      _%L184536%_)
                               (let* ((_%kw-count184587%_
                                       (length (let ((__tmp186766
                                                      (lambda (_%g184579184582%_
                                                               _%g184580184584%_)
                                                        (cons _%g184579184582%_
                                                              _%g184580184584%_))))
                                                 (declare (not safe))
                                                 (__foldr1
                                                  __tmp186766
                                                  '()
                                                  _%L184533%_))))
                                      (_%self-index184589%_
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _%kw-count184587%_ '1))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#lambda-expr? _%L184287%_))
                                     (let* ((_%g184593184607%_
                                             (lambda (_%g184594184604%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g184594184604%_))))
                                            (_%g184592184730%_
                                             (lambda (_%g184594184610%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%g184594184610%_))
                                                   (let ((_%e184597184612%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%g184594184610%_))))
                                                     (let ((_%hd184598184615%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e184597184612%_)))
                                                           (_%tl184599184617%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e184597184612%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl184599184617%_))
                                                           (let ((_%e184600184620%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl184599184617%_))))
                     (let ((_%hd184601184623%_
                            (let ()
                              (declare (not safe))
                              (##car _%e184600184620%_)))
                           (_%tl184602184625%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e184600184620%_))))
                       ((lambda (_%L184628%_ _%L184629%_)
                          (let* ((_%self184646%_
                                  (list-ref _%L184629%_ _%self-index184589%_))
                                 (_%receiver184651%_
                                  (let ((_%$e184648%_
                                         (gxc#apply-extract-receiver
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   '%#begin))
                                                _%L184628%_))))
                                    (if _%$e184648%_
                                        _%$e184648%_
                                        _%self184646%_))))
                            (for-each
                             (lambda (_%g184653184655%_)
                               (gxc#apply-collect-object-refs__%
                                '#f
                                _%receiver184651%_
                                _%method-calls182579%_
                                _%slot-refs182580%_
                                _%g184653184655%_))
                             _%L184628%_)
                            (if (_%no-specializer?182583%_)
                                _%stx182487%_
                                (let* ((_%specializer-id184664%_
                                        (let* ((_%id184658%_
                                                (let ((__tmp186767
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%L182560%_))))
                                                  (declare (not safe))
                                                  (make-symbol__1
                                                   __tmp186767
                                                   '"::specialize")))
                                               (_%specializer-id184661%_
                                                (let ((__tmp186768
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-source
                                                          _%stx182487%_))))
                                                  (declare (not safe))
                                                  (gx#core-quote-syntax__1
                                                   _%id184658%_
                                                   __tmp186768))))
                                          (let ()
                                            (declare (not safe))
                                            (gx#core-bind-runtime!__0
                                             _%specializer-id184661%_))
                                          _%specializer-id184661%_))
                                       (_%$klass184666%_
                                        (let ((__tmp186769
                                               (let ()
                                                 (declare (not safe))
                                                 (##gensym '__klass))))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp186769)))
                                       (_%$method-table184668%_
                                        (let ((__tmp186770
                                               (let ()
                                                 (declare (not safe))
                                                 (##gensym '__method-table))))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp186770)))
                                       (_%methods184670%_
                                        (let ()
                                          (declare (not safe))
                                          (__hash-keys
                                           _%method-calls182579%_)))
                                       (_%$methods184674%_
                                        (let ((__tmp186771
                                               (lambda (_%id184672%_)
                                                 (let ((__tmp186772
                                                        (gensym _%id184672%_)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    '"__"
                                                    __tmp186772)))))
                                          (declare (not safe))
                                          (##map __tmp186771
                                                 _%methods184670%_)))
                                       (_%_184683%_
                                        (let ((__tmp186773
                                               (lambda (_%g184675184678%_
                                                        _%g184676184680%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (__hash-put!
                                                    _%method-calls182579%_
                                                    _%g184675184678%_
                                                    _%g184676184680%_)))))
                                          (declare (not safe))
                                          (##for-each
                                           __tmp186773
                                           _%methods184670%_
                                           _%$methods184674%_)))
                                       (_%methods-bind184693%_
                                        (let ((__tmp186774
                                               (lambda (_%g184685184688%_
                                                        _%g184686184690%_)
                                                 (_%generate-method-bind182489%_
                                                  _%$klass184666%_
                                                  _%$method-table184668%_
                                                  _%g184685184688%_
                                                  _%g184686184690%_))))
                                          (declare (not safe))
                                          (##map __tmp186774
                                                 _%methods184670%_
                                                 _%$methods184674%_)))
                                       (_%slots184695%_
                                        (let ()
                                          (declare (not safe))
                                          (__hash-keys _%slot-refs182580%_)))
                                       (_%$slots184699%_
                                        (let ((__tmp186775
                                               (lambda (_%id184697%_)
                                                 (let ((__tmp186776
                                                        (gensym _%id184697%_)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    '"__"
                                                    __tmp186776)))))
                                          (declare (not safe))
                                          (##map __tmp186775 _%slots184695%_)))
                                       (_%_184708%_
                                        (let ((__tmp186777
                                               (lambda (_%g184700184703%_
                                                        _%g184701184705%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (__hash-put!
                                                    _%slot-refs182580%_
                                                    _%g184700184703%_
                                                    _%g184701184705%_)))))
                                          (declare (not safe))
                                          (##for-each
                                           __tmp186777
                                           _%slots184695%_
                                           _%$slots184699%_)))
                                       (_%slots-bind184717%_
                                        (let ((__tmp186778
                                               (lambda (_%g184709184712%_
                                                        _%g184710184714%_)
                                                 (_%generate-slot-bind182490%_
                                                  _%$klass184666%_
                                                  _%g184709184712%_
                                                  _%g184710184714%_))))
                                          (declare (not safe))
                                          (##map __tmp186778
                                                 _%slots184695%_
                                                 _%$slots184699%_)))
                                       (_%specializer-impl184725%_
                                        (let* ((_%specializer-body184723%_
                                                (map (lambda (_%g184718184720%_)
                                                       (gxc#apply-subst-object-refs__%
                                                        '#f
                                                        _%receiver184651%_
                                                        _%$klass184666%_
                                                        _%method-calls182579%_
                                                        _%slot-refs182580%_
                                                        _%g184718184720%_))
                                                     _%L184628%_))
                                               (__tmp186779
                                                (cons '%#let-values
                                                      (cons (cons (cons (cons _%L184289%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      '())
                                (cons (cons '%#let-values
                                            (cons (cons (cons (cons _%L184288%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())
                      (cons (let ((__tmp186780
                                   (cons '%#lambda
                                         (cons _%L184629%_
                                               _%specializer-body184723%_))))
                              (declare (not safe))
                              (gxc#xform-wrap-source __tmp186780 _%L184287%_))
                            '()))
                '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons _%L184286%_ '())))
                                      '()))
                          '())
                    (cons _%L184285%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp186779
                                           _%stx182487%_)))
                                       (_%specializer-impl184727%_
                                        (_%generate-specializer-impl182491%_
                                         _%$klass184666%_
                                         _%$method-table184668%_
                                         _%methods-bind184693%_
                                         _%slots-bind184717%_
                                         _%specializer-impl184725%_)))
                                  (let ((__tmp186782
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%L182560%_)))
                                        (__tmp186781
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e
                                            _%specializer-id184664%_))))
                                    (declare (not safe))
                                    (gxc#verbose
                                     '"generate method specializer "
                                     __tmp186782
                                     '" => "
                                     __tmp186781))
                                  (_%generate-specializer-def182492%_
                                   _%L182560%_
                                   _%specializer-id184664%_
                                   _%specializer-impl184727%_)))))
                        _%tl184602184625%_
                        _%hd184601184623%_)))
                   (_%g184593184607%_ _%g184594184610%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g184593184607%_
                                                    _%g184594184610%_)))))
                                       (_%g184592184730%_ _%L184287%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#opt-lambda-expr? _%L184287%_))
                                         (let* ((_%g184734184764%_
                                                 (lambda (_%g184735184761%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g184735184761%_))))
                                                (_%g184733185332%_
                                                 (lambda (_%g184735184767%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%g184735184767%_))
                                                       (let ((_%e184739184769%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%g184735184767%_))))
                 (let ((_%hd184740184772%_
                        (let ()
                          (declare (not safe))
                          (##car _%e184739184769%_)))
                       (_%tl184741184774%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e184739184769%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%tl184741184774%_))
                       (let ((_%e184742184777%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%tl184741184774%_))))
                         (let ((_%hd184743184780%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e184742184777%_)))
                               (_%tl184744184782%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e184742184777%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%hd184743184780%_))
                               (let ((_%e184745184785%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%hd184743184780%_))))
                                 (let ((_%hd184746184788%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e184745184785%_)))
                                       (_%tl184747184790%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e184745184785%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd184746184788%_))
                                       (let ((_%e184748184793%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd184746184788%_))))
                                         (let ((_%hd184749184796%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e184748184793%_)))
                                               (_%tl184750184798%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e184748184793%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%hd184749184796%_))
                                               (let ((_%e184751184801%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%hd184749184796%_))))
                                                 (let ((_%hd184752184804%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e184751184801%_)))
                                                       (_%tl184753184806%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e184751184801%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl184753184806%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl184750184798%_))
                                                           (let ((_%e184754184809%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl184750184798%_))))
                     (let ((_%hd184755184812%_
                            (let ()
                              (declare (not safe))
                              (##car _%e184754184809%_)))
                           (_%tl184756184814%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e184754184809%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl184756184814%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%tl184747184790%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%tl184744184782%_))
                                   (let ((_%e184757184817%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%tl184744184782%_))))
                                     (let ((_%hd184758184820%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e184757184817%_)))
                                           (_%tl184759184822%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e184757184817%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl184759184822%_))
                                           ((lambda (_%L184825%_
                                                     _%L184826%_
                                                     _%L184827%_)
                                              (let* ((_%g184851184865%_
                                                      (lambda (_%g184852184862%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g184852184862%_))))
                                                     (_%g184850184912%_
                                                      (lambda (_%g184852184868%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g184852184868%_))
                                                            (let ((_%e184855184870%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%g184852184868%_))))
                      (let ((_%hd184856184873%_
                             (let ()
                               (declare (not safe))
                               (##car _%e184855184870%_)))
                            (_%tl184857184875%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e184855184870%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl184857184875%_))
                            (let ((_%e184858184878%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl184857184875%_))))
                              (let ((_%hd184859184881%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e184858184878%_)))
                                    (_%tl184860184883%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e184858184878%_))))
                                ((lambda (_%L184886%_ _%L184887%_)
                                   (let* ((_%self184900%_
                                           (list-ref
                                            _%L184887%_
                                            _%self-index184589%_))
                                          (_%receiver184905%_
                                           (let ((_%$e184902%_
                                                  (gxc#apply-extract-receiver
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gx#datum->syntax__0
                                                            '#f
                                                            '%#begin))
                                                         _%L184886%_))))
                                             (if _%$e184902%_
                                                 _%$e184902%_
                                                 _%self184900%_))))
                                     (for-each
                                      (lambda (_%g184907184909%_)
                                        (gxc#apply-collect-object-refs__%
                                         '#f
                                         _%receiver184905%_
                                         _%method-calls182579%_
                                         _%slot-refs182580%_
                                         _%g184907184909%_))
                                      _%L184886%_)))
                                 _%tl184860184883%_
                                 _%hd184859184881%_)))
                            (_%g184851184865%_ _%g184852184868%_))))
                    (_%g184851184865%_ _%g184852184868%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g184850184912%_
                                                 _%L184826%_))
                                              (let* ((_%g184915184934%_
                                                      (lambda (_%g184916184931%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g184916184931%_))))
                                                     (_%g184914185045%_
                                                      (lambda (_%g184916184937%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g184916184937%_))
                                                            (let ((_%e184918184939%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%g184916184937%_))))
                      (let ((_%hd184919184942%_
                             (let ()
                               (declare (not safe))
                               (##car _%e184918184939%_)))
                            (_%tl184920184944%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e184918184939%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _%tl184920184944%_))
                            (let ((_g186783_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _%tl184920184944%_
                                      '0))))
                              (begin
                                (let ((_g186784_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g186783_)
                                             (##values-length _g186783_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g186784_ 2)))
                                      (error "Context expects 2 values"
                                             _g186784_)))
                                (let ((_%target184921184947%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g186783_ 0)))
                                      (_%tl184923184949%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g186783_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl184923184949%_))
                                      (letrec ((_%loop184924184952%_
                                                (lambda (_%hd184922184955%_
                                                         _%clause184928184957%_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%hd184922184955%_))
                                                      (let ((_%e184925184960%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd184922184955%_))))
                (let ((_%lp-hd184926184963%_
                       (let () (declare (not safe)) (##car _%e184925184960%_)))
                      (_%lp-tl184927184965%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e184925184960%_))))
                  (_%loop184924184952%_
                   _%lp-tl184927184965%_
                   (cons _%lp-hd184926184963%_ _%clause184928184957%_))))
              (let ((_%clause184929184968%_ (reverse _%clause184928184957%_)))
                ((lambda (_%L184971%_)
                   (for-each
                    (lambda (_%clause184984%_)
                      (let* ((_%g184986184997%_
                              (lambda (_%g184987184994%_)
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g184987184994%_))))
                             (_%g184985185035%_
                              (lambda (_%g184987185000%_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%g184987185000%_))
                                    (let ((_%e184990185002%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%g184987185000%_))))
                                      (let ((_%hd184991185005%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e184990185002%_)))
                                            (_%tl184992185007%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e184990185002%_))))
                                        ((lambda (_%L185010%_ _%L185011%_)
                                           (let* ((_%self185023%_
                                                   (list-ref
                                                    _%L185011%_
                                                    _%self-index184589%_))
                                                  (_%receiver185028%_
                                                   (let ((_%$e185025%_
                                                          (gxc#apply-extract-receiver
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '%#begin))
                         _%L185010%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _%$e185025%_
                                                         _%$e185025%_
                                                         _%self185023%_))))
                                             (for-each
                                              (lambda (_%g185030185032%_)
                                                (gxc#apply-collect-object-refs__%
                                                 '#f
                                                 _%receiver185028%_
                                                 _%method-calls182579%_
                                                 _%slot-refs182580%_
                                                 _%g185030185032%_))
                                              _%L185010%_)))
                                         _%tl184992185007%_
                                         _%hd184991185005%_)))
                                    (_%g184986184997%_ _%g184987185000%_)))))
                        (_%g184985185035%_ _%clause184984%_)))
                    (let ((__tmp186785
                           (lambda (_%g185037185040%_ _%g185038185042%_)
                             (cons _%g185037185040%_ _%g185038185042%_))))
                      (declare (not safe))
                      (__foldr1 __tmp186785 '() _%L184971%_))))
                 _%clause184929184968%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_%loop184924184952%_
                                         _%target184921184947%_
                                         '()))
                                      (_%g184915184934%_ _%g184916184937%_)))))
                            (_%g184915184934%_ _%g184916184937%_))))
                    (_%g184915184934%_ _%g184916184937%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g184914185045%_
                                                 _%L184825%_))
                                              (if (_%no-specializer?182583%_)
                                                  _%stx182487%_
                                                  (let* ((_%specializer-id185054%_
                                                          (let* ((_%id185048%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp186786
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%L182560%_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp186786 '"::specialize")))
                         (_%specializer-id185051%_
                          (let ((__tmp186787
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _%stx182487%_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _%id185048%_
                             __tmp186787))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _%specializer-id185051%_))
                    _%specializer-id185051%_))
                 (_%$klass185056%_
                  (let ((__tmp186788
                         (let () (declare (not safe)) (##gensym '__klass))))
                    (declare (not safe))
                    (make-symbol__0 __tmp186788)))
                 (_%$method-table185058%_
                  (let ((__tmp186789
                         (let ()
                           (declare (not safe))
                           (##gensym '__method-table))))
                    (declare (not safe))
                    (make-symbol__0 __tmp186789)))
                 (_%methods185060%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%method-calls182579%_)))
                 (_%$methods185064%_
                  (let ((__tmp186790
                         (lambda (_%id185062%_)
                           (let ((__tmp186791 (gensym _%id185062%_)))
                             (declare (not safe))
                             (make-symbol__1 '"__" __tmp186791)))))
                    (declare (not safe))
                    (##map __tmp186790 _%methods185060%_)))
                 (_%_185073%_
                  (let ((__tmp186792
                         (lambda (_%g185065185068%_ _%g185066185070%_)
                           (let ()
                             (declare (not safe))
                             (__hash-put!
                              _%method-calls182579%_
                              _%g185065185068%_
                              _%g185066185070%_)))))
                    (declare (not safe))
                    (##for-each
                     __tmp186792
                     _%methods185060%_
                     _%$methods185064%_)))
                 (_%methods-bind185083%_
                  (let ((__tmp186793
                         (lambda (_%g185075185078%_ _%g185076185080%_)
                           (_%generate-method-bind182489%_
                            _%$klass185056%_
                            _%$method-table185058%_
                            _%g185075185078%_
                            _%g185076185080%_))))
                    (declare (not safe))
                    (##map __tmp186793 _%methods185060%_ _%$methods185064%_)))
                 (_%slots185085%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%slot-refs182580%_)))
                 (_%$slots185089%_
                  (let ((__tmp186794
                         (lambda (_%id185087%_)
                           (let ((__tmp186795 (gensym _%id185087%_)))
                             (declare (not safe))
                             (make-symbol__1 '"__" __tmp186795)))))
                    (declare (not safe))
                    (##map __tmp186794 _%slots185085%_)))
                 (_%_185098%_
                  (let ((__tmp186796
                         (lambda (_%g185090185093%_ _%g185091185095%_)
                           (let ()
                             (declare (not safe))
                             (__hash-put!
                              _%slot-refs182580%_
                              _%g185090185093%_
                              _%g185091185095%_)))))
                    (declare (not safe))
                    (##for-each __tmp186796 _%slots185085%_ _%$slots185089%_)))
                 (_%slots-bind185107%_
                  (let ((__tmp186797
                         (lambda (_%g185099185102%_ _%g185100185104%_)
                           (_%generate-slot-bind182490%_
                            _%$klass185056%_
                            _%g185099185102%_
                            _%g185100185104%_))))
                    (declare (not safe))
                    (##map __tmp186797 _%slots185085%_ _%$slots185089%_)))
                 (_%specializer-lambda-expr185185%_
                  (let* ((_%g185109185123%_
                          (lambda (_%g185110185120%_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g185110185120%_))))
                         (_%g185108185182%_
                          (lambda (_%g185110185126%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%g185110185126%_))
                                (let ((_%e185113185128%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%g185110185126%_))))
                                  (let ((_%hd185114185131%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e185113185128%_)))
                                        (_%tl185115185133%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e185113185128%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl185115185133%_))
                                        (let ((_%e185116185136%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl185115185133%_))))
                                          (let ((_%hd185117185139%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e185116185136%_)))
                                                (_%tl185118185141%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e185116185136%_))))
                                            ((lambda (_%L185144%_ _%L185145%_)
                                               (let* ((_%self185168%_
                                                       (list-ref
                                                        _%L185145%_
                                                        _%self-index184589%_))
                                                      (_%receiver185173%_
                                                       (let ((_%$e185170%_
                                                              (gxc#apply-extract-receiver
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f '%#begin))
                             _%L185144%_))))
                 (if _%$e185170%_ _%$e185170%_ _%self185168%_)))
              (_%body185179%_
               (map (lambda (_%g185174185176%_)
                      (gxc#apply-subst-object-refs__%
                       '#f
                       _%receiver185173%_
                       _%$klass185056%_
                       _%method-calls182579%_
                       _%slot-refs182580%_
                       _%g185174185176%_))
                    _%L185144%_))
              (__tmp186798 (cons '%#lambda (cons _%L185145%_ _%body185179%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp186798
                                                  _%L184826%_)))
                                             _%tl185118185141%_
                                             _%hd185117185139%_)))
                                        (_%g185109185123%_
                                         _%g185110185126%_))))
                                (_%g185109185123%_ _%g185110185126%_)))))
                    (_%g185108185182%_ _%L184826%_)))
                 (_%specializer-case-lambda-expr185325%_
                  (let* ((_%g185187185206%_
                          (lambda (_%g185188185203%_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g185188185203%_))))
                         (_%g185186185322%_
                          (lambda (_%g185188185209%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%g185188185209%_))
                                (let ((_%e185190185211%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%g185188185209%_))))
                                  (let ((_%hd185191185214%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e185190185211%_)))
                                        (_%tl185192185216%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e185190185211%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl185192185216%_))
                                        (let ((_g186799_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl185192185216%_
                                                  '0))))
                                          (begin
                                            (let ((_g186800_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g186799_)
                                                         (##values-length
                                                          _g186799_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g186800_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g186800_)))
                                            (let ((_%target185193185219%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g186799_
                                                      0)))
                                                  (_%tl185195185221%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g186799_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl185195185221%_))
                                                  (letrec ((_%loop185196185224%_
                                                            (lambda (_%hd185194185227%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%clause185200185229%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd185194185227%_))
                          (let ((_%e185197185232%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd185194185227%_))))
                            (let ((_%lp-hd185198185235%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e185197185232%_)))
                                  (_%lp-tl185199185237%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e185197185232%_))))
                              (_%loop185196185224%_
                               _%lp-tl185199185237%_
                               (cons _%lp-hd185198185235%_
                                     _%clause185200185229%_))))
                          (let ((_%clause185201185240%_
                                 (reverse _%clause185200185229%_)))
                            ((lambda (_%L185243%_)
                               (let* ((_%clauses185320%_
                                       (map (lambda (_%clause185257%_)
                                              (let* ((_%g185259185270%_
                                                      (lambda (_%g185260185267%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g185260185267%_))))
                                                     (_%g185258185310%_
                                                      (lambda (_%g185260185273%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g185260185273%_))
                                                            (let ((_%e185263185275%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%g185260185273%_))))
                      (let ((_%hd185264185278%_
                             (let ()
                               (declare (not safe))
                               (##car _%e185263185275%_)))
                            (_%tl185265185280%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e185263185275%_))))
                        ((lambda (_%L185283%_ _%L185284%_)
                           (let* ((_%self185296%_
                                   (list-ref _%L185284%_ _%self-index184589%_))
                                  (_%receiver185301%_
                                   (let ((_%$e185298%_
                                          (gxc#apply-extract-receiver
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    '%#begin))
                                                 _%L185283%_))))
                                     (if _%$e185298%_
                                         _%$e185298%_
                                         _%self185296%_)))
                                  (_%body185307%_
                                   (map (lambda (_%g185302185304%_)
                                          (gxc#apply-subst-object-refs__%
                                           '#f
                                           _%receiver185301%_
                                           _%$klass185056%_
                                           _%method-calls182579%_
                                           _%slot-refs182580%_
                                           _%g185302185304%_))
                                        _%L185283%_)))
                             (cons _%L185284%_ _%body185307%_)))
                         _%tl185265185280%_
                         _%hd185264185278%_)))
                    (_%g185259185270%_ _%g185260185273%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g185258185310%_
                                                 _%clause185257%_)))
                                            (let ((__tmp186801
                                                   (lambda (_%g185312185315%_
                                                            _%g185313185317%_)
                                                     (cons _%g185312185315%_
                                                           _%g185313185317%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp186801
                                               '()
                                               _%L185243%_))))
                                      (__tmp186802
                                       (cons '%#case-lambda
                                             _%clauses185320%_)))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp186802
                                  _%L184825%_)))
                             _%clause185201185240%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop185196185224%_
                                                     _%target185193185219%_
                                                     '()))
                                                  (_%g185187185206%_
                                                   _%g185188185209%_)))))
                                        (_%g185187185206%_
                                         _%g185188185209%_))))
                                (_%g185187185206%_ _%g185188185209%_)))))
                    (_%g185186185322%_ _%L184825%_)))
                 (_%specializer-impl185327%_
                  (let ((__tmp186803
                         (cons '%#let-values
                               (cons (cons (cons (cons _%L184289%_ '())
                                                 (cons (cons '%#let-values
                                                             (cons (cons (cons (cons _%L184288%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                             '())
                                       (cons (let ((__tmp186804
                                                    (cons '%#let-values
                                                          (cons (cons (cons (cons _%L184827%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                          '())
                                    (cons _%specializer-lambda-expr185185%_
                                          '()))
                              '())
                        (cons _%specializer-case-lambda-expr185325%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp186804
                                                _%stx182487%_))
                                             '()))
                                 '())
                           (cons _%L184286%_ '())))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())
                                     (cons _%L184285%_ '())))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp186803 _%stx182487%_)))
                 (_%specializer-impl185329%_
                  (_%generate-specializer-impl182491%_
                   _%$klass185056%_
                   _%$method-table185058%_
                   _%methods-bind185083%_
                   _%slots-bind185107%_
                   _%specializer-impl185327%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp186806
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%L182560%_)))
                                                          (__tmp186805
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%specializer-id185054%_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp186806
                                                       '" => "
                                                       __tmp186805))
                                                    (_%generate-specializer-def182492%_
                                                     _%L182560%_
                                                     _%specializer-id185054%_
                                                     _%specializer-impl185329%_))))
                                            _%hd184758184820%_
                                            _%hd184755184812%_
                                            _%hd184752184804%_)
                                           (_%g184734184764%_
                                            _%g184735184767%_))))
                                   (_%g184734184764%_ _%g184735184767%_))
                               (_%g184734184764%_ _%g184735184767%_))
                           (_%g184734184764%_ _%g184735184767%_))))
                   (_%g184734184764%_ _%g184735184767%_))
               (_%g184734184764%_ _%g184735184767%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g184734184764%_
                                                _%g184735184767%_))))
                                       (_%g184734184764%_ _%g184735184767%_))))
                               (_%g184734184764%_ _%g184735184767%_))))
                       (_%g184734184764%_ _%g184735184767%_))))
               (_%g184734184764%_ _%g184735184767%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g184733185332%_ _%L184287%_))
                                         _%stx182487%_))))
                             _%hd184385184508%_
                             _%kw-ref184383184529%_
                             _%hd184373184495%_
                             _%hd184364184471%_
                             _%hd184355184447%_)
                            (_%g184329184391%_ _%g184330184394%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop184378184513%_
                                                 _%target184375184500%_
                                                 '()))
                                              (_%g184329184391%_
                                               _%g184330184394%_))))
                                      (_%g184329184391%_ _%g184330184394%_)))))
                            (_%g184329184391%_ _%g184330184394%_))
                        (_%g184329184391%_ _%g184330184394%_))
                    (_%g184329184391%_ _%g184330184394%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g184329184391%_
                                                     _%g184330184394%_))
                                                (_%g184329184391%_
                                                 _%g184330184394%_))
                                            (_%g184329184391%_
                                             _%g184330184394%_))))
                                    (_%g184329184391%_ _%g184330184394%_))))
                            (_%g184329184391%_ _%g184330184394%_))
                        (_%g184329184391%_ _%g184330184394%_))))
                (_%g184329184391%_ _%g184330184394%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g184329184391%_
                                                     _%g184330184394%_))
                                                (_%g184329184391%_
                                                 _%g184330184394%_))))
                                        (_%g184329184391%_
                                         _%g184330184394%_))))
                                (_%g184329184391%_ _%g184330184394%_))
                            (_%g184329184391%_ _%g184330184394%_))))
                    (_%g184329184391%_ _%g184330184394%_))
                (_%g184329184391%_ _%g184330184394%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g184329184391%_
                                                     _%g184330184394%_))))
                                            (_%g184329184391%_
                                             _%g184330184394%_))))
                                    (_%g184329184391%_ _%g184330184394%_))
                                (_%g184329184391%_ _%g184330184394%_))
                            (_%g184329184391%_ _%g184330184394%_))))
                    (_%g184329184391%_ _%g184330184394%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g184329184391%_
                                                     _%g184330184394%_))))
                                            (_%g184329184391%_
                                             _%g184330184394%_))
                                        (_%g184329184391%_ _%g184330184394%_))
                                    (_%g184329184391%_ _%g184330184394%_))))
                            (_%g184329184391%_ _%g184330184394%_)))))
                (_%g184328185336%_ _%L184286%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%hd184162184280%_
                                                    _%hd184159184272%_
                                                    _%hd184156184264%_
                                                    _%hd184153184256%_
                                                    _%hd184135184208%_)
                                                   (_%g184115184168%_
                                                    _%g184116184171%_))))
                                           (_%g184115184168%_
                                            _%g184116184171%_))
                                       (_%g184115184168%_ _%g184116184171%_))
                                   (_%g184115184168%_ _%g184116184171%_))
                               (_%g184115184168%_ _%g184116184171%_))))
                       (_%g184115184168%_ _%g184116184171%_))
                   (_%g184115184168%_ _%g184116184171%_))
               (_%g184115184168%_ _%g184116184171%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g184115184168%_
                                                _%g184116184171%_))
                                           (_%g184115184168%_
                                            _%g184116184171%_))))
                                   (_%g184115184168%_ _%g184116184171%_))))
                           (_%g184115184168%_ _%g184116184171%_))))
                   (_%g184115184168%_ _%g184116184171%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g184115184168%_
                                                    _%g184116184171%_))
                                               (_%g184115184168%_
                                                _%g184116184171%_))
                                           (_%g184115184168%_
                                            _%g184116184171%_))))
                                   (_%g184115184168%_ _%g184116184171%_))))
                           (_%g184115184168%_ _%g184116184171%_))
                       (_%g184115184168%_ _%g184116184171%_))))
               (_%g184115184168%_ _%g184116184171%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g184115184168%_
                                                _%g184116184171%_))))
                                       (_%g184115184168%_ _%g184116184171%_))))
                               (_%g184115184168%_ _%g184116184171%_))
                           (_%g184115184168%_ _%g184116184171%_))
                       (_%g184115184168%_ _%g184116184171%_))))
               (_%g184115184168%_ _%g184116184171%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g184114185339%_ _%L182559%_))
                                         _%stx182487%_))))))))
                  (_%__kont185573185574%_ (lambda () _%stx182487%_)))
              (let ((_%__match185602185603%_
                     (lambda (_%e182499182527%_
                              _%hd182500182530%_
                              _%tl182501182532%_
                              _%e182502182535%_
                              _%hd182503182538%_
                              _%tl182504182540%_
                              _%e182505182543%_
                              _%hd182506182546%_
                              _%tl182507182548%_
                              _%e182508182551%_
                              _%hd182509182554%_
                              _%tl182510182556%_)
                       (let ((_%L182559%_ _%hd182509182554%_)
                             (_%L182560%_ _%hd182506182546%_))
                         (if (let ((__tmp186807
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _%L182560%_))))
                               (declare (not safe))
                               (gxc#optimizer-top-level-method? __tmp186807))
                             (_%__kont185571185572%_ _%L182559%_ _%L182560%_)
                             (_%__kont185573185574%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx185569185570%_))
                    (let ((_%e182499182527%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx185569185570%_))))
                      (let ((_%tl182501182532%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e182499182527%_)))
                            (_%hd182500182530%_
                             (let ()
                               (declare (not safe))
                               (##car _%e182499182527%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl182501182532%_))
                            (let ((_%e182502182535%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl182501182532%_))))
                              (let ((_%tl182504182540%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e182502182535%_)))
                                    (_%hd182503182538%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e182502182535%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd182503182538%_))
                                    (let ((_%e182505182543%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd182503182538%_))))
                                      (let ((_%tl182507182548%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e182505182543%_)))
                                            (_%hd182506182546%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e182505182543%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl182507182548%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl182504182540%_))
                                                (let ((_%e182508182551%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl182504182540%_))))
                                                  (let ((_%tl182510182556%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e182508182551%_)))
                                                        (_%hd182509182554%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e182508182551%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl182510182556%_))
                                                        (_%__match185602185603%_
                                                         _%e182499182527%_
                                                         _%hd182500182530%_
                                                         _%tl182501182532%_
                                                         _%e182502182535%_
                                                         _%hd182503182538%_
                                                         _%tl182504182540%_
                                                         _%e182505182543%_
                                                         _%hd182506182546%_
                                                         _%tl182507182548%_
                                                         _%e182508182551%_
                                                         _%hd182509182554%_
                                                         _%tl182510182556%_)
                                                        (_%__kont185573185574%_))))
                                                (_%__kont185573185574%_))
                                            (_%__kont185573185574%_))))
                                    (_%__kont185573185574%_))))
                            (_%__kont185573185574%_))))
                    (_%__kont185573185574%_))))))))
    (define gxc#extract-receiver-begin-annotation%
      (lambda (_%self182339%_ _%stx182340%_)
        (let* ((_%__stx185605185606%_ _%stx182340%_)
               (_%g182343182376%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx185605185606%_)))))
          (let ((_%__kont185607185608%_ (lambda (_%L182466%_) _%L182466%_))
                (_%__kont185609185610%_
                 (lambda (_%L182405%_ _%L182406%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self182339%_ _%L182405%_)))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx185605185606%_))
                (let ((_%e182346182426%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%__stx185605185606%_))))
                  (let ((_%tl182348182431%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e182346182426%_)))
                        (_%hd182347182429%_
                         (let ()
                           (declare (not safe))
                           (##car _%e182346182426%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl182348182431%_))
                        (let ((_%e182349182434%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl182348182431%_))))
                          (let ((_%tl182351182439%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e182349182434%_)))
                                (_%hd182350182437%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e182349182434%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd182350182437%_))
                                (let ((_%e182352182442%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd182350182437%_))))
                                  (let ((_%tl182354182447%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e182352182442%_)))
                                        (_%hd182353182445%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e182352182442%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd182353182445%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '@receiver
                                               _%hd182353182445%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl182354182447%_))
                                                (let ((_%e182355182450%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl182354182447%_))))
                                                  (let ((_%tl182357182455%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e182355182450%_)))
                                                        (_%hd182356182453%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e182355182450%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl182357182455%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl182351182439%_))
                                                            (let ((_%e182358182458%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl182351182439%_))))
                      (let ((_%tl182360182463%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e182358182458%_)))
                            (_%hd182359182461%_
                             (let ()
                               (declare (not safe))
                               (##car _%e182358182458%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl182360182463%_))
                            (_%__kont185607185608%_ _%hd182356182453%_)
                            (let ()
                              (declare (not safe))
                              (_%g182343182376%_)))))
                    (let () (declare (not safe)) (_%g182343182376%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl182351182439%_))
                    (let ((_%e182369182397%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl182351182439%_))))
                      (let ((_%tl182371182402%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e182369182397%_)))
                            (_%hd182370182400%_
                             (let ()
                               (declare (not safe))
                               (##car _%e182369182397%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl182371182402%_))
                            (_%__kont185609185610%_
                             _%hd182370182400%_
                             _%hd182350182437%_)
                            (let ()
                              (declare (not safe))
                              (_%g182343182376%_)))))
                    (let () (declare (not safe)) (_%g182343182376%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl182351182439%_))
                                                    (let ((_%e182369182397%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl182351182439%_))))
                                                      (let ((_%tl182371182402%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e182369182397%_)))
                    (_%hd182370182400%_
                     (let () (declare (not safe)) (##car _%e182369182397%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl182371182402%_))
                    (_%__kont185609185610%_
                     _%hd182370182400%_
                     _%hd182350182437%_)
                    (let () (declare (not safe)) (_%g182343182376%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g182343182376%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl182351182439%_))
                                                (let ((_%e182369182397%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl182351182439%_))))
                                                  (let ((_%tl182371182402%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e182369182397%_)))
                                                        (_%hd182370182400%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e182369182397%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl182371182402%_))
                                                        (_%__kont185609185610%_
                                                         _%hd182370182400%_
                                                         _%hd182350182437%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g182343182376%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g182343182376%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl182351182439%_))
                                            (let ((_%e182369182397%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl182351182439%_))))
                                              (let ((_%tl182371182402%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e182369182397%_)))
                                                    (_%hd182370182400%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e182369182397%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl182371182402%_))
                                                    (_%__kont185609185610%_
                                                     _%hd182370182400%_
                                                     _%hd182350182437%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g182343182376%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g182343182376%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl182351182439%_))
                                    (let ((_%e182369182397%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl182351182439%_))))
                                      (let ((_%tl182371182402%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e182369182397%_)))
                                            (_%hd182370182400%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e182369182397%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl182371182402%_))
                                            (_%__kont185609185610%_
                                             _%hd182370182400%_
                                             _%hd182350182437%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g182343182376%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g182343182376%_))))))
                        (let () (declare (not safe)) (_%g182343182376%_)))))
                (let () (declare (not safe)) (_%g182343182376%_)))))))
    (define gxc#extract-receiver-if%
      (lambda (_%self182255%_ _%stx182256%_)
        (let* ((_%g182258182279%_
                (lambda (_%g182259182276%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g182259182276%_))))
               (_%g182257182336%_
                (lambda (_%g182259182282%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g182259182282%_))
                      (let ((_%e182263182284%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g182259182282%_))))
                        (let ((_%hd182264182287%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e182263182284%_)))
                              (_%tl182265182289%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e182263182284%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl182265182289%_))
                              (let ((_%e182266182292%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl182265182289%_))))
                                (let ((_%hd182267182295%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e182266182292%_)))
                                      (_%tl182268182297%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e182266182292%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl182268182297%_))
                                      (let ((_%e182269182300%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl182268182297%_))))
                                        (let ((_%hd182270182303%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e182269182300%_)))
                                              (_%tl182271182305%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e182269182300%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl182271182305%_))
                                              (let ((_%e182272182308%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl182271182305%_))))
                                                (let ((_%hd182273182311%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e182272182308%_)))
                                                      (_%tl182274182313%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e182272182308%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl182274182313%_))
                                                      ((lambda (_%L182316%_
                                                                _%L182317%_
                                                                _%L182318%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%self182255%_
                                                            _%L182317%_)))
                                                       _%hd182273182311%_
                                                       _%hd182270182303%_
                                                       _%hd182267182295%_)
                                                      (_%g182258182279%_
                                                       _%g182259182282%_))))
                                              (_%g182258182279%_
                                               _%g182259182282%_))))
                                      (_%g182258182279%_ _%g182259182282%_))))
                              (_%g182258182279%_ _%g182259182282%_))))
                      (_%g182258182279%_ _%g182259182282%_)))))
          (_%g182257182336%_ _%stx182256%_))))
    (define gxc#collect-object-refs-call%
      (lambda (_%self181216%_ _%stx181217%_)
        (let* ((_%__stx185671185672%_ _%stx181217%_)
               (_%g181225181447%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx185671185672%_)))))
          (let ((_%__kont185673185674%_
                 (lambda (_%L182204%_ _%L182205%_ _%L182206%_ _%L182207%_)
                   (let ((__tmp186809
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self181216%_ 'methods)))
                         (__tmp186808
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L182205%_))))
                     (declare (not safe))
                     (hash-put! __tmp186809 __tmp186808 '#t))
                   (for-each
                    (lambda (_%g182240182242%_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self181216%_ _%g182240182242%_)))
                    (let ((__tmp186810
                           (lambda (_%g182244182247%_ _%g182245182249%_)
                             (cons _%g182244182247%_ _%g182245182249%_))))
                      (declare (not safe))
                      (__foldr1 __tmp186810 '() _%L182204%_)))))
                (_%__kont185677185678%_
                 (lambda (_%L182039%_
                          _%L182040%_
                          _%L182041%_
                          _%L182042%_
                          _%L182043%_)
                   (let ((__tmp186812
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self181216%_ 'methods)))
                         (__tmp186811
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L182040%_))))
                     (declare (not safe))
                     (hash-put! __tmp186812 __tmp186811 '#t))
                   (for-each
                    (lambda (_%g182083182085%_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self181216%_ _%g182083182085%_)))
                    (let ((__tmp186813
                           (lambda (_%g182087182090%_ _%g182088182092%_)
                             (cons _%g182087182090%_ _%g182088182092%_))))
                      (declare (not safe))
                      (__foldr1 __tmp186813 '() _%L182039%_)))))
                (_%__kont185681185682%_
                 (lambda (_%L181872%_ _%L181873%_ _%L181874%_)
                   (let ((__tmp186815
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self181216%_ 'slots)))
                         (__tmp186814
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L181872%_))))
                     (declare (not safe))
                     (hash-put! __tmp186815 __tmp186814 '#t))))
                (_%__kont185683185684%_
                 (lambda (_%L181749%_ _%L181750%_ _%L181751%_ _%L181752%_)
                   (let ((__tmp186817
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self181216%_ 'slots)))
                         (__tmp186816
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L181750%_))))
                     (declare (not safe))
                     (hash-put! __tmp186817 __tmp186816 '#t))
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self181216%_ _%L181749%_))))
                (_%__kont185685185686%_
                 (lambda (_%L181623%_ _%L181624%_)
                   (let* ((_%accessor181646%_
                           (let ((__tmp186818
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _%L181624%_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp186818)))
                          (_%klass181648%_
                           (let ((__tmp186819
                                  (##structure-ref
                                   _%accessor181646%_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _%stx181217%_
                              __tmp186819)))
                          (_%slot181650%_
                           (##structure-ref
                            _%accessor181646%_
                            '3
                            gxc#!accessor::t
                            '#f)))
                     (if (if (##structure-ref
                              _%accessor181646%_
                              '4
                              gxc#!accessor::t
                              '#f)
                             '#f
                             (or (let ()
                                   (declare (not safe))
                                   (gxc#!class-struct-slot?
                                    _%klass181648%_
                                    _%slot181650%_))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%klass181648%_
                                    '8
                                    '#f
                                    '#f))))
                         '#!void
                         (let ((__tmp186821
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _%self181216%_ 'slots)))
                               (__tmp186820
                                (##structure-ref
                                 _%accessor181646%_
                                 '3
                                 gxc#!accessor::t
                                 '#f)))
                           (declare (not safe))
                           (hash-put! __tmp186821 __tmp186820 '#t))))))
                (_%__kont185687185688%_
                 (lambda (_%L181523%_ _%L181524%_ _%L181525%_)
                   (let* ((_%mutator181552%_
                           (let ((__tmp186822
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _%L181525%_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp186822)))
                          (_%klass181554%_
                           (let ((__tmp186823
                                  (##structure-ref
                                   _%mutator181552%_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _%stx181217%_
                              __tmp186823)))
                          (_%slot181556%_
                           (##structure-ref
                            _%mutator181552%_
                            '3
                            gxc#!mutator::t
                            '#f)))
                     (if (if (##structure-ref
                              _%mutator181552%_
                              '4
                              gxc#!mutator::t
                              '#f)
                             '#f
                             (or (let ()
                                   (declare (not safe))
                                   (gxc#!class-struct-slot?
                                    _%klass181554%_
                                    _%slot181556%_))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%klass181554%_
                                    '8
                                    '#f
                                    '#f))))
                         '#!void
                         (let ((__tmp186824
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _%self181216%_ 'slots))))
                           (declare (not safe))
                           (hash-put! __tmp186824 _%slot181556%_ '#t)))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-e__1 _%self181216%_ _%L181523%_)))))
                (_%__kont185689185690%_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#apply-operands _%self181216%_ _%stx181217%_)))))
            (let* ((_%__match186170186171%_
                    (lambda (_%e181419181459%_
                             _%hd181420181462%_
                             _%tl181421181464%_
                             _%e181422181467%_
                             _%hd181423181470%_
                             _%tl181424181472%_
                             _%e181425181475%_
                             _%hd181426181478%_
                             _%tl181427181480%_
                             _%e181428181483%_
                             _%hd181429181486%_
                             _%tl181430181488%_
                             _%e181431181491%_
                             _%hd181432181494%_
                             _%tl181433181496%_
                             _%e181434181499%_
                             _%hd181435181502%_
                             _%tl181436181504%_
                             _%e181437181507%_
                             _%hd181438181510%_
                             _%tl181439181512%_
                             _%e181440181515%_
                             _%hd181441181518%_
                             _%tl181442181520%_)
                      (let ((_%L181523%_ _%hd181441181518%_)
                            (_%L181524%_ _%hd181438181510%_)
                            (_%L181525%_ _%hd181429181486%_))
                        (if (and (let ((__tmp186825
                                        (let ((__tmp186826
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _%L181525%_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp186826))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp186825
                                    'gxc#!mutator::t))
                                 (let ((__tmp186827
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self181216%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L181524%_
                                    __tmp186827)))
                            (_%__kont185687185688%_
                             _%L181523%_
                             _%L181524%_
                             _%L181525%_)
                            (_%__kont185689185690%_)))))
                   (_%__match186168186169%_
                    (lambda (_%e181419181459%_
                             _%hd181420181462%_
                             _%tl181421181464%_
                             _%e181422181467%_
                             _%hd181423181470%_
                             _%tl181424181472%_
                             _%e181425181475%_
                             _%hd181426181478%_
                             _%tl181427181480%_
                             _%e181428181483%_
                             _%hd181429181486%_
                             _%tl181430181488%_
                             _%e181431181491%_
                             _%hd181432181494%_
                             _%tl181433181496%_
                             _%e181434181499%_
                             _%hd181435181502%_
                             _%tl181436181504%_
                             _%e181437181507%_
                             _%hd181438181510%_
                             _%tl181439181512%_
                             _%e181440181515%_
                             _%hd181441181518%_
                             _%tl181442181520%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl181442181520%_))
                          (_%__match186170186171%_
                           _%e181419181459%_
                           _%hd181420181462%_
                           _%tl181421181464%_
                           _%e181422181467%_
                           _%hd181423181470%_
                           _%tl181424181472%_
                           _%e181425181475%_
                           _%hd181426181478%_
                           _%tl181427181480%_
                           _%e181428181483%_
                           _%hd181429181486%_
                           _%tl181430181488%_
                           _%e181431181491%_
                           _%hd181432181494%_
                           _%tl181433181496%_
                           _%e181434181499%_
                           _%hd181435181502%_
                           _%tl181436181504%_
                           _%e181437181507%_
                           _%hd181438181510%_
                           _%tl181439181512%_
                           _%e181440181515%_
                           _%hd181441181518%_
                           _%tl181442181520%_)
                          (_%__kont185689185690%_))))
                   (_%__match186162186163%_
                    (lambda (_%e181419181459%_
                             _%hd181420181462%_
                             _%tl181421181464%_
                             _%e181422181467%_
                             _%hd181423181470%_
                             _%tl181424181472%_
                             _%e181425181475%_
                             _%hd181426181478%_
                             _%tl181427181480%_
                             _%e181428181483%_
                             _%hd181429181486%_
                             _%tl181430181488%_
                             _%e181431181491%_
                             _%hd181432181494%_
                             _%tl181433181496%_
                             _%e181434181499%_
                             _%hd181435181502%_
                             _%tl181436181504%_
                             _%e181437181507%_
                             _%hd181438181510%_
                             _%tl181439181512%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl181433181496%_))
                          (let ((_%e181440181515%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl181433181496%_))))
                            (let ((_%tl181442181520%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e181440181515%_)))
                                  (_%hd181441181518%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e181440181515%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl181442181520%_))
                                  (_%__match186170186171%_
                                   _%e181419181459%_
                                   _%hd181420181462%_
                                   _%tl181421181464%_
                                   _%e181422181467%_
                                   _%hd181423181470%_
                                   _%tl181424181472%_
                                   _%e181425181475%_
                                   _%hd181426181478%_
                                   _%tl181427181480%_
                                   _%e181428181483%_
                                   _%hd181429181486%_
                                   _%tl181430181488%_
                                   _%e181431181491%_
                                   _%hd181432181494%_
                                   _%tl181433181496%_
                                   _%e181434181499%_
                                   _%hd181435181502%_
                                   _%tl181436181504%_
                                   _%e181437181507%_
                                   _%hd181438181510%_
                                   _%tl181439181512%_
                                   _%e181440181515%_
                                   _%hd181441181518%_
                                   _%tl181442181520%_)
                                  (_%__kont185689185690%_))))
                          (_%__kont185689185690%_))))
                   (_%__match186108186109%_
                    (lambda (_%e181395181567%_
                             _%hd181396181570%_
                             _%tl181397181572%_
                             _%e181398181575%_
                             _%hd181399181578%_
                             _%tl181400181580%_
                             _%e181401181583%_
                             _%hd181402181586%_
                             _%tl181403181588%_
                             _%e181404181591%_
                             _%hd181405181594%_
                             _%tl181406181596%_
                             _%e181407181599%_
                             _%hd181408181602%_
                             _%tl181409181604%_
                             _%e181410181607%_
                             _%hd181411181610%_
                             _%tl181412181612%_
                             _%e181413181615%_
                             _%hd181414181618%_
                             _%tl181415181620%_)
                      (let ((_%L181623%_ _%hd181414181618%_)
                            (_%L181624%_ _%hd181405181594%_))
                        (if (and (let ((__tmp186828
                                        (let ((__tmp186829
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _%L181624%_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp186829))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp186828
                                    'gxc#!accessor::t))
                                 (let ((__tmp186830
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self181216%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L181623%_
                                    __tmp186830)))
                            (_%__kont185685185686%_ _%L181623%_ _%L181624%_)
                            (_%__kont185689185690%_)))))
                   (_%__match186106186107%_
                    (lambda (_%e181395181567%_
                             _%hd181396181570%_
                             _%tl181397181572%_
                             _%e181398181575%_
                             _%hd181399181578%_
                             _%tl181400181580%_
                             _%e181401181583%_
                             _%hd181402181586%_
                             _%tl181403181588%_
                             _%e181404181591%_
                             _%hd181405181594%_
                             _%tl181406181596%_
                             _%e181407181599%_
                             _%hd181408181602%_
                             _%tl181409181604%_
                             _%e181410181607%_
                             _%hd181411181610%_
                             _%tl181412181612%_
                             _%e181413181615%_
                             _%hd181414181618%_
                             _%tl181415181620%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl181409181604%_))
                          (_%__match186108186109%_
                           _%e181395181567%_
                           _%hd181396181570%_
                           _%tl181397181572%_
                           _%e181398181575%_
                           _%hd181399181578%_
                           _%tl181400181580%_
                           _%e181401181583%_
                           _%hd181402181586%_
                           _%tl181403181588%_
                           _%e181404181591%_
                           _%hd181405181594%_
                           _%tl181406181596%_
                           _%e181407181599%_
                           _%hd181408181602%_
                           _%tl181409181604%_
                           _%e181410181607%_
                           _%hd181411181610%_
                           _%tl181412181612%_
                           _%e181413181615%_
                           _%hd181414181618%_
                           _%tl181415181620%_)
                          (_%__match186162186163%_
                           _%e181395181567%_
                           _%hd181396181570%_
                           _%tl181397181572%_
                           _%e181398181575%_
                           _%hd181399181578%_
                           _%tl181400181580%_
                           _%e181401181583%_
                           _%hd181402181586%_
                           _%tl181403181588%_
                           _%e181404181591%_
                           _%hd181405181594%_
                           _%tl181406181596%_
                           _%e181407181599%_
                           _%hd181408181602%_
                           _%tl181409181604%_
                           _%e181410181607%_
                           _%hd181411181610%_
                           _%tl181412181612%_
                           _%e181413181615%_
                           _%hd181414181618%_
                           _%tl181415181620%_))))
                   (_%__match186052186053%_
                    (lambda (_%e181360181661%_
                             _%hd181361181664%_
                             _%tl181362181666%_
                             _%e181363181669%_
                             _%hd181364181672%_
                             _%tl181365181674%_
                             _%e181366181677%_
                             _%hd181367181680%_
                             _%tl181368181682%_
                             _%e181369181685%_
                             _%hd181370181688%_
                             _%tl181371181690%_
                             _%e181372181693%_
                             _%hd181373181696%_
                             _%tl181374181698%_
                             _%e181375181701%_
                             _%hd181376181704%_
                             _%tl181377181706%_
                             _%e181378181709%_
                             _%hd181379181712%_
                             _%tl181380181714%_
                             _%e181381181717%_
                             _%hd181382181720%_
                             _%tl181383181722%_
                             _%e181384181725%_
                             _%hd181385181728%_
                             _%tl181386181730%_
                             _%e181387181733%_
                             _%hd181388181736%_
                             _%tl181389181738%_
                             _%e181390181741%_
                             _%hd181391181744%_
                             _%tl181392181746%_)
                      (let ((_%L181749%_ _%hd181391181744%_)
                            (_%L181750%_ _%hd181388181736%_)
                            (_%L181751%_ _%hd181379181712%_)
                            (_%L181752%_ _%hd181370181688%_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L181752%_
                                        'slot-set!))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L181752%_
                                        'unchecked-slot-set!)))
                                 (let ((__tmp186831
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self181216%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L181751%_
                                    __tmp186831)))
                            (_%__kont185683185684%_
                             _%L181749%_
                             _%L181750%_
                             _%L181751%_
                             _%L181752%_)
                            (_%__kont185689185690%_)))))
                   (_%__match186044186045%_
                    (lambda (_%e181360181661%_
                             _%hd181361181664%_
                             _%tl181362181666%_
                             _%e181363181669%_
                             _%hd181364181672%_
                             _%tl181365181674%_
                             _%e181366181677%_
                             _%hd181367181680%_
                             _%tl181368181682%_
                             _%e181369181685%_
                             _%hd181370181688%_
                             _%tl181371181690%_
                             _%e181372181693%_
                             _%hd181373181696%_
                             _%tl181374181698%_
                             _%e181375181701%_
                             _%hd181376181704%_
                             _%tl181377181706%_
                             _%e181378181709%_
                             _%hd181379181712%_
                             _%tl181380181714%_
                             _%e181381181717%_
                             _%hd181382181720%_
                             _%tl181383181722%_
                             _%e181384181725%_
                             _%hd181385181728%_
                             _%tl181386181730%_
                             _%e181387181733%_
                             _%hd181388181736%_
                             _%tl181389181738%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl181383181722%_))
                          (let ((_%e181390181741%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl181383181722%_))))
                            (let ((_%tl181392181746%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e181390181741%_)))
                                  (_%hd181391181744%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e181390181741%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl181392181746%_))
                                  (_%__match186052186053%_
                                   _%e181360181661%_
                                   _%hd181361181664%_
                                   _%tl181362181666%_
                                   _%e181363181669%_
                                   _%hd181364181672%_
                                   _%tl181365181674%_
                                   _%e181366181677%_
                                   _%hd181367181680%_
                                   _%tl181368181682%_
                                   _%e181369181685%_
                                   _%hd181370181688%_
                                   _%tl181371181690%_
                                   _%e181372181693%_
                                   _%hd181373181696%_
                                   _%tl181374181698%_
                                   _%e181375181701%_
                                   _%hd181376181704%_
                                   _%tl181377181706%_
                                   _%e181378181709%_
                                   _%hd181379181712%_
                                   _%tl181380181714%_
                                   _%e181381181717%_
                                   _%hd181382181720%_
                                   _%tl181383181722%_
                                   _%e181384181725%_
                                   _%hd181385181728%_
                                   _%tl181386181730%_
                                   _%e181387181733%_
                                   _%hd181388181736%_
                                   _%tl181389181738%_
                                   _%e181390181741%_
                                   _%hd181391181744%_
                                   _%tl181392181746%_)
                                  (_%__kont185689185690%_))))
                          (_%__match186168186169%_
                           _%e181360181661%_
                           _%hd181361181664%_
                           _%tl181362181666%_
                           _%e181363181669%_
                           _%hd181364181672%_
                           _%tl181365181674%_
                           _%e181366181677%_
                           _%hd181367181680%_
                           _%tl181368181682%_
                           _%e181369181685%_
                           _%hd181370181688%_
                           _%tl181371181690%_
                           _%e181372181693%_
                           _%hd181373181696%_
                           _%tl181374181698%_
                           _%e181375181701%_
                           _%hd181376181704%_
                           _%tl181377181706%_
                           _%e181378181709%_
                           _%hd181379181712%_
                           _%tl181380181714%_
                           _%e181381181717%_
                           _%hd181382181720%_
                           _%tl181383181722%_))))
                   (_%__match185966185967%_
                    (lambda (_%e181326181792%_
                             _%hd181327181795%_
                             _%tl181328181797%_
                             _%e181329181800%_
                             _%hd181330181803%_
                             _%tl181331181805%_
                             _%e181332181808%_
                             _%hd181333181811%_
                             _%tl181334181813%_
                             _%e181335181816%_
                             _%hd181336181819%_
                             _%tl181337181821%_
                             _%e181338181824%_
                             _%hd181339181827%_
                             _%tl181340181829%_
                             _%e181341181832%_
                             _%hd181342181835%_
                             _%tl181343181837%_
                             _%e181344181840%_
                             _%hd181345181843%_
                             _%tl181346181845%_
                             _%e181347181848%_
                             _%hd181348181851%_
                             _%tl181349181853%_
                             _%e181350181856%_
                             _%hd181351181859%_
                             _%tl181352181861%_
                             _%e181353181864%_
                             _%hd181354181867%_
                             _%tl181355181869%_)
                      (let ((_%L181872%_ _%hd181354181867%_)
                            (_%L181873%_ _%hd181345181843%_)
                            (_%L181874%_ _%hd181336181819%_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L181874%_
                                        'slot-ref))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L181874%_
                                        'unchecked-slot-ref)))
                                 (let ((__tmp186832
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self181216%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L181873%_
                                    __tmp186832)))
                            (_%__kont185681185682%_
                             _%L181872%_
                             _%L181873%_
                             _%L181874%_)
                            (_%__match186170186171%_
                             _%e181326181792%_
                             _%hd181327181795%_
                             _%tl181328181797%_
                             _%e181329181800%_
                             _%hd181330181803%_
                             _%tl181331181805%_
                             _%e181332181808%_
                             _%hd181333181811%_
                             _%tl181334181813%_
                             _%e181335181816%_
                             _%hd181336181819%_
                             _%tl181337181821%_
                             _%e181338181824%_
                             _%hd181339181827%_
                             _%tl181340181829%_
                             _%e181341181832%_
                             _%hd181342181835%_
                             _%tl181343181837%_
                             _%e181344181840%_
                             _%hd181345181843%_
                             _%tl181346181845%_
                             _%e181347181848%_
                             _%hd181348181851%_
                             _%tl181349181853%_)))))
                   (_%__match185964185965%_
                    (lambda (_%e181326181792%_
                             _%hd181327181795%_
                             _%tl181328181797%_
                             _%e181329181800%_
                             _%hd181330181803%_
                             _%tl181331181805%_
                             _%e181332181808%_
                             _%hd181333181811%_
                             _%tl181334181813%_
                             _%e181335181816%_
                             _%hd181336181819%_
                             _%tl181337181821%_
                             _%e181338181824%_
                             _%hd181339181827%_
                             _%tl181340181829%_
                             _%e181341181832%_
                             _%hd181342181835%_
                             _%tl181343181837%_
                             _%e181344181840%_
                             _%hd181345181843%_
                             _%tl181346181845%_
                             _%e181347181848%_
                             _%hd181348181851%_
                             _%tl181349181853%_
                             _%e181350181856%_
                             _%hd181351181859%_
                             _%tl181352181861%_
                             _%e181353181864%_
                             _%hd181354181867%_
                             _%tl181355181869%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl181349181853%_))
                          (_%__match185966185967%_
                           _%e181326181792%_
                           _%hd181327181795%_
                           _%tl181328181797%_
                           _%e181329181800%_
                           _%hd181330181803%_
                           _%tl181331181805%_
                           _%e181332181808%_
                           _%hd181333181811%_
                           _%tl181334181813%_
                           _%e181335181816%_
                           _%hd181336181819%_
                           _%tl181337181821%_
                           _%e181338181824%_
                           _%hd181339181827%_
                           _%tl181340181829%_
                           _%e181341181832%_
                           _%hd181342181835%_
                           _%tl181343181837%_
                           _%e181344181840%_
                           _%hd181345181843%_
                           _%tl181346181845%_
                           _%e181347181848%_
                           _%hd181348181851%_
                           _%tl181349181853%_
                           _%e181350181856%_
                           _%hd181351181859%_
                           _%tl181352181861%_
                           _%e181353181864%_
                           _%hd181354181867%_
                           _%tl181355181869%_)
                          (_%__match186044186045%_
                           _%e181326181792%_
                           _%hd181327181795%_
                           _%tl181328181797%_
                           _%e181329181800%_
                           _%hd181330181803%_
                           _%tl181331181805%_
                           _%e181332181808%_
                           _%hd181333181811%_
                           _%tl181334181813%_
                           _%e181335181816%_
                           _%hd181336181819%_
                           _%tl181337181821%_
                           _%e181338181824%_
                           _%hd181339181827%_
                           _%tl181340181829%_
                           _%e181341181832%_
                           _%hd181342181835%_
                           _%tl181343181837%_
                           _%e181344181840%_
                           _%hd181345181843%_
                           _%tl181346181845%_
                           _%e181347181848%_
                           _%hd181348181851%_
                           _%tl181349181853%_
                           _%e181350181856%_
                           _%hd181351181859%_
                           _%tl181352181861%_
                           _%e181353181864%_
                           _%hd181354181867%_
                           _%tl181355181869%_))))
                   (_%__match185954185955%_
                    (lambda (_%e181326181792%_
                             _%hd181327181795%_
                             _%tl181328181797%_
                             _%e181329181800%_
                             _%hd181330181803%_
                             _%tl181331181805%_
                             _%e181332181808%_
                             _%hd181333181811%_
                             _%tl181334181813%_
                             _%e181335181816%_
                             _%hd181336181819%_
                             _%tl181337181821%_
                             _%e181338181824%_
                             _%hd181339181827%_
                             _%tl181340181829%_
                             _%e181341181832%_
                             _%hd181342181835%_
                             _%tl181343181837%_
                             _%e181344181840%_
                             _%hd181345181843%_
                             _%tl181346181845%_
                             _%e181347181848%_
                             _%hd181348181851%_
                             _%tl181349181853%_
                             _%e181350181856%_
                             _%hd181351181859%_
                             _%tl181352181861%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#quote _%hd181351181859%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl181352181861%_))
                              (let ((_%e181353181864%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl181352181861%_))))
                                (let ((_%tl181355181869%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e181353181864%_)))
                                      (_%hd181354181867%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e181353181864%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl181355181869%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl181349181853%_))
                                          (_%__match185966185967%_
                                           _%e181326181792%_
                                           _%hd181327181795%_
                                           _%tl181328181797%_
                                           _%e181329181800%_
                                           _%hd181330181803%_
                                           _%tl181331181805%_
                                           _%e181332181808%_
                                           _%hd181333181811%_
                                           _%tl181334181813%_
                                           _%e181335181816%_
                                           _%hd181336181819%_
                                           _%tl181337181821%_
                                           _%e181338181824%_
                                           _%hd181339181827%_
                                           _%tl181340181829%_
                                           _%e181341181832%_
                                           _%hd181342181835%_
                                           _%tl181343181837%_
                                           _%e181344181840%_
                                           _%hd181345181843%_
                                           _%tl181346181845%_
                                           _%e181347181848%_
                                           _%hd181348181851%_
                                           _%tl181349181853%_
                                           _%e181350181856%_
                                           _%hd181351181859%_
                                           _%tl181352181861%_
                                           _%e181353181864%_
                                           _%hd181354181867%_
                                           _%tl181355181869%_)
                                          (_%__match186044186045%_
                                           _%e181326181792%_
                                           _%hd181327181795%_
                                           _%tl181328181797%_
                                           _%e181329181800%_
                                           _%hd181330181803%_
                                           _%tl181331181805%_
                                           _%e181332181808%_
                                           _%hd181333181811%_
                                           _%tl181334181813%_
                                           _%e181335181816%_
                                           _%hd181336181819%_
                                           _%tl181337181821%_
                                           _%e181338181824%_
                                           _%hd181339181827%_
                                           _%tl181340181829%_
                                           _%e181341181832%_
                                           _%hd181342181835%_
                                           _%tl181343181837%_
                                           _%e181344181840%_
                                           _%hd181345181843%_
                                           _%tl181346181845%_
                                           _%e181347181848%_
                                           _%hd181348181851%_
                                           _%tl181349181853%_
                                           _%e181350181856%_
                                           _%hd181351181859%_
                                           _%tl181352181861%_
                                           _%e181353181864%_
                                           _%hd181354181867%_
                                           _%tl181355181869%_))
                                      (_%__match186168186169%_
                                       _%e181326181792%_
                                       _%hd181327181795%_
                                       _%tl181328181797%_
                                       _%e181329181800%_
                                       _%hd181330181803%_
                                       _%tl181331181805%_
                                       _%e181332181808%_
                                       _%hd181333181811%_
                                       _%tl181334181813%_
                                       _%e181335181816%_
                                       _%hd181336181819%_
                                       _%tl181337181821%_
                                       _%e181338181824%_
                                       _%hd181339181827%_
                                       _%tl181340181829%_
                                       _%e181341181832%_
                                       _%hd181342181835%_
                                       _%tl181343181837%_
                                       _%e181344181840%_
                                       _%hd181345181843%_
                                       _%tl181346181845%_
                                       _%e181347181848%_
                                       _%hd181348181851%_
                                       _%tl181349181853%_))))
                              (_%__match186168186169%_
                               _%e181326181792%_
                               _%hd181327181795%_
                               _%tl181328181797%_
                               _%e181329181800%_
                               _%hd181330181803%_
                               _%tl181331181805%_
                               _%e181332181808%_
                               _%hd181333181811%_
                               _%tl181334181813%_
                               _%e181335181816%_
                               _%hd181336181819%_
                               _%tl181337181821%_
                               _%e181338181824%_
                               _%hd181339181827%_
                               _%tl181340181829%_
                               _%e181341181832%_
                               _%hd181342181835%_
                               _%tl181343181837%_
                               _%e181344181840%_
                               _%hd181345181843%_
                               _%tl181346181845%_
                               _%e181347181848%_
                               _%hd181348181851%_
                               _%tl181349181853%_))
                          (_%__match186168186169%_
                           _%e181326181792%_
                           _%hd181327181795%_
                           _%tl181328181797%_
                           _%e181329181800%_
                           _%hd181330181803%_
                           _%tl181331181805%_
                           _%e181332181808%_
                           _%hd181333181811%_
                           _%tl181334181813%_
                           _%e181335181816%_
                           _%hd181336181819%_
                           _%tl181337181821%_
                           _%e181338181824%_
                           _%hd181339181827%_
                           _%tl181340181829%_
                           _%e181341181832%_
                           _%hd181342181835%_
                           _%tl181343181837%_
                           _%e181344181840%_
                           _%hd181345181843%_
                           _%tl181346181845%_
                           _%e181347181848%_
                           _%hd181348181851%_
                           _%tl181349181853%_))))
                   (_%__match185886185887%_
                    (lambda (_%e181275181911%_
                             _%hd181276181914%_
                             _%tl181277181916%_
                             _%e181278181919%_
                             _%hd181279181922%_
                             _%tl181280181924%_
                             _%e181281181927%_
                             _%hd181282181930%_
                             _%tl181283181932%_
                             _%e181284181935%_
                             _%hd181285181938%_
                             _%tl181286181940%_
                             _%e181287181943%_
                             _%hd181288181946%_
                             _%tl181289181948%_
                             _%e181290181951%_
                             _%hd181291181954%_
                             _%tl181292181956%_
                             _%e181293181959%_
                             _%hd181294181962%_
                             _%tl181295181964%_
                             _%e181296181967%_
                             _%hd181297181970%_
                             _%tl181298181972%_
                             _%e181299181975%_
                             _%hd181300181978%_
                             _%tl181301181980%_
                             _%e181302181983%_
                             _%hd181303181986%_
                             _%tl181304181988%_
                             _%e181305181991%_
                             _%hd181306181994%_
                             _%tl181307181996%_
                             _%e181308181999%_
                             _%hd181309182002%_
                             _%tl181310182004%_
                             _%e181311182007%_
                             _%hd181312182010%_
                             _%tl181313182012%_
                             _%__splice185679185680%_
                             _%target181314182015%_
                             _%tl181316182017%_)
                      (letrec ((_%loop181317182020%_
                                (lambda (_%hd181315182023%_
                                         _%args181321182025%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd181315182023%_))
                                      (let ((_%e181318182028%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd181315182023%_))))
                                        (let ((_%lp-tl181320182033%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e181318182028%_)))
                                              (_%lp-hd181319182031%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e181318182028%_))))
                                          (_%loop181317182020%_
                                           _%lp-tl181320182033%_
                                           (cons _%lp-hd181319182031%_
                                                 _%args181321182025%_))))
                                      (let ((_%args181322182036%_
                                             (reverse _%args181321182025%_)))
                                        (let ((_%L182039%_
                                               _%args181322182036%_)
                                              (_%L182040%_ _%hd181312182010%_)
                                              (_%L182041%_ _%hd181303181986%_)
                                              (_%L182042%_ _%hd181294181962%_)
                                              (_%L182043%_ _%hd181285181938%_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%L182043%_
                                                      'apply))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%L182042%_
                                                      'call-method))
                                                   (let ((__tmp186833
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self181216%_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%L182041%_
                                                      __tmp186833)))
                                              (_%__kont185677185678%_
                                               _%L182039%_
                                               _%L182040%_
                                               _%L182041%_
                                               _%L182042%_
                                               _%L182043%_)
                                              (_%__kont185689185690%_))))))))
                        (_%loop181317182020%_ _%target181314182015%_ '()))))
                   (_%__match185844185845%_
                    (lambda (_%e181275181911%_
                             _%hd181276181914%_
                             _%tl181277181916%_
                             _%e181278181919%_
                             _%hd181279181922%_
                             _%tl181280181924%_
                             _%e181281181927%_
                             _%hd181282181930%_
                             _%tl181283181932%_
                             _%e181284181935%_
                             _%hd181285181938%_
                             _%tl181286181940%_
                             _%e181287181943%_
                             _%hd181288181946%_
                             _%tl181289181948%_
                             _%e181290181951%_
                             _%hd181291181954%_
                             _%tl181292181956%_
                             _%e181293181959%_
                             _%hd181294181962%_
                             _%tl181295181964%_
                             _%e181296181967%_
                             _%hd181297181970%_
                             _%tl181298181972%_
                             _%e181299181975%_
                             _%hd181300181978%_
                             _%tl181301181980%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _%hd181300181978%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl181301181980%_))
                              (let ((_%e181302181983%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl181301181980%_))))
                                (let ((_%tl181304181988%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e181302181983%_)))
                                      (_%hd181303181986%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e181302181983%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl181304181988%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl181298181972%_))
                                          (let ((_%e181305181991%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl181298181972%_))))
                                            (let ((_%tl181307181996%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e181305181991%_)))
                                                  (_%hd181306181994%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e181305181991%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd181306181994%_))
                                                  (let ((_%e181308181999%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd181306181994%_))))
                                                    (let ((_%tl181310182004%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e181308181999%_)))
                                                          (_%hd181309182002%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e181308181999%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd181309182002%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#quote _%hd181309182002%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl181310182004%_))
                          (let ((_%e181311182007%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl181310182004%_))))
                            (let ((_%tl181313182012%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e181311182007%_)))
                                  (_%hd181312182010%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e181311182007%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl181313182012%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl181307181996%_))
                                      (let ((_%__splice185679185680%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%tl181307181996%_
                                                '0))))
                                        (let ((_%tl181316182017%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice185679185680%_
                                                  '1)))
                                              (_%target181314182015%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice185679185680%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl181316182017%_))
                                              (_%__match185886185887%_
                                               _%e181275181911%_
                                               _%hd181276181914%_
                                               _%tl181277181916%_
                                               _%e181278181919%_
                                               _%hd181279181922%_
                                               _%tl181280181924%_
                                               _%e181281181927%_
                                               _%hd181282181930%_
                                               _%tl181283181932%_
                                               _%e181284181935%_
                                               _%hd181285181938%_
                                               _%tl181286181940%_
                                               _%e181287181943%_
                                               _%hd181288181946%_
                                               _%tl181289181948%_
                                               _%e181290181951%_
                                               _%hd181291181954%_
                                               _%tl181292181956%_
                                               _%e181293181959%_
                                               _%hd181294181962%_
                                               _%tl181295181964%_
                                               _%e181296181967%_
                                               _%hd181297181970%_
                                               _%tl181298181972%_
                                               _%e181299181975%_
                                               _%hd181300181978%_
                                               _%tl181301181980%_
                                               _%e181302181983%_
                                               _%hd181303181986%_
                                               _%tl181304181988%_
                                               _%e181305181991%_
                                               _%hd181306181994%_
                                               _%tl181307181996%_
                                               _%e181308181999%_
                                               _%hd181309182002%_
                                               _%tl181310182004%_
                                               _%e181311182007%_
                                               _%hd181312182010%_
                                               _%tl181313182012%_
                                               _%__splice185679185680%_
                                               _%target181314182015%_
                                               _%tl181316182017%_)
                                              (_%__kont185689185690%_))))
                                      (_%__kont185689185690%_))
                                  (_%__kont185689185690%_))))
                          (_%__kont185689185690%_))
                      (_%__kont185689185690%_))
                  (_%__kont185689185690%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont185689185690%_))))
                                          (_%__match186168186169%_
                                           _%e181275181911%_
                                           _%hd181276181914%_
                                           _%tl181277181916%_
                                           _%e181278181919%_
                                           _%hd181279181922%_
                                           _%tl181280181924%_
                                           _%e181281181927%_
                                           _%hd181282181930%_
                                           _%tl181283181932%_
                                           _%e181284181935%_
                                           _%hd181285181938%_
                                           _%tl181286181940%_
                                           _%e181287181943%_
                                           _%hd181288181946%_
                                           _%tl181289181948%_
                                           _%e181290181951%_
                                           _%hd181291181954%_
                                           _%tl181292181956%_
                                           _%e181293181959%_
                                           _%hd181294181962%_
                                           _%tl181295181964%_
                                           _%e181296181967%_
                                           _%hd181297181970%_
                                           _%tl181298181972%_))
                                      (_%__match186168186169%_
                                       _%e181275181911%_
                                       _%hd181276181914%_
                                       _%tl181277181916%_
                                       _%e181278181919%_
                                       _%hd181279181922%_
                                       _%tl181280181924%_
                                       _%e181281181927%_
                                       _%hd181282181930%_
                                       _%tl181283181932%_
                                       _%e181284181935%_
                                       _%hd181285181938%_
                                       _%tl181286181940%_
                                       _%e181287181943%_
                                       _%hd181288181946%_
                                       _%tl181289181948%_
                                       _%e181290181951%_
                                       _%hd181291181954%_
                                       _%tl181292181956%_
                                       _%e181293181959%_
                                       _%hd181294181962%_
                                       _%tl181295181964%_
                                       _%e181296181967%_
                                       _%hd181297181970%_
                                       _%tl181298181972%_))))
                              (_%__match186168186169%_
                               _%e181275181911%_
                               _%hd181276181914%_
                               _%tl181277181916%_
                               _%e181278181919%_
                               _%hd181279181922%_
                               _%tl181280181924%_
                               _%e181281181927%_
                               _%hd181282181930%_
                               _%tl181283181932%_
                               _%e181284181935%_
                               _%hd181285181938%_
                               _%tl181286181940%_
                               _%e181287181943%_
                               _%hd181288181946%_
                               _%tl181289181948%_
                               _%e181290181951%_
                               _%hd181291181954%_
                               _%tl181292181956%_
                               _%e181293181959%_
                               _%hd181294181962%_
                               _%tl181295181964%_
                               _%e181296181967%_
                               _%hd181297181970%_
                               _%tl181298181972%_))
                          (_%__match185954185955%_
                           _%e181275181911%_
                           _%hd181276181914%_
                           _%tl181277181916%_
                           _%e181278181919%_
                           _%hd181279181922%_
                           _%tl181280181924%_
                           _%e181281181927%_
                           _%hd181282181930%_
                           _%tl181283181932%_
                           _%e181284181935%_
                           _%hd181285181938%_
                           _%tl181286181940%_
                           _%e181287181943%_
                           _%hd181288181946%_
                           _%tl181289181948%_
                           _%e181290181951%_
                           _%hd181291181954%_
                           _%tl181292181956%_
                           _%e181293181959%_
                           _%hd181294181962%_
                           _%tl181295181964%_
                           _%e181296181967%_
                           _%hd181297181970%_
                           _%tl181298181972%_
                           _%e181299181975%_
                           _%hd181300181978%_
                           _%tl181301181980%_))))
                   (_%__match185776185777%_
                    (lambda (_%e181231182100%_
                             _%hd181232182103%_
                             _%tl181233182105%_
                             _%e181234182108%_
                             _%hd181235182111%_
                             _%tl181236182113%_
                             _%e181237182116%_
                             _%hd181238182119%_
                             _%tl181239182121%_
                             _%e181240182124%_
                             _%hd181241182127%_
                             _%tl181242182129%_
                             _%e181243182132%_
                             _%hd181244182135%_
                             _%tl181245182137%_
                             _%e181246182140%_
                             _%hd181247182143%_
                             _%tl181248182145%_
                             _%e181249182148%_
                             _%hd181250182151%_
                             _%tl181251182153%_
                             _%e181252182156%_
                             _%hd181253182159%_
                             _%tl181254182161%_
                             _%e181255182164%_
                             _%hd181256182167%_
                             _%tl181257182169%_
                             _%e181258182172%_
                             _%hd181259182175%_
                             _%tl181260182177%_
                             _%__splice185675185676%_
                             _%target181261182180%_
                             _%tl181263182182%_)
                      (letrec ((_%loop181264182185%_
                                (lambda (_%hd181262182188%_
                                         _%args181268182190%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd181262182188%_))
                                      (let ((_%e181265182193%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd181262182188%_))))
                                        (let ((_%lp-tl181267182198%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e181265182193%_)))
                                              (_%lp-hd181266182196%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e181265182193%_))))
                                          (_%loop181264182185%_
                                           _%lp-tl181267182198%_
                                           (cons _%lp-hd181266182196%_
                                                 _%args181268182190%_))))
                                      (let ((_%args181269182201%_
                                             (reverse _%args181268182190%_)))
                                        (let ((_%L182204%_
                                               _%args181269182201%_)
                                              (_%L182205%_ _%hd181259182175%_)
                                              (_%L182206%_ _%hd181250182151%_)
                                              (_%L182207%_ _%hd181241182127%_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%L182207%_
                                                      'call-method))
                                                   (let ((__tmp186834
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self181216%_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%L182206%_
                                                      __tmp186834)))
                                              (_%__kont185673185674%_
                                               _%L182204%_
                                               _%L182205%_
                                               _%L182206%_
                                               _%L182207%_)
                                              (_%__match185964185965%_
                                               _%e181231182100%_
                                               _%hd181232182103%_
                                               _%tl181233182105%_
                                               _%e181234182108%_
                                               _%hd181235182111%_
                                               _%tl181236182113%_
                                               _%e181237182116%_
                                               _%hd181238182119%_
                                               _%tl181239182121%_
                                               _%e181240182124%_
                                               _%hd181241182127%_
                                               _%tl181242182129%_
                                               _%e181243182132%_
                                               _%hd181244182135%_
                                               _%tl181245182137%_
                                               _%e181246182140%_
                                               _%hd181247182143%_
                                               _%tl181248182145%_
                                               _%e181249182148%_
                                               _%hd181250182151%_
                                               _%tl181251182153%_
                                               _%e181252182156%_
                                               _%hd181253182159%_
                                               _%tl181254182161%_
                                               _%e181255182164%_
                                               _%hd181256182167%_
                                               _%tl181257182169%_
                                               _%e181258182172%_
                                               _%hd181259182175%_
                                               _%tl181260182177%_))))))))
                        (_%loop181264182185%_ _%target181261182180%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx185671185672%_))
                  (let ((_%e181231182100%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx185671185672%_))))
                    (let ((_%tl181233182105%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e181231182100%_)))
                          (_%hd181232182103%_
                           (let ()
                             (declare (not safe))
                             (##car _%e181231182100%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl181233182105%_))
                          (let ((_%e181234182108%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl181233182105%_))))
                            (let ((_%tl181236182113%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e181234182108%_)))
                                  (_%hd181235182111%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e181234182108%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd181235182111%_))
                                  (let ((_%e181237182116%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd181235182111%_))))
                                    (let ((_%tl181239182121%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e181237182116%_)))
                                          (_%hd181238182119%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e181237182116%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd181238182119%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd181238182119%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl181239182121%_))
                                                  (let ((_%e181240182124%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl181239182121%_))))
                                                    (let ((_%tl181242182129%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e181240182124%_)))
                                                          (_%hd181241182127%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e181240182124%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl181242182129%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl181236182113%_))
                      (let ((_%e181243182132%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl181236182113%_))))
                        (let ((_%tl181245182137%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e181243182132%_)))
                              (_%hd181244182135%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e181243182132%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd181244182135%_))
                              (let ((_%e181246182140%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd181244182135%_))))
                                (let ((_%tl181248182145%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e181246182140%_)))
                                      (_%hd181247182143%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e181246182140%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd181247182143%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd181247182143%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl181248182145%_))
                                              (let ((_%e181249182148%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl181248182145%_))))
                                                (let ((_%tl181251182153%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e181249182148%_)))
                                                      (_%hd181250182151%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e181249182148%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl181251182153%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl181245182137%_))
                                                          (let ((_%e181252182156%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl181245182137%_))))
                    (let ((_%tl181254182161%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e181252182156%_)))
                          (_%hd181253182159%_
                           (let ()
                             (declare (not safe))
                             (##car _%e181252182156%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd181253182159%_))
                          (let ((_%e181255182164%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd181253182159%_))))
                            (let ((_%tl181257182169%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e181255182164%_)))
                                  (_%hd181256182167%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e181255182164%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd181256182167%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%hd181256182167%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl181257182169%_))
                                          (let ((_%e181258182172%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl181257182169%_))))
                                            (let ((_%tl181260182177%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e181258182172%_)))
                                                  (_%hd181259182175%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e181258182172%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl181260182177%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl181254182161%_))
                                                      (let ((_%__splice185675185676%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%tl181254182161%_
                        '0))))
                (let ((_%tl181263182182%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice185675185676%_ '1)))
                      (_%target181261182180%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice185675185676%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl181263182182%_))
                      (_%__match185776185777%_
                       _%e181231182100%_
                       _%hd181232182103%_
                       _%tl181233182105%_
                       _%e181234182108%_
                       _%hd181235182111%_
                       _%tl181236182113%_
                       _%e181237182116%_
                       _%hd181238182119%_
                       _%tl181239182121%_
                       _%e181240182124%_
                       _%hd181241182127%_
                       _%tl181242182129%_
                       _%e181243182132%_
                       _%hd181244182135%_
                       _%tl181245182137%_
                       _%e181246182140%_
                       _%hd181247182143%_
                       _%tl181248182145%_
                       _%e181249182148%_
                       _%hd181250182151%_
                       _%tl181251182153%_
                       _%e181252182156%_
                       _%hd181253182159%_
                       _%tl181254182161%_
                       _%e181255182164%_
                       _%hd181256182167%_
                       _%tl181257182169%_
                       _%e181258182172%_
                       _%hd181259182175%_
                       _%tl181260182177%_
                       _%__splice185675185676%_
                       _%target181261182180%_
                       _%tl181263182182%_)
                      (_%__match185964185965%_
                       _%e181231182100%_
                       _%hd181232182103%_
                       _%tl181233182105%_
                       _%e181234182108%_
                       _%hd181235182111%_
                       _%tl181236182113%_
                       _%e181237182116%_
                       _%hd181238182119%_
                       _%tl181239182121%_
                       _%e181240182124%_
                       _%hd181241182127%_
                       _%tl181242182129%_
                       _%e181243182132%_
                       _%hd181244182135%_
                       _%tl181245182137%_
                       _%e181246182140%_
                       _%hd181247182143%_
                       _%tl181248182145%_
                       _%e181249182148%_
                       _%hd181250182151%_
                       _%tl181251182153%_
                       _%e181252182156%_
                       _%hd181253182159%_
                       _%tl181254182161%_
                       _%e181255182164%_
                       _%hd181256182167%_
                       _%tl181257182169%_
                       _%e181258182172%_
                       _%hd181259182175%_
                       _%tl181260182177%_))))
              (_%__match185964185965%_
               _%e181231182100%_
               _%hd181232182103%_
               _%tl181233182105%_
               _%e181234182108%_
               _%hd181235182111%_
               _%tl181236182113%_
               _%e181237182116%_
               _%hd181238182119%_
               _%tl181239182121%_
               _%e181240182124%_
               _%hd181241182127%_
               _%tl181242182129%_
               _%e181243182132%_
               _%hd181244182135%_
               _%tl181245182137%_
               _%e181246182140%_
               _%hd181247182143%_
               _%tl181248182145%_
               _%e181249182148%_
               _%hd181250182151%_
               _%tl181251182153%_
               _%e181252182156%_
               _%hd181253182159%_
               _%tl181254182161%_
               _%e181255182164%_
               _%hd181256182167%_
               _%tl181257182169%_
               _%e181258182172%_
               _%hd181259182175%_
               _%tl181260182177%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__match186168186169%_
                                                   _%e181231182100%_
                                                   _%hd181232182103%_
                                                   _%tl181233182105%_
                                                   _%e181234182108%_
                                                   _%hd181235182111%_
                                                   _%tl181236182113%_
                                                   _%e181237182116%_
                                                   _%hd181238182119%_
                                                   _%tl181239182121%_
                                                   _%e181240182124%_
                                                   _%hd181241182127%_
                                                   _%tl181242182129%_
                                                   _%e181243182132%_
                                                   _%hd181244182135%_
                                                   _%tl181245182137%_
                                                   _%e181246182140%_
                                                   _%hd181247182143%_
                                                   _%tl181248182145%_
                                                   _%e181249182148%_
                                                   _%hd181250182151%_
                                                   _%tl181251182153%_
                                                   _%e181252182156%_
                                                   _%hd181253182159%_
                                                   _%tl181254182161%_))))
                                          (_%__match186168186169%_
                                           _%e181231182100%_
                                           _%hd181232182103%_
                                           _%tl181233182105%_
                                           _%e181234182108%_
                                           _%hd181235182111%_
                                           _%tl181236182113%_
                                           _%e181237182116%_
                                           _%hd181238182119%_
                                           _%tl181239182121%_
                                           _%e181240182124%_
                                           _%hd181241182127%_
                                           _%tl181242182129%_
                                           _%e181243182132%_
                                           _%hd181244182135%_
                                           _%tl181245182137%_
                                           _%e181246182140%_
                                           _%hd181247182143%_
                                           _%tl181248182145%_
                                           _%e181249182148%_
                                           _%hd181250182151%_
                                           _%tl181251182153%_
                                           _%e181252182156%_
                                           _%hd181253182159%_
                                           _%tl181254182161%_))
                                      (_%__match185844185845%_
                                       _%e181231182100%_
                                       _%hd181232182103%_
                                       _%tl181233182105%_
                                       _%e181234182108%_
                                       _%hd181235182111%_
                                       _%tl181236182113%_
                                       _%e181237182116%_
                                       _%hd181238182119%_
                                       _%tl181239182121%_
                                       _%e181240182124%_
                                       _%hd181241182127%_
                                       _%tl181242182129%_
                                       _%e181243182132%_
                                       _%hd181244182135%_
                                       _%tl181245182137%_
                                       _%e181246182140%_
                                       _%hd181247182143%_
                                       _%tl181248182145%_
                                       _%e181249182148%_
                                       _%hd181250182151%_
                                       _%tl181251182153%_
                                       _%e181252182156%_
                                       _%hd181253182159%_
                                       _%tl181254182161%_
                                       _%e181255182164%_
                                       _%hd181256182167%_
                                       _%tl181257182169%_))
                                  (_%__match186168186169%_
                                   _%e181231182100%_
                                   _%hd181232182103%_
                                   _%tl181233182105%_
                                   _%e181234182108%_
                                   _%hd181235182111%_
                                   _%tl181236182113%_
                                   _%e181237182116%_
                                   _%hd181238182119%_
                                   _%tl181239182121%_
                                   _%e181240182124%_
                                   _%hd181241182127%_
                                   _%tl181242182129%_
                                   _%e181243182132%_
                                   _%hd181244182135%_
                                   _%tl181245182137%_
                                   _%e181246182140%_
                                   _%hd181247182143%_
                                   _%tl181248182145%_
                                   _%e181249182148%_
                                   _%hd181250182151%_
                                   _%tl181251182153%_
                                   _%e181252182156%_
                                   _%hd181253182159%_
                                   _%tl181254182161%_))))
                          (_%__match186168186169%_
                           _%e181231182100%_
                           _%hd181232182103%_
                           _%tl181233182105%_
                           _%e181234182108%_
                           _%hd181235182111%_
                           _%tl181236182113%_
                           _%e181237182116%_
                           _%hd181238182119%_
                           _%tl181239182121%_
                           _%e181240182124%_
                           _%hd181241182127%_
                           _%tl181242182129%_
                           _%e181243182132%_
                           _%hd181244182135%_
                           _%tl181245182137%_
                           _%e181246182140%_
                           _%hd181247182143%_
                           _%tl181248182145%_
                           _%e181249182148%_
                           _%hd181250182151%_
                           _%tl181251182153%_
                           _%e181252182156%_
                           _%hd181253182159%_
                           _%tl181254182161%_))))
                  (_%__match186106186107%_
                   _%e181231182100%_
                   _%hd181232182103%_
                   _%tl181233182105%_
                   _%e181234182108%_
                   _%hd181235182111%_
                   _%tl181236182113%_
                   _%e181237182116%_
                   _%hd181238182119%_
                   _%tl181239182121%_
                   _%e181240182124%_
                   _%hd181241182127%_
                   _%tl181242182129%_
                   _%e181243182132%_
                   _%hd181244182135%_
                   _%tl181245182137%_
                   _%e181246182140%_
                   _%hd181247182143%_
                   _%tl181248182145%_
                   _%e181249182148%_
                   _%hd181250182151%_
                   _%tl181251182153%_))
              (_%__kont185689185690%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont185689185690%_))
                                          (_%__kont185689185690%_))
                                      (_%__kont185689185690%_))))
                              (_%__kont185689185690%_))))
                      (_%__kont185689185690%_))
                  (_%__kont185689185690%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont185689185690%_))
                                              (_%__kont185689185690%_))
                                          (_%__kont185689185690%_))))
                                  (_%__kont185689185690%_))))
                          (_%__kont185689185690%_))))
                  (_%__kont185689185690%_)))))))
    (define gxc#subst-object-refs-call%
      (lambda (_%self180155%_ _%stx180156%_)
        (letrec ((_%force-e180158%_
                  (lambda (_%target181214%_)
                    (cons '%#call
                          (cons (cons '%#ref (cons 'force '()))
                                (cons (cons '%#ref (cons _%target181214%_ '()))
                                      '()))))))
          (let* ((_%__stx186173186174%_ _%stx180156%_)
                 (_%g180166180388%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx186173186174%_)))))
            (let ((_%__kont186175186176%_
                   (lambda (_%L181160%_ _%L181161%_ _%L181162%_ _%L181163%_)
                     (let ((_%$method181208%_
                            (let ((__tmp186836
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self180155%_ 'methods)))
                                  (__tmp186835
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L181161%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp186836 __tmp186835)))
                           (_%args181209%_
                            (map (lambda (_%g181196181198%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self180155%_
                                      _%g181196181198%_)))
                                 (let ((__tmp186837
                                        (lambda (_%g181200181203%_
                                                 _%g181201181205%_)
                                          (cons _%g181200181203%_
                                                _%g181201181205%_))))
                                   (declare (not safe))
                                   (__foldr1 __tmp186837 '() _%L181160%_)))))
                       (let ((__tmp186838
                              (cons '%#call
                                    (cons (_%force-e180158%_ _%$method181208%_)
                                          (cons (cons '%#ref
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self180155%_
                                                               'receiver))
                                                            '()))
                                                _%args181209%_)))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp186838 _%stx180156%_)))))
                  (_%__kont186179186180%_
                   (lambda (_%L180992%_
                            _%L180993%_
                            _%L180994%_
                            _%L180995%_
                            _%L180996%_)
                     (let ((_%$method181048%_
                            (let ((__tmp186840
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self180155%_ 'methods)))
                                  (__tmp186839
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L180993%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp186840 __tmp186839)))
                           (_%args181049%_
                            (map (lambda (_%g181036181038%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self180155%_
                                      _%g181036181038%_)))
                                 (let ((__tmp186841
                                        (lambda (_%g181040181043%_
                                                 _%g181041181045%_)
                                          (cons _%g181040181043%_
                                                _%g181041181045%_))))
                                   (declare (not safe))
                                   (__foldr1 __tmp186841 '() _%L180992%_)))))
                       (let ((__tmp186842
                              (cons '%#call
                                    (cons (cons '%#ref (cons 'apply '()))
                                          (cons (_%force-e180158%_
                                                 _%$method181048%_)
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (slot-ref__0 _%self180155%_ 'receiver))
                          '()))
              _%args181049%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp186842 _%stx180156%_)))))
                  (_%__kont186183186184%_
                   (lambda (_%L180823%_ _%L180824%_ _%L180825%_)
                     (let* ((_%$field180857%_
                             (let ((__tmp186844
                                    (let ()
                                      (declare (not safe))
                                      (slot-ref__0 _%self180155%_ 'slots)))
                                   (__tmp186843
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%L180823%_))))
                               (declare (not safe))
                               (hash-ref__0 __tmp186844 __tmp186843)))
                            (__tmp186845
                             (cons '%#struct-unchecked-ref
                                   (cons (cons '%#ref
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (slot-ref__0
                                                        _%self180155%_
                                                        'klass))
                                                     '()))
                                         (cons (cons '%#ref
                                                     (cons _%$field180857%_
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (slot-ref__0 _%self180155%_ 'receiver))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp186845 _%stx180156%_))))
                  (_%__kont186185186186%_
                   (lambda (_%L180697%_ _%L180698%_ _%L180699%_ _%L180700%_)
                     (let ((_%$field180735%_
                            (let ((__tmp186847
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self180155%_ 'slots)))
                                  (__tmp186846
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L180698%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp186847 __tmp186846)))
                           (_%expr180736%_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-e__1 _%self180155%_ _%L180697%_))))
                       (let ((__tmp186848
                              (cons '%#struct-unchecked-set!
                                    (cons (cons '%#ref
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (slot-ref__0
                                                         _%self180155%_
                                                         'klass))
                                                      '()))
                                          (cons (cons '%#ref
                                                      (cons _%$field180735%_
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (slot-ref__0 _%self180155%_ 'receiver))
                          '()))
              (cons _%expr180736%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp186848 _%stx180156%_)))))
                  (_%__kont186187186188%_
                   (lambda (_%L180569%_ _%L180570%_)
                     (let* ((_%accessor180592%_
                             (let ((__tmp186849
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _%L180570%_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp186849)))
                            (_%klass180594%_
                             (let ((__tmp186850
                                    (##structure-ref
                                     _%accessor180592%_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _%stx180156%_
                                __tmp186850)))
                            (_%slot180596%_
                             (##structure-ref
                              _%accessor180592%_
                              '3
                              gxc#!accessor::t
                              '#f)))
                       (if (if (##structure-ref
                                _%accessor180592%_
                                '4
                                gxc#!accessor::t
                                '#f)
                               '#f
                               (or (let ()
                                     (declare (not safe))
                                     (gxc#!class-struct-slot?
                                      _%klass180594%_
                                      _%slot180596%_))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass180594%_
                                      '8
                                      '#f
                                      '#f))))
                           _%stx180156%_
                           (let* ((_%$field180602%_
                                   (let ((__tmp186851
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self180155%_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp186851 _%slot180596%_)))
                                  (__tmp186852
                                   (cons '%#struct-unchecked-ref
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (slot-ref__0
                                                              _%self180155%_
                                                              'klass))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$field180602%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _%self180155%_ 'receiver))
                               '()))
                   '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp186852
                              _%stx180156%_))))))
                  (_%__kont186189186190%_
                   (lambda (_%L180464%_ _%L180465%_ _%L180466%_)
                     (let* ((_%mutator180494%_
                             (let ((__tmp186853
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _%L180466%_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp186853)))
                            (_%klass180496%_
                             (let ((__tmp186854
                                    (##structure-ref
                                     _%mutator180494%_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _%stx180156%_
                                __tmp186854)))
                            (_%slot180498%_
                             (##structure-ref
                              _%mutator180494%_
                              '3
                              gxc#!mutator::t
                              '#f))
                            (_%expr180500%_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-e__1 _%self180155%_ _%L180464%_))))
                       (if (if (##structure-ref
                                _%mutator180494%_
                                '4
                                gxc#!mutator::t
                                '#f)
                               '#f
                               (or (let ()
                                     (declare (not safe))
                                     (gxc#!class-struct-slot?
                                      _%klass180496%_
                                      _%slot180498%_))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass180496%_
                                      '8
                                      '#f
                                      '#f))))
                           (let ((__tmp186855
                                  (cons '%#call
                                        (cons (cons (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       '%#ref))
                                                    (cons _%L180466%_ '()))
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#ref))
                                                          (cons _%L180465%_
                                                                '()))
                                                    (cons _%expr180500%_
                                                          '()))))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp186855 _%stx180156%_))
                           (let* ((_%$field180506%_
                                   (let ((__tmp186856
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self180155%_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp186856 _%slot180498%_)))
                                  (__tmp186857
                                   (cons '%#struct-unchecked-set!
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (slot-ref__0
                                                              _%self180155%_
                                                              'klass))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$field180506%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _%self180155%_ 'receiver))
                               '()))
                   (cons _%expr180500%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp186857
                              _%stx180156%_))))))
                  (_%__kont186191186192%_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-operands _%self180155%_ _%stx180156%_)))))
              (let* ((_%__match186672186673%_
                      (lambda (_%e180360180400%_
                               _%hd180361180403%_
                               _%tl180362180405%_
                               _%e180363180408%_
                               _%hd180364180411%_
                               _%tl180365180413%_
                               _%e180366180416%_
                               _%hd180367180419%_
                               _%tl180368180421%_
                               _%e180369180424%_
                               _%hd180370180427%_
                               _%tl180371180429%_
                               _%e180372180432%_
                               _%hd180373180435%_
                               _%tl180374180437%_
                               _%e180375180440%_
                               _%hd180376180443%_
                               _%tl180377180445%_
                               _%e180378180448%_
                               _%hd180379180451%_
                               _%tl180380180453%_
                               _%e180381180456%_
                               _%hd180382180459%_
                               _%tl180383180461%_)
                        (let ((_%L180464%_ _%hd180382180459%_)
                              (_%L180465%_ _%hd180379180451%_)
                              (_%L180466%_ _%hd180370180427%_))
                          (if (and (let ((__tmp186858
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self180155%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L180465%_
                                      __tmp186858))
                                   (let ((__tmp186859
                                          (let ((__tmp186860
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%L180466%_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp186860))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp186859
                                      'gxc#!mutator::t)))
                              (_%__kont186189186190%_
                               _%L180464%_
                               _%L180465%_
                               _%L180466%_)
                              (_%__kont186191186192%_)))))
                     (_%__match186670186671%_
                      (lambda (_%e180360180400%_
                               _%hd180361180403%_
                               _%tl180362180405%_
                               _%e180363180408%_
                               _%hd180364180411%_
                               _%tl180365180413%_
                               _%e180366180416%_
                               _%hd180367180419%_
                               _%tl180368180421%_
                               _%e180369180424%_
                               _%hd180370180427%_
                               _%tl180371180429%_
                               _%e180372180432%_
                               _%hd180373180435%_
                               _%tl180374180437%_
                               _%e180375180440%_
                               _%hd180376180443%_
                               _%tl180377180445%_
                               _%e180378180448%_
                               _%hd180379180451%_
                               _%tl180380180453%_
                               _%e180381180456%_
                               _%hd180382180459%_
                               _%tl180383180461%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl180383180461%_))
                            (_%__match186672186673%_
                             _%e180360180400%_
                             _%hd180361180403%_
                             _%tl180362180405%_
                             _%e180363180408%_
                             _%hd180364180411%_
                             _%tl180365180413%_
                             _%e180366180416%_
                             _%hd180367180419%_
                             _%tl180368180421%_
                             _%e180369180424%_
                             _%hd180370180427%_
                             _%tl180371180429%_
                             _%e180372180432%_
                             _%hd180373180435%_
                             _%tl180374180437%_
                             _%e180375180440%_
                             _%hd180376180443%_
                             _%tl180377180445%_
                             _%e180378180448%_
                             _%hd180379180451%_
                             _%tl180380180453%_
                             _%e180381180456%_
                             _%hd180382180459%_
                             _%tl180383180461%_)
                            (_%__kont186191186192%_))))
                     (_%__match186664186665%_
                      (lambda (_%e180360180400%_
                               _%hd180361180403%_
                               _%tl180362180405%_
                               _%e180363180408%_
                               _%hd180364180411%_
                               _%tl180365180413%_
                               _%e180366180416%_
                               _%hd180367180419%_
                               _%tl180368180421%_
                               _%e180369180424%_
                               _%hd180370180427%_
                               _%tl180371180429%_
                               _%e180372180432%_
                               _%hd180373180435%_
                               _%tl180374180437%_
                               _%e180375180440%_
                               _%hd180376180443%_
                               _%tl180377180445%_
                               _%e180378180448%_
                               _%hd180379180451%_
                               _%tl180380180453%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl180374180437%_))
                            (let ((_%e180381180456%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl180374180437%_))))
                              (let ((_%tl180383180461%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e180381180456%_)))
                                    (_%hd180382180459%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e180381180456%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl180383180461%_))
                                    (_%__match186672186673%_
                                     _%e180360180400%_
                                     _%hd180361180403%_
                                     _%tl180362180405%_
                                     _%e180363180408%_
                                     _%hd180364180411%_
                                     _%tl180365180413%_
                                     _%e180366180416%_
                                     _%hd180367180419%_
                                     _%tl180368180421%_
                                     _%e180369180424%_
                                     _%hd180370180427%_
                                     _%tl180371180429%_
                                     _%e180372180432%_
                                     _%hd180373180435%_
                                     _%tl180374180437%_
                                     _%e180375180440%_
                                     _%hd180376180443%_
                                     _%tl180377180445%_
                                     _%e180378180448%_
                                     _%hd180379180451%_
                                     _%tl180380180453%_
                                     _%e180381180456%_
                                     _%hd180382180459%_
                                     _%tl180383180461%_)
                                    (_%__kont186191186192%_))))
                            (_%__kont186191186192%_))))
                     (_%__match186610186611%_
                      (lambda (_%e180336180513%_
                               _%hd180337180516%_
                               _%tl180338180518%_
                               _%e180339180521%_
                               _%hd180340180524%_
                               _%tl180341180526%_
                               _%e180342180529%_
                               _%hd180343180532%_
                               _%tl180344180534%_
                               _%e180345180537%_
                               _%hd180346180540%_
                               _%tl180347180542%_
                               _%e180348180545%_
                               _%hd180349180548%_
                               _%tl180350180550%_
                               _%e180351180553%_
                               _%hd180352180556%_
                               _%tl180353180558%_
                               _%e180354180561%_
                               _%hd180355180564%_
                               _%tl180356180566%_)
                        (let ((_%L180569%_ _%hd180355180564%_)
                              (_%L180570%_ _%hd180346180540%_))
                          (if (and (let ((__tmp186861
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self180155%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L180569%_
                                      __tmp186861))
                                   (let ((__tmp186862
                                          (let ((__tmp186863
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%L180570%_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp186863))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp186862
                                      'gxc#!accessor::t)))
                              (_%__kont186187186188%_ _%L180569%_ _%L180570%_)
                              (_%__kont186191186192%_)))))
                     (_%__match186608186609%_
                      (lambda (_%e180336180513%_
                               _%hd180337180516%_
                               _%tl180338180518%_
                               _%e180339180521%_
                               _%hd180340180524%_
                               _%tl180341180526%_
                               _%e180342180529%_
                               _%hd180343180532%_
                               _%tl180344180534%_
                               _%e180345180537%_
                               _%hd180346180540%_
                               _%tl180347180542%_
                               _%e180348180545%_
                               _%hd180349180548%_
                               _%tl180350180550%_
                               _%e180351180553%_
                               _%hd180352180556%_
                               _%tl180353180558%_
                               _%e180354180561%_
                               _%hd180355180564%_
                               _%tl180356180566%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl180350180550%_))
                            (_%__match186610186611%_
                             _%e180336180513%_
                             _%hd180337180516%_
                             _%tl180338180518%_
                             _%e180339180521%_
                             _%hd180340180524%_
                             _%tl180341180526%_
                             _%e180342180529%_
                             _%hd180343180532%_
                             _%tl180344180534%_
                             _%e180345180537%_
                             _%hd180346180540%_
                             _%tl180347180542%_
                             _%e180348180545%_
                             _%hd180349180548%_
                             _%tl180350180550%_
                             _%e180351180553%_
                             _%hd180352180556%_
                             _%tl180353180558%_
                             _%e180354180561%_
                             _%hd180355180564%_
                             _%tl180356180566%_)
                            (_%__match186664186665%_
                             _%e180336180513%_
                             _%hd180337180516%_
                             _%tl180338180518%_
                             _%e180339180521%_
                             _%hd180340180524%_
                             _%tl180341180526%_
                             _%e180342180529%_
                             _%hd180343180532%_
                             _%tl180344180534%_
                             _%e180345180537%_
                             _%hd180346180540%_
                             _%tl180347180542%_
                             _%e180348180545%_
                             _%hd180349180548%_
                             _%tl180350180550%_
                             _%e180351180553%_
                             _%hd180352180556%_
                             _%tl180353180558%_
                             _%e180354180561%_
                             _%hd180355180564%_
                             _%tl180356180566%_))))
                     (_%__match186554186555%_
                      (lambda (_%e180301180609%_
                               _%hd180302180612%_
                               _%tl180303180614%_
                               _%e180304180617%_
                               _%hd180305180620%_
                               _%tl180306180622%_
                               _%e180307180625%_
                               _%hd180308180628%_
                               _%tl180309180630%_
                               _%e180310180633%_
                               _%hd180311180636%_
                               _%tl180312180638%_
                               _%e180313180641%_
                               _%hd180314180644%_
                               _%tl180315180646%_
                               _%e180316180649%_
                               _%hd180317180652%_
                               _%tl180318180654%_
                               _%e180319180657%_
                               _%hd180320180660%_
                               _%tl180321180662%_
                               _%e180322180665%_
                               _%hd180323180668%_
                               _%tl180324180670%_
                               _%e180325180673%_
                               _%hd180326180676%_
                               _%tl180327180678%_
                               _%e180328180681%_
                               _%hd180329180684%_
                               _%tl180330180686%_
                               _%e180331180689%_
                               _%hd180332180692%_
                               _%tl180333180694%_)
                        (let ((_%L180697%_ _%hd180332180692%_)
                              (_%L180698%_ _%hd180329180684%_)
                              (_%L180699%_ _%hd180320180660%_)
                              (_%L180700%_ _%hd180311180636%_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L180700%_
                                          'slot-set!))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L180700%_
                                          'unchecked-slot-set!)))
                                   (let ((__tmp186864
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self180155%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L180699%_
                                      __tmp186864)))
                              (_%__kont186185186186%_
                               _%L180697%_
                               _%L180698%_
                               _%L180699%_
                               _%L180700%_)
                              (_%__kont186191186192%_)))))
                     (_%__match186546186547%_
                      (lambda (_%e180301180609%_
                               _%hd180302180612%_
                               _%tl180303180614%_
                               _%e180304180617%_
                               _%hd180305180620%_
                               _%tl180306180622%_
                               _%e180307180625%_
                               _%hd180308180628%_
                               _%tl180309180630%_
                               _%e180310180633%_
                               _%hd180311180636%_
                               _%tl180312180638%_
                               _%e180313180641%_
                               _%hd180314180644%_
                               _%tl180315180646%_
                               _%e180316180649%_
                               _%hd180317180652%_
                               _%tl180318180654%_
                               _%e180319180657%_
                               _%hd180320180660%_
                               _%tl180321180662%_
                               _%e180322180665%_
                               _%hd180323180668%_
                               _%tl180324180670%_
                               _%e180325180673%_
                               _%hd180326180676%_
                               _%tl180327180678%_
                               _%e180328180681%_
                               _%hd180329180684%_
                               _%tl180330180686%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl180324180670%_))
                            (let ((_%e180331180689%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl180324180670%_))))
                              (let ((_%tl180333180694%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e180331180689%_)))
                                    (_%hd180332180692%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e180331180689%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl180333180694%_))
                                    (_%__match186554186555%_
                                     _%e180301180609%_
                                     _%hd180302180612%_
                                     _%tl180303180614%_
                                     _%e180304180617%_
                                     _%hd180305180620%_
                                     _%tl180306180622%_
                                     _%e180307180625%_
                                     _%hd180308180628%_
                                     _%tl180309180630%_
                                     _%e180310180633%_
                                     _%hd180311180636%_
                                     _%tl180312180638%_
                                     _%e180313180641%_
                                     _%hd180314180644%_
                                     _%tl180315180646%_
                                     _%e180316180649%_
                                     _%hd180317180652%_
                                     _%tl180318180654%_
                                     _%e180319180657%_
                                     _%hd180320180660%_
                                     _%tl180321180662%_
                                     _%e180322180665%_
                                     _%hd180323180668%_
                                     _%tl180324180670%_
                                     _%e180325180673%_
                                     _%hd180326180676%_
                                     _%tl180327180678%_
                                     _%e180328180681%_
                                     _%hd180329180684%_
                                     _%tl180330180686%_
                                     _%e180331180689%_
                                     _%hd180332180692%_
                                     _%tl180333180694%_)
                                    (_%__kont186191186192%_))))
                            (_%__match186670186671%_
                             _%e180301180609%_
                             _%hd180302180612%_
                             _%tl180303180614%_
                             _%e180304180617%_
                             _%hd180305180620%_
                             _%tl180306180622%_
                             _%e180307180625%_
                             _%hd180308180628%_
                             _%tl180309180630%_
                             _%e180310180633%_
                             _%hd180311180636%_
                             _%tl180312180638%_
                             _%e180313180641%_
                             _%hd180314180644%_
                             _%tl180315180646%_
                             _%e180316180649%_
                             _%hd180317180652%_
                             _%tl180318180654%_
                             _%e180319180657%_
                             _%hd180320180660%_
                             _%tl180321180662%_
                             _%e180322180665%_
                             _%hd180323180668%_
                             _%tl180324180670%_))))
                     (_%__match186468186469%_
                      (lambda (_%e180267180743%_
                               _%hd180268180746%_
                               _%tl180269180748%_
                               _%e180270180751%_
                               _%hd180271180754%_
                               _%tl180272180756%_
                               _%e180273180759%_
                               _%hd180274180762%_
                               _%tl180275180764%_
                               _%e180276180767%_
                               _%hd180277180770%_
                               _%tl180278180772%_
                               _%e180279180775%_
                               _%hd180280180778%_
                               _%tl180281180780%_
                               _%e180282180783%_
                               _%hd180283180786%_
                               _%tl180284180788%_
                               _%e180285180791%_
                               _%hd180286180794%_
                               _%tl180287180796%_
                               _%e180288180799%_
                               _%hd180289180802%_
                               _%tl180290180804%_
                               _%e180291180807%_
                               _%hd180292180810%_
                               _%tl180293180812%_
                               _%e180294180815%_
                               _%hd180295180818%_
                               _%tl180296180820%_)
                        (let ((_%L180823%_ _%hd180295180818%_)
                              (_%L180824%_ _%hd180286180794%_)
                              (_%L180825%_ _%hd180277180770%_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L180825%_
                                          'slot-ref))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L180825%_
                                          'unchecked-slot-ref)))
                                   (let ((__tmp186865
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self180155%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L180824%_
                                      __tmp186865)))
                              (_%__kont186183186184%_
                               _%L180823%_
                               _%L180824%_
                               _%L180825%_)
                              (_%__match186672186673%_
                               _%e180267180743%_
                               _%hd180268180746%_
                               _%tl180269180748%_
                               _%e180270180751%_
                               _%hd180271180754%_
                               _%tl180272180756%_
                               _%e180273180759%_
                               _%hd180274180762%_
                               _%tl180275180764%_
                               _%e180276180767%_
                               _%hd180277180770%_
                               _%tl180278180772%_
                               _%e180279180775%_
                               _%hd180280180778%_
                               _%tl180281180780%_
                               _%e180282180783%_
                               _%hd180283180786%_
                               _%tl180284180788%_
                               _%e180285180791%_
                               _%hd180286180794%_
                               _%tl180287180796%_
                               _%e180288180799%_
                               _%hd180289180802%_
                               _%tl180290180804%_)))))
                     (_%__match186466186467%_
                      (lambda (_%e180267180743%_
                               _%hd180268180746%_
                               _%tl180269180748%_
                               _%e180270180751%_
                               _%hd180271180754%_
                               _%tl180272180756%_
                               _%e180273180759%_
                               _%hd180274180762%_
                               _%tl180275180764%_
                               _%e180276180767%_
                               _%hd180277180770%_
                               _%tl180278180772%_
                               _%e180279180775%_
                               _%hd180280180778%_
                               _%tl180281180780%_
                               _%e180282180783%_
                               _%hd180283180786%_
                               _%tl180284180788%_
                               _%e180285180791%_
                               _%hd180286180794%_
                               _%tl180287180796%_
                               _%e180288180799%_
                               _%hd180289180802%_
                               _%tl180290180804%_
                               _%e180291180807%_
                               _%hd180292180810%_
                               _%tl180293180812%_
                               _%e180294180815%_
                               _%hd180295180818%_
                               _%tl180296180820%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl180290180804%_))
                            (_%__match186468186469%_
                             _%e180267180743%_
                             _%hd180268180746%_
                             _%tl180269180748%_
                             _%e180270180751%_
                             _%hd180271180754%_
                             _%tl180272180756%_
                             _%e180273180759%_
                             _%hd180274180762%_
                             _%tl180275180764%_
                             _%e180276180767%_
                             _%hd180277180770%_
                             _%tl180278180772%_
                             _%e180279180775%_
                             _%hd180280180778%_
                             _%tl180281180780%_
                             _%e180282180783%_
                             _%hd180283180786%_
                             _%tl180284180788%_
                             _%e180285180791%_
                             _%hd180286180794%_
                             _%tl180287180796%_
                             _%e180288180799%_
                             _%hd180289180802%_
                             _%tl180290180804%_
                             _%e180291180807%_
                             _%hd180292180810%_
                             _%tl180293180812%_
                             _%e180294180815%_
                             _%hd180295180818%_
                             _%tl180296180820%_)
                            (_%__match186546186547%_
                             _%e180267180743%_
                             _%hd180268180746%_
                             _%tl180269180748%_
                             _%e180270180751%_
                             _%hd180271180754%_
                             _%tl180272180756%_
                             _%e180273180759%_
                             _%hd180274180762%_
                             _%tl180275180764%_
                             _%e180276180767%_
                             _%hd180277180770%_
                             _%tl180278180772%_
                             _%e180279180775%_
                             _%hd180280180778%_
                             _%tl180281180780%_
                             _%e180282180783%_
                             _%hd180283180786%_
                             _%tl180284180788%_
                             _%e180285180791%_
                             _%hd180286180794%_
                             _%tl180287180796%_
                             _%e180288180799%_
                             _%hd180289180802%_
                             _%tl180290180804%_
                             _%e180291180807%_
                             _%hd180292180810%_
                             _%tl180293180812%_
                             _%e180294180815%_
                             _%hd180295180818%_
                             _%tl180296180820%_))))
                     (_%__match186456186457%_
                      (lambda (_%e180267180743%_
                               _%hd180268180746%_
                               _%tl180269180748%_
                               _%e180270180751%_
                               _%hd180271180754%_
                               _%tl180272180756%_
                               _%e180273180759%_
                               _%hd180274180762%_
                               _%tl180275180764%_
                               _%e180276180767%_
                               _%hd180277180770%_
                               _%tl180278180772%_
                               _%e180279180775%_
                               _%hd180280180778%_
                               _%tl180281180780%_
                               _%e180282180783%_
                               _%hd180283180786%_
                               _%tl180284180788%_
                               _%e180285180791%_
                               _%hd180286180794%_
                               _%tl180287180796%_
                               _%e180288180799%_
                               _%hd180289180802%_
                               _%tl180290180804%_
                               _%e180291180807%_
                               _%hd180292180810%_
                               _%tl180293180812%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#quote _%hd180292180810%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl180293180812%_))
                                (let ((_%e180294180815%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl180293180812%_))))
                                  (let ((_%tl180296180820%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e180294180815%_)))
                                        (_%hd180295180818%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e180294180815%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl180296180820%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl180290180804%_))
                                            (_%__match186468186469%_
                                             _%e180267180743%_
                                             _%hd180268180746%_
                                             _%tl180269180748%_
                                             _%e180270180751%_
                                             _%hd180271180754%_
                                             _%tl180272180756%_
                                             _%e180273180759%_
                                             _%hd180274180762%_
                                             _%tl180275180764%_
                                             _%e180276180767%_
                                             _%hd180277180770%_
                                             _%tl180278180772%_
                                             _%e180279180775%_
                                             _%hd180280180778%_
                                             _%tl180281180780%_
                                             _%e180282180783%_
                                             _%hd180283180786%_
                                             _%tl180284180788%_
                                             _%e180285180791%_
                                             _%hd180286180794%_
                                             _%tl180287180796%_
                                             _%e180288180799%_
                                             _%hd180289180802%_
                                             _%tl180290180804%_
                                             _%e180291180807%_
                                             _%hd180292180810%_
                                             _%tl180293180812%_
                                             _%e180294180815%_
                                             _%hd180295180818%_
                                             _%tl180296180820%_)
                                            (_%__match186546186547%_
                                             _%e180267180743%_
                                             _%hd180268180746%_
                                             _%tl180269180748%_
                                             _%e180270180751%_
                                             _%hd180271180754%_
                                             _%tl180272180756%_
                                             _%e180273180759%_
                                             _%hd180274180762%_
                                             _%tl180275180764%_
                                             _%e180276180767%_
                                             _%hd180277180770%_
                                             _%tl180278180772%_
                                             _%e180279180775%_
                                             _%hd180280180778%_
                                             _%tl180281180780%_
                                             _%e180282180783%_
                                             _%hd180283180786%_
                                             _%tl180284180788%_
                                             _%e180285180791%_
                                             _%hd180286180794%_
                                             _%tl180287180796%_
                                             _%e180288180799%_
                                             _%hd180289180802%_
                                             _%tl180290180804%_
                                             _%e180291180807%_
                                             _%hd180292180810%_
                                             _%tl180293180812%_
                                             _%e180294180815%_
                                             _%hd180295180818%_
                                             _%tl180296180820%_))
                                        (_%__match186670186671%_
                                         _%e180267180743%_
                                         _%hd180268180746%_
                                         _%tl180269180748%_
                                         _%e180270180751%_
                                         _%hd180271180754%_
                                         _%tl180272180756%_
                                         _%e180273180759%_
                                         _%hd180274180762%_
                                         _%tl180275180764%_
                                         _%e180276180767%_
                                         _%hd180277180770%_
                                         _%tl180278180772%_
                                         _%e180279180775%_
                                         _%hd180280180778%_
                                         _%tl180281180780%_
                                         _%e180282180783%_
                                         _%hd180283180786%_
                                         _%tl180284180788%_
                                         _%e180285180791%_
                                         _%hd180286180794%_
                                         _%tl180287180796%_
                                         _%e180288180799%_
                                         _%hd180289180802%_
                                         _%tl180290180804%_))))
                                (_%__match186670186671%_
                                 _%e180267180743%_
                                 _%hd180268180746%_
                                 _%tl180269180748%_
                                 _%e180270180751%_
                                 _%hd180271180754%_
                                 _%tl180272180756%_
                                 _%e180273180759%_
                                 _%hd180274180762%_
                                 _%tl180275180764%_
                                 _%e180276180767%_
                                 _%hd180277180770%_
                                 _%tl180278180772%_
                                 _%e180279180775%_
                                 _%hd180280180778%_
                                 _%tl180281180780%_
                                 _%e180282180783%_
                                 _%hd180283180786%_
                                 _%tl180284180788%_
                                 _%e180285180791%_
                                 _%hd180286180794%_
                                 _%tl180287180796%_
                                 _%e180288180799%_
                                 _%hd180289180802%_
                                 _%tl180290180804%_))
                            (_%__match186670186671%_
                             _%e180267180743%_
                             _%hd180268180746%_
                             _%tl180269180748%_
                             _%e180270180751%_
                             _%hd180271180754%_
                             _%tl180272180756%_
                             _%e180273180759%_
                             _%hd180274180762%_
                             _%tl180275180764%_
                             _%e180276180767%_
                             _%hd180277180770%_
                             _%tl180278180772%_
                             _%e180279180775%_
                             _%hd180280180778%_
                             _%tl180281180780%_
                             _%e180282180783%_
                             _%hd180283180786%_
                             _%tl180284180788%_
                             _%e180285180791%_
                             _%hd180286180794%_
                             _%tl180287180796%_
                             _%e180288180799%_
                             _%hd180289180802%_
                             _%tl180290180804%_))))
                     (_%__match186388186389%_
                      (lambda (_%e180216180864%_
                               _%hd180217180867%_
                               _%tl180218180869%_
                               _%e180219180872%_
                               _%hd180220180875%_
                               _%tl180221180877%_
                               _%e180222180880%_
                               _%hd180223180883%_
                               _%tl180224180885%_
                               _%e180225180888%_
                               _%hd180226180891%_
                               _%tl180227180893%_
                               _%e180228180896%_
                               _%hd180229180899%_
                               _%tl180230180901%_
                               _%e180231180904%_
                               _%hd180232180907%_
                               _%tl180233180909%_
                               _%e180234180912%_
                               _%hd180235180915%_
                               _%tl180236180917%_
                               _%e180237180920%_
                               _%hd180238180923%_
                               _%tl180239180925%_
                               _%e180240180928%_
                               _%hd180241180931%_
                               _%tl180242180933%_
                               _%e180243180936%_
                               _%hd180244180939%_
                               _%tl180245180941%_
                               _%e180246180944%_
                               _%hd180247180947%_
                               _%tl180248180949%_
                               _%e180249180952%_
                               _%hd180250180955%_
                               _%tl180251180957%_
                               _%e180252180960%_
                               _%hd180253180963%_
                               _%tl180254180965%_
                               _%__splice186181186182%_
                               _%target180255180968%_
                               _%tl180257180970%_)
                        (letrec ((_%loop180258180973%_
                                  (lambda (_%hd180256180976%_
                                           _%args180262180978%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd180256180976%_))
                                        (let ((_%e180259180981%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd180256180976%_))))
                                          (let ((_%lp-tl180261180986%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e180259180981%_)))
                                                (_%lp-hd180260180984%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e180259180981%_))))
                                            (_%loop180258180973%_
                                             _%lp-tl180261180986%_
                                             (cons _%lp-hd180260180984%_
                                                   _%args180262180978%_))))
                                        (let ((_%args180263180989%_
                                               (reverse _%args180262180978%_)))
                                          (let ((_%L180992%_
                                                 _%args180263180989%_)
                                                (_%L180993%_
                                                 _%hd180253180963%_)
                                                (_%L180994%_
                                                 _%hd180244180939%_)
                                                (_%L180995%_
                                                 _%hd180235180915%_)
                                                (_%L180996%_
                                                 _%hd180226180891%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%L180996%_
                                                        'apply))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%L180995%_
                                                        'call-method))
                                                     (let ((__tmp186866
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self180155%_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _%L180994%_
                                                        __tmp186866)))
                                                (_%__kont186179186180%_
                                                 _%L180992%_
                                                 _%L180993%_
                                                 _%L180994%_
                                                 _%L180995%_
                                                 _%L180996%_)
                                                (_%__kont186191186192%_))))))))
                          (_%loop180258180973%_ _%target180255180968%_ '()))))
                     (_%__match186346186347%_
                      (lambda (_%e180216180864%_
                               _%hd180217180867%_
                               _%tl180218180869%_
                               _%e180219180872%_
                               _%hd180220180875%_
                               _%tl180221180877%_
                               _%e180222180880%_
                               _%hd180223180883%_
                               _%tl180224180885%_
                               _%e180225180888%_
                               _%hd180226180891%_
                               _%tl180227180893%_
                               _%e180228180896%_
                               _%hd180229180899%_
                               _%tl180230180901%_
                               _%e180231180904%_
                               _%hd180232180907%_
                               _%tl180233180909%_
                               _%e180234180912%_
                               _%hd180235180915%_
                               _%tl180236180917%_
                               _%e180237180920%_
                               _%hd180238180923%_
                               _%tl180239180925%_
                               _%e180240180928%_
                               _%hd180241180931%_
                               _%tl180242180933%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _%hd180241180931%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl180242180933%_))
                                (let ((_%e180243180936%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl180242180933%_))))
                                  (let ((_%tl180245180941%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e180243180936%_)))
                                        (_%hd180244180939%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e180243180936%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl180245180941%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl180239180925%_))
                                            (let ((_%e180246180944%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl180239180925%_))))
                                              (let ((_%tl180248180949%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e180246180944%_)))
                                                    (_%hd180247180947%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e180246180944%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%hd180247180947%_))
                                                    (let ((_%e180249180952%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd180247180947%_))))
                                                      (let ((_%tl180251180957%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e180249180952%_)))
                    (_%hd180250180955%_
                     (let () (declare (not safe)) (##car _%e180249180952%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _%hd180250180955%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _%hd180250180955%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl180251180957%_))
                            (let ((_%e180252180960%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl180251180957%_))))
                              (let ((_%tl180254180965%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e180252180960%_)))
                                    (_%hd180253180963%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e180252180960%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl180254180965%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl180248180949%_))
                                        (let ((_%__splice186181186182%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice->vector
                                                  _%tl180248180949%_
                                                  '0))))
                                          (let ((_%tl180257180970%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice186181186182%_
                                                    '1)))
                                                (_%target180255180968%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice186181186182%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl180257180970%_))
                                                (_%__match186388186389%_
                                                 _%e180216180864%_
                                                 _%hd180217180867%_
                                                 _%tl180218180869%_
                                                 _%e180219180872%_
                                                 _%hd180220180875%_
                                                 _%tl180221180877%_
                                                 _%e180222180880%_
                                                 _%hd180223180883%_
                                                 _%tl180224180885%_
                                                 _%e180225180888%_
                                                 _%hd180226180891%_
                                                 _%tl180227180893%_
                                                 _%e180228180896%_
                                                 _%hd180229180899%_
                                                 _%tl180230180901%_
                                                 _%e180231180904%_
                                                 _%hd180232180907%_
                                                 _%tl180233180909%_
                                                 _%e180234180912%_
                                                 _%hd180235180915%_
                                                 _%tl180236180917%_
                                                 _%e180237180920%_
                                                 _%hd180238180923%_
                                                 _%tl180239180925%_
                                                 _%e180240180928%_
                                                 _%hd180241180931%_
                                                 _%tl180242180933%_
                                                 _%e180243180936%_
                                                 _%hd180244180939%_
                                                 _%tl180245180941%_
                                                 _%e180246180944%_
                                                 _%hd180247180947%_
                                                 _%tl180248180949%_
                                                 _%e180249180952%_
                                                 _%hd180250180955%_
                                                 _%tl180251180957%_
                                                 _%e180252180960%_
                                                 _%hd180253180963%_
                                                 _%tl180254180965%_
                                                 _%__splice186181186182%_
                                                 _%target180255180968%_
                                                 _%tl180257180970%_)
                                                (_%__kont186191186192%_))))
                                        (_%__kont186191186192%_))
                                    (_%__kont186191186192%_))))
                            (_%__kont186191186192%_))
                        (_%__kont186191186192%_))
                    (_%__kont186191186192%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont186191186192%_))))
                                            (_%__match186670186671%_
                                             _%e180216180864%_
                                             _%hd180217180867%_
                                             _%tl180218180869%_
                                             _%e180219180872%_
                                             _%hd180220180875%_
                                             _%tl180221180877%_
                                             _%e180222180880%_
                                             _%hd180223180883%_
                                             _%tl180224180885%_
                                             _%e180225180888%_
                                             _%hd180226180891%_
                                             _%tl180227180893%_
                                             _%e180228180896%_
                                             _%hd180229180899%_
                                             _%tl180230180901%_
                                             _%e180231180904%_
                                             _%hd180232180907%_
                                             _%tl180233180909%_
                                             _%e180234180912%_
                                             _%hd180235180915%_
                                             _%tl180236180917%_
                                             _%e180237180920%_
                                             _%hd180238180923%_
                                             _%tl180239180925%_))
                                        (_%__match186670186671%_
                                         _%e180216180864%_
                                         _%hd180217180867%_
                                         _%tl180218180869%_
                                         _%e180219180872%_
                                         _%hd180220180875%_
                                         _%tl180221180877%_
                                         _%e180222180880%_
                                         _%hd180223180883%_
                                         _%tl180224180885%_
                                         _%e180225180888%_
                                         _%hd180226180891%_
                                         _%tl180227180893%_
                                         _%e180228180896%_
                                         _%hd180229180899%_
                                         _%tl180230180901%_
                                         _%e180231180904%_
                                         _%hd180232180907%_
                                         _%tl180233180909%_
                                         _%e180234180912%_
                                         _%hd180235180915%_
                                         _%tl180236180917%_
                                         _%e180237180920%_
                                         _%hd180238180923%_
                                         _%tl180239180925%_))))
                                (_%__match186670186671%_
                                 _%e180216180864%_
                                 _%hd180217180867%_
                                 _%tl180218180869%_
                                 _%e180219180872%_
                                 _%hd180220180875%_
                                 _%tl180221180877%_
                                 _%e180222180880%_
                                 _%hd180223180883%_
                                 _%tl180224180885%_
                                 _%e180225180888%_
                                 _%hd180226180891%_
                                 _%tl180227180893%_
                                 _%e180228180896%_
                                 _%hd180229180899%_
                                 _%tl180230180901%_
                                 _%e180231180904%_
                                 _%hd180232180907%_
                                 _%tl180233180909%_
                                 _%e180234180912%_
                                 _%hd180235180915%_
                                 _%tl180236180917%_
                                 _%e180237180920%_
                                 _%hd180238180923%_
                                 _%tl180239180925%_))
                            (_%__match186456186457%_
                             _%e180216180864%_
                             _%hd180217180867%_
                             _%tl180218180869%_
                             _%e180219180872%_
                             _%hd180220180875%_
                             _%tl180221180877%_
                             _%e180222180880%_
                             _%hd180223180883%_
                             _%tl180224180885%_
                             _%e180225180888%_
                             _%hd180226180891%_
                             _%tl180227180893%_
                             _%e180228180896%_
                             _%hd180229180899%_
                             _%tl180230180901%_
                             _%e180231180904%_
                             _%hd180232180907%_
                             _%tl180233180909%_
                             _%e180234180912%_
                             _%hd180235180915%_
                             _%tl180236180917%_
                             _%e180237180920%_
                             _%hd180238180923%_
                             _%tl180239180925%_
                             _%e180240180928%_
                             _%hd180241180931%_
                             _%tl180242180933%_))))
                     (_%__match186278186279%_
                      (lambda (_%e180172181056%_
                               _%hd180173181059%_
                               _%tl180174181061%_
                               _%e180175181064%_
                               _%hd180176181067%_
                               _%tl180177181069%_
                               _%e180178181072%_
                               _%hd180179181075%_
                               _%tl180180181077%_
                               _%e180181181080%_
                               _%hd180182181083%_
                               _%tl180183181085%_
                               _%e180184181088%_
                               _%hd180185181091%_
                               _%tl180186181093%_
                               _%e180187181096%_
                               _%hd180188181099%_
                               _%tl180189181101%_
                               _%e180190181104%_
                               _%hd180191181107%_
                               _%tl180192181109%_
                               _%e180193181112%_
                               _%hd180194181115%_
                               _%tl180195181117%_
                               _%e180196181120%_
                               _%hd180197181123%_
                               _%tl180198181125%_
                               _%e180199181128%_
                               _%hd180200181131%_
                               _%tl180201181133%_
                               _%__splice186177186178%_
                               _%target180202181136%_
                               _%tl180204181138%_)
                        (letrec ((_%loop180205181141%_
                                  (lambda (_%hd180203181144%_
                                           _%args180209181146%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd180203181144%_))
                                        (let ((_%e180206181149%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd180203181144%_))))
                                          (let ((_%lp-tl180208181154%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e180206181149%_)))
                                                (_%lp-hd180207181152%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e180206181149%_))))
                                            (_%loop180205181141%_
                                             _%lp-tl180208181154%_
                                             (cons _%lp-hd180207181152%_
                                                   _%args180209181146%_))))
                                        (let ((_%args180210181157%_
                                               (reverse _%args180209181146%_)))
                                          (let ((_%L181160%_
                                                 _%args180210181157%_)
                                                (_%L181161%_
                                                 _%hd180200181131%_)
                                                (_%L181162%_
                                                 _%hd180191181107%_)
                                                (_%L181163%_
                                                 _%hd180182181083%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%L181163%_
                                                        'call-method))
                                                     (let ((__tmp186867
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self180155%_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _%L181162%_
                                                        __tmp186867)))
                                                (_%__kont186175186176%_
                                                 _%L181160%_
                                                 _%L181161%_
                                                 _%L181162%_
                                                 _%L181163%_)
                                                (_%__match186466186467%_
                                                 _%e180172181056%_
                                                 _%hd180173181059%_
                                                 _%tl180174181061%_
                                                 _%e180175181064%_
                                                 _%hd180176181067%_
                                                 _%tl180177181069%_
                                                 _%e180178181072%_
                                                 _%hd180179181075%_
                                                 _%tl180180181077%_
                                                 _%e180181181080%_
                                                 _%hd180182181083%_
                                                 _%tl180183181085%_
                                                 _%e180184181088%_
                                                 _%hd180185181091%_
                                                 _%tl180186181093%_
                                                 _%e180187181096%_
                                                 _%hd180188181099%_
                                                 _%tl180189181101%_
                                                 _%e180190181104%_
                                                 _%hd180191181107%_
                                                 _%tl180192181109%_
                                                 _%e180193181112%_
                                                 _%hd180194181115%_
                                                 _%tl180195181117%_
                                                 _%e180196181120%_
                                                 _%hd180197181123%_
                                                 _%tl180198181125%_
                                                 _%e180199181128%_
                                                 _%hd180200181131%_
                                                 _%tl180201181133%_))))))))
                          (_%loop180205181141%_ _%target180202181136%_ '())))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx186173186174%_))
                    (let ((_%e180172181056%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx186173186174%_))))
                      (let ((_%tl180174181061%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e180172181056%_)))
                            (_%hd180173181059%_
                             (let ()
                               (declare (not safe))
                               (##car _%e180172181056%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl180174181061%_))
                            (let ((_%e180175181064%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl180174181061%_))))
                              (let ((_%tl180177181069%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e180175181064%_)))
                                    (_%hd180176181067%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e180175181064%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd180176181067%_))
                                    (let ((_%e180178181072%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd180176181067%_))))
                                      (let ((_%tl180180181077%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e180178181072%_)))
                                            (_%hd180179181075%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e180178181072%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _%hd180179181075%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _%hd180179181075%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl180180181077%_))
                                                    (let ((_%e180181181080%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl180180181077%_))))
                                                      (let ((_%tl180183181085%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e180181181080%_)))
                    (_%hd180182181083%_
                     (let () (declare (not safe)) (##car _%e180181181080%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl180183181085%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl180177181069%_))
                        (let ((_%e180184181088%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl180177181069%_))))
                          (let ((_%tl180186181093%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e180184181088%_)))
                                (_%hd180185181091%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e180184181088%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd180185181091%_))
                                (let ((_%e180187181096%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd180185181091%_))))
                                  (let ((_%tl180189181101%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e180187181096%_)))
                                        (_%hd180188181099%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e180187181096%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd180188181099%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _%hd180188181099%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl180189181101%_))
                                                (let ((_%e180190181104%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl180189181101%_))))
                                                  (let ((_%tl180192181109%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e180190181104%_)))
                                                        (_%hd180191181107%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e180190181104%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl180192181109%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl180186181093%_))
                                                            (let ((_%e180193181112%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl180186181093%_))))
                      (let ((_%tl180195181117%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e180193181112%_)))
                            (_%hd180194181115%_
                             (let ()
                               (declare (not safe))
                               (##car _%e180193181112%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd180194181115%_))
                            (let ((_%e180196181120%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd180194181115%_))))
                              (let ((_%tl180198181125%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e180196181120%_)))
                                    (_%hd180197181123%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e180196181120%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd180197181123%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd180197181123%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl180198181125%_))
                                            (let ((_%e180199181128%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl180198181125%_))))
                                              (let ((_%tl180201181133%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e180199181128%_)))
                                                    (_%hd180200181131%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e180199181128%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl180201181133%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair/null?
                                                           _%tl180195181117%_))
                                                        (let ((_%__splice186177186178%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-split-splice->vector
                          _%tl180195181117%_
                          '0))))
                  (let ((_%tl180204181138%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice186177186178%_ '1)))
                        (_%target180202181136%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice186177186178%_ '0))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl180204181138%_))
                        (_%__match186278186279%_
                         _%e180172181056%_
                         _%hd180173181059%_
                         _%tl180174181061%_
                         _%e180175181064%_
                         _%hd180176181067%_
                         _%tl180177181069%_
                         _%e180178181072%_
                         _%hd180179181075%_
                         _%tl180180181077%_
                         _%e180181181080%_
                         _%hd180182181083%_
                         _%tl180183181085%_
                         _%e180184181088%_
                         _%hd180185181091%_
                         _%tl180186181093%_
                         _%e180187181096%_
                         _%hd180188181099%_
                         _%tl180189181101%_
                         _%e180190181104%_
                         _%hd180191181107%_
                         _%tl180192181109%_
                         _%e180193181112%_
                         _%hd180194181115%_
                         _%tl180195181117%_
                         _%e180196181120%_
                         _%hd180197181123%_
                         _%tl180198181125%_
                         _%e180199181128%_
                         _%hd180200181131%_
                         _%tl180201181133%_
                         _%__splice186177186178%_
                         _%target180202181136%_
                         _%tl180204181138%_)
                        (_%__match186466186467%_
                         _%e180172181056%_
                         _%hd180173181059%_
                         _%tl180174181061%_
                         _%e180175181064%_
                         _%hd180176181067%_
                         _%tl180177181069%_
                         _%e180178181072%_
                         _%hd180179181075%_
                         _%tl180180181077%_
                         _%e180181181080%_
                         _%hd180182181083%_
                         _%tl180183181085%_
                         _%e180184181088%_
                         _%hd180185181091%_
                         _%tl180186181093%_
                         _%e180187181096%_
                         _%hd180188181099%_
                         _%tl180189181101%_
                         _%e180190181104%_
                         _%hd180191181107%_
                         _%tl180192181109%_
                         _%e180193181112%_
                         _%hd180194181115%_
                         _%tl180195181117%_
                         _%e180196181120%_
                         _%hd180197181123%_
                         _%tl180198181125%_
                         _%e180199181128%_
                         _%hd180200181131%_
                         _%tl180201181133%_))))
                (_%__match186466186467%_
                 _%e180172181056%_
                 _%hd180173181059%_
                 _%tl180174181061%_
                 _%e180175181064%_
                 _%hd180176181067%_
                 _%tl180177181069%_
                 _%e180178181072%_
                 _%hd180179181075%_
                 _%tl180180181077%_
                 _%e180181181080%_
                 _%hd180182181083%_
                 _%tl180183181085%_
                 _%e180184181088%_
                 _%hd180185181091%_
                 _%tl180186181093%_
                 _%e180187181096%_
                 _%hd180188181099%_
                 _%tl180189181101%_
                 _%e180190181104%_
                 _%hd180191181107%_
                 _%tl180192181109%_
                 _%e180193181112%_
                 _%hd180194181115%_
                 _%tl180195181117%_
                 _%e180196181120%_
                 _%hd180197181123%_
                 _%tl180198181125%_
                 _%e180199181128%_
                 _%hd180200181131%_
                 _%tl180201181133%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match186670186671%_
                                                     _%e180172181056%_
                                                     _%hd180173181059%_
                                                     _%tl180174181061%_
                                                     _%e180175181064%_
                                                     _%hd180176181067%_
                                                     _%tl180177181069%_
                                                     _%e180178181072%_
                                                     _%hd180179181075%_
                                                     _%tl180180181077%_
                                                     _%e180181181080%_
                                                     _%hd180182181083%_
                                                     _%tl180183181085%_
                                                     _%e180184181088%_
                                                     _%hd180185181091%_
                                                     _%tl180186181093%_
                                                     _%e180187181096%_
                                                     _%hd180188181099%_
                                                     _%tl180189181101%_
                                                     _%e180190181104%_
                                                     _%hd180191181107%_
                                                     _%tl180192181109%_
                                                     _%e180193181112%_
                                                     _%hd180194181115%_
                                                     _%tl180195181117%_))))
                                            (_%__match186670186671%_
                                             _%e180172181056%_
                                             _%hd180173181059%_
                                             _%tl180174181061%_
                                             _%e180175181064%_
                                             _%hd180176181067%_
                                             _%tl180177181069%_
                                             _%e180178181072%_
                                             _%hd180179181075%_
                                             _%tl180180181077%_
                                             _%e180181181080%_
                                             _%hd180182181083%_
                                             _%tl180183181085%_
                                             _%e180184181088%_
                                             _%hd180185181091%_
                                             _%tl180186181093%_
                                             _%e180187181096%_
                                             _%hd180188181099%_
                                             _%tl180189181101%_
                                             _%e180190181104%_
                                             _%hd180191181107%_
                                             _%tl180192181109%_
                                             _%e180193181112%_
                                             _%hd180194181115%_
                                             _%tl180195181117%_))
                                        (_%__match186346186347%_
                                         _%e180172181056%_
                                         _%hd180173181059%_
                                         _%tl180174181061%_
                                         _%e180175181064%_
                                         _%hd180176181067%_
                                         _%tl180177181069%_
                                         _%e180178181072%_
                                         _%hd180179181075%_
                                         _%tl180180181077%_
                                         _%e180181181080%_
                                         _%hd180182181083%_
                                         _%tl180183181085%_
                                         _%e180184181088%_
                                         _%hd180185181091%_
                                         _%tl180186181093%_
                                         _%e180187181096%_
                                         _%hd180188181099%_
                                         _%tl180189181101%_
                                         _%e180190181104%_
                                         _%hd180191181107%_
                                         _%tl180192181109%_
                                         _%e180193181112%_
                                         _%hd180194181115%_
                                         _%tl180195181117%_
                                         _%e180196181120%_
                                         _%hd180197181123%_
                                         _%tl180198181125%_))
                                    (_%__match186670186671%_
                                     _%e180172181056%_
                                     _%hd180173181059%_
                                     _%tl180174181061%_
                                     _%e180175181064%_
                                     _%hd180176181067%_
                                     _%tl180177181069%_
                                     _%e180178181072%_
                                     _%hd180179181075%_
                                     _%tl180180181077%_
                                     _%e180181181080%_
                                     _%hd180182181083%_
                                     _%tl180183181085%_
                                     _%e180184181088%_
                                     _%hd180185181091%_
                                     _%tl180186181093%_
                                     _%e180187181096%_
                                     _%hd180188181099%_
                                     _%tl180189181101%_
                                     _%e180190181104%_
                                     _%hd180191181107%_
                                     _%tl180192181109%_
                                     _%e180193181112%_
                                     _%hd180194181115%_
                                     _%tl180195181117%_))))
                            (_%__match186670186671%_
                             _%e180172181056%_
                             _%hd180173181059%_
                             _%tl180174181061%_
                             _%e180175181064%_
                             _%hd180176181067%_
                             _%tl180177181069%_
                             _%e180178181072%_
                             _%hd180179181075%_
                             _%tl180180181077%_
                             _%e180181181080%_
                             _%hd180182181083%_
                             _%tl180183181085%_
                             _%e180184181088%_
                             _%hd180185181091%_
                             _%tl180186181093%_
                             _%e180187181096%_
                             _%hd180188181099%_
                             _%tl180189181101%_
                             _%e180190181104%_
                             _%hd180191181107%_
                             _%tl180192181109%_
                             _%e180193181112%_
                             _%hd180194181115%_
                             _%tl180195181117%_))))
                    (_%__match186608186609%_
                     _%e180172181056%_
                     _%hd180173181059%_
                     _%tl180174181061%_
                     _%e180175181064%_
                     _%hd180176181067%_
                     _%tl180177181069%_
                     _%e180178181072%_
                     _%hd180179181075%_
                     _%tl180180181077%_
                     _%e180181181080%_
                     _%hd180182181083%_
                     _%tl180183181085%_
                     _%e180184181088%_
                     _%hd180185181091%_
                     _%tl180186181093%_
                     _%e180187181096%_
                     _%hd180188181099%_
                     _%tl180189181101%_
                     _%e180190181104%_
                     _%hd180191181107%_
                     _%tl180192181109%_))
                (_%__kont186191186192%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont186191186192%_))
                                            (_%__kont186191186192%_))
                                        (_%__kont186191186192%_))))
                                (_%__kont186191186192%_))))
                        (_%__kont186191186192%_))
                    (_%__kont186191186192%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont186191186192%_))
                                                (_%__kont186191186192%_))
                                            (_%__kont186191186192%_))))
                                    (_%__kont186191186192%_))))
                            (_%__kont186191186192%_))))
                    (_%__kont186191186192%_))))))))))
