(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-spec::timestamp 1770338926)
  (begin
    (define gxc#::generate-method-specializers::t
      (let ((__tmp201712 (list gxc#::identity::t))
            (__tmp201711 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-method-specializers::t
         '::generate-method-specializers
         __tmp201712
         '()
         __tmp201711
         '#f)))
    (define gxc#::generate-method-specializers?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-method-specializers::t)))
    (define gxc#make-::generate-method-specializers
      (lambda _%$args200509%_
        (apply make-instance
               gxc#::generate-method-specializers::t
               _%$args200509%_)))
    (define gxc#::generate-method-specializers-bind-methods!
      (let ((__tmp201713
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
        (__make-atomic-promise __tmp201713)))
    (define gxc#apply-generate-method-specializers
      (lambda (_%stx200501%_)
        (force gxc#::generate-method-specializers-bind-methods!)
        (let* ((_%self200504%_
                (let ((__obj201704
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-method-specializers::t))))
                  __obj201704))
               (__tmp201714
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self200504%_ _%stx200501%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp201714
           gxc#current-compile-method
           _%self200504%_))))
    (define gxc#::extract-receiver::t
      (let ((__tmp201716 (list gxc#::false::t))
            (__tmp201715 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::extract-receiver::t
         '::extract-receiver
         __tmp201716
         '()
         __tmp201715
         '#f)))
    (define gxc#::extract-receiver?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::extract-receiver::t)))
    (define gxc#make-::extract-receiver
      (lambda _%$args200498%_
        (apply make-instance gxc#::extract-receiver::t _%$args200498%_)))
    (define gxc#::extract-receiver-bind-methods!
      (let ((__tmp201717
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
        (__make-atomic-promise __tmp201717)))
    (define gxc#apply-extract-receiver
      (lambda (_%stx200490%_)
        (force gxc#::extract-receiver-bind-methods!)
        (let* ((_%self200493%_
                (let ((__obj201706
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::extract-receiver::t))))
                  __obj201706))
               (__tmp201718
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self200493%_ _%stx200490%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp201718
           gxc#current-compile-method
           _%self200493%_))))
    (define gxc#::collect-object-refs::t
      (let ((__tmp201720 (list gxc#::void::t))
            (__tmp201719 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-object-refs::t
         '::collect-object-refs
         __tmp201720
         '(receiver methods slots)
         __tmp201719
         '#f)))
    (define gxc#::collect-object-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-object-refs::t)))
    (define gxc#make-::collect-object-refs
      (lambda _%$args200487%_
        (apply make-instance gxc#::collect-object-refs::t _%$args200487%_)))
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
      (let ((__tmp201721
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
        (__make-atomic-promise __tmp201721)))
    (define gxc#apply-collect-object-refs__%
      (lambda (_%@@keywords200456%_
               _%receiver200451200457%_
               _%methods200452200458%_
               _%slots200453200459%_
               _%stx200460%_)
        (let* ((_%receiver200463%_
                (if (eq? _%receiver200451200457%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _%receiver200451200457%_))
               (_%methods200465%_
                (if (eq? _%methods200452200458%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _%methods200452200458%_))
               (_%slots200467%_
                (if (eq? _%slots200453200459%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _%slots200453200459%_)))
          (force gxc#::collect-object-refs-bind-methods!)
          (let* ((_%self200469%_
                  (let ((__obj201708
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
                       __obj201708
                       _%receiver200463%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj201708
                       _%methods200465%_
                       '2
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj201708
                       _%slots200467%_
                       '3
                       '#f
                       '#f))
                    __obj201708))
                 (__tmp201722
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self200469%_ _%stx200460%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp201722
             gxc#current-compile-method
             _%self200469%_)))))
    (define gxc#apply-collect-object-refs__@
      (lambda (_%@@keywords200476%_ . _%args200477%_)
        (apply gxc#apply-collect-object-refs__%
               _%@@keywords200476%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords200476%_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords200476%_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords200476%_
                  'slots:
                  absent-value))
               _%args200477%_)))
    (define gxc#apply-collect-object-refs
      (lambda _%args200454200483%_
        (apply keyword-dispatch
               '#(receiver: slots: methods:)
               gxc#apply-collect-object-refs__@
               _%args200454200483%_)))
    (define gxc#::subst-object-refs::t
      (let ((__tmp201724 (list gxc#::basic-xform-expression::t))
            (__tmp201723 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::subst-object-refs::t
         '::subst-object-refs
         __tmp201724
         '(receiver klass methods slots)
         __tmp201723
         '#f)))
    (define gxc#::subst-object-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::subst-object-refs::t)))
    (define gxc#make-::subst-object-refs
      (lambda _%$args200447%_
        (apply make-instance gxc#::subst-object-refs::t _%$args200447%_)))
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
      (let ((__tmp201725
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
        (__make-atomic-promise __tmp201725)))
    (define gxc#apply-subst-object-refs__%
      (lambda (_%@@keywords200413%_
               _%receiver200407200414%_
               _%klass200408200415%_
               _%methods200409200416%_
               _%slots200410200417%_
               _%stx200418%_)
        (let* ((_%receiver200421%_
                (if (eq? _%receiver200407200414%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _%receiver200407200414%_))
               (_%klass200423%_
                (if (eq? _%klass200408200415%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'klass:))
                    _%klass200408200415%_))
               (_%methods200425%_
                (if (eq? _%methods200409200416%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _%methods200409200416%_))
               (_%slots200427%_
                (if (eq? _%slots200410200417%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _%slots200410200417%_)))
          (force gxc#::subst-object-refs-bind-methods!)
          (let* ((_%self200429%_
                  (let ((__obj201710
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
                       __obj201710
                       _%receiver200421%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj201710
                       _%klass200423%_
                       '2
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj201710
                       _%methods200425%_
                       '3
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj201710
                       _%slots200427%_
                       '4
                       '#f
                       '#f))
                    __obj201710))
                 (__tmp201726
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self200429%_ _%stx200418%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp201726
             gxc#current-compile-method
             _%self200429%_)))))
    (define gxc#apply-subst-object-refs__@
      (lambda (_%@@keywords200436%_ . _%args200437%_)
        (apply gxc#apply-subst-object-refs__%
               _%@@keywords200436%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords200436%_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords200436%_
                  'klass:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords200436%_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords200436%_
                  'slots:
                  absent-value))
               _%args200437%_)))
    (define gxc#apply-subst-object-refs
      (lambda _%args200411200443%_
        (apply keyword-dispatch
               '#(receiver: methods: slots: klass:)
               gxc#apply-subst-object-refs__@
               _%args200411200443%_)))
    (define gxc#generate-method-specializers-define-values%
      (lambda (_%self197538%_ _%stx197539%_)
        (letrec ((_%generate-method-bind197541%_
                  (lambda (_%$klass200399%_
                           _%$method-table200400%_
                           _%id200401%_
                           _%$id200402%_)
                    (let ((_%$tmp200404%_
                           (let ((__tmp201727
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__method))))
                             (declare (not safe))
                             (make-symbol__0 __tmp201727))))
                      (cons (cons _%$id200402%_ '())
                            (cons (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons 'make-promise '()))
                                              (cons (cons '%#lambda
                                                          (cons '()
                                                                (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons (cons (cons _%$tmp200404%_ '())
                                                      (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#ref (cons 'symbolic-table-ref '()))
                                (cons (cons '%#ref
                                            (cons _%$method-table200400%_ '()))
                                      (cons (cons '%#quote
                                                  (cons _%id200401%_ '()))
                                            (cons (cons '%#quote
                                                        (cons '#f '()))
                                                  '())))))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())
                                          (cons (cons '%#if
                                                      (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%$tmp200404%_ '()))
                    (cons (cons '%#ref (cons _%$tmp200404%_ '()))
                          (cons (cons '%#call
                                      (cons (cons '%#ref (cons 'error '()))
                                            (cons (cons '%#quote
                                                        (cons '"Missing method"
                                                              '()))
                                                  (cons (cons '%#quote
                                                              (cons _%id200401%_
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
                 (_%generate-slot-bind197542%_
                  (lambda (_%$klass200393%_ _%id200394%_ _%$id200395%_)
                    (let ((_%$tmp200397%_
                           (let ((__tmp201728
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__slot))))
                             (declare (not safe))
                             (make-symbol__0 __tmp201728))))
                      (cons (cons _%$id200395%_ '())
                            (cons (cons '%#let-values
                                        (cons (cons (cons (cons _%$tmp200397%_
                                                                '())
                                                          (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '%#ref (cons 'class-slot-offset '()))
                                    (cons (cons '%#ref
                                                (cons _%$klass200393%_ '()))
                                          (cons (cons '%#quote
                                                      (cons _%id200394%_ '()))
                                                '()))))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())
                                              (cons (cons '%#if
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$tmp200397%_ '()))
                        (cons (cons '%#ref (cons _%$tmp200397%_ '()))
                              (cons (cons '%#call
                                          (cons (cons '%#ref (cons 'error '()))
                                                (cons (cons '%#quote
                                                            (cons '"Unknown slot"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#quote (cons _%id200394%_ '())) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '())))))
                 (_%generate-specializer-impl197543%_
                  (lambda (_%$klass200387%_
                           _%$method-table200388%_
                           _%methods-bind200389%_
                           _%slots-bind200390%_
                           _%specializer-impl200391%_)
                    (let ((__tmp201729
                           (cons '%#lambda
                                 (cons (cons _%$klass200387%_
                                             (cons _%$method-table200388%_
                                                   '()))
                                       (cons (cons '%#let-values
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (__foldr1
                                                            cons
                                                            _%slots-bind200390%_
                                                            _%methods-bind200389%_))
                                                         (cons _%specializer-impl200391%_
                                                               '())))
                                             '())))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp201729 _%stx197539%_))))
                 (_%generate-specializer-def197544%_
                  (lambda (_%id200383%_
                           _%specializer-id200384%_
                           _%specializer-impl200385%_)
                    (let ((__tmp201730
                           (cons '%#begin
                                 (cons _%stx197539%_
                                       (cons (let ((__tmp201731
                                                    (cons '%#define-values
                                                          (cons (cons _%specializer-id200384%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons _%specializer-impl200385%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp201731
                                                _%stx197539%_))
                                             (cons (let ((__tmp201732
                                                          (cons '%#call
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons 'bind-specializer! '()))
                              (cons (cons '%#ref (cons _%id200383%_ '()))
                                    (cons (cons '%#ref
                                                (cons _%specializer-id200384%_
                                                      '()))
                                          '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp201732
                                                      _%stx197539%_))
                                                   '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp201730 _%stx197539%_)))))
          (let* ((_%__stx200598200599%_ _%stx197539%_)
                 (_%g197547197567%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx200598200599%_)))))
            (let ((_%__kont200600200601%_
                   (lambda (_%g197549197611%_ _%g197550197612%_)
                     (let ((_%method-calls197631%_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_%slot-refs197632%_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_%empty197633%_
                            (let ()
                              (declare (not safe))
                              (make-hash-table-eq))))
                       (letrec ((_%no-specializer?197635%_
                                 (lambda ()
                                   (if (let ((__tmp201733
                                              (let ()
                                                (declare (not safe))
                                                (__hash-length
                                                 _%method-calls197631%_))))
                                         (declare (not safe))
                                         (##fxzero? __tmp201733))
                                       (let ((__tmp201734
                                              (let ()
                                                (declare (not safe))
                                                (__hash-length
                                                 _%slot-refs197632%_))))
                                         (declare (not safe))
                                         (##fxzero? __tmp201734))
                                       '#f))))
                         (if (let ()
                               (declare (not safe))
                               (gxc#lambda-expr? _%g197549197611%_))
                             (let* ((_%__stx200512200513%_ _%g197549197611%_)
                                    (_%g198019198037%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx200512200513%_)))))
                               (let ((_%__kont200514200515%_
                                      (lambda (_%g198021198073%_
                                               _%g198022198074%_
                                               _%g198023198075%_)
                                        (let ((_%receiver198095%_
                                               (let ((_%$e198092%_
                                                      (gxc#apply-extract-receiver
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f '%#begin))
                     _%g198021198073%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e198092%_
                                                     _%$e198092%_
                                                     _%g198023198075%_))))
                                          (for-each
                                           (lambda (_%g198096198098%_)
                                             (gxc#apply-collect-object-refs__%
                                              '#f
                                              _%receiver198095%_
                                              _%method-calls197631%_
                                              _%slot-refs197632%_
                                              _%g198096198098%_))
                                           _%g198021198073%_)
                                          (if (_%no-specializer?197635%_)
                                              _%stx197539%_
                                              (let* ((_%specializer-id198107%_
                                                      (let* ((_%id198101%_
                                                              (let ((__tmp201735
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g197550197612%_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp201735 '"::specialize")))
                     (_%specializer-id198104%_
                      (let ((__tmp201736
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _%stx197539%_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _%id198101%_ __tmp201736))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _%specializer-id198104%_))
                _%specializer-id198104%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$klass198109%_
                                                      (let ((__tmp201737
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__klass))))
                (declare (not safe))
                (make-symbol__0 __tmp201737)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$method-table198111%_
                                                      (let ((__tmp201738
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__method-table))))
                (declare (not safe))
                (make-symbol__0 __tmp201738)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods198113%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%method-calls197631%_)))
                                                     (_%$methods198117%_
                                                      (let ((__tmp201739
                                                             (lambda (_%id198115%_)
                                                               (let ((__tmp201740
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gensym _%id198115%_)))
                         (declare (not safe))
                         (make-symbol__1 '"__" __tmp201740)))))
                (declare (not safe))
                (##map __tmp201739 _%methods198113%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_198126%_
                                                      (let ((__tmp201741
                                                             (lambda (_%g198118198121%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g198119198123%_)
                       (let ()
                         (declare (not safe))
                         (__hash-put!
                          _%method-calls197631%_
                          _%g198118198121%_
                          _%g198119198123%_)))))
                (declare (not safe))
                (##for-each __tmp201741 _%methods198113%_ _%$methods198117%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods-bind198136%_
                                                      (let ((__tmp201742
                                                             (lambda (_%g198128198131%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g198129198133%_)
                       (_%generate-method-bind197541%_
                        _%$klass198109%_
                        _%$method-table198111%_
                        _%g198128198131%_
                        _%g198129198133%_))))
                (declare (not safe))
                (##map __tmp201742 _%methods198113%_ _%$methods198117%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots198138%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%slot-refs197632%_)))
                                                     (_%$slots198142%_
                                                      (let ((__tmp201743
                                                             (lambda (_%id198140%_)
                                                               (let ((__tmp201744
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gensym _%id198140%_)))
                         (declare (not safe))
                         (make-symbol__1 '"__" __tmp201744)))))
                (declare (not safe))
                (##map __tmp201743 _%slots198138%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_198151%_
                                                      (let ((__tmp201745
                                                             (lambda (_%g198143198146%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g198144198148%_)
                       (let ()
                         (declare (not safe))
                         (__hash-put!
                          _%slot-refs197632%_
                          _%g198143198146%_
                          _%g198144198148%_)))))
                (declare (not safe))
                (##for-each __tmp201745 _%slots198138%_ _%$slots198142%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots-bind198160%_
                                                      (let ((__tmp201746
                                                             (lambda (_%g198152198155%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g198153198157%_)
                       (_%generate-slot-bind197542%_
                        _%$klass198109%_
                        _%g198152198155%_
                        _%g198153198157%_))))
                (declare (not safe))
                (##map __tmp201746 _%slots198138%_ _%$slots198142%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-body198166%_
                                                      (map (lambda (_%g198161198163%_)
                                                             (gxc#apply-subst-object-refs__%
                                                              '#f
                                                              _%receiver198095%_
                                                              _%$klass198109%_
                                                              _%method-calls197631%_
                                                              _%slot-refs197632%_
                                                              _%g198161198163%_))
                                                           _%g198021198073%_))
                                                     (_%specializer-impl198168%_
                                                      (let ((__tmp201747
                                                             (cons '%#lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons _%g198023198075%_ _%g198022198074%_)
                                 _%specializer-body198166%_))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp201747 _%stx197539%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl198170%_
                                                      (_%generate-specializer-impl197543%_
                                                       _%$klass198109%_
                                                       _%$method-table198111%_
                                                       _%methods-bind198136%_
                                                       _%slots-bind198160%_
                                                       _%specializer-impl198168%_)))
                                                (let ((__tmp201749
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%g197550197612%_)))
                                                      (__tmp201748
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%specializer-id198107%_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp201749
                                                   '" => "
                                                   __tmp201748))
                                                (_%generate-specializer-def197544%_
                                                 _%g197550197612%_
                                                 _%specializer-id198107%_
                                                 _%specializer-impl198170%_))))))
                                     (_%__kont200516200517%_
                                      (lambda () _%stx197539%_)))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%__stx200512200513%_))
                                     (let ((_%e198024198049%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e
                                               _%__stx200512200513%_))))
                                       (let ((_%tl198026198054%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e198024198049%_)))
                                             (_%hd198025198052%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e198024198049%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl198026198054%_))
                                             (let ((_%e198027198057%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%tl198026198054%_))))
                                               (let ((_%tl198029198062%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e198027198057%_)))
                                                     (_%hd198028198060%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e198027198057%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%hd198028198060%_))
                                                     (let ((_%e198030198065%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%hd198028198060%_))))
                                                       (let ((_%tl198032198070%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e198030198065%_)))
                     (_%hd198031198068%_
                      (let () (declare (not safe)) (##car _%e198030198065%_))))
                 (_%__kont200514200515%_
                  _%tl198029198062%_
                  _%tl198032198070%_
                  _%hd198031198068%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont200516200517%_))))
                                             (_%__kont200516200517%_))))
                                     (_%__kont200516200517%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gxc#case-lambda-expr? _%g197549197611%_))
                                 (let* ((_%g198177198196%_
                                         (lambda (_%g198178198193%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g198178198193%_))))
                                        (_%g198176198492%_
                                         (lambda (_%g198178198199%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g198178198199%_))
                                               (let ((_%e198180198201%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%g198178198199%_))))
                                                 (let ((_%hd198181198204%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e198180198201%_)))
                                                       (_%tl198182198206%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e198180198201%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair/null?
                                                          _%tl198182198206%_))
                                                       (let ((_g201750_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-split-splice _%tl198182198206%_ '0))))
                 (begin
                   (let ((_g201751_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g201750_)
                                (##values-length _g201750_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g201751_ 2)))
                         (error "Context expects 2 values" _g201751_)))
                   (let ((_%target198183198209%_
                          (let ()
                            (declare (not safe))
                            (##values-ref _g201750_ 0)))
                         (_%tl198185198211%_
                          (let ()
                            (declare (not safe))
                            (##values-ref _g201750_ 1))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl198185198211%_))
                         (letrec ((_%loop198186198214%_
                                   (lambda (_%hd198184198217%_
                                            _%clause198190198219%_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd198184198217%_))
                                         (let ((_%e198187198221%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd198184198217%_))))
                                           (let ((_%lp-hd198188198224%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e198187198221%_)))
                                                 (_%lp-tl198189198226%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e198187198221%_))))
                                             (_%loop198186198214%_
                                              _%lp-tl198189198226%_
                                              (cons _%lp-hd198188198224%_
                                                    _%clause198190198219%_))))
                                         (let ((_%clause198191198229%_
                                                (reverse _%clause198190198219%_)))
                                           ((lambda (_%g198179198231%_)
                                              (for-each
                                               (lambda (_%clause198245%_)
                                                 (let* ((_%__stx200538200539%_
                                                         _%clause198245%_)
                                                        (_%g198248198263%_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%__stx200538200539%_)))))
                                                   (let ((_%__kont200540200541%_
                                                          (lambda (_%g198250198291%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g198251198292%_
                           _%g198252198293%_)
                    (let ((_%receiver198312%_
                           (let ((_%$e198309%_
                                  (gxc#apply-extract-receiver
                                   (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f '%#begin))
                                         _%g198250198291%_))))
                             (if _%$e198309%_
                                 _%$e198309%_
                                 _%g198252198293%_))))
                      (for-each
                       (lambda (_%g198313198315%_)
                         (gxc#apply-collect-object-refs__%
                          '#f
                          _%receiver198312%_
                          _%method-calls197631%_
                          _%slot-refs197632%_
                          _%g198313198315%_))
                       _%g198250198291%_))))
                 (_%__kont200542200543%_ (lambda () '#!void)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%__stx200538200539%_))
                                                         (let ((_%e198253198275%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%__stx200538200539%_))))
                   (let ((_%tl198255198280%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e198253198275%_)))
                         (_%hd198254198278%_
                          (let ()
                            (declare (not safe))
                            (##car _%e198253198275%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%hd198254198278%_))
                         (let ((_%e198256198283%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd198254198278%_))))
                           (let ((_%tl198258198288%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e198256198283%_)))
                                 (_%hd198257198286%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e198256198283%_))))
                             (_%__kont200540200541%_
                              _%tl198255198280%_
                              _%tl198258198288%_
                              _%hd198257198286%_)))
                         (_%__kont200542200543%_))))
                 (_%__kont200542200543%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((__tmp201752
                                                      (lambda (_%g198320198323%_
                                                               _%g198321198325%_)
                                                        (cons _%g198320198323%_
                                                              _%g198321198325%_))))
                                                 (declare (not safe))
                                                 (__foldr1
                                                  __tmp201752
                                                  '()
                                                  _%g198179198231%_)))
                                              (if (_%no-specializer?197635%_)
                                                  _%stx197539%_
                                                  (let* ((_%specializer-id198334%_
                                                          (let* ((_%id198328%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp201753
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%g197550197612%_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp201753 '"::specialize")))
                         (_%specializer-id198331%_
                          (let ((__tmp201754
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _%stx197539%_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _%id198328%_
                             __tmp201754))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _%specializer-id198331%_))
                    _%specializer-id198331%_))
                 (_%$klass198336%_
                  (let ((__tmp201755
                         (let () (declare (not safe)) (##gensym '__klass))))
                    (declare (not safe))
                    (make-symbol__0 __tmp201755)))
                 (_%$method-table198338%_
                  (let ((__tmp201756
                         (let ()
                           (declare (not safe))
                           (##gensym '__method-table))))
                    (declare (not safe))
                    (make-symbol__0 __tmp201756)))
                 (_%methods198340%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%method-calls197631%_)))
                 (_%$methods198344%_
                  (let ((__tmp201757
                         (lambda (_%id198342%_)
                           (let ((__tmp201758 (gensym _%id198342%_)))
                             (declare (not safe))
                             (make-symbol__1 '"__" __tmp201758)))))
                    (declare (not safe))
                    (##map __tmp201757 _%methods198340%_)))
                 (_%_198353%_
                  (let ((__tmp201759
                         (lambda (_%g198345198348%_ _%g198346198350%_)
                           (let ()
                             (declare (not safe))
                             (__hash-put!
                              _%method-calls197631%_
                              _%g198345198348%_
                              _%g198346198350%_)))))
                    (declare (not safe))
                    (##for-each
                     __tmp201759
                     _%methods198340%_
                     _%$methods198344%_)))
                 (_%methods-bind198363%_
                  (let ((__tmp201760
                         (lambda (_%g198355198358%_ _%g198356198360%_)
                           (_%generate-method-bind197541%_
                            _%$klass198336%_
                            _%$method-table198338%_
                            _%g198355198358%_
                            _%g198356198360%_))))
                    (declare (not safe))
                    (##map __tmp201760 _%methods198340%_ _%$methods198344%_)))
                 (_%slots198365%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%slot-refs197632%_)))
                 (_%$slots198369%_
                  (let ((__tmp201761
                         (lambda (_%id198367%_)
                           (let ((__tmp201762 (gensym _%id198367%_)))
                             (declare (not safe))
                             (make-symbol__1 '"__" __tmp201762)))))
                    (declare (not safe))
                    (##map __tmp201761 _%slots198365%_)))
                 (_%_198378%_
                  (let ((__tmp201763
                         (lambda (_%g198370198373%_ _%g198371198375%_)
                           (let ()
                             (declare (not safe))
                             (__hash-put!
                              _%slot-refs197632%_
                              _%g198370198373%_
                              _%g198371198375%_)))))
                    (declare (not safe))
                    (##for-each __tmp201763 _%slots198365%_ _%$slots198369%_)))
                 (_%slots-bind198387%_
                  (let ((__tmp201764
                         (lambda (_%g198379198382%_ _%g198380198384%_)
                           (_%generate-slot-bind197542%_
                            _%$klass198336%_
                            _%g198379198382%_
                            _%g198380198384%_))))
                    (declare (not safe))
                    (##map __tmp201764 _%slots198365%_ _%$slots198369%_)))
                 (_%specializer-clauses198485%_
                  (map (lambda (_%clause198389%_)
                         (let* ((_%__stx200558200559%_ _%clause198389%_)
                                (_%g198392198407%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx200558200559%_)))))
                           (let ((_%__kont200560200561%_
                                  (lambda (_%g198394198435%_
                                           _%g198395198436%_
                                           _%g198396198437%_)
                                    (let* ((_%receiver198466%_
                                            (let ((_%$e198463%_
                                                   (gxc#apply-extract-receiver
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#begin))
                                                          _%g198394198435%_))))
                                              (if _%$e198463%_
                                                  _%$e198463%_
                                                  _%g198396198437%_)))
                                           (_%body198472%_
                                            (map (lambda (_%g198467198469%_)
                                                   (gxc#apply-subst-object-refs__%
                                                    '#f
                                                    _%receiver198466%_
                                                    _%$klass198336%_
                                                    _%method-calls197631%_
                                                    _%slot-refs197632%_
                                                    _%g198467198469%_))
                                                 _%g198394198435%_)))
                                      (cons (cons _%g198396198437%_
                                                  _%g198395198436%_)
                                            _%body198472%_))))
                                 (_%__kont200562200563%_
                                  (lambda () _%clause198389%_)))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx200558200559%_))
                                 (let ((_%e198397198419%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx200558200559%_))))
                                   (let ((_%tl198399198424%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e198397198419%_)))
                                         (_%hd198398198422%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e198397198419%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd198398198422%_))
                                         (let ((_%e198400198427%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd198398198422%_))))
                                           (let ((_%tl198402198432%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e198400198427%_)))
                                                 (_%hd198401198430%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e198400198427%_))))
                                             (_%__kont200560200561%_
                                              _%tl198399198424%_
                                              _%tl198402198432%_
                                              _%hd198401198430%_)))
                                         (_%__kont200562200563%_))))
                                 (_%__kont200562200563%_)))))
                       (let ((__tmp201765
                              (lambda (_%g198477198480%_ _%g198478198482%_)
                                (cons _%g198477198480%_ _%g198478198482%_))))
                         (declare (not safe))
                         (__foldr1 __tmp201765 '() _%g198179198231%_))))
                 (_%specializer-impl198487%_
                  (let ((__tmp201766
                         (cons '%#case-lambda _%specializer-clauses198485%_)))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp201766 _%stx197539%_)))
                 (_%specializer-impl198489%_
                  (_%generate-specializer-impl197543%_
                   _%$klass198336%_
                   _%$method-table198338%_
                   _%methods-bind198363%_
                   _%slots-bind198387%_
                   _%specializer-impl198487%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp201768
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%g197550197612%_)))
                                                          (__tmp201767
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%specializer-id198334%_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp201768
                                                       '" => "
                                                       __tmp201767))
                                                    (_%generate-specializer-def197544%_
                                                     _%g197550197612%_
                                                     _%specializer-id198334%_
                                                     _%specializer-impl198489%_))))
                                            _%clause198191198229%_))))))
                           (_%loop198186198214%_ _%target198183198209%_ '()))
                         (_%g198177198196%_ _%g198178198199%_)))))
               (_%g198177198196%_ _%g198178198199%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g198177198196%_
                                                _%g198178198199%_)))))
                                   (_%g198176198492%_ _%g197549197611%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#opt-lambda-expr?
                                        _%g197549197611%_))
                                     (let* ((_%g198496198526%_
                                             (lambda (_%g198497198523%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g198497198523%_))))
                                            (_%g198495199153%_
                                             (lambda (_%g198497198529%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%g198497198529%_))
                                                   (let ((_%e198501198531%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%g198497198529%_))))
                                                     (let ((_%hd198502198534%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e198501198531%_)))
                                                           (_%tl198503198536%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e198501198531%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl198503198536%_))
                                                           (let ((_%e198504198539%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl198503198536%_))))
                     (let ((_%hd198505198542%_
                            (let ()
                              (declare (not safe))
                              (##car _%e198504198539%_)))
                           (_%tl198506198544%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e198504198539%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%hd198505198542%_))
                           (let ((_%e198507198547%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd198505198542%_))))
                             (let ((_%hd198508198550%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e198507198547%_)))
                                   (_%tl198509198552%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e198507198547%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd198508198550%_))
                                   (let ((_%e198510198555%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd198508198550%_))))
                                     (let ((_%hd198511198558%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e198510198555%_)))
                                           (_%tl198512198560%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e198510198555%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%hd198511198558%_))
                                           (let ((_%e198513198563%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%hd198511198558%_))))
                                             (let ((_%hd198514198566%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e198513198563%_)))
                                                   (_%tl198515198568%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e198513198563%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl198515198568%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl198512198560%_))
                                                       (let ((_%e198516198571%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%tl198512198560%_))))
                 (let ((_%hd198517198574%_
                        (let ()
                          (declare (not safe))
                          (##car _%e198516198571%_)))
                       (_%tl198518198576%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e198516198571%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl198518198576%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl198509198552%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl198506198544%_))
                               (let ((_%e198519198579%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%tl198506198544%_))))
                                 (let ((_%hd198520198582%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e198519198579%_)))
                                       (_%tl198521198584%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e198519198579%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%tl198521198584%_))
                                       ((lambda (_%g198498198587%_
                                                 _%g198499198588%_
                                                 _%g198500198589%_)
                                          (let* ((_%g198613198631%_
                                                  (lambda (_%g198614198628%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g198614198628%_))))
                                                 (_%g198612198687%_
                                                  (lambda (_%g198614198634%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%g198614198634%_))
                                                        (let ((_%e198618198636%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%g198614198634%_))))
                  (let ((_%hd198619198639%_
                         (let ()
                           (declare (not safe))
                           (##car _%e198618198636%_)))
                        (_%tl198620198641%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e198618198636%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl198620198641%_))
                        (let ((_%e198621198644%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl198620198641%_))))
                          (let ((_%hd198622198647%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e198621198644%_)))
                                (_%tl198623198649%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e198621198644%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd198622198647%_))
                                (let ((_%e198624198652%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd198622198647%_))))
                                  (let ((_%hd198625198655%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e198624198652%_)))
                                        (_%tl198626198657%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e198624198652%_))))
                                    ((lambda (_%g198615198660%_
                                              _%g198616198661%_
                                              _%g198617198662%_)
                                       (let ((_%receiver198681%_
                                              (let ((_%$e198678%_
                                                     (gxc#apply-extract-receiver
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               '%#begin))
                                                            _%g198615198660%_))))
                                                (if _%$e198678%_
                                                    _%$e198678%_
                                                    _%g198617198662%_))))
                                         (for-each
                                          (lambda (_%g198682198684%_)
                                            (gxc#apply-collect-object-refs__%
                                             '#f
                                             _%receiver198681%_
                                             _%method-calls197631%_
                                             _%slot-refs197632%_
                                             _%g198682198684%_))
                                          _%g198615198660%_)))
                                     _%tl198623198649%_
                                     _%tl198626198657%_
                                     _%hd198625198655%_)))
                                (_%g198613198631%_ _%g198614198634%_))))
                        (_%g198613198631%_ _%g198614198634%_))))
                (_%g198613198631%_ _%g198614198634%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g198612198687%_
                                             _%g198499198588%_))
                                          (let* ((_%g198690198709%_
                                                  (lambda (_%g198691198706%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g198691198706%_))))
                                                 (_%g198689198831%_
                                                  (lambda (_%g198691198712%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%g198691198712%_))
                                                        (let ((_%e198693198714%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%g198691198712%_))))
                  (let ((_%hd198694198717%_
                         (let ()
                           (declare (not safe))
                           (##car _%e198693198714%_)))
                        (_%tl198695198719%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e198693198714%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%tl198695198719%_))
                        (let ((_g201769_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _%tl198695198719%_
                                  '0))))
                          (begin
                            (let ((_g201770_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g201769_)
                                         (##values-length _g201769_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g201770_ 2)))
                                  (error "Context expects 2 values"
                                         _g201770_)))
                            (let ((_%target198696198722%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g201769_ 0)))
                                  (_%tl198698198724%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g201769_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl198698198724%_))
                                  (letrec ((_%loop198699198727%_
                                            (lambda (_%hd198697198730%_
                                                     _%clause198703198732%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd198697198730%_))
                                                  (let ((_%e198700198734%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd198697198730%_))))
                                                    (let ((_%lp-hd198701198737%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e198700198734%_)))
                                                          (_%lp-tl198702198739%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e198700198734%_))))
                                                      (_%loop198699198727%_
                                                       _%lp-tl198702198739%_
                                                       (cons _%lp-hd198701198737%_
                                                             _%clause198703198732%_))))
                                                  (let ((_%clause198704198742%_
                                                         (reverse _%clause198703198732%_)))
                                                    ((lambda (_%g198692198744%_)
                                                       (for-each
                                                        (lambda (_%clause198757%_)
                                                          (let* ((_%g198759198774%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%g198760198771%_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g198760198771%_))))
                         (_%g198758198821%_
                          (lambda (_%g198760198777%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%g198760198777%_))
                                (let ((_%e198764198779%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%g198760198777%_))))
                                  (let ((_%hd198765198782%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e198764198779%_)))
                                        (_%tl198766198784%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e198764198779%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd198765198782%_))
                                        (let ((_%e198767198787%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd198765198782%_))))
                                          (let ((_%hd198768198790%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e198767198787%_)))
                                                (_%tl198769198792%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e198767198787%_))))
                                            ((lambda (_%g198761198795%_
                                                      _%g198762198796%_
                                                      _%g198763198797%_)
                                               (let ((_%receiver198815%_
                                                      (let ((_%$e198812%_
                                                             (gxc#apply-extract-receiver
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f '%#begin))
                            _%g198761198795%_))))
                (if _%$e198812%_ _%$e198812%_ _%g198763198797%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (for-each
                                                  (lambda (_%g198816198818%_)
                                                    (gxc#apply-collect-object-refs__%
                                                     '#f
                                                     _%receiver198815%_
                                                     _%method-calls197631%_
                                                     _%slot-refs197632%_
                                                     _%g198816198818%_))
                                                  _%g198761198795%_)))
                                             _%tl198766198784%_
                                             _%tl198769198792%_
                                             _%hd198768198790%_)))
                                        (_%g198759198774%_
                                         _%g198760198777%_))))
                                (_%g198759198774%_ _%g198760198777%_)))))
                    (_%g198758198821%_ _%clause198757%_)))
                (let ((__tmp201771
                       (lambda (_%g198823198826%_ _%g198824198828%_)
                         (cons _%g198823198826%_ _%g198824198828%_))))
                  (declare (not safe))
                  (__foldr1 __tmp201771 '() _%g198692198744%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%clause198704198742%_))))))
                                    (_%loop198699198727%_
                                     _%target198696198722%_
                                     '()))
                                  (_%g198690198709%_ _%g198691198712%_)))))
                        (_%g198690198709%_ _%g198691198712%_))))
                (_%g198690198709%_ _%g198691198712%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g198689198831%_
                                             _%g198498198587%_))
                                          (if (_%no-specializer?197635%_)
                                              _%stx197539%_
                                              (let* ((_%specializer-id198840%_
                                                      (let* ((_%id198834%_
                                                              (let ((__tmp201772
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g197550197612%_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp201772 '"::specialize")))
                     (_%specializer-id198837%_
                      (let ((__tmp201773
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _%stx197539%_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _%id198834%_ __tmp201773))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _%specializer-id198837%_))
                _%specializer-id198837%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$klass198842%_
                                                      (let ((__tmp201774
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__klass))))
                (declare (not safe))
                (make-symbol__0 __tmp201774)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$method-table198844%_
                                                      (let ((__tmp201775
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__method-table))))
                (declare (not safe))
                (make-symbol__0 __tmp201775)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods198846%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%method-calls197631%_)))
                                                     (_%$methods198850%_
                                                      (let ((__tmp201776
                                                             (lambda (_%id198848%_)
                                                               (let ((__tmp201777
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gensym _%id198848%_)))
                         (declare (not safe))
                         (make-symbol__1 '"__" __tmp201777)))))
                (declare (not safe))
                (##map __tmp201776 _%methods198846%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_198859%_
                                                      (let ((__tmp201778
                                                             (lambda (_%g198851198854%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g198852198856%_)
                       (let ()
                         (declare (not safe))
                         (__hash-put!
                          _%method-calls197631%_
                          _%g198851198854%_
                          _%g198852198856%_)))))
                (declare (not safe))
                (##for-each __tmp201778 _%methods198846%_ _%$methods198850%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods-bind198869%_
                                                      (let ((__tmp201779
                                                             (lambda (_%g198861198864%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g198862198866%_)
                       (_%generate-method-bind197541%_
                        _%$klass198842%_
                        _%$method-table198844%_
                        _%g198861198864%_
                        _%g198862198866%_))))
                (declare (not safe))
                (##map __tmp201779 _%methods198846%_ _%$methods198850%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots198871%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%slot-refs197632%_)))
                                                     (_%$slots198875%_
                                                      (let ((__tmp201780
                                                             (lambda (_%id198873%_)
                                                               (let ((__tmp201781
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gensym _%id198873%_)))
                         (declare (not safe))
                         (make-symbol__1 '"__" __tmp201781)))))
                (declare (not safe))
                (##map __tmp201780 _%slots198871%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_198884%_
                                                      (let ((__tmp201782
                                                             (lambda (_%g198876198879%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g198877198881%_)
                       (let ()
                         (declare (not safe))
                         (__hash-put!
                          _%slot-refs197632%_
                          _%g198876198879%_
                          _%g198877198881%_)))))
                (declare (not safe))
                (##for-each __tmp201782 _%slots198871%_ _%$slots198875%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots-bind198893%_
                                                      (let ((__tmp201783
                                                             (lambda (_%g198885198888%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g198886198890%_)
                       (_%generate-slot-bind197542%_
                        _%$klass198842%_
                        _%g198885198888%_
                        _%g198886198890%_))))
                (declare (not safe))
                (##map __tmp201783 _%slots198871%_ _%$slots198875%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-lambda-expr198985%_
                                                      (let* ((_%g198895198913%_
                                                              (lambda (_%g198896198910%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g198896198910%_))))
                     (_%g198894198982%_
                      (lambda (_%g198896198916%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g198896198916%_))
                            (let ((_%e198900198918%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g198896198916%_))))
                              (let ((_%hd198901198921%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e198900198918%_)))
                                    (_%tl198902198923%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e198900198918%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl198902198923%_))
                                    (let ((_%e198903198926%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl198902198923%_))))
                                      (let ((_%hd198904198929%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e198903198926%_)))
                                            (_%tl198905198931%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e198903198926%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd198904198929%_))
                                            (let ((_%e198906198934%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd198904198929%_))))
                                              (let ((_%hd198907198937%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e198906198934%_)))
                                                    (_%tl198908198939%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e198906198934%_))))
                                                ((lambda (_%g198897198942%_
                                                          _%g198898198943%_
                                                          _%g198899198944%_)
                                                   (let* ((_%receiver198973%_
                                                           (let ((_%$e198970%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gxc#apply-extract-receiver
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '%#begin))
                                 _%g198897198942%_))))
                     (if _%$e198970%_ _%$e198970%_ _%g198899198944%_)))
                  (_%body198979%_
                   (map (lambda (_%g198974198976%_)
                          (gxc#apply-subst-object-refs__%
                           '#f
                           _%receiver198973%_
                           _%$klass198842%_
                           _%method-calls197631%_
                           _%slot-refs197632%_
                           _%g198974198976%_))
                        _%g198897198942%_))
                  (__tmp201784
                   (cons '%#lambda
                         (cons (cons _%g198899198944%_ _%g198898198943%_)
                               _%body198979%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp201784
                                                      _%g198499198588%_)))
                                                 _%tl198905198931%_
                                                 _%tl198908198939%_
                                                 _%hd198907198937%_)))
                                            (_%g198895198913%_
                                             _%g198896198916%_))))
                                    (_%g198895198913%_ _%g198896198916%_))))
                            (_%g198895198913%_ _%g198896198916%_)))))
                (_%g198894198982%_ _%g198499198588%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-case-lambda-expr199146%_
                                                      (let* ((_%g198987199006%_
                                                              (lambda (_%g198988199003%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g198988199003%_))))
                     (_%g198986199143%_
                      (lambda (_%g198988199009%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g198988199009%_))
                            (let ((_%e198990199011%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g198988199009%_))))
                              (let ((_%hd198991199014%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e198990199011%_)))
                                    (_%tl198992199016%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e198990199011%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl198992199016%_))
                                    (let ((_g201785_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _%tl198992199016%_
                                              '0))))
                                      (begin
                                        (let ((_g201786_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g201785_)
                                                     (##values-length
                                                      _g201785_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g201786_ 2)))
                                              (error "Context expects 2 values"
                                                     _g201786_)))
                                        (let ((_%target198993199019%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g201785_ 0)))
                                              (_%tl198995199021%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g201785_ 1))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl198995199021%_))
                                              (letrec ((_%loop198996199024%_
                                                        (lambda (_%hd198994199027%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%clause199000199029%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd198994199027%_))
                      (let ((_%e198997199031%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd198994199027%_))))
                        (let ((_%lp-hd198998199034%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e198997199031%_)))
                              (_%lp-tl198999199036%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e198997199031%_))))
                          (_%loop198996199024%_
                           _%lp-tl198999199036%_
                           (cons _%lp-hd198998199034%_
                                 _%clause199000199029%_))))
                      (let ((_%clause199001199039%_
                             (reverse _%clause199000199029%_)))
                        ((lambda (_%g198989199041%_)
                           (let* ((_%clauses199141%_
                                   (map (lambda (_%clause199055%_)
                                          (let* ((_%__stx200578200579%_
                                                  _%clause199055%_)
                                                 (_%g199058199073%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx200578200579%_)))))
                                            (let ((_%__kont200580200581%_
                                                   (lambda (_%g199060199101%_
                                                            _%g199061199102%_
                                                            _%g199062199103%_)
                                                     (let* ((_%receiver199122%_
                                                             (let ((_%$e199119%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gxc#apply-extract-receiver
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f '%#begin))
                                   _%g199060199101%_))))
                       (if _%$e199119%_ _%$e199119%_ _%g199062199103%_)))
                    (_%body199128%_
                     (map (lambda (_%g199123199125%_)
                            (gxc#apply-subst-object-refs__%
                             '#f
                             _%receiver199122%_
                             _%$klass198842%_
                             _%method-calls197631%_
                             _%slot-refs197632%_
                             _%g199123199125%_))
                          _%g199060199101%_)))
               (cons (cons _%g199062199103%_ _%g199061199102%_)
                     _%body199128%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont200582200583%_
                                                   (lambda ()
                                                     _%clause199055%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%__stx200578200579%_))
                                                  (let ((_%e199063199085%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%__stx200578200579%_))))
                                                    (let ((_%tl199065199090%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e199063199085%_)))
                                                          (_%hd199064199088%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e199063199085%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd199064199088%_))
                                                          (let ((_%e199066199093%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd199064199088%_))))
                    (let ((_%tl199068199098%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e199066199093%_)))
                          (_%hd199067199096%_
                           (let ()
                             (declare (not safe))
                             (##car _%e199066199093%_))))
                      (_%__kont200580200581%_
                       _%tl199065199090%_
                       _%tl199068199098%_
                       _%hd199067199096%_)))
                  (_%__kont200582200583%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont200582200583%_)))))
                                        (let ((__tmp201787
                                               (lambda (_%g199133199136%_
                                                        _%g199134199138%_)
                                                 (cons _%g199133199136%_
                                                       _%g199134199138%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp201787
                                           '()
                                           _%g198989199041%_))))
                                  (__tmp201788
                                   (cons '%#case-lambda _%clauses199141%_)))
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp201788
                              _%g198498198587%_)))
                         _%clause199001199039%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop198996199024%_
                                                 _%target198993199019%_
                                                 '()))
                                              (_%g198987199006%_
                                               _%g198988199009%_)))))
                                    (_%g198987199006%_ _%g198988199009%_))))
                            (_%g198987199006%_ _%g198988199009%_)))))
                (_%g198986199143%_ _%g198498198587%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl199148%_
                                                      (let ((__tmp201789
                                                             (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (cons (cons _%g198500198589%_ '())
                                             (cons _%specializer-lambda-expr198985%_
                                                   '()))
                                       '())
                                 (cons _%specializer-case-lambda-expr199146%_
                                       '())))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp201789 _%stx197539%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl199150%_
                                                      (_%generate-specializer-impl197543%_
                                                       _%$klass198842%_
                                                       _%$method-table198844%_
                                                       _%methods-bind198869%_
                                                       _%slots-bind198893%_
                                                       _%specializer-impl199148%_)))
                                                (let ((__tmp201791
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%g197550197612%_)))
                                                      (__tmp201790
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%specializer-id198840%_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp201791
                                                   '" => "
                                                   __tmp201790))
                                                (_%generate-specializer-def197544%_
                                                 _%g197550197612%_
                                                 _%specializer-id198840%_
                                                 _%specializer-impl199150%_))))
                                        _%hd198520198582%_
                                        _%hd198517198574%_
                                        _%hd198514198566%_)
                                       (_%g198496198526%_ _%g198497198529%_))))
                               (_%g198496198526%_ _%g198497198529%_))
                           (_%g198496198526%_ _%g198497198529%_))
                       (_%g198496198526%_ _%g198497198529%_))))
               (_%g198496198526%_ _%g198497198529%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g198496198526%_
                                                    _%g198497198529%_))))
                                           (_%g198496198526%_
                                            _%g198497198529%_))))
                                   (_%g198496198526%_ _%g198497198529%_))))
                           (_%g198496198526%_ _%g198497198529%_))))
                   (_%g198496198526%_ _%g198497198529%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g198496198526%_
                                                    _%g198497198529%_)))))
                                       (_%g198495199153%_ _%g197549197611%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#kw-lambda-expr?
                                            _%g197549197611%_))
                                         (let* ((_%g199157199210%_
                                                 (lambda (_%g199158199207%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g199158199207%_))))
                                                (_%g199156200375%_
                                                 (lambda (_%g199158199213%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%g199158199213%_))
                                                       (let ((_%e199164199215%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%g199158199213%_))))
                 (let ((_%hd199165199218%_
                        (let ()
                          (declare (not safe))
                          (##car _%e199164199215%_)))
                       (_%tl199166199220%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e199164199215%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#identifier? _%hd199165199218%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-eq? '%#let-values _%hd199165199218%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl199166199220%_))
                               (let ((_%e199167199223%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%tl199166199220%_))))
                                 (let ((_%hd199168199226%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e199167199223%_)))
                                       (_%tl199169199228%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e199167199223%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd199168199226%_))
                                       (let ((_%e199170199231%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd199168199226%_))))
                                         (let ((_%hd199171199234%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e199170199231%_)))
                                               (_%tl199172199236%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e199170199231%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%hd199171199234%_))
                                               (let ((_%e199173199239%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%hd199171199234%_))))
                                                 (let ((_%hd199174199242%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e199173199239%_)))
                                                       (_%tl199175199244%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e199173199239%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%hd199174199242%_))
                                                       (let ((_%e199176199247%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%hd199174199242%_))))
                 (let ((_%hd199177199250%_
                        (let ()
                          (declare (not safe))
                          (##car _%e199176199247%_)))
                       (_%tl199178199252%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e199176199247%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl199178199252%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%tl199175199244%_))
                           (let ((_%e199179199255%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%tl199175199244%_))))
                             (let ((_%hd199180199258%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e199179199255%_)))
                                   (_%tl199181199260%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e199179199255%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd199180199258%_))
                                   (let ((_%e199182199263%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd199180199258%_))))
                                     (let ((_%hd199183199266%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e199182199263%_)))
                                           (_%tl199184199268%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e199182199263%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#identifier?
                                              _%hd199183199266%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-eq?
                                                  '%#let-values
                                                  _%hd199183199266%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%tl199184199268%_))
                                                   (let ((_%e199185199271%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%tl199184199268%_))))
                                                     (let ((_%hd199186199274%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e199185199271%_)))
                                                           (_%tl199187199276%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e199185199271%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%hd199186199274%_))
                                                           (let ((_%e199188199279%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%hd199186199274%_))))
                     (let ((_%hd199189199282%_
                            (let ()
                              (declare (not safe))
                              (##car _%e199188199279%_)))
                           (_%tl199190199284%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e199188199279%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%hd199189199282%_))
                           (let ((_%e199191199287%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd199189199282%_))))
                             (let ((_%hd199192199290%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e199191199287%_)))
                                   (_%tl199193199292%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e199191199287%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd199192199290%_))
                                   (let ((_%e199194199295%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd199192199290%_))))
                                     (let ((_%hd199195199298%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e199194199295%_)))
                                           (_%tl199196199300%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e199194199295%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl199196199300%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl199193199292%_))
                                               (let ((_%e199197199303%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%tl199193199292%_))))
                                                 (let ((_%hd199198199306%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e199197199303%_)))
                                                       (_%tl199199199308%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e199197199303%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl199199199308%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _%tl199190199284%_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _%tl199187199276%_))
                       (let ((_%e199200199311%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%tl199187199276%_))))
                         (let ((_%hd199201199314%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e199200199311%_)))
                               (_%tl199202199316%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e199200199311%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%tl199202199316%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl199181199260%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%tl199172199236%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%tl199169199228%_))
                                           (let ((_%e199203199319%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%tl199169199228%_))))
                                             (let ((_%hd199204199322%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e199203199319%_)))
                                                   (_%tl199205199324%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e199203199319%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl199205199324%_))
                                                   ((lambda (_%g199159199327%_
                                                             _%g199160199328%_
                                                             _%g199161199329%_
                                                             _%g199162199330%_
                                                             _%g199163199331%_)
                                                      (let* ((_%g199371199433%_
                                                              (lambda (_%g199372199430%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g199372199430%_))))
                     (_%g199370200372%_
                      (lambda (_%g199372199436%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g199372199436%_))
                            (let ((_%e199378199438%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g199372199436%_))))
                              (let ((_%hd199379199441%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e199378199438%_)))
                                    (_%tl199380199443%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e199378199438%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd199379199441%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _%hd199379199441%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl199380199443%_))
                                            (let ((_%e199381199446%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl199380199443%_))))
                                              (let ((_%hd199382199449%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e199381199446%_)))
                                                    (_%tl199383199451%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e199381199446%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl199383199451%_))
                                                    (let ((_%e199384199454%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl199383199451%_))))
                                                      (let ((_%hd199385199457%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e199384199454%_)))
                    (_%tl199386199459%_
                     (let () (declare (not safe)) (##cdr _%e199384199454%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%hd199385199457%_))
                    (let ((_%e199387199462%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd199385199457%_))))
                      (let ((_%hd199388199465%_
                             (let ()
                               (declare (not safe))
                               (##car _%e199387199462%_)))
                            (_%tl199389199467%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e199387199462%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%hd199388199465%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#call _%hd199388199465%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl199389199467%_))
                                    (let ((_%e199390199470%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl199389199467%_))))
                                      (let ((_%hd199391199473%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e199390199470%_)))
                                            (_%tl199392199475%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e199390199470%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd199391199473%_))
                                            (let ((_%e199393199478%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd199391199473%_))))
                                              (let ((_%hd199394199481%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e199393199478%_)))
                                                    (_%tl199395199483%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e199393199478%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd199394199481%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd199394199481%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl199395199483%_))
                                                            (let ((_%e199396199486%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl199395199483%_))))
                      (let ((_%hd199397199489%_
                             (let ()
                               (declare (not safe))
                               (##car _%e199396199486%_)))
                            (_%tl199398199491%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e199396199486%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl199398199491%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl199392199475%_))
                                (let ((_%e199399199494%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl199392199475%_))))
                                  (let ((_%hd199400199497%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e199399199494%_)))
                                        (_%tl199401199499%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e199399199494%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd199400199497%_))
                                        (let ((_%e199402199502%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd199400199497%_))))
                                          (let ((_%hd199403199505%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e199402199502%_)))
                                                (_%tl199404199507%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e199402199502%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _%hd199403199505%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _%hd199403199505%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl199404199507%_))
                                                        (let ((_%e199405199510%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl199404199507%_))))
                  (let ((_%hd199406199513%_
                         (let ()
                           (declare (not safe))
                           (##car _%e199405199510%_)))
                        (_%tl199407199515%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e199405199510%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl199407199515%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl199401199499%_))
                            (let ((_%e199408199518%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl199401199499%_))))
                              (let ((_%hd199409199521%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e199408199518%_)))
                                    (_%tl199410199523%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e199408199518%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd199409199521%_))
                                    (let ((_%e199411199526%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd199409199521%_))))
                                      (let ((_%hd199412199529%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e199411199526%_)))
                                            (_%tl199413199531%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e199411199526%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _%hd199412199529%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _%hd199412199529%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl199413199531%_))
                                                    (let ((_%e199414199534%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl199413199531%_))))
                                                      (let ((_%hd199415199537%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e199414199534%_)))
                    (_%tl199416199539%_
                     (let () (declare (not safe)) (##cdr _%e199414199534%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl199416199539%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%tl199410199523%_))
                        (if (let ((__tmp201792
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-length _%tl199410199523%_))))
                              (declare (not safe))
                              (##fx>= __tmp201792 '1))
                            (let ((_g201793_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _%tl199410199523%_
                                      '1))))
                              (begin
                                (let ((_g201794_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g201793_)
                                             (##values-length _g201793_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g201794_ 2)))
                                      (error "Context expects 2 values"
                                             _g201794_)))
                                (let ((_%target199417199542%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g201793_ 0)))
                                      (_%tl199419199544%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g201793_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl199419199544%_))
                                      (let ((_%e199426199547%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl199419199544%_))))
                                        (let ((_%hd199427199550%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e199426199547%_)))
                                              (_%tl199428199552%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e199426199547%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl199428199552%_))
                                              (letrec ((_%loop199420199555%_
                                                        (lambda (_%hd199418199558%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%kw-ref199424199560%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd199418199558%_))
                      (let ((_%e199421199562%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd199418199558%_))))
                        (let ((_%lp-hd199422199565%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e199421199562%_)))
                              (_%lp-tl199423199567%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e199421199562%_))))
                          (_%loop199420199555%_
                           _%lp-tl199423199567%_
                           (cons _%lp-hd199422199565%_
                                 _%kw-ref199424199560%_))))
                      (let ((_%kw-ref199425199570%_
                             (reverse _%kw-ref199424199560%_)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl199386199459%_))
                            ((lambda (_%g199373199572%_
                                      _%g199374199573%_
                                      _%g199375199574%_
                                      _%g199376199575%_
                                      _%g199377199576%_)
                               (let* ((_%kw-count199627%_
                                       (length (let ((__tmp201795
                                                      (lambda (_%g199619199622%_
                                                               _%g199620199624%_)
                                                        (cons _%g199619199622%_
                                                              _%g199620199624%_))))
                                                 (declare (not safe))
                                                 (__foldr1
                                                  __tmp201795
                                                  '()
                                                  _%g199374199573%_))))
                                      (_%self-index199629%_
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _%kw-count199627%_ '1))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#lambda-expr? _%g199161199329%_))
                                     (let* ((_%g199633199647%_
                                             (lambda (_%g199634199644%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g199634199644%_))))
                                            (_%g199632199770%_
                                             (lambda (_%g199634199650%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%g199634199650%_))
                                                   (let ((_%e199637199652%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%g199634199650%_))))
                                                     (let ((_%hd199638199655%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e199637199652%_)))
                                                           (_%tl199639199657%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e199637199652%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl199639199657%_))
                                                           (let ((_%e199640199660%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl199639199657%_))))
                     (let ((_%hd199641199663%_
                            (let ()
                              (declare (not safe))
                              (##car _%e199640199660%_)))
                           (_%tl199642199665%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e199640199660%_))))
                       ((lambda (_%g199635199668%_ _%g199636199669%_)
                          (let* ((_%self199686%_
                                  (list-ref
                                   _%g199636199669%_
                                   _%self-index199629%_))
                                 (_%receiver199691%_
                                  (let ((_%$e199688%_
                                         (gxc#apply-extract-receiver
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   '%#begin))
                                                _%g199635199668%_))))
                                    (if _%$e199688%_
                                        _%$e199688%_
                                        _%self199686%_))))
                            (for-each
                             (lambda (_%g199693199695%_)
                               (gxc#apply-collect-object-refs__%
                                '#f
                                _%receiver199691%_
                                _%method-calls197631%_
                                _%slot-refs197632%_
                                _%g199693199695%_))
                             _%g199635199668%_)
                            (if (_%no-specializer?197635%_)
                                _%stx197539%_
                                (let* ((_%specializer-id199704%_
                                        (let* ((_%id199698%_
                                                (let ((__tmp201796
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%g197550197612%_))))
                                                  (declare (not safe))
                                                  (make-symbol__1
                                                   __tmp201796
                                                   '"::specialize")))
                                               (_%specializer-id199701%_
                                                (let ((__tmp201797
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-source
                                                          _%stx197539%_))))
                                                  (declare (not safe))
                                                  (gx#core-quote-syntax__1
                                                   _%id199698%_
                                                   __tmp201797))))
                                          (let ()
                                            (declare (not safe))
                                            (gx#core-bind-runtime!__0
                                             _%specializer-id199701%_))
                                          _%specializer-id199701%_))
                                       (_%$klass199706%_
                                        (let ((__tmp201798
                                               (let ()
                                                 (declare (not safe))
                                                 (##gensym '__klass))))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp201798)))
                                       (_%$method-table199708%_
                                        (let ((__tmp201799
                                               (let ()
                                                 (declare (not safe))
                                                 (##gensym '__method-table))))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp201799)))
                                       (_%methods199710%_
                                        (let ()
                                          (declare (not safe))
                                          (__hash-keys
                                           _%method-calls197631%_)))
                                       (_%$methods199714%_
                                        (let ((__tmp201800
                                               (lambda (_%id199712%_)
                                                 (let ((__tmp201801
                                                        (gensym _%id199712%_)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    '"__"
                                                    __tmp201801)))))
                                          (declare (not safe))
                                          (##map __tmp201800
                                                 _%methods199710%_)))
                                       (_%_199723%_
                                        (let ((__tmp201802
                                               (lambda (_%g199715199718%_
                                                        _%g199716199720%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (__hash-put!
                                                    _%method-calls197631%_
                                                    _%g199715199718%_
                                                    _%g199716199720%_)))))
                                          (declare (not safe))
                                          (##for-each
                                           __tmp201802
                                           _%methods199710%_
                                           _%$methods199714%_)))
                                       (_%methods-bind199733%_
                                        (let ((__tmp201803
                                               (lambda (_%g199725199728%_
                                                        _%g199726199730%_)
                                                 (_%generate-method-bind197541%_
                                                  _%$klass199706%_
                                                  _%$method-table199708%_
                                                  _%g199725199728%_
                                                  _%g199726199730%_))))
                                          (declare (not safe))
                                          (##map __tmp201803
                                                 _%methods199710%_
                                                 _%$methods199714%_)))
                                       (_%slots199735%_
                                        (let ()
                                          (declare (not safe))
                                          (__hash-keys _%slot-refs197632%_)))
                                       (_%$slots199739%_
                                        (let ((__tmp201804
                                               (lambda (_%id199737%_)
                                                 (let ((__tmp201805
                                                        (gensym _%id199737%_)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    '"__"
                                                    __tmp201805)))))
                                          (declare (not safe))
                                          (##map __tmp201804 _%slots199735%_)))
                                       (_%_199748%_
                                        (let ((__tmp201806
                                               (lambda (_%g199740199743%_
                                                        _%g199741199745%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (__hash-put!
                                                    _%slot-refs197632%_
                                                    _%g199740199743%_
                                                    _%g199741199745%_)))))
                                          (declare (not safe))
                                          (##for-each
                                           __tmp201806
                                           _%slots199735%_
                                           _%$slots199739%_)))
                                       (_%slots-bind199757%_
                                        (let ((__tmp201807
                                               (lambda (_%g199749199752%_
                                                        _%g199750199754%_)
                                                 (_%generate-slot-bind197542%_
                                                  _%$klass199706%_
                                                  _%g199749199752%_
                                                  _%g199750199754%_))))
                                          (declare (not safe))
                                          (##map __tmp201807
                                                 _%slots199735%_
                                                 _%$slots199739%_)))
                                       (_%specializer-impl199765%_
                                        (let* ((_%specializer-body199763%_
                                                (map (lambda (_%g199758199760%_)
                                                       (gxc#apply-subst-object-refs__%
                                                        '#f
                                                        _%receiver199691%_
                                                        _%$klass199706%_
                                                        _%method-calls197631%_
                                                        _%slot-refs197632%_
                                                        _%g199758199760%_))
                                                     _%g199635199668%_))
                                               (__tmp201808
                                                (cons '%#let-values
                                                      (cons (cons (cons (cons _%g199163199331%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      '())
                                (cons (cons '%#let-values
                                            (cons (cons (cons (cons _%g199162199330%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())
                      (cons (let ((__tmp201809
                                   (cons '%#lambda
                                         (cons _%g199636199669%_
                                               _%specializer-body199763%_))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp201809
                               _%g199161199329%_))
                            '()))
                '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons _%g199160199328%_
                                                        '())))
                                      '()))
                          '())
                    (cons _%g199159199327%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp201808
                                           _%stx197539%_)))
                                       (_%specializer-impl199767%_
                                        (_%generate-specializer-impl197543%_
                                         _%$klass199706%_
                                         _%$method-table199708%_
                                         _%methods-bind199733%_
                                         _%slots-bind199757%_
                                         _%specializer-impl199765%_)))
                                  (let ((__tmp201811
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%g197550197612%_)))
                                        (__tmp201810
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e
                                            _%specializer-id199704%_))))
                                    (declare (not safe))
                                    (gxc#verbose
                                     '"generate method specializer "
                                     __tmp201811
                                     '" => "
                                     __tmp201810))
                                  (_%generate-specializer-def197544%_
                                   _%g197550197612%_
                                   _%specializer-id199704%_
                                   _%specializer-impl199767%_)))))
                        _%tl199642199665%_
                        _%hd199641199663%_)))
                   (_%g199633199647%_ _%g199634199650%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g199633199647%_
                                                    _%g199634199650%_)))))
                                       (_%g199632199770%_ _%g199161199329%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#opt-lambda-expr?
                                            _%g199161199329%_))
                                         (let* ((_%g199774199804%_
                                                 (lambda (_%g199775199801%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g199775199801%_))))
                                                (_%g199773200368%_
                                                 (lambda (_%g199775199807%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%g199775199807%_))
                                                       (let ((_%e199779199809%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%g199775199807%_))))
                 (let ((_%hd199780199812%_
                        (let ()
                          (declare (not safe))
                          (##car _%e199779199809%_)))
                       (_%tl199781199814%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e199779199809%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%tl199781199814%_))
                       (let ((_%e199782199817%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%tl199781199814%_))))
                         (let ((_%hd199783199820%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e199782199817%_)))
                               (_%tl199784199822%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e199782199817%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%hd199783199820%_))
                               (let ((_%e199785199825%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%hd199783199820%_))))
                                 (let ((_%hd199786199828%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e199785199825%_)))
                                       (_%tl199787199830%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e199785199825%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd199786199828%_))
                                       (let ((_%e199788199833%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd199786199828%_))))
                                         (let ((_%hd199789199836%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e199788199833%_)))
                                               (_%tl199790199838%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e199788199833%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%hd199789199836%_))
                                               (let ((_%e199791199841%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%hd199789199836%_))))
                                                 (let ((_%hd199792199844%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e199791199841%_)))
                                                       (_%tl199793199846%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e199791199841%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl199793199846%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl199790199838%_))
                                                           (let ((_%e199794199849%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl199790199838%_))))
                     (let ((_%hd199795199852%_
                            (let ()
                              (declare (not safe))
                              (##car _%e199794199849%_)))
                           (_%tl199796199854%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e199794199849%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl199796199854%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%tl199787199830%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%tl199784199822%_))
                                   (let ((_%e199797199857%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%tl199784199822%_))))
                                     (let ((_%hd199798199860%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e199797199857%_)))
                                           (_%tl199799199862%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e199797199857%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl199799199862%_))
                                           ((lambda (_%g199776199865%_
                                                     _%g199777199866%_
                                                     _%g199778199867%_)
                                              (let* ((_%g199891199905%_
                                                      (lambda (_%g199892199902%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g199892199902%_))))
                                                     (_%g199890199952%_
                                                      (lambda (_%g199892199908%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g199892199908%_))
                                                            (let ((_%e199895199910%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%g199892199908%_))))
                      (let ((_%hd199896199913%_
                             (let ()
                               (declare (not safe))
                               (##car _%e199895199910%_)))
                            (_%tl199897199915%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e199895199910%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl199897199915%_))
                            (let ((_%e199898199918%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl199897199915%_))))
                              (let ((_%hd199899199921%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e199898199918%_)))
                                    (_%tl199900199923%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e199898199918%_))))
                                ((lambda (_%g199893199926%_ _%g199894199927%_)
                                   (let* ((_%self199940%_
                                           (list-ref
                                            _%g199894199927%_
                                            _%self-index199629%_))
                                          (_%receiver199945%_
                                           (let ((_%$e199942%_
                                                  (gxc#apply-extract-receiver
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gx#datum->syntax__0
                                                            '#f
                                                            '%#begin))
                                                         _%g199893199926%_))))
                                             (if _%$e199942%_
                                                 _%$e199942%_
                                                 _%self199940%_))))
                                     (for-each
                                      (lambda (_%g199947199949%_)
                                        (gxc#apply-collect-object-refs__%
                                         '#f
                                         _%receiver199945%_
                                         _%method-calls197631%_
                                         _%slot-refs197632%_
                                         _%g199947199949%_))
                                      _%g199893199926%_)))
                                 _%tl199900199923%_
                                 _%hd199899199921%_)))
                            (_%g199891199905%_ _%g199892199908%_))))
                    (_%g199891199905%_ _%g199892199908%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g199890199952%_
                                                 _%g199777199866%_))
                                              (let* ((_%g199955199974%_
                                                      (lambda (_%g199956199971%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g199956199971%_))))
                                                     (_%g199954200083%_
                                                      (lambda (_%g199956199977%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g199956199977%_))
                                                            (let ((_%e199958199979%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%g199956199977%_))))
                      (let ((_%hd199959199982%_
                             (let ()
                               (declare (not safe))
                               (##car _%e199958199979%_)))
                            (_%tl199960199984%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e199958199979%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _%tl199960199984%_))
                            (let ((_g201812_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _%tl199960199984%_
                                      '0))))
                              (begin
                                (let ((_g201813_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g201812_)
                                             (##values-length _g201812_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g201813_ 2)))
                                      (error "Context expects 2 values"
                                             _g201813_)))
                                (let ((_%target199961199987%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g201812_ 0)))
                                      (_%tl199963199989%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g201812_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl199963199989%_))
                                      (letrec ((_%loop199964199992%_
                                                (lambda (_%hd199962199995%_
                                                         _%clause199968199997%_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%hd199962199995%_))
                                                      (let ((_%e199965199999%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd199962199995%_))))
                (let ((_%lp-hd199966200002%_
                       (let () (declare (not safe)) (##car _%e199965199999%_)))
                      (_%lp-tl199967200004%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e199965199999%_))))
                  (_%loop199964199992%_
                   _%lp-tl199967200004%_
                   (cons _%lp-hd199966200002%_ _%clause199968199997%_))))
              (let ((_%clause199969200007%_ (reverse _%clause199968199997%_)))
                ((lambda (_%g199957200009%_)
                   (for-each
                    (lambda (_%clause200022%_)
                      (let* ((_%g200024200035%_
                              (lambda (_%g200025200032%_)
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g200025200032%_))))
                             (_%g200023200073%_
                              (lambda (_%g200025200038%_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%g200025200038%_))
                                    (let ((_%e200028200040%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%g200025200038%_))))
                                      (let ((_%hd200029200043%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e200028200040%_)))
                                            (_%tl200030200045%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e200028200040%_))))
                                        ((lambda (_%g200026200048%_
                                                  _%g200027200049%_)
                                           (let* ((_%self200061%_
                                                   (list-ref
                                                    _%g200027200049%_
                                                    _%self-index199629%_))
                                                  (_%receiver200066%_
                                                   (let ((_%$e200063%_
                                                          (gxc#apply-extract-receiver
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '%#begin))
                         _%g200026200048%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _%$e200063%_
                                                         _%$e200063%_
                                                         _%self200061%_))))
                                             (for-each
                                              (lambda (_%g200068200070%_)
                                                (gxc#apply-collect-object-refs__%
                                                 '#f
                                                 _%receiver200066%_
                                                 _%method-calls197631%_
                                                 _%slot-refs197632%_
                                                 _%g200068200070%_))
                                              _%g200026200048%_)))
                                         _%tl200030200045%_
                                         _%hd200029200043%_)))
                                    (_%g200024200035%_ _%g200025200038%_)))))
                        (_%g200023200073%_ _%clause200022%_)))
                    (let ((__tmp201814
                           (lambda (_%g200075200078%_ _%g200076200080%_)
                             (cons _%g200075200078%_ _%g200076200080%_))))
                      (declare (not safe))
                      (__foldr1 __tmp201814 '() _%g199957200009%_))))
                 _%clause199969200007%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_%loop199964199992%_
                                         _%target199961199987%_
                                         '()))
                                      (_%g199955199974%_ _%g199956199977%_)))))
                            (_%g199955199974%_ _%g199956199977%_))))
                    (_%g199955199974%_ _%g199956199977%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g199954200083%_
                                                 _%g199776199865%_))
                                              (if (_%no-specializer?197635%_)
                                                  _%stx197539%_
                                                  (let* ((_%specializer-id200092%_
                                                          (let* ((_%id200086%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp201815
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%g197550197612%_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp201815 '"::specialize")))
                         (_%specializer-id200089%_
                          (let ((__tmp201816
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _%stx197539%_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _%id200086%_
                             __tmp201816))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _%specializer-id200089%_))
                    _%specializer-id200089%_))
                 (_%$klass200094%_
                  (let ((__tmp201817
                         (let () (declare (not safe)) (##gensym '__klass))))
                    (declare (not safe))
                    (make-symbol__0 __tmp201817)))
                 (_%$method-table200096%_
                  (let ((__tmp201818
                         (let ()
                           (declare (not safe))
                           (##gensym '__method-table))))
                    (declare (not safe))
                    (make-symbol__0 __tmp201818)))
                 (_%methods200098%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%method-calls197631%_)))
                 (_%$methods200102%_
                  (let ((__tmp201819
                         (lambda (_%id200100%_)
                           (let ((__tmp201820 (gensym _%id200100%_)))
                             (declare (not safe))
                             (make-symbol__1 '"__" __tmp201820)))))
                    (declare (not safe))
                    (##map __tmp201819 _%methods200098%_)))
                 (_%_200111%_
                  (let ((__tmp201821
                         (lambda (_%g200103200106%_ _%g200104200108%_)
                           (let ()
                             (declare (not safe))
                             (__hash-put!
                              _%method-calls197631%_
                              _%g200103200106%_
                              _%g200104200108%_)))))
                    (declare (not safe))
                    (##for-each
                     __tmp201821
                     _%methods200098%_
                     _%$methods200102%_)))
                 (_%methods-bind200121%_
                  (let ((__tmp201822
                         (lambda (_%g200113200116%_ _%g200114200118%_)
                           (_%generate-method-bind197541%_
                            _%$klass200094%_
                            _%$method-table200096%_
                            _%g200113200116%_
                            _%g200114200118%_))))
                    (declare (not safe))
                    (##map __tmp201822 _%methods200098%_ _%$methods200102%_)))
                 (_%slots200123%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%slot-refs197632%_)))
                 (_%$slots200127%_
                  (let ((__tmp201823
                         (lambda (_%id200125%_)
                           (let ((__tmp201824 (gensym _%id200125%_)))
                             (declare (not safe))
                             (make-symbol__1 '"__" __tmp201824)))))
                    (declare (not safe))
                    (##map __tmp201823 _%slots200123%_)))
                 (_%_200136%_
                  (let ((__tmp201825
                         (lambda (_%g200128200131%_ _%g200129200133%_)
                           (let ()
                             (declare (not safe))
                             (__hash-put!
                              _%slot-refs197632%_
                              _%g200128200131%_
                              _%g200129200133%_)))))
                    (declare (not safe))
                    (##for-each __tmp201825 _%slots200123%_ _%$slots200127%_)))
                 (_%slots-bind200145%_
                  (let ((__tmp201826
                         (lambda (_%g200137200140%_ _%g200138200142%_)
                           (_%generate-slot-bind197542%_
                            _%$klass200094%_
                            _%g200137200140%_
                            _%g200138200142%_))))
                    (declare (not safe))
                    (##map __tmp201826 _%slots200123%_ _%$slots200127%_)))
                 (_%specializer-lambda-expr200223%_
                  (let* ((_%g200147200161%_
                          (lambda (_%g200148200158%_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g200148200158%_))))
                         (_%g200146200220%_
                          (lambda (_%g200148200164%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%g200148200164%_))
                                (let ((_%e200151200166%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%g200148200164%_))))
                                  (let ((_%hd200152200169%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e200151200166%_)))
                                        (_%tl200153200171%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e200151200166%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl200153200171%_))
                                        (let ((_%e200154200174%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl200153200171%_))))
                                          (let ((_%hd200155200177%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e200154200174%_)))
                                                (_%tl200156200179%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e200154200174%_))))
                                            ((lambda (_%g200149200182%_
                                                      _%g200150200183%_)
                                               (let* ((_%self200206%_
                                                       (list-ref
                                                        _%g200150200183%_
                                                        _%self-index199629%_))
                                                      (_%receiver200211%_
                                                       (let ((_%$e200208%_
                                                              (gxc#apply-extract-receiver
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f '%#begin))
                             _%g200149200182%_))))
                 (if _%$e200208%_ _%$e200208%_ _%self200206%_)))
              (_%body200217%_
               (map (lambda (_%g200212200214%_)
                      (gxc#apply-subst-object-refs__%
                       '#f
                       _%receiver200211%_
                       _%$klass200094%_
                       _%method-calls197631%_
                       _%slot-refs197632%_
                       _%g200212200214%_))
                    _%g200149200182%_))
              (__tmp201827
               (cons '%#lambda (cons _%g200150200183%_ _%body200217%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp201827
                                                  _%g199777199866%_)))
                                             _%tl200156200179%_
                                             _%hd200155200177%_)))
                                        (_%g200147200161%_
                                         _%g200148200164%_))))
                                (_%g200147200161%_ _%g200148200164%_)))))
                    (_%g200146200220%_ _%g199777199866%_)))
                 (_%specializer-case-lambda-expr200361%_
                  (let* ((_%g200225200244%_
                          (lambda (_%g200226200241%_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g200226200241%_))))
                         (_%g200224200358%_
                          (lambda (_%g200226200247%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%g200226200247%_))
                                (let ((_%e200228200249%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%g200226200247%_))))
                                  (let ((_%hd200229200252%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e200228200249%_)))
                                        (_%tl200230200254%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e200228200249%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl200230200254%_))
                                        (let ((_g201828_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl200230200254%_
                                                  '0))))
                                          (begin
                                            (let ((_g201829_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g201828_)
                                                         (##values-length
                                                          _g201828_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g201829_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g201829_)))
                                            (let ((_%target200231200257%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g201828_
                                                      0)))
                                                  (_%tl200233200259%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g201828_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl200233200259%_))
                                                  (letrec ((_%loop200234200262%_
                                                            (lambda (_%hd200232200265%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%clause200238200267%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd200232200265%_))
                          (let ((_%e200235200269%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd200232200265%_))))
                            (let ((_%lp-hd200236200272%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e200235200269%_)))
                                  (_%lp-tl200237200274%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e200235200269%_))))
                              (_%loop200234200262%_
                               _%lp-tl200237200274%_
                               (cons _%lp-hd200236200272%_
                                     _%clause200238200267%_))))
                          (let ((_%clause200239200277%_
                                 (reverse _%clause200238200267%_)))
                            ((lambda (_%g200227200279%_)
                               (let* ((_%clauses200356%_
                                       (map (lambda (_%clause200293%_)
                                              (let* ((_%g200295200306%_
                                                      (lambda (_%g200296200303%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g200296200303%_))))
                                                     (_%g200294200346%_
                                                      (lambda (_%g200296200309%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g200296200309%_))
                                                            (let ((_%e200299200311%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%g200296200309%_))))
                      (let ((_%hd200300200314%_
                             (let ()
                               (declare (not safe))
                               (##car _%e200299200311%_)))
                            (_%tl200301200316%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e200299200311%_))))
                        ((lambda (_%g200297200319%_ _%g200298200320%_)
                           (let* ((_%self200332%_
                                   (list-ref
                                    _%g200298200320%_
                                    _%self-index199629%_))
                                  (_%receiver200337%_
                                   (let ((_%$e200334%_
                                          (gxc#apply-extract-receiver
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    '%#begin))
                                                 _%g200297200319%_))))
                                     (if _%$e200334%_
                                         _%$e200334%_
                                         _%self200332%_)))
                                  (_%body200343%_
                                   (map (lambda (_%g200338200340%_)
                                          (gxc#apply-subst-object-refs__%
                                           '#f
                                           _%receiver200337%_
                                           _%$klass200094%_
                                           _%method-calls197631%_
                                           _%slot-refs197632%_
                                           _%g200338200340%_))
                                        _%g200297200319%_)))
                             (cons _%g200298200320%_ _%body200343%_)))
                         _%tl200301200316%_
                         _%hd200300200314%_)))
                    (_%g200295200306%_ _%g200296200309%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g200294200346%_
                                                 _%clause200293%_)))
                                            (let ((__tmp201830
                                                   (lambda (_%g200348200351%_
                                                            _%g200349200353%_)
                                                     (cons _%g200348200351%_
                                                           _%g200349200353%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp201830
                                               '()
                                               _%g200227200279%_))))
                                      (__tmp201831
                                       (cons '%#case-lambda
                                             _%clauses200356%_)))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp201831
                                  _%g199776199865%_)))
                             _%clause200239200277%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop200234200262%_
                                                     _%target200231200257%_
                                                     '()))
                                                  (_%g200225200244%_
                                                   _%g200226200247%_)))))
                                        (_%g200225200244%_
                                         _%g200226200247%_))))
                                (_%g200225200244%_ _%g200226200247%_)))))
                    (_%g200224200358%_ _%g199776199865%_)))
                 (_%specializer-impl200363%_
                  (let ((__tmp201832
                         (cons '%#let-values
                               (cons (cons (cons (cons _%g199163199331%_ '())
                                                 (cons (cons '%#let-values
                                                             (cons (cons (cons (cons _%g199162199330%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                             '())
                                       (cons (let ((__tmp201833
                                                    (cons '%#let-values
                                                          (cons (cons (cons (cons _%g199778199867%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                          '())
                                    (cons _%specializer-lambda-expr200223%_
                                          '()))
                              '())
                        (cons _%specializer-case-lambda-expr200361%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp201833
                                                _%stx197539%_))
                                             '()))
                                 '())
                           (cons _%g199160199328%_ '())))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())
                                     (cons _%g199159199327%_ '())))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp201832 _%stx197539%_)))
                 (_%specializer-impl200365%_
                  (_%generate-specializer-impl197543%_
                   _%$klass200094%_
                   _%$method-table200096%_
                   _%methods-bind200121%_
                   _%slots-bind200145%_
                   _%specializer-impl200363%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp201835
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%g197550197612%_)))
                                                          (__tmp201834
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%specializer-id200092%_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp201835
                                                       '" => "
                                                       __tmp201834))
                                                    (_%generate-specializer-def197544%_
                                                     _%g197550197612%_
                                                     _%specializer-id200092%_
                                                     _%specializer-impl200365%_))))
                                            _%hd199798199860%_
                                            _%hd199795199852%_
                                            _%hd199792199844%_)
                                           (_%g199774199804%_
                                            _%g199775199807%_))))
                                   (_%g199774199804%_ _%g199775199807%_))
                               (_%g199774199804%_ _%g199775199807%_))
                           (_%g199774199804%_ _%g199775199807%_))))
                   (_%g199774199804%_ _%g199775199807%_))
               (_%g199774199804%_ _%g199775199807%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g199774199804%_
                                                _%g199775199807%_))))
                                       (_%g199774199804%_ _%g199775199807%_))))
                               (_%g199774199804%_ _%g199775199807%_))))
                       (_%g199774199804%_ _%g199775199807%_))))
               (_%g199774199804%_ _%g199775199807%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g199773200368%_
                                            _%g199161199329%_))
                                         _%stx197539%_))))
                             _%hd199427199550%_
                             _%kw-ref199425199570%_
                             _%hd199415199537%_
                             _%hd199406199513%_
                             _%hd199397199489%_)
                            (_%g199371199433%_ _%g199372199436%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop199420199555%_
                                                 _%target199417199542%_
                                                 '()))
                                              (_%g199371199433%_
                                               _%g199372199436%_))))
                                      (_%g199371199433%_ _%g199372199436%_)))))
                            (_%g199371199433%_ _%g199372199436%_))
                        (_%g199371199433%_ _%g199372199436%_))
                    (_%g199371199433%_ _%g199372199436%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g199371199433%_
                                                     _%g199372199436%_))
                                                (_%g199371199433%_
                                                 _%g199372199436%_))
                                            (_%g199371199433%_
                                             _%g199372199436%_))))
                                    (_%g199371199433%_ _%g199372199436%_))))
                            (_%g199371199433%_ _%g199372199436%_))
                        (_%g199371199433%_ _%g199372199436%_))))
                (_%g199371199433%_ _%g199372199436%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g199371199433%_
                                                     _%g199372199436%_))
                                                (_%g199371199433%_
                                                 _%g199372199436%_))))
                                        (_%g199371199433%_
                                         _%g199372199436%_))))
                                (_%g199371199433%_ _%g199372199436%_))
                            (_%g199371199433%_ _%g199372199436%_))))
                    (_%g199371199433%_ _%g199372199436%_))
                (_%g199371199433%_ _%g199372199436%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g199371199433%_
                                                     _%g199372199436%_))))
                                            (_%g199371199433%_
                                             _%g199372199436%_))))
                                    (_%g199371199433%_ _%g199372199436%_))
                                (_%g199371199433%_ _%g199372199436%_))
                            (_%g199371199433%_ _%g199372199436%_))))
                    (_%g199371199433%_ _%g199372199436%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g199371199433%_
                                                     _%g199372199436%_))))
                                            (_%g199371199433%_
                                             _%g199372199436%_))
                                        (_%g199371199433%_ _%g199372199436%_))
                                    (_%g199371199433%_ _%g199372199436%_))))
                            (_%g199371199433%_ _%g199372199436%_)))))
                (_%g199370200372%_ _%g199160199328%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%hd199204199322%_
                                                    _%hd199201199314%_
                                                    _%hd199198199306%_
                                                    _%hd199195199298%_
                                                    _%hd199177199250%_)
                                                   (_%g199157199210%_
                                                    _%g199158199213%_))))
                                           (_%g199157199210%_
                                            _%g199158199213%_))
                                       (_%g199157199210%_ _%g199158199213%_))
                                   (_%g199157199210%_ _%g199158199213%_))
                               (_%g199157199210%_ _%g199158199213%_))))
                       (_%g199157199210%_ _%g199158199213%_))
                   (_%g199157199210%_ _%g199158199213%_))
               (_%g199157199210%_ _%g199158199213%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g199157199210%_
                                                _%g199158199213%_))
                                           (_%g199157199210%_
                                            _%g199158199213%_))))
                                   (_%g199157199210%_ _%g199158199213%_))))
                           (_%g199157199210%_ _%g199158199213%_))))
                   (_%g199157199210%_ _%g199158199213%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g199157199210%_
                                                    _%g199158199213%_))
                                               (_%g199157199210%_
                                                _%g199158199213%_))
                                           (_%g199157199210%_
                                            _%g199158199213%_))))
                                   (_%g199157199210%_ _%g199158199213%_))))
                           (_%g199157199210%_ _%g199158199213%_))
                       (_%g199157199210%_ _%g199158199213%_))))
               (_%g199157199210%_ _%g199158199213%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g199157199210%_
                                                _%g199158199213%_))))
                                       (_%g199157199210%_ _%g199158199213%_))))
                               (_%g199157199210%_ _%g199158199213%_))
                           (_%g199157199210%_ _%g199158199213%_))
                       (_%g199157199210%_ _%g199158199213%_))))
               (_%g199157199210%_ _%g199158199213%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g199156200375%_
                                            _%g197549197611%_))
                                         _%stx197539%_))))))))
                  (_%__kont200602200603%_ (lambda () _%stx197539%_)))
              (let ((_%__match200631200632%_
                     (lambda (_%e197551197579%_
                              _%hd197552197582%_
                              _%tl197553197584%_
                              _%e197554197587%_
                              _%hd197555197590%_
                              _%tl197556197592%_
                              _%e197557197595%_
                              _%hd197558197598%_
                              _%tl197559197600%_
                              _%e197560197603%_
                              _%hd197561197606%_
                              _%tl197562197608%_)
                       (let ((_%g197549197611%_ _%hd197561197606%_)
                             (_%g197550197612%_ _%hd197558197598%_))
                         (if (let ((__tmp201836
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol
                                       _%g197550197612%_))))
                               (declare (not safe))
                               (gxc#optimizer-top-level-method? __tmp201836))
                             (_%__kont200600200601%_
                              _%g197549197611%_
                              _%g197550197612%_)
                             (_%__kont200602200603%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx200598200599%_))
                    (let ((_%e197551197579%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx200598200599%_))))
                      (let ((_%tl197553197584%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e197551197579%_)))
                            (_%hd197552197582%_
                             (let ()
                               (declare (not safe))
                               (##car _%e197551197579%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl197553197584%_))
                            (let ((_%e197554197587%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl197553197584%_))))
                              (let ((_%tl197556197592%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e197554197587%_)))
                                    (_%hd197555197590%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e197554197587%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd197555197590%_))
                                    (let ((_%e197557197595%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd197555197590%_))))
                                      (let ((_%tl197559197600%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e197557197595%_)))
                                            (_%hd197558197598%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e197557197595%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl197559197600%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl197556197592%_))
                                                (let ((_%e197560197603%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl197556197592%_))))
                                                  (let ((_%tl197562197608%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e197560197603%_)))
                                                        (_%hd197561197606%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e197560197603%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl197562197608%_))
                                                        (_%__match200631200632%_
                                                         _%e197551197579%_
                                                         _%hd197552197582%_
                                                         _%tl197553197584%_
                                                         _%e197554197587%_
                                                         _%hd197555197590%_
                                                         _%tl197556197592%_
                                                         _%e197557197595%_
                                                         _%hd197558197598%_
                                                         _%tl197559197600%_
                                                         _%e197560197603%_
                                                         _%hd197561197606%_
                                                         _%tl197562197608%_)
                                                        (_%__kont200602200603%_))))
                                                (_%__kont200602200603%_))
                                            (_%__kont200602200603%_))))
                                    (_%__kont200602200603%_))))
                            (_%__kont200602200603%_))))
                    (_%__kont200602200603%_))))))))
    (define gxc#extract-receiver-begin-annotation%
      (lambda (_%self197391%_ _%stx197392%_)
        (let* ((_%__stx200634200635%_ _%stx197392%_)
               (_%g197395197428%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx200634200635%_)))))
          (let ((_%__kont200636200637%_
                 (lambda (_%g197397197518%_) _%g197397197518%_))
                (_%__kont200638200639%_
                 (lambda (_%g197413197457%_ _%g197414197458%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self197391%_ _%g197413197457%_)))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx200634200635%_))
                (let ((_%e197398197478%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%__stx200634200635%_))))
                  (let ((_%tl197400197483%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e197398197478%_)))
                        (_%hd197399197481%_
                         (let ()
                           (declare (not safe))
                           (##car _%e197398197478%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl197400197483%_))
                        (let ((_%e197401197486%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl197400197483%_))))
                          (let ((_%tl197403197491%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e197401197486%_)))
                                (_%hd197402197489%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e197401197486%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd197402197489%_))
                                (let ((_%e197404197494%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd197402197489%_))))
                                  (let ((_%tl197406197499%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e197404197494%_)))
                                        (_%hd197405197497%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e197404197494%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd197405197497%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '@receiver
                                               _%hd197405197497%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl197406197499%_))
                                                (let ((_%e197407197502%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl197406197499%_))))
                                                  (let ((_%tl197409197507%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e197407197502%_)))
                                                        (_%hd197408197505%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e197407197502%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl197409197507%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl197403197491%_))
                                                            (let ((_%e197410197510%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl197403197491%_))))
                      (let ((_%tl197412197515%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e197410197510%_)))
                            (_%hd197411197513%_
                             (let ()
                               (declare (not safe))
                               (##car _%e197410197510%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl197412197515%_))
                            (_%__kont200636200637%_ _%hd197408197505%_)
                            (let ()
                              (declare (not safe))
                              (_%g197395197428%_)))))
                    (let () (declare (not safe)) (_%g197395197428%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl197403197491%_))
                    (let ((_%e197421197449%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl197403197491%_))))
                      (let ((_%tl197423197454%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e197421197449%_)))
                            (_%hd197422197452%_
                             (let ()
                               (declare (not safe))
                               (##car _%e197421197449%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl197423197454%_))
                            (_%__kont200638200639%_
                             _%hd197422197452%_
                             _%hd197402197489%_)
                            (let ()
                              (declare (not safe))
                              (_%g197395197428%_)))))
                    (let () (declare (not safe)) (_%g197395197428%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl197403197491%_))
                                                    (let ((_%e197421197449%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl197403197491%_))))
                                                      (let ((_%tl197423197454%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e197421197449%_)))
                    (_%hd197422197452%_
                     (let () (declare (not safe)) (##car _%e197421197449%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl197423197454%_))
                    (_%__kont200638200639%_
                     _%hd197422197452%_
                     _%hd197402197489%_)
                    (let () (declare (not safe)) (_%g197395197428%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g197395197428%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl197403197491%_))
                                                (let ((_%e197421197449%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl197403197491%_))))
                                                  (let ((_%tl197423197454%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e197421197449%_)))
                                                        (_%hd197422197452%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e197421197449%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl197423197454%_))
                                                        (_%__kont200638200639%_
                                                         _%hd197422197452%_
                                                         _%hd197402197489%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g197395197428%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g197395197428%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl197403197491%_))
                                            (let ((_%e197421197449%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl197403197491%_))))
                                              (let ((_%tl197423197454%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e197421197449%_)))
                                                    (_%hd197422197452%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e197421197449%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl197423197454%_))
                                                    (_%__kont200638200639%_
                                                     _%hd197422197452%_
                                                     _%hd197402197489%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g197395197428%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g197395197428%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl197403197491%_))
                                    (let ((_%e197421197449%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl197403197491%_))))
                                      (let ((_%tl197423197454%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e197421197449%_)))
                                            (_%hd197422197452%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e197421197449%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl197423197454%_))
                                            (_%__kont200638200639%_
                                             _%hd197422197452%_
                                             _%hd197402197489%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g197395197428%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g197395197428%_))))))
                        (let () (declare (not safe)) (_%g197395197428%_)))))
                (let () (declare (not safe)) (_%g197395197428%_)))))))
    (define gxc#extract-receiver-if%
      (lambda (_%self197307%_ _%stx197308%_)
        (let* ((_%g197310197331%_
                (lambda (_%g197311197328%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g197311197328%_))))
               (_%g197309197388%_
                (lambda (_%g197311197334%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g197311197334%_))
                      (let ((_%e197315197336%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g197311197334%_))))
                        (let ((_%hd197316197339%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197315197336%_)))
                              (_%tl197317197341%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197315197336%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl197317197341%_))
                              (let ((_%e197318197344%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl197317197341%_))))
                                (let ((_%hd197319197347%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197318197344%_)))
                                      (_%tl197320197349%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197318197344%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl197320197349%_))
                                      (let ((_%e197321197352%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl197320197349%_))))
                                        (let ((_%hd197322197355%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e197321197352%_)))
                                              (_%tl197323197357%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e197321197352%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl197323197357%_))
                                              (let ((_%e197324197360%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl197323197357%_))))
                                                (let ((_%hd197325197363%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e197324197360%_)))
                                                      (_%tl197326197365%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e197324197360%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl197326197365%_))
                                                      ((lambda (_%g197312197368%_
                                                                _%g197313197369%_
                                                                _%g197314197370%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%self197307%_
                                                            _%g197313197369%_)))
                                                       _%hd197325197363%_
                                                       _%hd197322197355%_
                                                       _%hd197319197347%_)
                                                      (_%g197310197331%_
                                                       _%g197311197334%_))))
                                              (_%g197310197331%_
                                               _%g197311197334%_))))
                                      (_%g197310197331%_ _%g197311197334%_))))
                              (_%g197310197331%_ _%g197311197334%_))))
                      (_%g197310197331%_ _%g197311197334%_)))))
          (_%g197309197388%_ _%stx197308%_))))
    (define gxc#collect-object-refs-call%
      (lambda (_%self196272%_ _%stx196273%_)
        (let* ((_%__stx200700200701%_ _%stx196273%_)
               (_%g196281196503%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx200700200701%_)))))
          (let ((_%__kont200702200703%_
                 (lambda (_%g196283197256%_
                          _%g196284197257%_
                          _%g196285197258%_
                          _%g196286197259%_)
                   (let ((__tmp201838
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self196272%_ 'methods)))
                         (__tmp201837
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%g196284197257%_))))
                     (declare (not safe))
                     (hash-put! __tmp201838 __tmp201837 '#t))
                   (for-each
                    (lambda (_%g197292197294%_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self196272%_ _%g197292197294%_)))
                    (let ((__tmp201839
                           (lambda (_%g197296197299%_ _%g197297197301%_)
                             (cons _%g197296197299%_ _%g197297197301%_))))
                      (declare (not safe))
                      (__foldr1 __tmp201839 '() _%g196283197256%_)))))
                (_%__kont200706200707%_
                 (lambda (_%g196326197093%_
                          _%g196327197094%_
                          _%g196328197095%_
                          _%g196329197096%_
                          _%g196330197097%_)
                   (let ((__tmp201841
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self196272%_ 'methods)))
                         (__tmp201840
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%g196327197094%_))))
                     (declare (not safe))
                     (hash-put! __tmp201841 __tmp201840 '#t))
                   (for-each
                    (lambda (_%g197137197139%_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self196272%_ _%g197137197139%_)))
                    (let ((__tmp201842
                           (lambda (_%g197141197144%_ _%g197142197146%_)
                             (cons _%g197141197144%_ _%g197142197146%_))))
                      (declare (not safe))
                      (__foldr1 __tmp201842 '() _%g196326197093%_)))))
                (_%__kont200710200711%_
                 (lambda (_%g196379196928%_
                          _%g196380196929%_
                          _%g196381196930%_)
                   (let ((__tmp201844
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self196272%_ 'slots)))
                         (__tmp201843
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%g196379196928%_))))
                     (declare (not safe))
                     (hash-put! __tmp201844 __tmp201843 '#t))))
                (_%__kont200712200713%_
                 (lambda (_%g196412196805%_
                          _%g196413196806%_
                          _%g196414196807%_
                          _%g196415196808%_)
                   (let ((__tmp201846
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self196272%_ 'slots)))
                         (__tmp201845
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%g196413196806%_))))
                     (declare (not safe))
                     (hash-put! __tmp201846 __tmp201845 '#t))
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self196272%_ _%g196412196805%_))))
                (_%__kont200714200715%_
                 (lambda (_%g196449196679%_ _%g196450196680%_)
                   (let* ((_%accessor196702%_
                           (let ((__tmp201847
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol
                                     _%g196450196680%_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp201847)))
                          (_%klass196704%_
                           (let ((__tmp201848
                                  (##structure-ref
                                   _%accessor196702%_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _%stx196273%_
                              __tmp201848)))
                          (_%slot196706%_
                           (##structure-ref
                            _%accessor196702%_
                            '3
                            gxc#!accessor::t
                            '#f)))
                     (if (if (##structure-ref
                              _%accessor196702%_
                              '4
                              gxc#!accessor::t
                              '#f)
                             '#f
                             (or (let ()
                                   (declare (not safe))
                                   (gxc#!class-struct-slot?
                                    _%klass196704%_
                                    _%slot196706%_))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%klass196704%_
                                    '8
                                    '#f
                                    '#f))))
                         '#!void
                         (let ((__tmp201850
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _%self196272%_ 'slots)))
                               (__tmp201849
                                (##structure-ref
                                 _%accessor196702%_
                                 '3
                                 gxc#!accessor::t
                                 '#f)))
                           (declare (not safe))
                           (hash-put! __tmp201850 __tmp201849 '#t))))))
                (_%__kont200716200717%_
                 (lambda (_%g196472196579%_
                          _%g196473196580%_
                          _%g196474196581%_)
                   (let* ((_%mutator196608%_
                           (let ((__tmp201851
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol
                                     _%g196474196581%_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp201851)))
                          (_%klass196610%_
                           (let ((__tmp201852
                                  (##structure-ref
                                   _%mutator196608%_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _%stx196273%_
                              __tmp201852)))
                          (_%slot196612%_
                           (##structure-ref
                            _%mutator196608%_
                            '3
                            gxc#!mutator::t
                            '#f)))
                     (if (if (##structure-ref
                              _%mutator196608%_
                              '4
                              gxc#!mutator::t
                              '#f)
                             '#f
                             (or (let ()
                                   (declare (not safe))
                                   (gxc#!class-struct-slot?
                                    _%klass196610%_
                                    _%slot196612%_))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%klass196610%_
                                    '8
                                    '#f
                                    '#f))))
                         '#!void
                         (let ((__tmp201853
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _%self196272%_ 'slots))))
                           (declare (not safe))
                           (hash-put! __tmp201853 _%slot196612%_ '#t)))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-e__1 _%self196272%_ _%g196472196579%_)))))
                (_%__kont200718200719%_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#apply-operands _%self196272%_ _%stx196273%_)))))
            (let* ((_%__match201199201200%_
                    (lambda (_%e196475196515%_
                             _%hd196476196518%_
                             _%tl196477196520%_
                             _%e196478196523%_
                             _%hd196479196526%_
                             _%tl196480196528%_
                             _%e196481196531%_
                             _%hd196482196534%_
                             _%tl196483196536%_
                             _%e196484196539%_
                             _%hd196485196542%_
                             _%tl196486196544%_
                             _%e196487196547%_
                             _%hd196488196550%_
                             _%tl196489196552%_
                             _%e196490196555%_
                             _%hd196491196558%_
                             _%tl196492196560%_
                             _%e196493196563%_
                             _%hd196494196566%_
                             _%tl196495196568%_
                             _%e196496196571%_
                             _%hd196497196574%_
                             _%tl196498196576%_)
                      (let ((_%g196472196579%_ _%hd196497196574%_)
                            (_%g196473196580%_ _%hd196494196566%_)
                            (_%g196474196581%_ _%hd196485196542%_))
                        (if (and (let ((__tmp201854
                                        (let ((__tmp201855
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _%g196474196581%_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp201855))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp201854
                                    'gxc#!mutator::t))
                                 (let ((__tmp201856
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self196272%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%g196473196580%_
                                    __tmp201856)))
                            (_%__kont200716200717%_
                             _%g196472196579%_
                             _%g196473196580%_
                             _%g196474196581%_)
                            (_%__kont200718200719%_)))))
                   (_%__match201197201198%_
                    (lambda (_%e196475196515%_
                             _%hd196476196518%_
                             _%tl196477196520%_
                             _%e196478196523%_
                             _%hd196479196526%_
                             _%tl196480196528%_
                             _%e196481196531%_
                             _%hd196482196534%_
                             _%tl196483196536%_
                             _%e196484196539%_
                             _%hd196485196542%_
                             _%tl196486196544%_
                             _%e196487196547%_
                             _%hd196488196550%_
                             _%tl196489196552%_
                             _%e196490196555%_
                             _%hd196491196558%_
                             _%tl196492196560%_
                             _%e196493196563%_
                             _%hd196494196566%_
                             _%tl196495196568%_
                             _%e196496196571%_
                             _%hd196497196574%_
                             _%tl196498196576%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl196498196576%_))
                          (_%__match201199201200%_
                           _%e196475196515%_
                           _%hd196476196518%_
                           _%tl196477196520%_
                           _%e196478196523%_
                           _%hd196479196526%_
                           _%tl196480196528%_
                           _%e196481196531%_
                           _%hd196482196534%_
                           _%tl196483196536%_
                           _%e196484196539%_
                           _%hd196485196542%_
                           _%tl196486196544%_
                           _%e196487196547%_
                           _%hd196488196550%_
                           _%tl196489196552%_
                           _%e196490196555%_
                           _%hd196491196558%_
                           _%tl196492196560%_
                           _%e196493196563%_
                           _%hd196494196566%_
                           _%tl196495196568%_
                           _%e196496196571%_
                           _%hd196497196574%_
                           _%tl196498196576%_)
                          (_%__kont200718200719%_))))
                   (_%__match201191201192%_
                    (lambda (_%e196475196515%_
                             _%hd196476196518%_
                             _%tl196477196520%_
                             _%e196478196523%_
                             _%hd196479196526%_
                             _%tl196480196528%_
                             _%e196481196531%_
                             _%hd196482196534%_
                             _%tl196483196536%_
                             _%e196484196539%_
                             _%hd196485196542%_
                             _%tl196486196544%_
                             _%e196487196547%_
                             _%hd196488196550%_
                             _%tl196489196552%_
                             _%e196490196555%_
                             _%hd196491196558%_
                             _%tl196492196560%_
                             _%e196493196563%_
                             _%hd196494196566%_
                             _%tl196495196568%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl196489196552%_))
                          (let ((_%e196496196571%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl196489196552%_))))
                            (let ((_%tl196498196576%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e196496196571%_)))
                                  (_%hd196497196574%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e196496196571%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl196498196576%_))
                                  (_%__match201199201200%_
                                   _%e196475196515%_
                                   _%hd196476196518%_
                                   _%tl196477196520%_
                                   _%e196478196523%_
                                   _%hd196479196526%_
                                   _%tl196480196528%_
                                   _%e196481196531%_
                                   _%hd196482196534%_
                                   _%tl196483196536%_
                                   _%e196484196539%_
                                   _%hd196485196542%_
                                   _%tl196486196544%_
                                   _%e196487196547%_
                                   _%hd196488196550%_
                                   _%tl196489196552%_
                                   _%e196490196555%_
                                   _%hd196491196558%_
                                   _%tl196492196560%_
                                   _%e196493196563%_
                                   _%hd196494196566%_
                                   _%tl196495196568%_
                                   _%e196496196571%_
                                   _%hd196497196574%_
                                   _%tl196498196576%_)
                                  (_%__kont200718200719%_))))
                          (_%__kont200718200719%_))))
                   (_%__match201137201138%_
                    (lambda (_%e196451196623%_
                             _%hd196452196626%_
                             _%tl196453196628%_
                             _%e196454196631%_
                             _%hd196455196634%_
                             _%tl196456196636%_
                             _%e196457196639%_
                             _%hd196458196642%_
                             _%tl196459196644%_
                             _%e196460196647%_
                             _%hd196461196650%_
                             _%tl196462196652%_
                             _%e196463196655%_
                             _%hd196464196658%_
                             _%tl196465196660%_
                             _%e196466196663%_
                             _%hd196467196666%_
                             _%tl196468196668%_
                             _%e196469196671%_
                             _%hd196470196674%_
                             _%tl196471196676%_)
                      (let ((_%g196449196679%_ _%hd196470196674%_)
                            (_%g196450196680%_ _%hd196461196650%_))
                        (if (and (let ((__tmp201857
                                        (let ((__tmp201858
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _%g196450196680%_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp201858))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp201857
                                    'gxc#!accessor::t))
                                 (let ((__tmp201859
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self196272%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%g196449196679%_
                                    __tmp201859)))
                            (_%__kont200714200715%_
                             _%g196449196679%_
                             _%g196450196680%_)
                            (_%__kont200718200719%_)))))
                   (_%__match201135201136%_
                    (lambda (_%e196451196623%_
                             _%hd196452196626%_
                             _%tl196453196628%_
                             _%e196454196631%_
                             _%hd196455196634%_
                             _%tl196456196636%_
                             _%e196457196639%_
                             _%hd196458196642%_
                             _%tl196459196644%_
                             _%e196460196647%_
                             _%hd196461196650%_
                             _%tl196462196652%_
                             _%e196463196655%_
                             _%hd196464196658%_
                             _%tl196465196660%_
                             _%e196466196663%_
                             _%hd196467196666%_
                             _%tl196468196668%_
                             _%e196469196671%_
                             _%hd196470196674%_
                             _%tl196471196676%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl196465196660%_))
                          (_%__match201137201138%_
                           _%e196451196623%_
                           _%hd196452196626%_
                           _%tl196453196628%_
                           _%e196454196631%_
                           _%hd196455196634%_
                           _%tl196456196636%_
                           _%e196457196639%_
                           _%hd196458196642%_
                           _%tl196459196644%_
                           _%e196460196647%_
                           _%hd196461196650%_
                           _%tl196462196652%_
                           _%e196463196655%_
                           _%hd196464196658%_
                           _%tl196465196660%_
                           _%e196466196663%_
                           _%hd196467196666%_
                           _%tl196468196668%_
                           _%e196469196671%_
                           _%hd196470196674%_
                           _%tl196471196676%_)
                          (_%__match201191201192%_
                           _%e196451196623%_
                           _%hd196452196626%_
                           _%tl196453196628%_
                           _%e196454196631%_
                           _%hd196455196634%_
                           _%tl196456196636%_
                           _%e196457196639%_
                           _%hd196458196642%_
                           _%tl196459196644%_
                           _%e196460196647%_
                           _%hd196461196650%_
                           _%tl196462196652%_
                           _%e196463196655%_
                           _%hd196464196658%_
                           _%tl196465196660%_
                           _%e196466196663%_
                           _%hd196467196666%_
                           _%tl196468196668%_
                           _%e196469196671%_
                           _%hd196470196674%_
                           _%tl196471196676%_))))
                   (_%__match201081201082%_
                    (lambda (_%e196416196717%_
                             _%hd196417196720%_
                             _%tl196418196722%_
                             _%e196419196725%_
                             _%hd196420196728%_
                             _%tl196421196730%_
                             _%e196422196733%_
                             _%hd196423196736%_
                             _%tl196424196738%_
                             _%e196425196741%_
                             _%hd196426196744%_
                             _%tl196427196746%_
                             _%e196428196749%_
                             _%hd196429196752%_
                             _%tl196430196754%_
                             _%e196431196757%_
                             _%hd196432196760%_
                             _%tl196433196762%_
                             _%e196434196765%_
                             _%hd196435196768%_
                             _%tl196436196770%_
                             _%e196437196773%_
                             _%hd196438196776%_
                             _%tl196439196778%_
                             _%e196440196781%_
                             _%hd196441196784%_
                             _%tl196442196786%_
                             _%e196443196789%_
                             _%hd196444196792%_
                             _%tl196445196794%_
                             _%e196446196797%_
                             _%hd196447196800%_
                             _%tl196448196802%_)
                      (let ((_%g196412196805%_ _%hd196447196800%_)
                            (_%g196413196806%_ _%hd196444196792%_)
                            (_%g196414196807%_ _%hd196435196768%_)
                            (_%g196415196808%_ _%hd196426196744%_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%g196415196808%_
                                        'slot-set!))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%g196415196808%_
                                        'unchecked-slot-set!)))
                                 (let ((__tmp201860
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self196272%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%g196414196807%_
                                    __tmp201860)))
                            (_%__kont200712200713%_
                             _%g196412196805%_
                             _%g196413196806%_
                             _%g196414196807%_
                             _%g196415196808%_)
                            (_%__kont200718200719%_)))))
                   (_%__match201073201074%_
                    (lambda (_%e196416196717%_
                             _%hd196417196720%_
                             _%tl196418196722%_
                             _%e196419196725%_
                             _%hd196420196728%_
                             _%tl196421196730%_
                             _%e196422196733%_
                             _%hd196423196736%_
                             _%tl196424196738%_
                             _%e196425196741%_
                             _%hd196426196744%_
                             _%tl196427196746%_
                             _%e196428196749%_
                             _%hd196429196752%_
                             _%tl196430196754%_
                             _%e196431196757%_
                             _%hd196432196760%_
                             _%tl196433196762%_
                             _%e196434196765%_
                             _%hd196435196768%_
                             _%tl196436196770%_
                             _%e196437196773%_
                             _%hd196438196776%_
                             _%tl196439196778%_
                             _%e196440196781%_
                             _%hd196441196784%_
                             _%tl196442196786%_
                             _%e196443196789%_
                             _%hd196444196792%_
                             _%tl196445196794%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl196439196778%_))
                          (let ((_%e196446196797%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl196439196778%_))))
                            (let ((_%tl196448196802%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e196446196797%_)))
                                  (_%hd196447196800%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e196446196797%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl196448196802%_))
                                  (_%__match201081201082%_
                                   _%e196416196717%_
                                   _%hd196417196720%_
                                   _%tl196418196722%_
                                   _%e196419196725%_
                                   _%hd196420196728%_
                                   _%tl196421196730%_
                                   _%e196422196733%_
                                   _%hd196423196736%_
                                   _%tl196424196738%_
                                   _%e196425196741%_
                                   _%hd196426196744%_
                                   _%tl196427196746%_
                                   _%e196428196749%_
                                   _%hd196429196752%_
                                   _%tl196430196754%_
                                   _%e196431196757%_
                                   _%hd196432196760%_
                                   _%tl196433196762%_
                                   _%e196434196765%_
                                   _%hd196435196768%_
                                   _%tl196436196770%_
                                   _%e196437196773%_
                                   _%hd196438196776%_
                                   _%tl196439196778%_
                                   _%e196440196781%_
                                   _%hd196441196784%_
                                   _%tl196442196786%_
                                   _%e196443196789%_
                                   _%hd196444196792%_
                                   _%tl196445196794%_
                                   _%e196446196797%_
                                   _%hd196447196800%_
                                   _%tl196448196802%_)
                                  (_%__kont200718200719%_))))
                          (_%__match201197201198%_
                           _%e196416196717%_
                           _%hd196417196720%_
                           _%tl196418196722%_
                           _%e196419196725%_
                           _%hd196420196728%_
                           _%tl196421196730%_
                           _%e196422196733%_
                           _%hd196423196736%_
                           _%tl196424196738%_
                           _%e196425196741%_
                           _%hd196426196744%_
                           _%tl196427196746%_
                           _%e196428196749%_
                           _%hd196429196752%_
                           _%tl196430196754%_
                           _%e196431196757%_
                           _%hd196432196760%_
                           _%tl196433196762%_
                           _%e196434196765%_
                           _%hd196435196768%_
                           _%tl196436196770%_
                           _%e196437196773%_
                           _%hd196438196776%_
                           _%tl196439196778%_))))
                   (_%__match200995200996%_
                    (lambda (_%e196382196848%_
                             _%hd196383196851%_
                             _%tl196384196853%_
                             _%e196385196856%_
                             _%hd196386196859%_
                             _%tl196387196861%_
                             _%e196388196864%_
                             _%hd196389196867%_
                             _%tl196390196869%_
                             _%e196391196872%_
                             _%hd196392196875%_
                             _%tl196393196877%_
                             _%e196394196880%_
                             _%hd196395196883%_
                             _%tl196396196885%_
                             _%e196397196888%_
                             _%hd196398196891%_
                             _%tl196399196893%_
                             _%e196400196896%_
                             _%hd196401196899%_
                             _%tl196402196901%_
                             _%e196403196904%_
                             _%hd196404196907%_
                             _%tl196405196909%_
                             _%e196406196912%_
                             _%hd196407196915%_
                             _%tl196408196917%_
                             _%e196409196920%_
                             _%hd196410196923%_
                             _%tl196411196925%_)
                      (let ((_%g196379196928%_ _%hd196410196923%_)
                            (_%g196380196929%_ _%hd196401196899%_)
                            (_%g196381196930%_ _%hd196392196875%_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%g196381196930%_
                                        'slot-ref))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%g196381196930%_
                                        'unchecked-slot-ref)))
                                 (let ((__tmp201861
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self196272%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%g196380196929%_
                                    __tmp201861)))
                            (_%__kont200710200711%_
                             _%g196379196928%_
                             _%g196380196929%_
                             _%g196381196930%_)
                            (_%__match201199201200%_
                             _%e196382196848%_
                             _%hd196383196851%_
                             _%tl196384196853%_
                             _%e196385196856%_
                             _%hd196386196859%_
                             _%tl196387196861%_
                             _%e196388196864%_
                             _%hd196389196867%_
                             _%tl196390196869%_
                             _%e196391196872%_
                             _%hd196392196875%_
                             _%tl196393196877%_
                             _%e196394196880%_
                             _%hd196395196883%_
                             _%tl196396196885%_
                             _%e196397196888%_
                             _%hd196398196891%_
                             _%tl196399196893%_
                             _%e196400196896%_
                             _%hd196401196899%_
                             _%tl196402196901%_
                             _%e196403196904%_
                             _%hd196404196907%_
                             _%tl196405196909%_)))))
                   (_%__match200993200994%_
                    (lambda (_%e196382196848%_
                             _%hd196383196851%_
                             _%tl196384196853%_
                             _%e196385196856%_
                             _%hd196386196859%_
                             _%tl196387196861%_
                             _%e196388196864%_
                             _%hd196389196867%_
                             _%tl196390196869%_
                             _%e196391196872%_
                             _%hd196392196875%_
                             _%tl196393196877%_
                             _%e196394196880%_
                             _%hd196395196883%_
                             _%tl196396196885%_
                             _%e196397196888%_
                             _%hd196398196891%_
                             _%tl196399196893%_
                             _%e196400196896%_
                             _%hd196401196899%_
                             _%tl196402196901%_
                             _%e196403196904%_
                             _%hd196404196907%_
                             _%tl196405196909%_
                             _%e196406196912%_
                             _%hd196407196915%_
                             _%tl196408196917%_
                             _%e196409196920%_
                             _%hd196410196923%_
                             _%tl196411196925%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl196405196909%_))
                          (_%__match200995200996%_
                           _%e196382196848%_
                           _%hd196383196851%_
                           _%tl196384196853%_
                           _%e196385196856%_
                           _%hd196386196859%_
                           _%tl196387196861%_
                           _%e196388196864%_
                           _%hd196389196867%_
                           _%tl196390196869%_
                           _%e196391196872%_
                           _%hd196392196875%_
                           _%tl196393196877%_
                           _%e196394196880%_
                           _%hd196395196883%_
                           _%tl196396196885%_
                           _%e196397196888%_
                           _%hd196398196891%_
                           _%tl196399196893%_
                           _%e196400196896%_
                           _%hd196401196899%_
                           _%tl196402196901%_
                           _%e196403196904%_
                           _%hd196404196907%_
                           _%tl196405196909%_
                           _%e196406196912%_
                           _%hd196407196915%_
                           _%tl196408196917%_
                           _%e196409196920%_
                           _%hd196410196923%_
                           _%tl196411196925%_)
                          (_%__match201073201074%_
                           _%e196382196848%_
                           _%hd196383196851%_
                           _%tl196384196853%_
                           _%e196385196856%_
                           _%hd196386196859%_
                           _%tl196387196861%_
                           _%e196388196864%_
                           _%hd196389196867%_
                           _%tl196390196869%_
                           _%e196391196872%_
                           _%hd196392196875%_
                           _%tl196393196877%_
                           _%e196394196880%_
                           _%hd196395196883%_
                           _%tl196396196885%_
                           _%e196397196888%_
                           _%hd196398196891%_
                           _%tl196399196893%_
                           _%e196400196896%_
                           _%hd196401196899%_
                           _%tl196402196901%_
                           _%e196403196904%_
                           _%hd196404196907%_
                           _%tl196405196909%_
                           _%e196406196912%_
                           _%hd196407196915%_
                           _%tl196408196917%_
                           _%e196409196920%_
                           _%hd196410196923%_
                           _%tl196411196925%_))))
                   (_%__match200983200984%_
                    (lambda (_%e196382196848%_
                             _%hd196383196851%_
                             _%tl196384196853%_
                             _%e196385196856%_
                             _%hd196386196859%_
                             _%tl196387196861%_
                             _%e196388196864%_
                             _%hd196389196867%_
                             _%tl196390196869%_
                             _%e196391196872%_
                             _%hd196392196875%_
                             _%tl196393196877%_
                             _%e196394196880%_
                             _%hd196395196883%_
                             _%tl196396196885%_
                             _%e196397196888%_
                             _%hd196398196891%_
                             _%tl196399196893%_
                             _%e196400196896%_
                             _%hd196401196899%_
                             _%tl196402196901%_
                             _%e196403196904%_
                             _%hd196404196907%_
                             _%tl196405196909%_
                             _%e196406196912%_
                             _%hd196407196915%_
                             _%tl196408196917%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#quote _%hd196407196915%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl196408196917%_))
                              (let ((_%e196409196920%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl196408196917%_))))
                                (let ((_%tl196411196925%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196409196920%_)))
                                      (_%hd196410196923%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196409196920%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl196411196925%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl196405196909%_))
                                          (_%__match200995200996%_
                                           _%e196382196848%_
                                           _%hd196383196851%_
                                           _%tl196384196853%_
                                           _%e196385196856%_
                                           _%hd196386196859%_
                                           _%tl196387196861%_
                                           _%e196388196864%_
                                           _%hd196389196867%_
                                           _%tl196390196869%_
                                           _%e196391196872%_
                                           _%hd196392196875%_
                                           _%tl196393196877%_
                                           _%e196394196880%_
                                           _%hd196395196883%_
                                           _%tl196396196885%_
                                           _%e196397196888%_
                                           _%hd196398196891%_
                                           _%tl196399196893%_
                                           _%e196400196896%_
                                           _%hd196401196899%_
                                           _%tl196402196901%_
                                           _%e196403196904%_
                                           _%hd196404196907%_
                                           _%tl196405196909%_
                                           _%e196406196912%_
                                           _%hd196407196915%_
                                           _%tl196408196917%_
                                           _%e196409196920%_
                                           _%hd196410196923%_
                                           _%tl196411196925%_)
                                          (_%__match201073201074%_
                                           _%e196382196848%_
                                           _%hd196383196851%_
                                           _%tl196384196853%_
                                           _%e196385196856%_
                                           _%hd196386196859%_
                                           _%tl196387196861%_
                                           _%e196388196864%_
                                           _%hd196389196867%_
                                           _%tl196390196869%_
                                           _%e196391196872%_
                                           _%hd196392196875%_
                                           _%tl196393196877%_
                                           _%e196394196880%_
                                           _%hd196395196883%_
                                           _%tl196396196885%_
                                           _%e196397196888%_
                                           _%hd196398196891%_
                                           _%tl196399196893%_
                                           _%e196400196896%_
                                           _%hd196401196899%_
                                           _%tl196402196901%_
                                           _%e196403196904%_
                                           _%hd196404196907%_
                                           _%tl196405196909%_
                                           _%e196406196912%_
                                           _%hd196407196915%_
                                           _%tl196408196917%_
                                           _%e196409196920%_
                                           _%hd196410196923%_
                                           _%tl196411196925%_))
                                      (_%__match201197201198%_
                                       _%e196382196848%_
                                       _%hd196383196851%_
                                       _%tl196384196853%_
                                       _%e196385196856%_
                                       _%hd196386196859%_
                                       _%tl196387196861%_
                                       _%e196388196864%_
                                       _%hd196389196867%_
                                       _%tl196390196869%_
                                       _%e196391196872%_
                                       _%hd196392196875%_
                                       _%tl196393196877%_
                                       _%e196394196880%_
                                       _%hd196395196883%_
                                       _%tl196396196885%_
                                       _%e196397196888%_
                                       _%hd196398196891%_
                                       _%tl196399196893%_
                                       _%e196400196896%_
                                       _%hd196401196899%_
                                       _%tl196402196901%_
                                       _%e196403196904%_
                                       _%hd196404196907%_
                                       _%tl196405196909%_))))
                              (_%__match201197201198%_
                               _%e196382196848%_
                               _%hd196383196851%_
                               _%tl196384196853%_
                               _%e196385196856%_
                               _%hd196386196859%_
                               _%tl196387196861%_
                               _%e196388196864%_
                               _%hd196389196867%_
                               _%tl196390196869%_
                               _%e196391196872%_
                               _%hd196392196875%_
                               _%tl196393196877%_
                               _%e196394196880%_
                               _%hd196395196883%_
                               _%tl196396196885%_
                               _%e196397196888%_
                               _%hd196398196891%_
                               _%tl196399196893%_
                               _%e196400196896%_
                               _%hd196401196899%_
                               _%tl196402196901%_
                               _%e196403196904%_
                               _%hd196404196907%_
                               _%tl196405196909%_))
                          (_%__match201197201198%_
                           _%e196382196848%_
                           _%hd196383196851%_
                           _%tl196384196853%_
                           _%e196385196856%_
                           _%hd196386196859%_
                           _%tl196387196861%_
                           _%e196388196864%_
                           _%hd196389196867%_
                           _%tl196390196869%_
                           _%e196391196872%_
                           _%hd196392196875%_
                           _%tl196393196877%_
                           _%e196394196880%_
                           _%hd196395196883%_
                           _%tl196396196885%_
                           _%e196397196888%_
                           _%hd196398196891%_
                           _%tl196399196893%_
                           _%e196400196896%_
                           _%hd196401196899%_
                           _%tl196402196901%_
                           _%e196403196904%_
                           _%hd196404196907%_
                           _%tl196405196909%_))))
                   (_%__match200915200916%_
                    (lambda (_%e196331196967%_
                             _%hd196332196970%_
                             _%tl196333196972%_
                             _%e196334196975%_
                             _%hd196335196978%_
                             _%tl196336196980%_
                             _%e196337196983%_
                             _%hd196338196986%_
                             _%tl196339196988%_
                             _%e196340196991%_
                             _%hd196341196994%_
                             _%tl196342196996%_
                             _%e196343196999%_
                             _%hd196344197002%_
                             _%tl196345197004%_
                             _%e196346197007%_
                             _%hd196347197010%_
                             _%tl196348197012%_
                             _%e196349197015%_
                             _%hd196350197018%_
                             _%tl196351197020%_
                             _%e196352197023%_
                             _%hd196353197026%_
                             _%tl196354197028%_
                             _%e196355197031%_
                             _%hd196356197034%_
                             _%tl196357197036%_
                             _%e196358197039%_
                             _%hd196359197042%_
                             _%tl196360197044%_
                             _%e196361197047%_
                             _%hd196362197050%_
                             _%tl196363197052%_
                             _%e196364197055%_
                             _%hd196365197058%_
                             _%tl196366197060%_
                             _%e196367197063%_
                             _%hd196368197066%_
                             _%tl196369197068%_
                             _%__splice200708200709%_
                             _%target196370197071%_
                             _%tl196372197073%_)
                      (letrec ((_%loop196373197076%_
                                (lambda (_%hd196371197079%_
                                         _%args196377197081%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd196371197079%_))
                                      (let ((_%e196374197083%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd196371197079%_))))
                                        (let ((_%lp-tl196376197088%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e196374197083%_)))
                                              (_%lp-hd196375197086%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e196374197083%_))))
                                          (_%loop196373197076%_
                                           _%lp-tl196376197088%_
                                           (cons _%lp-hd196375197086%_
                                                 _%args196377197081%_))))
                                      (let ((_%args196378197091%_
                                             (reverse _%args196377197081%_)))
                                        (let ((_%g196326197093%_
                                               _%args196378197091%_)
                                              (_%g196327197094%_
                                               _%hd196368197066%_)
                                              (_%g196328197095%_
                                               _%hd196359197042%_)
                                              (_%g196329197096%_
                                               _%hd196350197018%_)
                                              (_%g196330197097%_
                                               _%hd196341196994%_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%g196330197097%_
                                                      'apply))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%g196329197096%_
                                                      'call-method))
                                                   (let ((__tmp201862
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self196272%_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%g196328197095%_
                                                      __tmp201862)))
                                              (_%__kont200706200707%_
                                               _%g196326197093%_
                                               _%g196327197094%_
                                               _%g196328197095%_
                                               _%g196329197096%_
                                               _%g196330197097%_)
                                              (_%__kont200718200719%_))))))))
                        (_%loop196373197076%_ _%target196370197071%_ '()))))
                   (_%__match200873200874%_
                    (lambda (_%e196331196967%_
                             _%hd196332196970%_
                             _%tl196333196972%_
                             _%e196334196975%_
                             _%hd196335196978%_
                             _%tl196336196980%_
                             _%e196337196983%_
                             _%hd196338196986%_
                             _%tl196339196988%_
                             _%e196340196991%_
                             _%hd196341196994%_
                             _%tl196342196996%_
                             _%e196343196999%_
                             _%hd196344197002%_
                             _%tl196345197004%_
                             _%e196346197007%_
                             _%hd196347197010%_
                             _%tl196348197012%_
                             _%e196349197015%_
                             _%hd196350197018%_
                             _%tl196351197020%_
                             _%e196352197023%_
                             _%hd196353197026%_
                             _%tl196354197028%_
                             _%e196355197031%_
                             _%hd196356197034%_
                             _%tl196357197036%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _%hd196356197034%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl196357197036%_))
                              (let ((_%e196358197039%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl196357197036%_))))
                                (let ((_%tl196360197044%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196358197039%_)))
                                      (_%hd196359197042%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196358197039%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl196360197044%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl196354197028%_))
                                          (let ((_%e196361197047%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl196354197028%_))))
                                            (let ((_%tl196363197052%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e196361197047%_)))
                                                  (_%hd196362197050%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e196361197047%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd196362197050%_))
                                                  (let ((_%e196364197055%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd196362197050%_))))
                                                    (let ((_%tl196366197060%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e196364197055%_)))
                                                          (_%hd196365197058%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e196364197055%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd196365197058%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#quote _%hd196365197058%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl196366197060%_))
                          (let ((_%e196367197063%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl196366197060%_))))
                            (let ((_%tl196369197068%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e196367197063%_)))
                                  (_%hd196368197066%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e196367197063%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl196369197068%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl196363197052%_))
                                      (let ((_%__splice200708200709%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%tl196363197052%_
                                                '0))))
                                        (let ((_%tl196372197073%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice200708200709%_
                                                  '1)))
                                              (_%target196370197071%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice200708200709%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl196372197073%_))
                                              (_%__match200915200916%_
                                               _%e196331196967%_
                                               _%hd196332196970%_
                                               _%tl196333196972%_
                                               _%e196334196975%_
                                               _%hd196335196978%_
                                               _%tl196336196980%_
                                               _%e196337196983%_
                                               _%hd196338196986%_
                                               _%tl196339196988%_
                                               _%e196340196991%_
                                               _%hd196341196994%_
                                               _%tl196342196996%_
                                               _%e196343196999%_
                                               _%hd196344197002%_
                                               _%tl196345197004%_
                                               _%e196346197007%_
                                               _%hd196347197010%_
                                               _%tl196348197012%_
                                               _%e196349197015%_
                                               _%hd196350197018%_
                                               _%tl196351197020%_
                                               _%e196352197023%_
                                               _%hd196353197026%_
                                               _%tl196354197028%_
                                               _%e196355197031%_
                                               _%hd196356197034%_
                                               _%tl196357197036%_
                                               _%e196358197039%_
                                               _%hd196359197042%_
                                               _%tl196360197044%_
                                               _%e196361197047%_
                                               _%hd196362197050%_
                                               _%tl196363197052%_
                                               _%e196364197055%_
                                               _%hd196365197058%_
                                               _%tl196366197060%_
                                               _%e196367197063%_
                                               _%hd196368197066%_
                                               _%tl196369197068%_
                                               _%__splice200708200709%_
                                               _%target196370197071%_
                                               _%tl196372197073%_)
                                              (_%__kont200718200719%_))))
                                      (_%__kont200718200719%_))
                                  (_%__kont200718200719%_))))
                          (_%__kont200718200719%_))
                      (_%__kont200718200719%_))
                  (_%__kont200718200719%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont200718200719%_))))
                                          (_%__match201197201198%_
                                           _%e196331196967%_
                                           _%hd196332196970%_
                                           _%tl196333196972%_
                                           _%e196334196975%_
                                           _%hd196335196978%_
                                           _%tl196336196980%_
                                           _%e196337196983%_
                                           _%hd196338196986%_
                                           _%tl196339196988%_
                                           _%e196340196991%_
                                           _%hd196341196994%_
                                           _%tl196342196996%_
                                           _%e196343196999%_
                                           _%hd196344197002%_
                                           _%tl196345197004%_
                                           _%e196346197007%_
                                           _%hd196347197010%_
                                           _%tl196348197012%_
                                           _%e196349197015%_
                                           _%hd196350197018%_
                                           _%tl196351197020%_
                                           _%e196352197023%_
                                           _%hd196353197026%_
                                           _%tl196354197028%_))
                                      (_%__match201197201198%_
                                       _%e196331196967%_
                                       _%hd196332196970%_
                                       _%tl196333196972%_
                                       _%e196334196975%_
                                       _%hd196335196978%_
                                       _%tl196336196980%_
                                       _%e196337196983%_
                                       _%hd196338196986%_
                                       _%tl196339196988%_
                                       _%e196340196991%_
                                       _%hd196341196994%_
                                       _%tl196342196996%_
                                       _%e196343196999%_
                                       _%hd196344197002%_
                                       _%tl196345197004%_
                                       _%e196346197007%_
                                       _%hd196347197010%_
                                       _%tl196348197012%_
                                       _%e196349197015%_
                                       _%hd196350197018%_
                                       _%tl196351197020%_
                                       _%e196352197023%_
                                       _%hd196353197026%_
                                       _%tl196354197028%_))))
                              (_%__match201197201198%_
                               _%e196331196967%_
                               _%hd196332196970%_
                               _%tl196333196972%_
                               _%e196334196975%_
                               _%hd196335196978%_
                               _%tl196336196980%_
                               _%e196337196983%_
                               _%hd196338196986%_
                               _%tl196339196988%_
                               _%e196340196991%_
                               _%hd196341196994%_
                               _%tl196342196996%_
                               _%e196343196999%_
                               _%hd196344197002%_
                               _%tl196345197004%_
                               _%e196346197007%_
                               _%hd196347197010%_
                               _%tl196348197012%_
                               _%e196349197015%_
                               _%hd196350197018%_
                               _%tl196351197020%_
                               _%e196352197023%_
                               _%hd196353197026%_
                               _%tl196354197028%_))
                          (_%__match200983200984%_
                           _%e196331196967%_
                           _%hd196332196970%_
                           _%tl196333196972%_
                           _%e196334196975%_
                           _%hd196335196978%_
                           _%tl196336196980%_
                           _%e196337196983%_
                           _%hd196338196986%_
                           _%tl196339196988%_
                           _%e196340196991%_
                           _%hd196341196994%_
                           _%tl196342196996%_
                           _%e196343196999%_
                           _%hd196344197002%_
                           _%tl196345197004%_
                           _%e196346197007%_
                           _%hd196347197010%_
                           _%tl196348197012%_
                           _%e196349197015%_
                           _%hd196350197018%_
                           _%tl196351197020%_
                           _%e196352197023%_
                           _%hd196353197026%_
                           _%tl196354197028%_
                           _%e196355197031%_
                           _%hd196356197034%_
                           _%tl196357197036%_))))
                   (_%__match200805200806%_
                    (lambda (_%e196287197154%_
                             _%hd196288197157%_
                             _%tl196289197159%_
                             _%e196290197162%_
                             _%hd196291197165%_
                             _%tl196292197167%_
                             _%e196293197170%_
                             _%hd196294197173%_
                             _%tl196295197175%_
                             _%e196296197178%_
                             _%hd196297197181%_
                             _%tl196298197183%_
                             _%e196299197186%_
                             _%hd196300197189%_
                             _%tl196301197191%_
                             _%e196302197194%_
                             _%hd196303197197%_
                             _%tl196304197199%_
                             _%e196305197202%_
                             _%hd196306197205%_
                             _%tl196307197207%_
                             _%e196308197210%_
                             _%hd196309197213%_
                             _%tl196310197215%_
                             _%e196311197218%_
                             _%hd196312197221%_
                             _%tl196313197223%_
                             _%e196314197226%_
                             _%hd196315197229%_
                             _%tl196316197231%_
                             _%__splice200704200705%_
                             _%target196317197234%_
                             _%tl196319197236%_)
                      (letrec ((_%loop196320197239%_
                                (lambda (_%hd196318197242%_
                                         _%args196324197244%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd196318197242%_))
                                      (let ((_%e196321197246%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd196318197242%_))))
                                        (let ((_%lp-tl196323197251%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e196321197246%_)))
                                              (_%lp-hd196322197249%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e196321197246%_))))
                                          (_%loop196320197239%_
                                           _%lp-tl196323197251%_
                                           (cons _%lp-hd196322197249%_
                                                 _%args196324197244%_))))
                                      (let ((_%args196325197254%_
                                             (reverse _%args196324197244%_)))
                                        (let ((_%g196283197256%_
                                               _%args196325197254%_)
                                              (_%g196284197257%_
                                               _%hd196315197229%_)
                                              (_%g196285197258%_
                                               _%hd196306197205%_)
                                              (_%g196286197259%_
                                               _%hd196297197181%_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%g196286197259%_
                                                      'call-method))
                                                   (let ((__tmp201863
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self196272%_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%g196285197258%_
                                                      __tmp201863)))
                                              (_%__kont200702200703%_
                                               _%g196283197256%_
                                               _%g196284197257%_
                                               _%g196285197258%_
                                               _%g196286197259%_)
                                              (_%__match200993200994%_
                                               _%e196287197154%_
                                               _%hd196288197157%_
                                               _%tl196289197159%_
                                               _%e196290197162%_
                                               _%hd196291197165%_
                                               _%tl196292197167%_
                                               _%e196293197170%_
                                               _%hd196294197173%_
                                               _%tl196295197175%_
                                               _%e196296197178%_
                                               _%hd196297197181%_
                                               _%tl196298197183%_
                                               _%e196299197186%_
                                               _%hd196300197189%_
                                               _%tl196301197191%_
                                               _%e196302197194%_
                                               _%hd196303197197%_
                                               _%tl196304197199%_
                                               _%e196305197202%_
                                               _%hd196306197205%_
                                               _%tl196307197207%_
                                               _%e196308197210%_
                                               _%hd196309197213%_
                                               _%tl196310197215%_
                                               _%e196311197218%_
                                               _%hd196312197221%_
                                               _%tl196313197223%_
                                               _%e196314197226%_
                                               _%hd196315197229%_
                                               _%tl196316197231%_))))))))
                        (_%loop196320197239%_ _%target196317197234%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx200700200701%_))
                  (let ((_%e196287197154%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx200700200701%_))))
                    (let ((_%tl196289197159%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e196287197154%_)))
                          (_%hd196288197157%_
                           (let ()
                             (declare (not safe))
                             (##car _%e196287197154%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl196289197159%_))
                          (let ((_%e196290197162%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl196289197159%_))))
                            (let ((_%tl196292197167%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e196290197162%_)))
                                  (_%hd196291197165%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e196290197162%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd196291197165%_))
                                  (let ((_%e196293197170%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd196291197165%_))))
                                    (let ((_%tl196295197175%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e196293197170%_)))
                                          (_%hd196294197173%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e196293197170%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd196294197173%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd196294197173%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl196295197175%_))
                                                  (let ((_%e196296197178%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl196295197175%_))))
                                                    (let ((_%tl196298197183%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e196296197178%_)))
                                                          (_%hd196297197181%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e196296197178%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl196298197183%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl196292197167%_))
                      (let ((_%e196299197186%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl196292197167%_))))
                        (let ((_%tl196301197191%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196299197186%_)))
                              (_%hd196300197189%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196299197186%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd196300197189%_))
                              (let ((_%e196302197194%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd196300197189%_))))
                                (let ((_%tl196304197199%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196302197194%_)))
                                      (_%hd196303197197%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196302197194%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd196303197197%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd196303197197%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl196304197199%_))
                                              (let ((_%e196305197202%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl196304197199%_))))
                                                (let ((_%tl196307197207%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e196305197202%_)))
                                                      (_%hd196306197205%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e196305197202%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl196307197207%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl196301197191%_))
                                                          (let ((_%e196308197210%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl196301197191%_))))
                    (let ((_%tl196310197215%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e196308197210%_)))
                          (_%hd196309197213%_
                           (let ()
                             (declare (not safe))
                             (##car _%e196308197210%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd196309197213%_))
                          (let ((_%e196311197218%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd196309197213%_))))
                            (let ((_%tl196313197223%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e196311197218%_)))
                                  (_%hd196312197221%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e196311197218%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd196312197221%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%hd196312197221%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl196313197223%_))
                                          (let ((_%e196314197226%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl196313197223%_))))
                                            (let ((_%tl196316197231%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e196314197226%_)))
                                                  (_%hd196315197229%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e196314197226%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl196316197231%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl196310197215%_))
                                                      (let ((_%__splice200704200705%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%tl196310197215%_
                        '0))))
                (let ((_%tl196319197236%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice200704200705%_ '1)))
                      (_%target196317197234%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice200704200705%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl196319197236%_))
                      (_%__match200805200806%_
                       _%e196287197154%_
                       _%hd196288197157%_
                       _%tl196289197159%_
                       _%e196290197162%_
                       _%hd196291197165%_
                       _%tl196292197167%_
                       _%e196293197170%_
                       _%hd196294197173%_
                       _%tl196295197175%_
                       _%e196296197178%_
                       _%hd196297197181%_
                       _%tl196298197183%_
                       _%e196299197186%_
                       _%hd196300197189%_
                       _%tl196301197191%_
                       _%e196302197194%_
                       _%hd196303197197%_
                       _%tl196304197199%_
                       _%e196305197202%_
                       _%hd196306197205%_
                       _%tl196307197207%_
                       _%e196308197210%_
                       _%hd196309197213%_
                       _%tl196310197215%_
                       _%e196311197218%_
                       _%hd196312197221%_
                       _%tl196313197223%_
                       _%e196314197226%_
                       _%hd196315197229%_
                       _%tl196316197231%_
                       _%__splice200704200705%_
                       _%target196317197234%_
                       _%tl196319197236%_)
                      (_%__match200993200994%_
                       _%e196287197154%_
                       _%hd196288197157%_
                       _%tl196289197159%_
                       _%e196290197162%_
                       _%hd196291197165%_
                       _%tl196292197167%_
                       _%e196293197170%_
                       _%hd196294197173%_
                       _%tl196295197175%_
                       _%e196296197178%_
                       _%hd196297197181%_
                       _%tl196298197183%_
                       _%e196299197186%_
                       _%hd196300197189%_
                       _%tl196301197191%_
                       _%e196302197194%_
                       _%hd196303197197%_
                       _%tl196304197199%_
                       _%e196305197202%_
                       _%hd196306197205%_
                       _%tl196307197207%_
                       _%e196308197210%_
                       _%hd196309197213%_
                       _%tl196310197215%_
                       _%e196311197218%_
                       _%hd196312197221%_
                       _%tl196313197223%_
                       _%e196314197226%_
                       _%hd196315197229%_
                       _%tl196316197231%_))))
              (_%__match200993200994%_
               _%e196287197154%_
               _%hd196288197157%_
               _%tl196289197159%_
               _%e196290197162%_
               _%hd196291197165%_
               _%tl196292197167%_
               _%e196293197170%_
               _%hd196294197173%_
               _%tl196295197175%_
               _%e196296197178%_
               _%hd196297197181%_
               _%tl196298197183%_
               _%e196299197186%_
               _%hd196300197189%_
               _%tl196301197191%_
               _%e196302197194%_
               _%hd196303197197%_
               _%tl196304197199%_
               _%e196305197202%_
               _%hd196306197205%_
               _%tl196307197207%_
               _%e196308197210%_
               _%hd196309197213%_
               _%tl196310197215%_
               _%e196311197218%_
               _%hd196312197221%_
               _%tl196313197223%_
               _%e196314197226%_
               _%hd196315197229%_
               _%tl196316197231%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__match201197201198%_
                                                   _%e196287197154%_
                                                   _%hd196288197157%_
                                                   _%tl196289197159%_
                                                   _%e196290197162%_
                                                   _%hd196291197165%_
                                                   _%tl196292197167%_
                                                   _%e196293197170%_
                                                   _%hd196294197173%_
                                                   _%tl196295197175%_
                                                   _%e196296197178%_
                                                   _%hd196297197181%_
                                                   _%tl196298197183%_
                                                   _%e196299197186%_
                                                   _%hd196300197189%_
                                                   _%tl196301197191%_
                                                   _%e196302197194%_
                                                   _%hd196303197197%_
                                                   _%tl196304197199%_
                                                   _%e196305197202%_
                                                   _%hd196306197205%_
                                                   _%tl196307197207%_
                                                   _%e196308197210%_
                                                   _%hd196309197213%_
                                                   _%tl196310197215%_))))
                                          (_%__match201197201198%_
                                           _%e196287197154%_
                                           _%hd196288197157%_
                                           _%tl196289197159%_
                                           _%e196290197162%_
                                           _%hd196291197165%_
                                           _%tl196292197167%_
                                           _%e196293197170%_
                                           _%hd196294197173%_
                                           _%tl196295197175%_
                                           _%e196296197178%_
                                           _%hd196297197181%_
                                           _%tl196298197183%_
                                           _%e196299197186%_
                                           _%hd196300197189%_
                                           _%tl196301197191%_
                                           _%e196302197194%_
                                           _%hd196303197197%_
                                           _%tl196304197199%_
                                           _%e196305197202%_
                                           _%hd196306197205%_
                                           _%tl196307197207%_
                                           _%e196308197210%_
                                           _%hd196309197213%_
                                           _%tl196310197215%_))
                                      (_%__match200873200874%_
                                       _%e196287197154%_
                                       _%hd196288197157%_
                                       _%tl196289197159%_
                                       _%e196290197162%_
                                       _%hd196291197165%_
                                       _%tl196292197167%_
                                       _%e196293197170%_
                                       _%hd196294197173%_
                                       _%tl196295197175%_
                                       _%e196296197178%_
                                       _%hd196297197181%_
                                       _%tl196298197183%_
                                       _%e196299197186%_
                                       _%hd196300197189%_
                                       _%tl196301197191%_
                                       _%e196302197194%_
                                       _%hd196303197197%_
                                       _%tl196304197199%_
                                       _%e196305197202%_
                                       _%hd196306197205%_
                                       _%tl196307197207%_
                                       _%e196308197210%_
                                       _%hd196309197213%_
                                       _%tl196310197215%_
                                       _%e196311197218%_
                                       _%hd196312197221%_
                                       _%tl196313197223%_))
                                  (_%__match201197201198%_
                                   _%e196287197154%_
                                   _%hd196288197157%_
                                   _%tl196289197159%_
                                   _%e196290197162%_
                                   _%hd196291197165%_
                                   _%tl196292197167%_
                                   _%e196293197170%_
                                   _%hd196294197173%_
                                   _%tl196295197175%_
                                   _%e196296197178%_
                                   _%hd196297197181%_
                                   _%tl196298197183%_
                                   _%e196299197186%_
                                   _%hd196300197189%_
                                   _%tl196301197191%_
                                   _%e196302197194%_
                                   _%hd196303197197%_
                                   _%tl196304197199%_
                                   _%e196305197202%_
                                   _%hd196306197205%_
                                   _%tl196307197207%_
                                   _%e196308197210%_
                                   _%hd196309197213%_
                                   _%tl196310197215%_))))
                          (_%__match201197201198%_
                           _%e196287197154%_
                           _%hd196288197157%_
                           _%tl196289197159%_
                           _%e196290197162%_
                           _%hd196291197165%_
                           _%tl196292197167%_
                           _%e196293197170%_
                           _%hd196294197173%_
                           _%tl196295197175%_
                           _%e196296197178%_
                           _%hd196297197181%_
                           _%tl196298197183%_
                           _%e196299197186%_
                           _%hd196300197189%_
                           _%tl196301197191%_
                           _%e196302197194%_
                           _%hd196303197197%_
                           _%tl196304197199%_
                           _%e196305197202%_
                           _%hd196306197205%_
                           _%tl196307197207%_
                           _%e196308197210%_
                           _%hd196309197213%_
                           _%tl196310197215%_))))
                  (_%__match201135201136%_
                   _%e196287197154%_
                   _%hd196288197157%_
                   _%tl196289197159%_
                   _%e196290197162%_
                   _%hd196291197165%_
                   _%tl196292197167%_
                   _%e196293197170%_
                   _%hd196294197173%_
                   _%tl196295197175%_
                   _%e196296197178%_
                   _%hd196297197181%_
                   _%tl196298197183%_
                   _%e196299197186%_
                   _%hd196300197189%_
                   _%tl196301197191%_
                   _%e196302197194%_
                   _%hd196303197197%_
                   _%tl196304197199%_
                   _%e196305197202%_
                   _%hd196306197205%_
                   _%tl196307197207%_))
              (_%__kont200718200719%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont200718200719%_))
                                          (_%__kont200718200719%_))
                                      (_%__kont200718200719%_))))
                              (_%__kont200718200719%_))))
                      (_%__kont200718200719%_))
                  (_%__kont200718200719%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont200718200719%_))
                                              (_%__kont200718200719%_))
                                          (_%__kont200718200719%_))))
                                  (_%__kont200718200719%_))))
                          (_%__kont200718200719%_))))
                  (_%__kont200718200719%_)))))))
    (define gxc#subst-object-refs-call%
      (lambda (_%self195215%_ _%stx195216%_)
        (letrec ((_%force-e195218%_
                  (lambda (_%target196270%_)
                    (cons '%#call
                          (cons (cons '%#ref (cons 'force '()))
                                (cons (cons '%#ref (cons _%target196270%_ '()))
                                      '()))))))
          (let* ((_%__stx201202201203%_ _%stx195216%_)
                 (_%g195226195448%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx201202201203%_)))))
            (let ((_%__kont201204201205%_
                   (lambda (_%g195228196216%_
                            _%g195229196217%_
                            _%g195230196218%_
                            _%g195231196219%_)
                     (let ((_%$method196264%_
                            (let ((__tmp201865
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self195215%_ 'methods)))
                                  (__tmp201864
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g195229196217%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp201865 __tmp201864)))
                           (_%args196265%_
                            (map (lambda (_%g196252196254%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self195215%_
                                      _%g196252196254%_)))
                                 (let ((__tmp201866
                                        (lambda (_%g196256196259%_
                                                 _%g196257196261%_)
                                          (cons _%g196256196259%_
                                                _%g196257196261%_))))
                                   (declare (not safe))
                                   (__foldr1
                                    __tmp201866
                                    '()
                                    _%g195228196216%_)))))
                       (let ((__tmp201867
                              (cons '%#call
                                    (cons (_%force-e195218%_ _%$method196264%_)
                                          (cons (cons '%#ref
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self195215%_
                                                               'receiver))
                                                            '()))
                                                _%args196265%_)))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp201867 _%stx195216%_)))))
                  (_%__kont201208201209%_
                   (lambda (_%g195271196050%_
                            _%g195272196051%_
                            _%g195273196052%_
                            _%g195274196053%_
                            _%g195275196054%_)
                     (let ((_%$method196106%_
                            (let ((__tmp201869
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self195215%_ 'methods)))
                                  (__tmp201868
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g195272196051%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp201869 __tmp201868)))
                           (_%args196107%_
                            (map (lambda (_%g196094196096%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self195215%_
                                      _%g196094196096%_)))
                                 (let ((__tmp201870
                                        (lambda (_%g196098196101%_
                                                 _%g196099196103%_)
                                          (cons _%g196098196101%_
                                                _%g196099196103%_))))
                                   (declare (not safe))
                                   (__foldr1
                                    __tmp201870
                                    '()
                                    _%g195271196050%_)))))
                       (let ((__tmp201871
                              (cons '%#call
                                    (cons (cons '%#ref (cons 'apply '()))
                                          (cons (_%force-e195218%_
                                                 _%$method196106%_)
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (slot-ref__0 _%self195215%_ 'receiver))
                          '()))
              _%args196107%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp201871 _%stx195216%_)))))
                  (_%__kont201212201213%_
                   (lambda (_%g195324195883%_
                            _%g195325195884%_
                            _%g195326195885%_)
                     (let* ((_%$field195917%_
                             (let ((__tmp201873
                                    (let ()
                                      (declare (not safe))
                                      (slot-ref__0 _%self195215%_ 'slots)))
                                   (__tmp201872
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%g195324195883%_))))
                               (declare (not safe))
                               (hash-ref__0 __tmp201873 __tmp201872)))
                            (__tmp201874
                             (cons '%#struct-unchecked-ref
                                   (cons (cons '%#ref
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (slot-ref__0
                                                        _%self195215%_
                                                        'klass))
                                                     '()))
                                         (cons (cons '%#ref
                                                     (cons _%$field195917%_
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (slot-ref__0 _%self195215%_ 'receiver))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp201874 _%stx195216%_))))
                  (_%__kont201214201215%_
                   (lambda (_%g195357195757%_
                            _%g195358195758%_
                            _%g195359195759%_
                            _%g195360195760%_)
                     (let ((_%$field195795%_
                            (let ((__tmp201876
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self195215%_ 'slots)))
                                  (__tmp201875
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g195358195758%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp201876 __tmp201875)))
                           (_%expr195796%_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-e__1
                               _%self195215%_
                               _%g195357195757%_))))
                       (let ((__tmp201877
                              (cons '%#struct-unchecked-set!
                                    (cons (cons '%#ref
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (slot-ref__0
                                                         _%self195215%_
                                                         'klass))
                                                      '()))
                                          (cons (cons '%#ref
                                                      (cons _%$field195795%_
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (slot-ref__0 _%self195215%_ 'receiver))
                          '()))
              (cons _%expr195796%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp201877 _%stx195216%_)))))
                  (_%__kont201216201217%_
                   (lambda (_%g195394195629%_ _%g195395195630%_)
                     (let* ((_%accessor195652%_
                             (let ((__tmp201878
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol
                                       _%g195395195630%_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp201878)))
                            (_%klass195654%_
                             (let ((__tmp201879
                                    (##structure-ref
                                     _%accessor195652%_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _%stx195216%_
                                __tmp201879)))
                            (_%slot195656%_
                             (##structure-ref
                              _%accessor195652%_
                              '3
                              gxc#!accessor::t
                              '#f)))
                       (if (if (##structure-ref
                                _%accessor195652%_
                                '4
                                gxc#!accessor::t
                                '#f)
                               '#f
                               (or (let ()
                                     (declare (not safe))
                                     (gxc#!class-struct-slot?
                                      _%klass195654%_
                                      _%slot195656%_))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass195654%_
                                      '8
                                      '#f
                                      '#f))))
                           _%stx195216%_
                           (let* ((_%$field195662%_
                                   (let ((__tmp201880
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self195215%_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp201880 _%slot195656%_)))
                                  (__tmp201881
                                   (cons '%#struct-unchecked-ref
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (slot-ref__0
                                                              _%self195215%_
                                                              'klass))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$field195662%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _%self195215%_ 'receiver))
                               '()))
                   '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp201881
                              _%stx195216%_))))))
                  (_%__kont201218201219%_
                   (lambda (_%g195417195524%_
                            _%g195418195525%_
                            _%g195419195526%_)
                     (let* ((_%mutator195554%_
                             (let ((__tmp201882
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol
                                       _%g195419195526%_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp201882)))
                            (_%klass195556%_
                             (let ((__tmp201883
                                    (##structure-ref
                                     _%mutator195554%_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _%stx195216%_
                                __tmp201883)))
                            (_%slot195558%_
                             (##structure-ref
                              _%mutator195554%_
                              '3
                              gxc#!mutator::t
                              '#f))
                            (_%expr195560%_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-e__1
                                _%self195215%_
                                _%g195417195524%_))))
                       (if (if (##structure-ref
                                _%mutator195554%_
                                '4
                                gxc#!mutator::t
                                '#f)
                               '#f
                               (or (let ()
                                     (declare (not safe))
                                     (gxc#!class-struct-slot?
                                      _%klass195556%_
                                      _%slot195558%_))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass195556%_
                                      '8
                                      '#f
                                      '#f))))
                           (let ((__tmp201884
                                  (cons '%#call
                                        (cons (cons (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       '%#ref))
                                                    (cons _%g195419195526%_
                                                          '()))
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#ref))
                                                          (cons _%g195418195525%_
                                                                '()))
                                                    (cons _%expr195560%_
                                                          '()))))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp201884 _%stx195216%_))
                           (let* ((_%$field195566%_
                                   (let ((__tmp201885
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self195215%_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp201885 _%slot195558%_)))
                                  (__tmp201886
                                   (cons '%#struct-unchecked-set!
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (slot-ref__0
                                                              _%self195215%_
                                                              'klass))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$field195566%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _%self195215%_ 'receiver))
                               '()))
                   (cons _%expr195560%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp201886
                              _%stx195216%_))))))
                  (_%__kont201220201221%_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-operands _%self195215%_ _%stx195216%_)))))
              (let* ((_%__match201701201702%_
                      (lambda (_%e195420195460%_
                               _%hd195421195463%_
                               _%tl195422195465%_
                               _%e195423195468%_
                               _%hd195424195471%_
                               _%tl195425195473%_
                               _%e195426195476%_
                               _%hd195427195479%_
                               _%tl195428195481%_
                               _%e195429195484%_
                               _%hd195430195487%_
                               _%tl195431195489%_
                               _%e195432195492%_
                               _%hd195433195495%_
                               _%tl195434195497%_
                               _%e195435195500%_
                               _%hd195436195503%_
                               _%tl195437195505%_
                               _%e195438195508%_
                               _%hd195439195511%_
                               _%tl195440195513%_
                               _%e195441195516%_
                               _%hd195442195519%_
                               _%tl195443195521%_)
                        (let ((_%g195417195524%_ _%hd195442195519%_)
                              (_%g195418195525%_ _%hd195439195511%_)
                              (_%g195419195526%_ _%hd195430195487%_))
                          (if (and (let ((__tmp201887
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self195215%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%g195418195525%_
                                      __tmp201887))
                                   (let ((__tmp201888
                                          (let ((__tmp201889
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%g195419195526%_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp201889))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp201888
                                      'gxc#!mutator::t)))
                              (_%__kont201218201219%_
                               _%g195417195524%_
                               _%g195418195525%_
                               _%g195419195526%_)
                              (_%__kont201220201221%_)))))
                     (_%__match201699201700%_
                      (lambda (_%e195420195460%_
                               _%hd195421195463%_
                               _%tl195422195465%_
                               _%e195423195468%_
                               _%hd195424195471%_
                               _%tl195425195473%_
                               _%e195426195476%_
                               _%hd195427195479%_
                               _%tl195428195481%_
                               _%e195429195484%_
                               _%hd195430195487%_
                               _%tl195431195489%_
                               _%e195432195492%_
                               _%hd195433195495%_
                               _%tl195434195497%_
                               _%e195435195500%_
                               _%hd195436195503%_
                               _%tl195437195505%_
                               _%e195438195508%_
                               _%hd195439195511%_
                               _%tl195440195513%_
                               _%e195441195516%_
                               _%hd195442195519%_
                               _%tl195443195521%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl195443195521%_))
                            (_%__match201701201702%_
                             _%e195420195460%_
                             _%hd195421195463%_
                             _%tl195422195465%_
                             _%e195423195468%_
                             _%hd195424195471%_
                             _%tl195425195473%_
                             _%e195426195476%_
                             _%hd195427195479%_
                             _%tl195428195481%_
                             _%e195429195484%_
                             _%hd195430195487%_
                             _%tl195431195489%_
                             _%e195432195492%_
                             _%hd195433195495%_
                             _%tl195434195497%_
                             _%e195435195500%_
                             _%hd195436195503%_
                             _%tl195437195505%_
                             _%e195438195508%_
                             _%hd195439195511%_
                             _%tl195440195513%_
                             _%e195441195516%_
                             _%hd195442195519%_
                             _%tl195443195521%_)
                            (_%__kont201220201221%_))))
                     (_%__match201693201694%_
                      (lambda (_%e195420195460%_
                               _%hd195421195463%_
                               _%tl195422195465%_
                               _%e195423195468%_
                               _%hd195424195471%_
                               _%tl195425195473%_
                               _%e195426195476%_
                               _%hd195427195479%_
                               _%tl195428195481%_
                               _%e195429195484%_
                               _%hd195430195487%_
                               _%tl195431195489%_
                               _%e195432195492%_
                               _%hd195433195495%_
                               _%tl195434195497%_
                               _%e195435195500%_
                               _%hd195436195503%_
                               _%tl195437195505%_
                               _%e195438195508%_
                               _%hd195439195511%_
                               _%tl195440195513%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl195434195497%_))
                            (let ((_%e195441195516%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl195434195497%_))))
                              (let ((_%tl195443195521%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e195441195516%_)))
                                    (_%hd195442195519%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e195441195516%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl195443195521%_))
                                    (_%__match201701201702%_
                                     _%e195420195460%_
                                     _%hd195421195463%_
                                     _%tl195422195465%_
                                     _%e195423195468%_
                                     _%hd195424195471%_
                                     _%tl195425195473%_
                                     _%e195426195476%_
                                     _%hd195427195479%_
                                     _%tl195428195481%_
                                     _%e195429195484%_
                                     _%hd195430195487%_
                                     _%tl195431195489%_
                                     _%e195432195492%_
                                     _%hd195433195495%_
                                     _%tl195434195497%_
                                     _%e195435195500%_
                                     _%hd195436195503%_
                                     _%tl195437195505%_
                                     _%e195438195508%_
                                     _%hd195439195511%_
                                     _%tl195440195513%_
                                     _%e195441195516%_
                                     _%hd195442195519%_
                                     _%tl195443195521%_)
                                    (_%__kont201220201221%_))))
                            (_%__kont201220201221%_))))
                     (_%__match201639201640%_
                      (lambda (_%e195396195573%_
                               _%hd195397195576%_
                               _%tl195398195578%_
                               _%e195399195581%_
                               _%hd195400195584%_
                               _%tl195401195586%_
                               _%e195402195589%_
                               _%hd195403195592%_
                               _%tl195404195594%_
                               _%e195405195597%_
                               _%hd195406195600%_
                               _%tl195407195602%_
                               _%e195408195605%_
                               _%hd195409195608%_
                               _%tl195410195610%_
                               _%e195411195613%_
                               _%hd195412195616%_
                               _%tl195413195618%_
                               _%e195414195621%_
                               _%hd195415195624%_
                               _%tl195416195626%_)
                        (let ((_%g195394195629%_ _%hd195415195624%_)
                              (_%g195395195630%_ _%hd195406195600%_))
                          (if (and (let ((__tmp201890
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self195215%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%g195394195629%_
                                      __tmp201890))
                                   (let ((__tmp201891
                                          (let ((__tmp201892
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%g195395195630%_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp201892))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp201891
                                      'gxc#!accessor::t)))
                              (_%__kont201216201217%_
                               _%g195394195629%_
                               _%g195395195630%_)
                              (_%__kont201220201221%_)))))
                     (_%__match201637201638%_
                      (lambda (_%e195396195573%_
                               _%hd195397195576%_
                               _%tl195398195578%_
                               _%e195399195581%_
                               _%hd195400195584%_
                               _%tl195401195586%_
                               _%e195402195589%_
                               _%hd195403195592%_
                               _%tl195404195594%_
                               _%e195405195597%_
                               _%hd195406195600%_
                               _%tl195407195602%_
                               _%e195408195605%_
                               _%hd195409195608%_
                               _%tl195410195610%_
                               _%e195411195613%_
                               _%hd195412195616%_
                               _%tl195413195618%_
                               _%e195414195621%_
                               _%hd195415195624%_
                               _%tl195416195626%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl195410195610%_))
                            (_%__match201639201640%_
                             _%e195396195573%_
                             _%hd195397195576%_
                             _%tl195398195578%_
                             _%e195399195581%_
                             _%hd195400195584%_
                             _%tl195401195586%_
                             _%e195402195589%_
                             _%hd195403195592%_
                             _%tl195404195594%_
                             _%e195405195597%_
                             _%hd195406195600%_
                             _%tl195407195602%_
                             _%e195408195605%_
                             _%hd195409195608%_
                             _%tl195410195610%_
                             _%e195411195613%_
                             _%hd195412195616%_
                             _%tl195413195618%_
                             _%e195414195621%_
                             _%hd195415195624%_
                             _%tl195416195626%_)
                            (_%__match201693201694%_
                             _%e195396195573%_
                             _%hd195397195576%_
                             _%tl195398195578%_
                             _%e195399195581%_
                             _%hd195400195584%_
                             _%tl195401195586%_
                             _%e195402195589%_
                             _%hd195403195592%_
                             _%tl195404195594%_
                             _%e195405195597%_
                             _%hd195406195600%_
                             _%tl195407195602%_
                             _%e195408195605%_
                             _%hd195409195608%_
                             _%tl195410195610%_
                             _%e195411195613%_
                             _%hd195412195616%_
                             _%tl195413195618%_
                             _%e195414195621%_
                             _%hd195415195624%_
                             _%tl195416195626%_))))
                     (_%__match201583201584%_
                      (lambda (_%e195361195669%_
                               _%hd195362195672%_
                               _%tl195363195674%_
                               _%e195364195677%_
                               _%hd195365195680%_
                               _%tl195366195682%_
                               _%e195367195685%_
                               _%hd195368195688%_
                               _%tl195369195690%_
                               _%e195370195693%_
                               _%hd195371195696%_
                               _%tl195372195698%_
                               _%e195373195701%_
                               _%hd195374195704%_
                               _%tl195375195706%_
                               _%e195376195709%_
                               _%hd195377195712%_
                               _%tl195378195714%_
                               _%e195379195717%_
                               _%hd195380195720%_
                               _%tl195381195722%_
                               _%e195382195725%_
                               _%hd195383195728%_
                               _%tl195384195730%_
                               _%e195385195733%_
                               _%hd195386195736%_
                               _%tl195387195738%_
                               _%e195388195741%_
                               _%hd195389195744%_
                               _%tl195390195746%_
                               _%e195391195749%_
                               _%hd195392195752%_
                               _%tl195393195754%_)
                        (let ((_%g195357195757%_ _%hd195392195752%_)
                              (_%g195358195758%_ _%hd195389195744%_)
                              (_%g195359195759%_ _%hd195380195720%_)
                              (_%g195360195760%_ _%hd195371195696%_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%g195360195760%_
                                          'slot-set!))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%g195360195760%_
                                          'unchecked-slot-set!)))
                                   (let ((__tmp201893
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self195215%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%g195359195759%_
                                      __tmp201893)))
                              (_%__kont201214201215%_
                               _%g195357195757%_
                               _%g195358195758%_
                               _%g195359195759%_
                               _%g195360195760%_)
                              (_%__kont201220201221%_)))))
                     (_%__match201575201576%_
                      (lambda (_%e195361195669%_
                               _%hd195362195672%_
                               _%tl195363195674%_
                               _%e195364195677%_
                               _%hd195365195680%_
                               _%tl195366195682%_
                               _%e195367195685%_
                               _%hd195368195688%_
                               _%tl195369195690%_
                               _%e195370195693%_
                               _%hd195371195696%_
                               _%tl195372195698%_
                               _%e195373195701%_
                               _%hd195374195704%_
                               _%tl195375195706%_
                               _%e195376195709%_
                               _%hd195377195712%_
                               _%tl195378195714%_
                               _%e195379195717%_
                               _%hd195380195720%_
                               _%tl195381195722%_
                               _%e195382195725%_
                               _%hd195383195728%_
                               _%tl195384195730%_
                               _%e195385195733%_
                               _%hd195386195736%_
                               _%tl195387195738%_
                               _%e195388195741%_
                               _%hd195389195744%_
                               _%tl195390195746%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl195384195730%_))
                            (let ((_%e195391195749%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl195384195730%_))))
                              (let ((_%tl195393195754%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e195391195749%_)))
                                    (_%hd195392195752%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e195391195749%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl195393195754%_))
                                    (_%__match201583201584%_
                                     _%e195361195669%_
                                     _%hd195362195672%_
                                     _%tl195363195674%_
                                     _%e195364195677%_
                                     _%hd195365195680%_
                                     _%tl195366195682%_
                                     _%e195367195685%_
                                     _%hd195368195688%_
                                     _%tl195369195690%_
                                     _%e195370195693%_
                                     _%hd195371195696%_
                                     _%tl195372195698%_
                                     _%e195373195701%_
                                     _%hd195374195704%_
                                     _%tl195375195706%_
                                     _%e195376195709%_
                                     _%hd195377195712%_
                                     _%tl195378195714%_
                                     _%e195379195717%_
                                     _%hd195380195720%_
                                     _%tl195381195722%_
                                     _%e195382195725%_
                                     _%hd195383195728%_
                                     _%tl195384195730%_
                                     _%e195385195733%_
                                     _%hd195386195736%_
                                     _%tl195387195738%_
                                     _%e195388195741%_
                                     _%hd195389195744%_
                                     _%tl195390195746%_
                                     _%e195391195749%_
                                     _%hd195392195752%_
                                     _%tl195393195754%_)
                                    (_%__kont201220201221%_))))
                            (_%__match201699201700%_
                             _%e195361195669%_
                             _%hd195362195672%_
                             _%tl195363195674%_
                             _%e195364195677%_
                             _%hd195365195680%_
                             _%tl195366195682%_
                             _%e195367195685%_
                             _%hd195368195688%_
                             _%tl195369195690%_
                             _%e195370195693%_
                             _%hd195371195696%_
                             _%tl195372195698%_
                             _%e195373195701%_
                             _%hd195374195704%_
                             _%tl195375195706%_
                             _%e195376195709%_
                             _%hd195377195712%_
                             _%tl195378195714%_
                             _%e195379195717%_
                             _%hd195380195720%_
                             _%tl195381195722%_
                             _%e195382195725%_
                             _%hd195383195728%_
                             _%tl195384195730%_))))
                     (_%__match201497201498%_
                      (lambda (_%e195327195803%_
                               _%hd195328195806%_
                               _%tl195329195808%_
                               _%e195330195811%_
                               _%hd195331195814%_
                               _%tl195332195816%_
                               _%e195333195819%_
                               _%hd195334195822%_
                               _%tl195335195824%_
                               _%e195336195827%_
                               _%hd195337195830%_
                               _%tl195338195832%_
                               _%e195339195835%_
                               _%hd195340195838%_
                               _%tl195341195840%_
                               _%e195342195843%_
                               _%hd195343195846%_
                               _%tl195344195848%_
                               _%e195345195851%_
                               _%hd195346195854%_
                               _%tl195347195856%_
                               _%e195348195859%_
                               _%hd195349195862%_
                               _%tl195350195864%_
                               _%e195351195867%_
                               _%hd195352195870%_
                               _%tl195353195872%_
                               _%e195354195875%_
                               _%hd195355195878%_
                               _%tl195356195880%_)
                        (let ((_%g195324195883%_ _%hd195355195878%_)
                              (_%g195325195884%_ _%hd195346195854%_)
                              (_%g195326195885%_ _%hd195337195830%_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%g195326195885%_
                                          'slot-ref))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%g195326195885%_
                                          'unchecked-slot-ref)))
                                   (let ((__tmp201894
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self195215%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%g195325195884%_
                                      __tmp201894)))
                              (_%__kont201212201213%_
                               _%g195324195883%_
                               _%g195325195884%_
                               _%g195326195885%_)
                              (_%__match201701201702%_
                               _%e195327195803%_
                               _%hd195328195806%_
                               _%tl195329195808%_
                               _%e195330195811%_
                               _%hd195331195814%_
                               _%tl195332195816%_
                               _%e195333195819%_
                               _%hd195334195822%_
                               _%tl195335195824%_
                               _%e195336195827%_
                               _%hd195337195830%_
                               _%tl195338195832%_
                               _%e195339195835%_
                               _%hd195340195838%_
                               _%tl195341195840%_
                               _%e195342195843%_
                               _%hd195343195846%_
                               _%tl195344195848%_
                               _%e195345195851%_
                               _%hd195346195854%_
                               _%tl195347195856%_
                               _%e195348195859%_
                               _%hd195349195862%_
                               _%tl195350195864%_)))))
                     (_%__match201495201496%_
                      (lambda (_%e195327195803%_
                               _%hd195328195806%_
                               _%tl195329195808%_
                               _%e195330195811%_
                               _%hd195331195814%_
                               _%tl195332195816%_
                               _%e195333195819%_
                               _%hd195334195822%_
                               _%tl195335195824%_
                               _%e195336195827%_
                               _%hd195337195830%_
                               _%tl195338195832%_
                               _%e195339195835%_
                               _%hd195340195838%_
                               _%tl195341195840%_
                               _%e195342195843%_
                               _%hd195343195846%_
                               _%tl195344195848%_
                               _%e195345195851%_
                               _%hd195346195854%_
                               _%tl195347195856%_
                               _%e195348195859%_
                               _%hd195349195862%_
                               _%tl195350195864%_
                               _%e195351195867%_
                               _%hd195352195870%_
                               _%tl195353195872%_
                               _%e195354195875%_
                               _%hd195355195878%_
                               _%tl195356195880%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl195350195864%_))
                            (_%__match201497201498%_
                             _%e195327195803%_
                             _%hd195328195806%_
                             _%tl195329195808%_
                             _%e195330195811%_
                             _%hd195331195814%_
                             _%tl195332195816%_
                             _%e195333195819%_
                             _%hd195334195822%_
                             _%tl195335195824%_
                             _%e195336195827%_
                             _%hd195337195830%_
                             _%tl195338195832%_
                             _%e195339195835%_
                             _%hd195340195838%_
                             _%tl195341195840%_
                             _%e195342195843%_
                             _%hd195343195846%_
                             _%tl195344195848%_
                             _%e195345195851%_
                             _%hd195346195854%_
                             _%tl195347195856%_
                             _%e195348195859%_
                             _%hd195349195862%_
                             _%tl195350195864%_
                             _%e195351195867%_
                             _%hd195352195870%_
                             _%tl195353195872%_
                             _%e195354195875%_
                             _%hd195355195878%_
                             _%tl195356195880%_)
                            (_%__match201575201576%_
                             _%e195327195803%_
                             _%hd195328195806%_
                             _%tl195329195808%_
                             _%e195330195811%_
                             _%hd195331195814%_
                             _%tl195332195816%_
                             _%e195333195819%_
                             _%hd195334195822%_
                             _%tl195335195824%_
                             _%e195336195827%_
                             _%hd195337195830%_
                             _%tl195338195832%_
                             _%e195339195835%_
                             _%hd195340195838%_
                             _%tl195341195840%_
                             _%e195342195843%_
                             _%hd195343195846%_
                             _%tl195344195848%_
                             _%e195345195851%_
                             _%hd195346195854%_
                             _%tl195347195856%_
                             _%e195348195859%_
                             _%hd195349195862%_
                             _%tl195350195864%_
                             _%e195351195867%_
                             _%hd195352195870%_
                             _%tl195353195872%_
                             _%e195354195875%_
                             _%hd195355195878%_
                             _%tl195356195880%_))))
                     (_%__match201485201486%_
                      (lambda (_%e195327195803%_
                               _%hd195328195806%_
                               _%tl195329195808%_
                               _%e195330195811%_
                               _%hd195331195814%_
                               _%tl195332195816%_
                               _%e195333195819%_
                               _%hd195334195822%_
                               _%tl195335195824%_
                               _%e195336195827%_
                               _%hd195337195830%_
                               _%tl195338195832%_
                               _%e195339195835%_
                               _%hd195340195838%_
                               _%tl195341195840%_
                               _%e195342195843%_
                               _%hd195343195846%_
                               _%tl195344195848%_
                               _%e195345195851%_
                               _%hd195346195854%_
                               _%tl195347195856%_
                               _%e195348195859%_
                               _%hd195349195862%_
                               _%tl195350195864%_
                               _%e195351195867%_
                               _%hd195352195870%_
                               _%tl195353195872%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#quote _%hd195352195870%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl195353195872%_))
                                (let ((_%e195354195875%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl195353195872%_))))
                                  (let ((_%tl195356195880%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e195354195875%_)))
                                        (_%hd195355195878%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e195354195875%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl195356195880%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl195350195864%_))
                                            (_%__match201497201498%_
                                             _%e195327195803%_
                                             _%hd195328195806%_
                                             _%tl195329195808%_
                                             _%e195330195811%_
                                             _%hd195331195814%_
                                             _%tl195332195816%_
                                             _%e195333195819%_
                                             _%hd195334195822%_
                                             _%tl195335195824%_
                                             _%e195336195827%_
                                             _%hd195337195830%_
                                             _%tl195338195832%_
                                             _%e195339195835%_
                                             _%hd195340195838%_
                                             _%tl195341195840%_
                                             _%e195342195843%_
                                             _%hd195343195846%_
                                             _%tl195344195848%_
                                             _%e195345195851%_
                                             _%hd195346195854%_
                                             _%tl195347195856%_
                                             _%e195348195859%_
                                             _%hd195349195862%_
                                             _%tl195350195864%_
                                             _%e195351195867%_
                                             _%hd195352195870%_
                                             _%tl195353195872%_
                                             _%e195354195875%_
                                             _%hd195355195878%_
                                             _%tl195356195880%_)
                                            (_%__match201575201576%_
                                             _%e195327195803%_
                                             _%hd195328195806%_
                                             _%tl195329195808%_
                                             _%e195330195811%_
                                             _%hd195331195814%_
                                             _%tl195332195816%_
                                             _%e195333195819%_
                                             _%hd195334195822%_
                                             _%tl195335195824%_
                                             _%e195336195827%_
                                             _%hd195337195830%_
                                             _%tl195338195832%_
                                             _%e195339195835%_
                                             _%hd195340195838%_
                                             _%tl195341195840%_
                                             _%e195342195843%_
                                             _%hd195343195846%_
                                             _%tl195344195848%_
                                             _%e195345195851%_
                                             _%hd195346195854%_
                                             _%tl195347195856%_
                                             _%e195348195859%_
                                             _%hd195349195862%_
                                             _%tl195350195864%_
                                             _%e195351195867%_
                                             _%hd195352195870%_
                                             _%tl195353195872%_
                                             _%e195354195875%_
                                             _%hd195355195878%_
                                             _%tl195356195880%_))
                                        (_%__match201699201700%_
                                         _%e195327195803%_
                                         _%hd195328195806%_
                                         _%tl195329195808%_
                                         _%e195330195811%_
                                         _%hd195331195814%_
                                         _%tl195332195816%_
                                         _%e195333195819%_
                                         _%hd195334195822%_
                                         _%tl195335195824%_
                                         _%e195336195827%_
                                         _%hd195337195830%_
                                         _%tl195338195832%_
                                         _%e195339195835%_
                                         _%hd195340195838%_
                                         _%tl195341195840%_
                                         _%e195342195843%_
                                         _%hd195343195846%_
                                         _%tl195344195848%_
                                         _%e195345195851%_
                                         _%hd195346195854%_
                                         _%tl195347195856%_
                                         _%e195348195859%_
                                         _%hd195349195862%_
                                         _%tl195350195864%_))))
                                (_%__match201699201700%_
                                 _%e195327195803%_
                                 _%hd195328195806%_
                                 _%tl195329195808%_
                                 _%e195330195811%_
                                 _%hd195331195814%_
                                 _%tl195332195816%_
                                 _%e195333195819%_
                                 _%hd195334195822%_
                                 _%tl195335195824%_
                                 _%e195336195827%_
                                 _%hd195337195830%_
                                 _%tl195338195832%_
                                 _%e195339195835%_
                                 _%hd195340195838%_
                                 _%tl195341195840%_
                                 _%e195342195843%_
                                 _%hd195343195846%_
                                 _%tl195344195848%_
                                 _%e195345195851%_
                                 _%hd195346195854%_
                                 _%tl195347195856%_
                                 _%e195348195859%_
                                 _%hd195349195862%_
                                 _%tl195350195864%_))
                            (_%__match201699201700%_
                             _%e195327195803%_
                             _%hd195328195806%_
                             _%tl195329195808%_
                             _%e195330195811%_
                             _%hd195331195814%_
                             _%tl195332195816%_
                             _%e195333195819%_
                             _%hd195334195822%_
                             _%tl195335195824%_
                             _%e195336195827%_
                             _%hd195337195830%_
                             _%tl195338195832%_
                             _%e195339195835%_
                             _%hd195340195838%_
                             _%tl195341195840%_
                             _%e195342195843%_
                             _%hd195343195846%_
                             _%tl195344195848%_
                             _%e195345195851%_
                             _%hd195346195854%_
                             _%tl195347195856%_
                             _%e195348195859%_
                             _%hd195349195862%_
                             _%tl195350195864%_))))
                     (_%__match201417201418%_
                      (lambda (_%e195276195924%_
                               _%hd195277195927%_
                               _%tl195278195929%_
                               _%e195279195932%_
                               _%hd195280195935%_
                               _%tl195281195937%_
                               _%e195282195940%_
                               _%hd195283195943%_
                               _%tl195284195945%_
                               _%e195285195948%_
                               _%hd195286195951%_
                               _%tl195287195953%_
                               _%e195288195956%_
                               _%hd195289195959%_
                               _%tl195290195961%_
                               _%e195291195964%_
                               _%hd195292195967%_
                               _%tl195293195969%_
                               _%e195294195972%_
                               _%hd195295195975%_
                               _%tl195296195977%_
                               _%e195297195980%_
                               _%hd195298195983%_
                               _%tl195299195985%_
                               _%e195300195988%_
                               _%hd195301195991%_
                               _%tl195302195993%_
                               _%e195303195996%_
                               _%hd195304195999%_
                               _%tl195305196001%_
                               _%e195306196004%_
                               _%hd195307196007%_
                               _%tl195308196009%_
                               _%e195309196012%_
                               _%hd195310196015%_
                               _%tl195311196017%_
                               _%e195312196020%_
                               _%hd195313196023%_
                               _%tl195314196025%_
                               _%__splice201210201211%_
                               _%target195315196028%_
                               _%tl195317196030%_)
                        (letrec ((_%loop195318196033%_
                                  (lambda (_%hd195316196036%_
                                           _%args195322196038%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd195316196036%_))
                                        (let ((_%e195319196040%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd195316196036%_))))
                                          (let ((_%lp-tl195321196045%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e195319196040%_)))
                                                (_%lp-hd195320196043%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e195319196040%_))))
                                            (_%loop195318196033%_
                                             _%lp-tl195321196045%_
                                             (cons _%lp-hd195320196043%_
                                                   _%args195322196038%_))))
                                        (let ((_%args195323196048%_
                                               (reverse _%args195322196038%_)))
                                          (let ((_%g195271196050%_
                                                 _%args195323196048%_)
                                                (_%g195272196051%_
                                                 _%hd195313196023%_)
                                                (_%g195273196052%_
                                                 _%hd195304195999%_)
                                                (_%g195274196053%_
                                                 _%hd195295195975%_)
                                                (_%g195275196054%_
                                                 _%hd195286195951%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%g195275196054%_
                                                        'apply))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%g195274196053%_
                                                        'call-method))
                                                     (let ((__tmp201895
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self195215%_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _%g195273196052%_
                                                        __tmp201895)))
                                                (_%__kont201208201209%_
                                                 _%g195271196050%_
                                                 _%g195272196051%_
                                                 _%g195273196052%_
                                                 _%g195274196053%_
                                                 _%g195275196054%_)
                                                (_%__kont201220201221%_))))))))
                          (_%loop195318196033%_ _%target195315196028%_ '()))))
                     (_%__match201375201376%_
                      (lambda (_%e195276195924%_
                               _%hd195277195927%_
                               _%tl195278195929%_
                               _%e195279195932%_
                               _%hd195280195935%_
                               _%tl195281195937%_
                               _%e195282195940%_
                               _%hd195283195943%_
                               _%tl195284195945%_
                               _%e195285195948%_
                               _%hd195286195951%_
                               _%tl195287195953%_
                               _%e195288195956%_
                               _%hd195289195959%_
                               _%tl195290195961%_
                               _%e195291195964%_
                               _%hd195292195967%_
                               _%tl195293195969%_
                               _%e195294195972%_
                               _%hd195295195975%_
                               _%tl195296195977%_
                               _%e195297195980%_
                               _%hd195298195983%_
                               _%tl195299195985%_
                               _%e195300195988%_
                               _%hd195301195991%_
                               _%tl195302195993%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _%hd195301195991%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl195302195993%_))
                                (let ((_%e195303195996%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl195302195993%_))))
                                  (let ((_%tl195305196001%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e195303195996%_)))
                                        (_%hd195304195999%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e195303195996%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl195305196001%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl195299195985%_))
                                            (let ((_%e195306196004%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl195299195985%_))))
                                              (let ((_%tl195308196009%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e195306196004%_)))
                                                    (_%hd195307196007%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e195306196004%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%hd195307196007%_))
                                                    (let ((_%e195309196012%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd195307196007%_))))
                                                      (let ((_%tl195311196017%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e195309196012%_)))
                    (_%hd195310196015%_
                     (let () (declare (not safe)) (##car _%e195309196012%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _%hd195310196015%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _%hd195310196015%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl195311196017%_))
                            (let ((_%e195312196020%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl195311196017%_))))
                              (let ((_%tl195314196025%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e195312196020%_)))
                                    (_%hd195313196023%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e195312196020%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl195314196025%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl195308196009%_))
                                        (let ((_%__splice201210201211%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice->vector
                                                  _%tl195308196009%_
                                                  '0))))
                                          (let ((_%tl195317196030%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice201210201211%_
                                                    '1)))
                                                (_%target195315196028%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice201210201211%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl195317196030%_))
                                                (_%__match201417201418%_
                                                 _%e195276195924%_
                                                 _%hd195277195927%_
                                                 _%tl195278195929%_
                                                 _%e195279195932%_
                                                 _%hd195280195935%_
                                                 _%tl195281195937%_
                                                 _%e195282195940%_
                                                 _%hd195283195943%_
                                                 _%tl195284195945%_
                                                 _%e195285195948%_
                                                 _%hd195286195951%_
                                                 _%tl195287195953%_
                                                 _%e195288195956%_
                                                 _%hd195289195959%_
                                                 _%tl195290195961%_
                                                 _%e195291195964%_
                                                 _%hd195292195967%_
                                                 _%tl195293195969%_
                                                 _%e195294195972%_
                                                 _%hd195295195975%_
                                                 _%tl195296195977%_
                                                 _%e195297195980%_
                                                 _%hd195298195983%_
                                                 _%tl195299195985%_
                                                 _%e195300195988%_
                                                 _%hd195301195991%_
                                                 _%tl195302195993%_
                                                 _%e195303195996%_
                                                 _%hd195304195999%_
                                                 _%tl195305196001%_
                                                 _%e195306196004%_
                                                 _%hd195307196007%_
                                                 _%tl195308196009%_
                                                 _%e195309196012%_
                                                 _%hd195310196015%_
                                                 _%tl195311196017%_
                                                 _%e195312196020%_
                                                 _%hd195313196023%_
                                                 _%tl195314196025%_
                                                 _%__splice201210201211%_
                                                 _%target195315196028%_
                                                 _%tl195317196030%_)
                                                (_%__kont201220201221%_))))
                                        (_%__kont201220201221%_))
                                    (_%__kont201220201221%_))))
                            (_%__kont201220201221%_))
                        (_%__kont201220201221%_))
                    (_%__kont201220201221%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont201220201221%_))))
                                            (_%__match201699201700%_
                                             _%e195276195924%_
                                             _%hd195277195927%_
                                             _%tl195278195929%_
                                             _%e195279195932%_
                                             _%hd195280195935%_
                                             _%tl195281195937%_
                                             _%e195282195940%_
                                             _%hd195283195943%_
                                             _%tl195284195945%_
                                             _%e195285195948%_
                                             _%hd195286195951%_
                                             _%tl195287195953%_
                                             _%e195288195956%_
                                             _%hd195289195959%_
                                             _%tl195290195961%_
                                             _%e195291195964%_
                                             _%hd195292195967%_
                                             _%tl195293195969%_
                                             _%e195294195972%_
                                             _%hd195295195975%_
                                             _%tl195296195977%_
                                             _%e195297195980%_
                                             _%hd195298195983%_
                                             _%tl195299195985%_))
                                        (_%__match201699201700%_
                                         _%e195276195924%_
                                         _%hd195277195927%_
                                         _%tl195278195929%_
                                         _%e195279195932%_
                                         _%hd195280195935%_
                                         _%tl195281195937%_
                                         _%e195282195940%_
                                         _%hd195283195943%_
                                         _%tl195284195945%_
                                         _%e195285195948%_
                                         _%hd195286195951%_
                                         _%tl195287195953%_
                                         _%e195288195956%_
                                         _%hd195289195959%_
                                         _%tl195290195961%_
                                         _%e195291195964%_
                                         _%hd195292195967%_
                                         _%tl195293195969%_
                                         _%e195294195972%_
                                         _%hd195295195975%_
                                         _%tl195296195977%_
                                         _%e195297195980%_
                                         _%hd195298195983%_
                                         _%tl195299195985%_))))
                                (_%__match201699201700%_
                                 _%e195276195924%_
                                 _%hd195277195927%_
                                 _%tl195278195929%_
                                 _%e195279195932%_
                                 _%hd195280195935%_
                                 _%tl195281195937%_
                                 _%e195282195940%_
                                 _%hd195283195943%_
                                 _%tl195284195945%_
                                 _%e195285195948%_
                                 _%hd195286195951%_
                                 _%tl195287195953%_
                                 _%e195288195956%_
                                 _%hd195289195959%_
                                 _%tl195290195961%_
                                 _%e195291195964%_
                                 _%hd195292195967%_
                                 _%tl195293195969%_
                                 _%e195294195972%_
                                 _%hd195295195975%_
                                 _%tl195296195977%_
                                 _%e195297195980%_
                                 _%hd195298195983%_
                                 _%tl195299195985%_))
                            (_%__match201485201486%_
                             _%e195276195924%_
                             _%hd195277195927%_
                             _%tl195278195929%_
                             _%e195279195932%_
                             _%hd195280195935%_
                             _%tl195281195937%_
                             _%e195282195940%_
                             _%hd195283195943%_
                             _%tl195284195945%_
                             _%e195285195948%_
                             _%hd195286195951%_
                             _%tl195287195953%_
                             _%e195288195956%_
                             _%hd195289195959%_
                             _%tl195290195961%_
                             _%e195291195964%_
                             _%hd195292195967%_
                             _%tl195293195969%_
                             _%e195294195972%_
                             _%hd195295195975%_
                             _%tl195296195977%_
                             _%e195297195980%_
                             _%hd195298195983%_
                             _%tl195299195985%_
                             _%e195300195988%_
                             _%hd195301195991%_
                             _%tl195302195993%_))))
                     (_%__match201307201308%_
                      (lambda (_%e195232196114%_
                               _%hd195233196117%_
                               _%tl195234196119%_
                               _%e195235196122%_
                               _%hd195236196125%_
                               _%tl195237196127%_
                               _%e195238196130%_
                               _%hd195239196133%_
                               _%tl195240196135%_
                               _%e195241196138%_
                               _%hd195242196141%_
                               _%tl195243196143%_
                               _%e195244196146%_
                               _%hd195245196149%_
                               _%tl195246196151%_
                               _%e195247196154%_
                               _%hd195248196157%_
                               _%tl195249196159%_
                               _%e195250196162%_
                               _%hd195251196165%_
                               _%tl195252196167%_
                               _%e195253196170%_
                               _%hd195254196173%_
                               _%tl195255196175%_
                               _%e195256196178%_
                               _%hd195257196181%_
                               _%tl195258196183%_
                               _%e195259196186%_
                               _%hd195260196189%_
                               _%tl195261196191%_
                               _%__splice201206201207%_
                               _%target195262196194%_
                               _%tl195264196196%_)
                        (letrec ((_%loop195265196199%_
                                  (lambda (_%hd195263196202%_
                                           _%args195269196204%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd195263196202%_))
                                        (let ((_%e195266196206%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd195263196202%_))))
                                          (let ((_%lp-tl195268196211%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e195266196206%_)))
                                                (_%lp-hd195267196209%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e195266196206%_))))
                                            (_%loop195265196199%_
                                             _%lp-tl195268196211%_
                                             (cons _%lp-hd195267196209%_
                                                   _%args195269196204%_))))
                                        (let ((_%args195270196214%_
                                               (reverse _%args195269196204%_)))
                                          (let ((_%g195228196216%_
                                                 _%args195270196214%_)
                                                (_%g195229196217%_
                                                 _%hd195260196189%_)
                                                (_%g195230196218%_
                                                 _%hd195251196165%_)
                                                (_%g195231196219%_
                                                 _%hd195242196141%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%g195231196219%_
                                                        'call-method))
                                                     (let ((__tmp201896
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self195215%_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _%g195230196218%_
                                                        __tmp201896)))
                                                (_%__kont201204201205%_
                                                 _%g195228196216%_
                                                 _%g195229196217%_
                                                 _%g195230196218%_
                                                 _%g195231196219%_)
                                                (_%__match201495201496%_
                                                 _%e195232196114%_
                                                 _%hd195233196117%_
                                                 _%tl195234196119%_
                                                 _%e195235196122%_
                                                 _%hd195236196125%_
                                                 _%tl195237196127%_
                                                 _%e195238196130%_
                                                 _%hd195239196133%_
                                                 _%tl195240196135%_
                                                 _%e195241196138%_
                                                 _%hd195242196141%_
                                                 _%tl195243196143%_
                                                 _%e195244196146%_
                                                 _%hd195245196149%_
                                                 _%tl195246196151%_
                                                 _%e195247196154%_
                                                 _%hd195248196157%_
                                                 _%tl195249196159%_
                                                 _%e195250196162%_
                                                 _%hd195251196165%_
                                                 _%tl195252196167%_
                                                 _%e195253196170%_
                                                 _%hd195254196173%_
                                                 _%tl195255196175%_
                                                 _%e195256196178%_
                                                 _%hd195257196181%_
                                                 _%tl195258196183%_
                                                 _%e195259196186%_
                                                 _%hd195260196189%_
                                                 _%tl195261196191%_))))))))
                          (_%loop195265196199%_ _%target195262196194%_ '())))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx201202201203%_))
                    (let ((_%e195232196114%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx201202201203%_))))
                      (let ((_%tl195234196119%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e195232196114%_)))
                            (_%hd195233196117%_
                             (let ()
                               (declare (not safe))
                               (##car _%e195232196114%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl195234196119%_))
                            (let ((_%e195235196122%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl195234196119%_))))
                              (let ((_%tl195237196127%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e195235196122%_)))
                                    (_%hd195236196125%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e195235196122%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd195236196125%_))
                                    (let ((_%e195238196130%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd195236196125%_))))
                                      (let ((_%tl195240196135%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e195238196130%_)))
                                            (_%hd195239196133%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e195238196130%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _%hd195239196133%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _%hd195239196133%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl195240196135%_))
                                                    (let ((_%e195241196138%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl195240196135%_))))
                                                      (let ((_%tl195243196143%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e195241196138%_)))
                    (_%hd195242196141%_
                     (let () (declare (not safe)) (##car _%e195241196138%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl195243196143%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl195237196127%_))
                        (let ((_%e195244196146%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl195237196127%_))))
                          (let ((_%tl195246196151%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e195244196146%_)))
                                (_%hd195245196149%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e195244196146%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd195245196149%_))
                                (let ((_%e195247196154%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd195245196149%_))))
                                  (let ((_%tl195249196159%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e195247196154%_)))
                                        (_%hd195248196157%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e195247196154%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd195248196157%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _%hd195248196157%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl195249196159%_))
                                                (let ((_%e195250196162%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl195249196159%_))))
                                                  (let ((_%tl195252196167%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e195250196162%_)))
                                                        (_%hd195251196165%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e195250196162%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl195252196167%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl195246196151%_))
                                                            (let ((_%e195253196170%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl195246196151%_))))
                      (let ((_%tl195255196175%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e195253196170%_)))
                            (_%hd195254196173%_
                             (let ()
                               (declare (not safe))
                               (##car _%e195253196170%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd195254196173%_))
                            (let ((_%e195256196178%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd195254196173%_))))
                              (let ((_%tl195258196183%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e195256196178%_)))
                                    (_%hd195257196181%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e195256196178%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd195257196181%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd195257196181%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl195258196183%_))
                                            (let ((_%e195259196186%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl195258196183%_))))
                                              (let ((_%tl195261196191%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e195259196186%_)))
                                                    (_%hd195260196189%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e195259196186%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl195261196191%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair/null?
                                                           _%tl195255196175%_))
                                                        (let ((_%__splice201206201207%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-split-splice->vector
                          _%tl195255196175%_
                          '0))))
                  (let ((_%tl195264196196%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice201206201207%_ '1)))
                        (_%target195262196194%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice201206201207%_ '0))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl195264196196%_))
                        (_%__match201307201308%_
                         _%e195232196114%_
                         _%hd195233196117%_
                         _%tl195234196119%_
                         _%e195235196122%_
                         _%hd195236196125%_
                         _%tl195237196127%_
                         _%e195238196130%_
                         _%hd195239196133%_
                         _%tl195240196135%_
                         _%e195241196138%_
                         _%hd195242196141%_
                         _%tl195243196143%_
                         _%e195244196146%_
                         _%hd195245196149%_
                         _%tl195246196151%_
                         _%e195247196154%_
                         _%hd195248196157%_
                         _%tl195249196159%_
                         _%e195250196162%_
                         _%hd195251196165%_
                         _%tl195252196167%_
                         _%e195253196170%_
                         _%hd195254196173%_
                         _%tl195255196175%_
                         _%e195256196178%_
                         _%hd195257196181%_
                         _%tl195258196183%_
                         _%e195259196186%_
                         _%hd195260196189%_
                         _%tl195261196191%_
                         _%__splice201206201207%_
                         _%target195262196194%_
                         _%tl195264196196%_)
                        (_%__match201495201496%_
                         _%e195232196114%_
                         _%hd195233196117%_
                         _%tl195234196119%_
                         _%e195235196122%_
                         _%hd195236196125%_
                         _%tl195237196127%_
                         _%e195238196130%_
                         _%hd195239196133%_
                         _%tl195240196135%_
                         _%e195241196138%_
                         _%hd195242196141%_
                         _%tl195243196143%_
                         _%e195244196146%_
                         _%hd195245196149%_
                         _%tl195246196151%_
                         _%e195247196154%_
                         _%hd195248196157%_
                         _%tl195249196159%_
                         _%e195250196162%_
                         _%hd195251196165%_
                         _%tl195252196167%_
                         _%e195253196170%_
                         _%hd195254196173%_
                         _%tl195255196175%_
                         _%e195256196178%_
                         _%hd195257196181%_
                         _%tl195258196183%_
                         _%e195259196186%_
                         _%hd195260196189%_
                         _%tl195261196191%_))))
                (_%__match201495201496%_
                 _%e195232196114%_
                 _%hd195233196117%_
                 _%tl195234196119%_
                 _%e195235196122%_
                 _%hd195236196125%_
                 _%tl195237196127%_
                 _%e195238196130%_
                 _%hd195239196133%_
                 _%tl195240196135%_
                 _%e195241196138%_
                 _%hd195242196141%_
                 _%tl195243196143%_
                 _%e195244196146%_
                 _%hd195245196149%_
                 _%tl195246196151%_
                 _%e195247196154%_
                 _%hd195248196157%_
                 _%tl195249196159%_
                 _%e195250196162%_
                 _%hd195251196165%_
                 _%tl195252196167%_
                 _%e195253196170%_
                 _%hd195254196173%_
                 _%tl195255196175%_
                 _%e195256196178%_
                 _%hd195257196181%_
                 _%tl195258196183%_
                 _%e195259196186%_
                 _%hd195260196189%_
                 _%tl195261196191%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match201699201700%_
                                                     _%e195232196114%_
                                                     _%hd195233196117%_
                                                     _%tl195234196119%_
                                                     _%e195235196122%_
                                                     _%hd195236196125%_
                                                     _%tl195237196127%_
                                                     _%e195238196130%_
                                                     _%hd195239196133%_
                                                     _%tl195240196135%_
                                                     _%e195241196138%_
                                                     _%hd195242196141%_
                                                     _%tl195243196143%_
                                                     _%e195244196146%_
                                                     _%hd195245196149%_
                                                     _%tl195246196151%_
                                                     _%e195247196154%_
                                                     _%hd195248196157%_
                                                     _%tl195249196159%_
                                                     _%e195250196162%_
                                                     _%hd195251196165%_
                                                     _%tl195252196167%_
                                                     _%e195253196170%_
                                                     _%hd195254196173%_
                                                     _%tl195255196175%_))))
                                            (_%__match201699201700%_
                                             _%e195232196114%_
                                             _%hd195233196117%_
                                             _%tl195234196119%_
                                             _%e195235196122%_
                                             _%hd195236196125%_
                                             _%tl195237196127%_
                                             _%e195238196130%_
                                             _%hd195239196133%_
                                             _%tl195240196135%_
                                             _%e195241196138%_
                                             _%hd195242196141%_
                                             _%tl195243196143%_
                                             _%e195244196146%_
                                             _%hd195245196149%_
                                             _%tl195246196151%_
                                             _%e195247196154%_
                                             _%hd195248196157%_
                                             _%tl195249196159%_
                                             _%e195250196162%_
                                             _%hd195251196165%_
                                             _%tl195252196167%_
                                             _%e195253196170%_
                                             _%hd195254196173%_
                                             _%tl195255196175%_))
                                        (_%__match201375201376%_
                                         _%e195232196114%_
                                         _%hd195233196117%_
                                         _%tl195234196119%_
                                         _%e195235196122%_
                                         _%hd195236196125%_
                                         _%tl195237196127%_
                                         _%e195238196130%_
                                         _%hd195239196133%_
                                         _%tl195240196135%_
                                         _%e195241196138%_
                                         _%hd195242196141%_
                                         _%tl195243196143%_
                                         _%e195244196146%_
                                         _%hd195245196149%_
                                         _%tl195246196151%_
                                         _%e195247196154%_
                                         _%hd195248196157%_
                                         _%tl195249196159%_
                                         _%e195250196162%_
                                         _%hd195251196165%_
                                         _%tl195252196167%_
                                         _%e195253196170%_
                                         _%hd195254196173%_
                                         _%tl195255196175%_
                                         _%e195256196178%_
                                         _%hd195257196181%_
                                         _%tl195258196183%_))
                                    (_%__match201699201700%_
                                     _%e195232196114%_
                                     _%hd195233196117%_
                                     _%tl195234196119%_
                                     _%e195235196122%_
                                     _%hd195236196125%_
                                     _%tl195237196127%_
                                     _%e195238196130%_
                                     _%hd195239196133%_
                                     _%tl195240196135%_
                                     _%e195241196138%_
                                     _%hd195242196141%_
                                     _%tl195243196143%_
                                     _%e195244196146%_
                                     _%hd195245196149%_
                                     _%tl195246196151%_
                                     _%e195247196154%_
                                     _%hd195248196157%_
                                     _%tl195249196159%_
                                     _%e195250196162%_
                                     _%hd195251196165%_
                                     _%tl195252196167%_
                                     _%e195253196170%_
                                     _%hd195254196173%_
                                     _%tl195255196175%_))))
                            (_%__match201699201700%_
                             _%e195232196114%_
                             _%hd195233196117%_
                             _%tl195234196119%_
                             _%e195235196122%_
                             _%hd195236196125%_
                             _%tl195237196127%_
                             _%e195238196130%_
                             _%hd195239196133%_
                             _%tl195240196135%_
                             _%e195241196138%_
                             _%hd195242196141%_
                             _%tl195243196143%_
                             _%e195244196146%_
                             _%hd195245196149%_
                             _%tl195246196151%_
                             _%e195247196154%_
                             _%hd195248196157%_
                             _%tl195249196159%_
                             _%e195250196162%_
                             _%hd195251196165%_
                             _%tl195252196167%_
                             _%e195253196170%_
                             _%hd195254196173%_
                             _%tl195255196175%_))))
                    (_%__match201637201638%_
                     _%e195232196114%_
                     _%hd195233196117%_
                     _%tl195234196119%_
                     _%e195235196122%_
                     _%hd195236196125%_
                     _%tl195237196127%_
                     _%e195238196130%_
                     _%hd195239196133%_
                     _%tl195240196135%_
                     _%e195241196138%_
                     _%hd195242196141%_
                     _%tl195243196143%_
                     _%e195244196146%_
                     _%hd195245196149%_
                     _%tl195246196151%_
                     _%e195247196154%_
                     _%hd195248196157%_
                     _%tl195249196159%_
                     _%e195250196162%_
                     _%hd195251196165%_
                     _%tl195252196167%_))
                (_%__kont201220201221%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont201220201221%_))
                                            (_%__kont201220201221%_))
                                        (_%__kont201220201221%_))))
                                (_%__kont201220201221%_))))
                        (_%__kont201220201221%_))
                    (_%__kont201220201221%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont201220201221%_))
                                                (_%__kont201220201221%_))
                                            (_%__kont201220201221%_))))
                                    (_%__kont201220201221%_))))
                            (_%__kont201220201221%_))))
                    (_%__kont201220201221%_))))))))))
