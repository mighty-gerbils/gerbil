(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-spec::timestamp 1770325975)
  (begin
    (define gxc#::generate-method-specializers::t
      (let ((__tmp201568 (list gxc#::identity::t))
            (__tmp201567 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-method-specializers::t
         '::generate-method-specializers
         __tmp201568
         '()
         __tmp201567
         '#f)))
    (define gxc#::generate-method-specializers?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-method-specializers::t)))
    (define gxc#make-::generate-method-specializers
      (lambda _%$args200365%_
        (apply make-instance
               gxc#::generate-method-specializers::t
               _%$args200365%_)))
    (define gxc#::generate-method-specializers-bind-methods!
      (let ((__tmp201569
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
        (__make-atomic-promise __tmp201569)))
    (define gxc#apply-generate-method-specializers
      (lambda (_%stx200357%_)
        (force gxc#::generate-method-specializers-bind-methods!)
        (let* ((_%self200360%_
                (let ((__obj201560
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-method-specializers::t))))
                  __obj201560))
               (__tmp201570
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self200360%_ _%stx200357%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp201570
           gxc#current-compile-method
           _%self200360%_))))
    (define gxc#::extract-receiver::t
      (let ((__tmp201572 (list gxc#::false::t))
            (__tmp201571 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::extract-receiver::t
         '::extract-receiver
         __tmp201572
         '()
         __tmp201571
         '#f)))
    (define gxc#::extract-receiver?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::extract-receiver::t)))
    (define gxc#make-::extract-receiver
      (lambda _%$args200354%_
        (apply make-instance gxc#::extract-receiver::t _%$args200354%_)))
    (define gxc#::extract-receiver-bind-methods!
      (let ((__tmp201573
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
        (__make-atomic-promise __tmp201573)))
    (define gxc#apply-extract-receiver
      (lambda (_%stx200346%_)
        (force gxc#::extract-receiver-bind-methods!)
        (let* ((_%self200349%_
                (let ((__obj201562
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::extract-receiver::t))))
                  __obj201562))
               (__tmp201574
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self200349%_ _%stx200346%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp201574
           gxc#current-compile-method
           _%self200349%_))))
    (define gxc#::collect-object-refs::t
      (let ((__tmp201576 (list gxc#::void::t))
            (__tmp201575 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-object-refs::t
         '::collect-object-refs
         __tmp201576
         '(receiver methods slots)
         __tmp201575
         '#f)))
    (define gxc#::collect-object-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-object-refs::t)))
    (define gxc#make-::collect-object-refs
      (lambda _%$args200343%_
        (apply make-instance gxc#::collect-object-refs::t _%$args200343%_)))
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
      (let ((__tmp201577
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
        (__make-atomic-promise __tmp201577)))
    (define gxc#apply-collect-object-refs__%
      (lambda (_%@@keywords200312%_
               _%receiver200307200313%_
               _%methods200308200314%_
               _%slots200309200315%_
               _%stx200316%_)
        (let* ((_%receiver200319%_
                (if (eq? _%receiver200307200313%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _%receiver200307200313%_))
               (_%methods200321%_
                (if (eq? _%methods200308200314%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _%methods200308200314%_))
               (_%slots200323%_
                (if (eq? _%slots200309200315%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _%slots200309200315%_)))
          (force gxc#::collect-object-refs-bind-methods!)
          (let* ((_%self200325%_
                  (let ((__obj201564
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
                       __obj201564
                       _%receiver200319%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj201564
                       _%methods200321%_
                       '2
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj201564
                       _%slots200323%_
                       '3
                       '#f
                       '#f))
                    __obj201564))
                 (__tmp201578
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self200325%_ _%stx200316%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp201578
             gxc#current-compile-method
             _%self200325%_)))))
    (define gxc#apply-collect-object-refs__@
      (lambda (_%@@keywords200332%_ . _%args200333%_)
        (apply gxc#apply-collect-object-refs__%
               _%@@keywords200332%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords200332%_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords200332%_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords200332%_
                  'slots:
                  absent-value))
               _%args200333%_)))
    (define gxc#apply-collect-object-refs
      (lambda _%args200310200339%_
        (apply keyword-dispatch
               '#(receiver: slots: methods:)
               gxc#apply-collect-object-refs__@
               _%args200310200339%_)))
    (define gxc#::subst-object-refs::t
      (let ((__tmp201580 (list gxc#::basic-xform-expression::t))
            (__tmp201579 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::subst-object-refs::t
         '::subst-object-refs
         __tmp201580
         '(receiver klass methods slots)
         __tmp201579
         '#f)))
    (define gxc#::subst-object-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::subst-object-refs::t)))
    (define gxc#make-::subst-object-refs
      (lambda _%$args200303%_
        (apply make-instance gxc#::subst-object-refs::t _%$args200303%_)))
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
      (let ((__tmp201581
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
        (__make-atomic-promise __tmp201581)))
    (define gxc#apply-subst-object-refs__%
      (lambda (_%@@keywords200269%_
               _%receiver200263200270%_
               _%klass200264200271%_
               _%methods200265200272%_
               _%slots200266200273%_
               _%stx200274%_)
        (let* ((_%receiver200277%_
                (if (eq? _%receiver200263200270%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _%receiver200263200270%_))
               (_%klass200279%_
                (if (eq? _%klass200264200271%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'klass:))
                    _%klass200264200271%_))
               (_%methods200281%_
                (if (eq? _%methods200265200272%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _%methods200265200272%_))
               (_%slots200283%_
                (if (eq? _%slots200266200273%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _%slots200266200273%_)))
          (force gxc#::subst-object-refs-bind-methods!)
          (let* ((_%self200285%_
                  (let ((__obj201566
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
                       __obj201566
                       _%receiver200277%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj201566
                       _%klass200279%_
                       '2
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj201566
                       _%methods200281%_
                       '3
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj201566
                       _%slots200283%_
                       '4
                       '#f
                       '#f))
                    __obj201566))
                 (__tmp201582
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self200285%_ _%stx200274%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp201582
             gxc#current-compile-method
             _%self200285%_)))))
    (define gxc#apply-subst-object-refs__@
      (lambda (_%@@keywords200292%_ . _%args200293%_)
        (apply gxc#apply-subst-object-refs__%
               _%@@keywords200292%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords200292%_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords200292%_
                  'klass:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords200292%_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords200292%_
                  'slots:
                  absent-value))
               _%args200293%_)))
    (define gxc#apply-subst-object-refs
      (lambda _%args200267200299%_
        (apply keyword-dispatch
               '#(receiver: methods: slots: klass:)
               gxc#apply-subst-object-refs__@
               _%args200267200299%_)))
    (define gxc#generate-method-specializers-define-values%
      (lambda (_%self197394%_ _%stx197395%_)
        (letrec ((_%generate-method-bind197397%_
                  (lambda (_%$klass200255%_
                           _%$method-table200256%_
                           _%id200257%_
                           _%$id200258%_)
                    (let ((_%$tmp200260%_
                           (let ((__tmp201583
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__method))))
                             (declare (not safe))
                             (make-symbol__0 __tmp201583))))
                      (cons (cons _%$id200258%_ '())
                            (cons (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons 'make-promise '()))
                                              (cons (cons '%#lambda
                                                          (cons '()
                                                                (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons (cons (cons _%$tmp200260%_ '())
                                                      (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#ref (cons 'symbolic-table-ref '()))
                                (cons (cons '%#ref
                                            (cons _%$method-table200256%_ '()))
                                      (cons (cons '%#quote
                                                  (cons _%id200257%_ '()))
                                            (cons (cons '%#quote
                                                        (cons '#f '()))
                                                  '())))))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())
                                          (cons (cons '%#if
                                                      (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%$tmp200260%_ '()))
                    (cons (cons '%#ref (cons _%$tmp200260%_ '()))
                          (cons (cons '%#call
                                      (cons (cons '%#ref (cons 'error '()))
                                            (cons (cons '%#quote
                                                        (cons '"Missing method"
                                                              '()))
                                                  (cons (cons '%#quote
                                                              (cons _%id200257%_
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
                 (_%generate-slot-bind197398%_
                  (lambda (_%$klass200249%_ _%id200250%_ _%$id200251%_)
                    (let ((_%$tmp200253%_
                           (let ((__tmp201584
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__slot))))
                             (declare (not safe))
                             (make-symbol__0 __tmp201584))))
                      (cons (cons _%$id200251%_ '())
                            (cons (cons '%#let-values
                                        (cons (cons (cons (cons _%$tmp200253%_
                                                                '())
                                                          (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '%#ref (cons 'class-slot-offset '()))
                                    (cons (cons '%#ref
                                                (cons _%$klass200249%_ '()))
                                          (cons (cons '%#quote
                                                      (cons _%id200250%_ '()))
                                                '()))))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())
                                              (cons (cons '%#if
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$tmp200253%_ '()))
                        (cons (cons '%#ref (cons _%$tmp200253%_ '()))
                              (cons (cons '%#call
                                          (cons (cons '%#ref (cons 'error '()))
                                                (cons (cons '%#quote
                                                            (cons '"Unknown slot"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#quote (cons _%id200250%_ '())) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '())))))
                 (_%generate-specializer-impl197399%_
                  (lambda (_%$klass200243%_
                           _%$method-table200244%_
                           _%methods-bind200245%_
                           _%slots-bind200246%_
                           _%specializer-impl200247%_)
                    (let ((__tmp201585
                           (cons '%#lambda
                                 (cons (cons _%$klass200243%_
                                             (cons _%$method-table200244%_
                                                   '()))
                                       (cons (cons '%#let-values
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (__foldr1
                                                            cons
                                                            _%slots-bind200246%_
                                                            _%methods-bind200245%_))
                                                         (cons _%specializer-impl200247%_
                                                               '())))
                                             '())))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp201585 _%stx197395%_))))
                 (_%generate-specializer-def197400%_
                  (lambda (_%id200239%_
                           _%specializer-id200240%_
                           _%specializer-impl200241%_)
                    (let ((__tmp201586
                           (cons '%#begin
                                 (cons _%stx197395%_
                                       (cons (let ((__tmp201587
                                                    (cons '%#define-values
                                                          (cons (cons _%specializer-id200240%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons _%specializer-impl200241%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp201587
                                                _%stx197395%_))
                                             (cons (let ((__tmp201588
                                                          (cons '%#call
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons 'bind-specializer! '()))
                              (cons (cons '%#ref (cons _%id200239%_ '()))
                                    (cons (cons '%#ref
                                                (cons _%specializer-id200240%_
                                                      '()))
                                          '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp201588
                                                      _%stx197395%_))
                                                   '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp201586 _%stx197395%_)))))
          (let* ((_%__stx200454200455%_ _%stx197395%_)
                 (_%g197403197423%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx200454200455%_)))))
            (let ((_%__kont200456200457%_
                   (lambda (_%g197405197467%_ _%g197406197468%_)
                     (let ((_%method-calls197487%_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_%slot-refs197488%_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_%empty197489%_
                            (let ()
                              (declare (not safe))
                              (make-hash-table-eq))))
                       (letrec ((_%no-specializer?197491%_
                                 (lambda ()
                                   (if (let ((__tmp201589
                                              (let ()
                                                (declare (not safe))
                                                (__hash-length
                                                 _%method-calls197487%_))))
                                         (declare (not safe))
                                         (##fxzero? __tmp201589))
                                       (let ((__tmp201590
                                              (let ()
                                                (declare (not safe))
                                                (__hash-length
                                                 _%slot-refs197488%_))))
                                         (declare (not safe))
                                         (##fxzero? __tmp201590))
                                       '#f))))
                         (if (let ()
                               (declare (not safe))
                               (gxc#lambda-expr? _%g197405197467%_))
                             (let* ((_%__stx200368200369%_ _%g197405197467%_)
                                    (_%g197875197893%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx200368200369%_)))))
                               (let ((_%__kont200370200371%_
                                      (lambda (_%g197877197929%_
                                               _%g197878197930%_
                                               _%g197879197931%_)
                                        (let ((_%receiver197951%_
                                               (let ((_%$e197948%_
                                                      (gxc#apply-extract-receiver
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f '%#begin))
                     _%g197877197929%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e197948%_
                                                     _%$e197948%_
                                                     _%g197879197931%_))))
                                          (for-each
                                           (lambda (_%g197952197954%_)
                                             (gxc#apply-collect-object-refs__%
                                              '#f
                                              _%receiver197951%_
                                              _%method-calls197487%_
                                              _%slot-refs197488%_
                                              _%g197952197954%_))
                                           _%g197877197929%_)
                                          (if (_%no-specializer?197491%_)
                                              _%stx197395%_
                                              (let* ((_%specializer-id197963%_
                                                      (let* ((_%id197957%_
                                                              (let ((__tmp201591
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g197406197468%_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp201591 '"::specialize")))
                     (_%specializer-id197960%_
                      (let ((__tmp201592
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _%stx197395%_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _%id197957%_ __tmp201592))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _%specializer-id197960%_))
                _%specializer-id197960%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$klass197965%_
                                                      (let ((__tmp201593
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__klass))))
                (declare (not safe))
                (make-symbol__0 __tmp201593)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$method-table197967%_
                                                      (let ((__tmp201594
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__method-table))))
                (declare (not safe))
                (make-symbol__0 __tmp201594)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods197969%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%method-calls197487%_)))
                                                     (_%$methods197973%_
                                                      (let ((__tmp201595
                                                             (lambda (_%id197971%_)
                                                               (let ((__tmp201596
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gensym _%id197971%_)))
                         (declare (not safe))
                         (make-symbol__1 '"__" __tmp201596)))))
                (declare (not safe))
                (##map __tmp201595 _%methods197969%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_197982%_
                                                      (let ((__tmp201597
                                                             (lambda (_%g197974197977%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g197975197979%_)
                       (let ()
                         (declare (not safe))
                         (__hash-put!
                          _%method-calls197487%_
                          _%g197974197977%_
                          _%g197975197979%_)))))
                (declare (not safe))
                (##for-each __tmp201597 _%methods197969%_ _%$methods197973%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods-bind197992%_
                                                      (let ((__tmp201598
                                                             (lambda (_%g197984197987%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g197985197989%_)
                       (_%generate-method-bind197397%_
                        _%$klass197965%_
                        _%$method-table197967%_
                        _%g197984197987%_
                        _%g197985197989%_))))
                (declare (not safe))
                (##map __tmp201598 _%methods197969%_ _%$methods197973%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots197994%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%slot-refs197488%_)))
                                                     (_%$slots197998%_
                                                      (let ((__tmp201599
                                                             (lambda (_%id197996%_)
                                                               (let ((__tmp201600
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gensym _%id197996%_)))
                         (declare (not safe))
                         (make-symbol__1 '"__" __tmp201600)))))
                (declare (not safe))
                (##map __tmp201599 _%slots197994%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_198007%_
                                                      (let ((__tmp201601
                                                             (lambda (_%g197999198002%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g198000198004%_)
                       (let ()
                         (declare (not safe))
                         (__hash-put!
                          _%slot-refs197488%_
                          _%g197999198002%_
                          _%g198000198004%_)))))
                (declare (not safe))
                (##for-each __tmp201601 _%slots197994%_ _%$slots197998%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots-bind198016%_
                                                      (let ((__tmp201602
                                                             (lambda (_%g198008198011%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g198009198013%_)
                       (_%generate-slot-bind197398%_
                        _%$klass197965%_
                        _%g198008198011%_
                        _%g198009198013%_))))
                (declare (not safe))
                (##map __tmp201602 _%slots197994%_ _%$slots197998%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-body198022%_
                                                      (map (lambda (_%g198017198019%_)
                                                             (gxc#apply-subst-object-refs__%
                                                              '#f
                                                              _%receiver197951%_
                                                              _%$klass197965%_
                                                              _%method-calls197487%_
                                                              _%slot-refs197488%_
                                                              _%g198017198019%_))
                                                           _%g197877197929%_))
                                                     (_%specializer-impl198024%_
                                                      (let ((__tmp201603
                                                             (cons '%#lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons _%g197879197931%_ _%g197878197930%_)
                                 _%specializer-body198022%_))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp201603 _%stx197395%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl198026%_
                                                      (_%generate-specializer-impl197399%_
                                                       _%$klass197965%_
                                                       _%$method-table197967%_
                                                       _%methods-bind197992%_
                                                       _%slots-bind198016%_
                                                       _%specializer-impl198024%_)))
                                                (let ((__tmp201605
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%g197406197468%_)))
                                                      (__tmp201604
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%specializer-id197963%_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp201605
                                                   '" => "
                                                   __tmp201604))
                                                (_%generate-specializer-def197400%_
                                                 _%g197406197468%_
                                                 _%specializer-id197963%_
                                                 _%specializer-impl198026%_))))))
                                     (_%__kont200372200373%_
                                      (lambda () _%stx197395%_)))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%__stx200368200369%_))
                                     (let ((_%e197880197905%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e
                                               _%__stx200368200369%_))))
                                       (let ((_%tl197882197910%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e197880197905%_)))
                                             (_%hd197881197908%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e197880197905%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl197882197910%_))
                                             (let ((_%e197883197913%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%tl197882197910%_))))
                                               (let ((_%tl197885197918%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e197883197913%_)))
                                                     (_%hd197884197916%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e197883197913%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%hd197884197916%_))
                                                     (let ((_%e197886197921%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%hd197884197916%_))))
                                                       (let ((_%tl197888197926%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e197886197921%_)))
                     (_%hd197887197924%_
                      (let () (declare (not safe)) (##car _%e197886197921%_))))
                 (_%__kont200370200371%_
                  _%tl197885197918%_
                  _%tl197888197926%_
                  _%hd197887197924%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont200372200373%_))))
                                             (_%__kont200372200373%_))))
                                     (_%__kont200372200373%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gxc#case-lambda-expr? _%g197405197467%_))
                                 (let* ((_%g198033198052%_
                                         (lambda (_%g198034198049%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g198034198049%_))))
                                        (_%g198032198348%_
                                         (lambda (_%g198034198055%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g198034198055%_))
                                               (let ((_%e198036198057%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%g198034198055%_))))
                                                 (let ((_%hd198037198060%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e198036198057%_)))
                                                       (_%tl198038198062%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e198036198057%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair/null?
                                                          _%tl198038198062%_))
                                                       (let ((_g201606_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-split-splice _%tl198038198062%_ '0))))
                 (begin
                   (let ((_g201607_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g201606_)
                                (##values-length _g201606_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g201607_ 2)))
                         (error "Context expects 2 values" _g201607_)))
                   (let ((_%target198039198065%_
                          (let ()
                            (declare (not safe))
                            (##values-ref _g201606_ 0)))
                         (_%tl198041198067%_
                          (let ()
                            (declare (not safe))
                            (##values-ref _g201606_ 1))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl198041198067%_))
                         (letrec ((_%loop198042198070%_
                                   (lambda (_%hd198040198073%_
                                            _%clause198046198075%_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd198040198073%_))
                                         (let ((_%e198043198077%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd198040198073%_))))
                                           (let ((_%lp-hd198044198080%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e198043198077%_)))
                                                 (_%lp-tl198045198082%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e198043198077%_))))
                                             (_%loop198042198070%_
                                              _%lp-tl198045198082%_
                                              (cons _%lp-hd198044198080%_
                                                    _%clause198046198075%_))))
                                         (let ((_%clause198047198085%_
                                                (reverse _%clause198046198075%_)))
                                           ((lambda (_%g198035198087%_)
                                              (for-each
                                               (lambda (_%clause198101%_)
                                                 (let* ((_%__stx200394200395%_
                                                         _%clause198101%_)
                                                        (_%g198104198119%_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%__stx200394200395%_)))))
                                                   (let ((_%__kont200396200397%_
                                                          (lambda (_%g198106198147%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g198107198148%_
                           _%g198108198149%_)
                    (let ((_%receiver198168%_
                           (let ((_%$e198165%_
                                  (gxc#apply-extract-receiver
                                   (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f '%#begin))
                                         _%g198106198147%_))))
                             (if _%$e198165%_
                                 _%$e198165%_
                                 _%g198108198149%_))))
                      (for-each
                       (lambda (_%g198169198171%_)
                         (gxc#apply-collect-object-refs__%
                          '#f
                          _%receiver198168%_
                          _%method-calls197487%_
                          _%slot-refs197488%_
                          _%g198169198171%_))
                       _%g198106198147%_))))
                 (_%__kont200398200399%_ (lambda () '#!void)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%__stx200394200395%_))
                                                         (let ((_%e198109198131%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%__stx200394200395%_))))
                   (let ((_%tl198111198136%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e198109198131%_)))
                         (_%hd198110198134%_
                          (let ()
                            (declare (not safe))
                            (##car _%e198109198131%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%hd198110198134%_))
                         (let ((_%e198112198139%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd198110198134%_))))
                           (let ((_%tl198114198144%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e198112198139%_)))
                                 (_%hd198113198142%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e198112198139%_))))
                             (_%__kont200396200397%_
                              _%tl198111198136%_
                              _%tl198114198144%_
                              _%hd198113198142%_)))
                         (_%__kont200398200399%_))))
                 (_%__kont200398200399%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((__tmp201608
                                                      (lambda (_%g198176198179%_
                                                               _%g198177198181%_)
                                                        (cons _%g198176198179%_
                                                              _%g198177198181%_))))
                                                 (declare (not safe))
                                                 (__foldr1
                                                  __tmp201608
                                                  '()
                                                  _%g198035198087%_)))
                                              (if (_%no-specializer?197491%_)
                                                  _%stx197395%_
                                                  (let* ((_%specializer-id198190%_
                                                          (let* ((_%id198184%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp201609
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%g197406197468%_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp201609 '"::specialize")))
                         (_%specializer-id198187%_
                          (let ((__tmp201610
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _%stx197395%_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _%id198184%_
                             __tmp201610))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _%specializer-id198187%_))
                    _%specializer-id198187%_))
                 (_%$klass198192%_
                  (let ((__tmp201611
                         (let () (declare (not safe)) (##gensym '__klass))))
                    (declare (not safe))
                    (make-symbol__0 __tmp201611)))
                 (_%$method-table198194%_
                  (let ((__tmp201612
                         (let ()
                           (declare (not safe))
                           (##gensym '__method-table))))
                    (declare (not safe))
                    (make-symbol__0 __tmp201612)))
                 (_%methods198196%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%method-calls197487%_)))
                 (_%$methods198200%_
                  (let ((__tmp201613
                         (lambda (_%id198198%_)
                           (let ((__tmp201614 (gensym _%id198198%_)))
                             (declare (not safe))
                             (make-symbol__1 '"__" __tmp201614)))))
                    (declare (not safe))
                    (##map __tmp201613 _%methods198196%_)))
                 (_%_198209%_
                  (let ((__tmp201615
                         (lambda (_%g198201198204%_ _%g198202198206%_)
                           (let ()
                             (declare (not safe))
                             (__hash-put!
                              _%method-calls197487%_
                              _%g198201198204%_
                              _%g198202198206%_)))))
                    (declare (not safe))
                    (##for-each
                     __tmp201615
                     _%methods198196%_
                     _%$methods198200%_)))
                 (_%methods-bind198219%_
                  (let ((__tmp201616
                         (lambda (_%g198211198214%_ _%g198212198216%_)
                           (_%generate-method-bind197397%_
                            _%$klass198192%_
                            _%$method-table198194%_
                            _%g198211198214%_
                            _%g198212198216%_))))
                    (declare (not safe))
                    (##map __tmp201616 _%methods198196%_ _%$methods198200%_)))
                 (_%slots198221%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%slot-refs197488%_)))
                 (_%$slots198225%_
                  (let ((__tmp201617
                         (lambda (_%id198223%_)
                           (let ((__tmp201618 (gensym _%id198223%_)))
                             (declare (not safe))
                             (make-symbol__1 '"__" __tmp201618)))))
                    (declare (not safe))
                    (##map __tmp201617 _%slots198221%_)))
                 (_%_198234%_
                  (let ((__tmp201619
                         (lambda (_%g198226198229%_ _%g198227198231%_)
                           (let ()
                             (declare (not safe))
                             (__hash-put!
                              _%slot-refs197488%_
                              _%g198226198229%_
                              _%g198227198231%_)))))
                    (declare (not safe))
                    (##for-each __tmp201619 _%slots198221%_ _%$slots198225%_)))
                 (_%slots-bind198243%_
                  (let ((__tmp201620
                         (lambda (_%g198235198238%_ _%g198236198240%_)
                           (_%generate-slot-bind197398%_
                            _%$klass198192%_
                            _%g198235198238%_
                            _%g198236198240%_))))
                    (declare (not safe))
                    (##map __tmp201620 _%slots198221%_ _%$slots198225%_)))
                 (_%specializer-clauses198341%_
                  (map (lambda (_%clause198245%_)
                         (let* ((_%__stx200414200415%_ _%clause198245%_)
                                (_%g198248198263%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx200414200415%_)))))
                           (let ((_%__kont200416200417%_
                                  (lambda (_%g198250198291%_
                                           _%g198251198292%_
                                           _%g198252198293%_)
                                    (let* ((_%receiver198322%_
                                            (let ((_%$e198319%_
                                                   (gxc#apply-extract-receiver
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#begin))
                                                          _%g198250198291%_))))
                                              (if _%$e198319%_
                                                  _%$e198319%_
                                                  _%g198252198293%_)))
                                           (_%body198328%_
                                            (map (lambda (_%g198323198325%_)
                                                   (gxc#apply-subst-object-refs__%
                                                    '#f
                                                    _%receiver198322%_
                                                    _%$klass198192%_
                                                    _%method-calls197487%_
                                                    _%slot-refs197488%_
                                                    _%g198323198325%_))
                                                 _%g198250198291%_)))
                                      (cons (cons _%g198252198293%_
                                                  _%g198251198292%_)
                                            _%body198328%_))))
                                 (_%__kont200418200419%_
                                  (lambda () _%clause198245%_)))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx200414200415%_))
                                 (let ((_%e198253198275%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx200414200415%_))))
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
                                                  (gx#stx-e
                                                   _%hd198254198278%_))))
                                           (let ((_%tl198258198288%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e198256198283%_)))
                                                 (_%hd198257198286%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e198256198283%_))))
                                             (_%__kont200416200417%_
                                              _%tl198255198280%_
                                              _%tl198258198288%_
                                              _%hd198257198286%_)))
                                         (_%__kont200418200419%_))))
                                 (_%__kont200418200419%_)))))
                       (let ((__tmp201621
                              (lambda (_%g198333198336%_ _%g198334198338%_)
                                (cons _%g198333198336%_ _%g198334198338%_))))
                         (declare (not safe))
                         (__foldr1 __tmp201621 '() _%g198035198087%_))))
                 (_%specializer-impl198343%_
                  (let ((__tmp201622
                         (cons '%#case-lambda _%specializer-clauses198341%_)))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp201622 _%stx197395%_)))
                 (_%specializer-impl198345%_
                  (_%generate-specializer-impl197399%_
                   _%$klass198192%_
                   _%$method-table198194%_
                   _%methods-bind198219%_
                   _%slots-bind198243%_
                   _%specializer-impl198343%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp201624
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%g197406197468%_)))
                                                          (__tmp201623
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%specializer-id198190%_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp201624
                                                       '" => "
                                                       __tmp201623))
                                                    (_%generate-specializer-def197400%_
                                                     _%g197406197468%_
                                                     _%specializer-id198190%_
                                                     _%specializer-impl198345%_))))
                                            _%clause198047198085%_))))))
                           (_%loop198042198070%_ _%target198039198065%_ '()))
                         (_%g198033198052%_ _%g198034198055%_)))))
               (_%g198033198052%_ _%g198034198055%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g198033198052%_
                                                _%g198034198055%_)))))
                                   (_%g198032198348%_ _%g197405197467%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#opt-lambda-expr?
                                        _%g197405197467%_))
                                     (let* ((_%g198352198382%_
                                             (lambda (_%g198353198379%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g198353198379%_))))
                                            (_%g198351199009%_
                                             (lambda (_%g198353198385%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%g198353198385%_))
                                                   (let ((_%e198357198387%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%g198353198385%_))))
                                                     (let ((_%hd198358198390%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e198357198387%_)))
                                                           (_%tl198359198392%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e198357198387%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl198359198392%_))
                                                           (let ((_%e198360198395%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl198359198392%_))))
                     (let ((_%hd198361198398%_
                            (let ()
                              (declare (not safe))
                              (##car _%e198360198395%_)))
                           (_%tl198362198400%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e198360198395%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%hd198361198398%_))
                           (let ((_%e198363198403%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd198361198398%_))))
                             (let ((_%hd198364198406%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e198363198403%_)))
                                   (_%tl198365198408%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e198363198403%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd198364198406%_))
                                   (let ((_%e198366198411%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd198364198406%_))))
                                     (let ((_%hd198367198414%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e198366198411%_)))
                                           (_%tl198368198416%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e198366198411%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%hd198367198414%_))
                                           (let ((_%e198369198419%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%hd198367198414%_))))
                                             (let ((_%hd198370198422%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e198369198419%_)))
                                                   (_%tl198371198424%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e198369198419%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl198371198424%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl198368198416%_))
                                                       (let ((_%e198372198427%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%tl198368198416%_))))
                 (let ((_%hd198373198430%_
                        (let ()
                          (declare (not safe))
                          (##car _%e198372198427%_)))
                       (_%tl198374198432%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e198372198427%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl198374198432%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl198365198408%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl198362198400%_))
                               (let ((_%e198375198435%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%tl198362198400%_))))
                                 (let ((_%hd198376198438%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e198375198435%_)))
                                       (_%tl198377198440%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e198375198435%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%tl198377198440%_))
                                       ((lambda (_%g198354198443%_
                                                 _%g198355198444%_
                                                 _%g198356198445%_)
                                          (let* ((_%g198469198487%_
                                                  (lambda (_%g198470198484%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g198470198484%_))))
                                                 (_%g198468198543%_
                                                  (lambda (_%g198470198490%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%g198470198490%_))
                                                        (let ((_%e198474198492%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%g198470198490%_))))
                  (let ((_%hd198475198495%_
                         (let ()
                           (declare (not safe))
                           (##car _%e198474198492%_)))
                        (_%tl198476198497%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e198474198492%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl198476198497%_))
                        (let ((_%e198477198500%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl198476198497%_))))
                          (let ((_%hd198478198503%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e198477198500%_)))
                                (_%tl198479198505%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e198477198500%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd198478198503%_))
                                (let ((_%e198480198508%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd198478198503%_))))
                                  (let ((_%hd198481198511%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e198480198508%_)))
                                        (_%tl198482198513%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e198480198508%_))))
                                    ((lambda (_%g198471198516%_
                                              _%g198472198517%_
                                              _%g198473198518%_)
                                       (let ((_%receiver198537%_
                                              (let ((_%$e198534%_
                                                     (gxc#apply-extract-receiver
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               '%#begin))
                                                            _%g198471198516%_))))
                                                (if _%$e198534%_
                                                    _%$e198534%_
                                                    _%g198473198518%_))))
                                         (for-each
                                          (lambda (_%g198538198540%_)
                                            (gxc#apply-collect-object-refs__%
                                             '#f
                                             _%receiver198537%_
                                             _%method-calls197487%_
                                             _%slot-refs197488%_
                                             _%g198538198540%_))
                                          _%g198471198516%_)))
                                     _%tl198479198505%_
                                     _%tl198482198513%_
                                     _%hd198481198511%_)))
                                (_%g198469198487%_ _%g198470198490%_))))
                        (_%g198469198487%_ _%g198470198490%_))))
                (_%g198469198487%_ _%g198470198490%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g198468198543%_
                                             _%g198355198444%_))
                                          (let* ((_%g198546198565%_
                                                  (lambda (_%g198547198562%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g198547198562%_))))
                                                 (_%g198545198687%_
                                                  (lambda (_%g198547198568%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%g198547198568%_))
                                                        (let ((_%e198549198570%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%g198547198568%_))))
                  (let ((_%hd198550198573%_
                         (let ()
                           (declare (not safe))
                           (##car _%e198549198570%_)))
                        (_%tl198551198575%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e198549198570%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%tl198551198575%_))
                        (let ((_g201625_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _%tl198551198575%_
                                  '0))))
                          (begin
                            (let ((_g201626_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g201625_)
                                         (##values-length _g201625_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g201626_ 2)))
                                  (error "Context expects 2 values"
                                         _g201626_)))
                            (let ((_%target198552198578%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g201625_ 0)))
                                  (_%tl198554198580%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g201625_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl198554198580%_))
                                  (letrec ((_%loop198555198583%_
                                            (lambda (_%hd198553198586%_
                                                     _%clause198559198588%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd198553198586%_))
                                                  (let ((_%e198556198590%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd198553198586%_))))
                                                    (let ((_%lp-hd198557198593%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e198556198590%_)))
                                                          (_%lp-tl198558198595%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e198556198590%_))))
                                                      (_%loop198555198583%_
                                                       _%lp-tl198558198595%_
                                                       (cons _%lp-hd198557198593%_
                                                             _%clause198559198588%_))))
                                                  (let ((_%clause198560198598%_
                                                         (reverse _%clause198559198588%_)))
                                                    ((lambda (_%g198548198600%_)
                                                       (for-each
                                                        (lambda (_%clause198613%_)
                                                          (let* ((_%g198615198630%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%g198616198627%_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g198616198627%_))))
                         (_%g198614198677%_
                          (lambda (_%g198616198633%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%g198616198633%_))
                                (let ((_%e198620198635%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%g198616198633%_))))
                                  (let ((_%hd198621198638%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e198620198635%_)))
                                        (_%tl198622198640%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e198620198635%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd198621198638%_))
                                        (let ((_%e198623198643%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd198621198638%_))))
                                          (let ((_%hd198624198646%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e198623198643%_)))
                                                (_%tl198625198648%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e198623198643%_))))
                                            ((lambda (_%g198617198651%_
                                                      _%g198618198652%_
                                                      _%g198619198653%_)
                                               (let ((_%receiver198671%_
                                                      (let ((_%$e198668%_
                                                             (gxc#apply-extract-receiver
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f '%#begin))
                            _%g198617198651%_))))
                (if _%$e198668%_ _%$e198668%_ _%g198619198653%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (for-each
                                                  (lambda (_%g198672198674%_)
                                                    (gxc#apply-collect-object-refs__%
                                                     '#f
                                                     _%receiver198671%_
                                                     _%method-calls197487%_
                                                     _%slot-refs197488%_
                                                     _%g198672198674%_))
                                                  _%g198617198651%_)))
                                             _%tl198622198640%_
                                             _%tl198625198648%_
                                             _%hd198624198646%_)))
                                        (_%g198615198630%_
                                         _%g198616198633%_))))
                                (_%g198615198630%_ _%g198616198633%_)))))
                    (_%g198614198677%_ _%clause198613%_)))
                (let ((__tmp201627
                       (lambda (_%g198679198682%_ _%g198680198684%_)
                         (cons _%g198679198682%_ _%g198680198684%_))))
                  (declare (not safe))
                  (__foldr1 __tmp201627 '() _%g198548198600%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%clause198560198598%_))))))
                                    (_%loop198555198583%_
                                     _%target198552198578%_
                                     '()))
                                  (_%g198546198565%_ _%g198547198568%_)))))
                        (_%g198546198565%_ _%g198547198568%_))))
                (_%g198546198565%_ _%g198547198568%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g198545198687%_
                                             _%g198354198443%_))
                                          (if (_%no-specializer?197491%_)
                                              _%stx197395%_
                                              (let* ((_%specializer-id198696%_
                                                      (let* ((_%id198690%_
                                                              (let ((__tmp201628
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g197406197468%_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp201628 '"::specialize")))
                     (_%specializer-id198693%_
                      (let ((__tmp201629
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _%stx197395%_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _%id198690%_ __tmp201629))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _%specializer-id198693%_))
                _%specializer-id198693%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$klass198698%_
                                                      (let ((__tmp201630
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__klass))))
                (declare (not safe))
                (make-symbol__0 __tmp201630)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$method-table198700%_
                                                      (let ((__tmp201631
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__method-table))))
                (declare (not safe))
                (make-symbol__0 __tmp201631)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods198702%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%method-calls197487%_)))
                                                     (_%$methods198706%_
                                                      (let ((__tmp201632
                                                             (lambda (_%id198704%_)
                                                               (let ((__tmp201633
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gensym _%id198704%_)))
                         (declare (not safe))
                         (make-symbol__1 '"__" __tmp201633)))))
                (declare (not safe))
                (##map __tmp201632 _%methods198702%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_198715%_
                                                      (let ((__tmp201634
                                                             (lambda (_%g198707198710%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g198708198712%_)
                       (let ()
                         (declare (not safe))
                         (__hash-put!
                          _%method-calls197487%_
                          _%g198707198710%_
                          _%g198708198712%_)))))
                (declare (not safe))
                (##for-each __tmp201634 _%methods198702%_ _%$methods198706%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods-bind198725%_
                                                      (let ((__tmp201635
                                                             (lambda (_%g198717198720%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g198718198722%_)
                       (_%generate-method-bind197397%_
                        _%$klass198698%_
                        _%$method-table198700%_
                        _%g198717198720%_
                        _%g198718198722%_))))
                (declare (not safe))
                (##map __tmp201635 _%methods198702%_ _%$methods198706%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots198727%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%slot-refs197488%_)))
                                                     (_%$slots198731%_
                                                      (let ((__tmp201636
                                                             (lambda (_%id198729%_)
                                                               (let ((__tmp201637
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gensym _%id198729%_)))
                         (declare (not safe))
                         (make-symbol__1 '"__" __tmp201637)))))
                (declare (not safe))
                (##map __tmp201636 _%slots198727%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_198740%_
                                                      (let ((__tmp201638
                                                             (lambda (_%g198732198735%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g198733198737%_)
                       (let ()
                         (declare (not safe))
                         (__hash-put!
                          _%slot-refs197488%_
                          _%g198732198735%_
                          _%g198733198737%_)))))
                (declare (not safe))
                (##for-each __tmp201638 _%slots198727%_ _%$slots198731%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots-bind198749%_
                                                      (let ((__tmp201639
                                                             (lambda (_%g198741198744%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g198742198746%_)
                       (_%generate-slot-bind197398%_
                        _%$klass198698%_
                        _%g198741198744%_
                        _%g198742198746%_))))
                (declare (not safe))
                (##map __tmp201639 _%slots198727%_ _%$slots198731%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-lambda-expr198841%_
                                                      (let* ((_%g198751198769%_
                                                              (lambda (_%g198752198766%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g198752198766%_))))
                     (_%g198750198838%_
                      (lambda (_%g198752198772%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g198752198772%_))
                            (let ((_%e198756198774%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g198752198772%_))))
                              (let ((_%hd198757198777%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e198756198774%_)))
                                    (_%tl198758198779%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e198756198774%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl198758198779%_))
                                    (let ((_%e198759198782%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl198758198779%_))))
                                      (let ((_%hd198760198785%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e198759198782%_)))
                                            (_%tl198761198787%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e198759198782%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd198760198785%_))
                                            (let ((_%e198762198790%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd198760198785%_))))
                                              (let ((_%hd198763198793%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e198762198790%_)))
                                                    (_%tl198764198795%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e198762198790%_))))
                                                ((lambda (_%g198753198798%_
                                                          _%g198754198799%_
                                                          _%g198755198800%_)
                                                   (let* ((_%receiver198829%_
                                                           (let ((_%$e198826%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gxc#apply-extract-receiver
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '%#begin))
                                 _%g198753198798%_))))
                     (if _%$e198826%_ _%$e198826%_ _%g198755198800%_)))
                  (_%body198835%_
                   (map (lambda (_%g198830198832%_)
                          (gxc#apply-subst-object-refs__%
                           '#f
                           _%receiver198829%_
                           _%$klass198698%_
                           _%method-calls197487%_
                           _%slot-refs197488%_
                           _%g198830198832%_))
                        _%g198753198798%_))
                  (__tmp201640
                   (cons '%#lambda
                         (cons (cons _%g198755198800%_ _%g198754198799%_)
                               _%body198835%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp201640
                                                      _%g198355198444%_)))
                                                 _%tl198761198787%_
                                                 _%tl198764198795%_
                                                 _%hd198763198793%_)))
                                            (_%g198751198769%_
                                             _%g198752198772%_))))
                                    (_%g198751198769%_ _%g198752198772%_))))
                            (_%g198751198769%_ _%g198752198772%_)))))
                (_%g198750198838%_ _%g198355198444%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-case-lambda-expr199002%_
                                                      (let* ((_%g198843198862%_
                                                              (lambda (_%g198844198859%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g198844198859%_))))
                     (_%g198842198999%_
                      (lambda (_%g198844198865%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g198844198865%_))
                            (let ((_%e198846198867%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g198844198865%_))))
                              (let ((_%hd198847198870%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e198846198867%_)))
                                    (_%tl198848198872%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e198846198867%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl198848198872%_))
                                    (let ((_g201641_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _%tl198848198872%_
                                              '0))))
                                      (begin
                                        (let ((_g201642_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g201641_)
                                                     (##values-length
                                                      _g201641_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g201642_ 2)))
                                              (error "Context expects 2 values"
                                                     _g201642_)))
                                        (let ((_%target198849198875%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g201641_ 0)))
                                              (_%tl198851198877%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g201641_ 1))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl198851198877%_))
                                              (letrec ((_%loop198852198880%_
                                                        (lambda (_%hd198850198883%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%clause198856198885%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd198850198883%_))
                      (let ((_%e198853198887%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd198850198883%_))))
                        (let ((_%lp-hd198854198890%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e198853198887%_)))
                              (_%lp-tl198855198892%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e198853198887%_))))
                          (_%loop198852198880%_
                           _%lp-tl198855198892%_
                           (cons _%lp-hd198854198890%_
                                 _%clause198856198885%_))))
                      (let ((_%clause198857198895%_
                             (reverse _%clause198856198885%_)))
                        ((lambda (_%g198845198897%_)
                           (let* ((_%clauses198997%_
                                   (map (lambda (_%clause198911%_)
                                          (let* ((_%__stx200434200435%_
                                                  _%clause198911%_)
                                                 (_%g198914198929%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx200434200435%_)))))
                                            (let ((_%__kont200436200437%_
                                                   (lambda (_%g198916198957%_
                                                            _%g198917198958%_
                                                            _%g198918198959%_)
                                                     (let* ((_%receiver198978%_
                                                             (let ((_%$e198975%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gxc#apply-extract-receiver
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f '%#begin))
                                   _%g198916198957%_))))
                       (if _%$e198975%_ _%$e198975%_ _%g198918198959%_)))
                    (_%body198984%_
                     (map (lambda (_%g198979198981%_)
                            (gxc#apply-subst-object-refs__%
                             '#f
                             _%receiver198978%_
                             _%$klass198698%_
                             _%method-calls197487%_
                             _%slot-refs197488%_
                             _%g198979198981%_))
                          _%g198916198957%_)))
               (cons (cons _%g198918198959%_ _%g198917198958%_)
                     _%body198984%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont200438200439%_
                                                   (lambda ()
                                                     _%clause198911%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%__stx200434200435%_))
                                                  (let ((_%e198919198941%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%__stx200434200435%_))))
                                                    (let ((_%tl198921198946%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e198919198941%_)))
                                                          (_%hd198920198944%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e198919198941%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd198920198944%_))
                                                          (let ((_%e198922198949%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd198920198944%_))))
                    (let ((_%tl198924198954%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e198922198949%_)))
                          (_%hd198923198952%_
                           (let ()
                             (declare (not safe))
                             (##car _%e198922198949%_))))
                      (_%__kont200436200437%_
                       _%tl198921198946%_
                       _%tl198924198954%_
                       _%hd198923198952%_)))
                  (_%__kont200438200439%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont200438200439%_)))))
                                        (let ((__tmp201643
                                               (lambda (_%g198989198992%_
                                                        _%g198990198994%_)
                                                 (cons _%g198989198992%_
                                                       _%g198990198994%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp201643
                                           '()
                                           _%g198845198897%_))))
                                  (__tmp201644
                                   (cons '%#case-lambda _%clauses198997%_)))
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp201644
                              _%g198354198443%_)))
                         _%clause198857198895%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop198852198880%_
                                                 _%target198849198875%_
                                                 '()))
                                              (_%g198843198862%_
                                               _%g198844198865%_)))))
                                    (_%g198843198862%_ _%g198844198865%_))))
                            (_%g198843198862%_ _%g198844198865%_)))))
                (_%g198842198999%_ _%g198354198443%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl199004%_
                                                      (let ((__tmp201645
                                                             (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (cons (cons _%g198356198445%_ '())
                                             (cons _%specializer-lambda-expr198841%_
                                                   '()))
                                       '())
                                 (cons _%specializer-case-lambda-expr199002%_
                                       '())))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp201645 _%stx197395%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl199006%_
                                                      (_%generate-specializer-impl197399%_
                                                       _%$klass198698%_
                                                       _%$method-table198700%_
                                                       _%methods-bind198725%_
                                                       _%slots-bind198749%_
                                                       _%specializer-impl199004%_)))
                                                (let ((__tmp201647
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%g197406197468%_)))
                                                      (__tmp201646
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%specializer-id198696%_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp201647
                                                   '" => "
                                                   __tmp201646))
                                                (_%generate-specializer-def197400%_
                                                 _%g197406197468%_
                                                 _%specializer-id198696%_
                                                 _%specializer-impl199006%_))))
                                        _%hd198376198438%_
                                        _%hd198373198430%_
                                        _%hd198370198422%_)
                                       (_%g198352198382%_ _%g198353198385%_))))
                               (_%g198352198382%_ _%g198353198385%_))
                           (_%g198352198382%_ _%g198353198385%_))
                       (_%g198352198382%_ _%g198353198385%_))))
               (_%g198352198382%_ _%g198353198385%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g198352198382%_
                                                    _%g198353198385%_))))
                                           (_%g198352198382%_
                                            _%g198353198385%_))))
                                   (_%g198352198382%_ _%g198353198385%_))))
                           (_%g198352198382%_ _%g198353198385%_))))
                   (_%g198352198382%_ _%g198353198385%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g198352198382%_
                                                    _%g198353198385%_)))))
                                       (_%g198351199009%_ _%g197405197467%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#kw-lambda-expr?
                                            _%g197405197467%_))
                                         (let* ((_%g199013199066%_
                                                 (lambda (_%g199014199063%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g199014199063%_))))
                                                (_%g199012200231%_
                                                 (lambda (_%g199014199069%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%g199014199069%_))
                                                       (let ((_%e199020199071%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%g199014199069%_))))
                 (let ((_%hd199021199074%_
                        (let ()
                          (declare (not safe))
                          (##car _%e199020199071%_)))
                       (_%tl199022199076%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e199020199071%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#identifier? _%hd199021199074%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-eq? '%#let-values _%hd199021199074%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl199022199076%_))
                               (let ((_%e199023199079%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%tl199022199076%_))))
                                 (let ((_%hd199024199082%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e199023199079%_)))
                                       (_%tl199025199084%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e199023199079%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd199024199082%_))
                                       (let ((_%e199026199087%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd199024199082%_))))
                                         (let ((_%hd199027199090%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e199026199087%_)))
                                               (_%tl199028199092%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e199026199087%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%hd199027199090%_))
                                               (let ((_%e199029199095%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%hd199027199090%_))))
                                                 (let ((_%hd199030199098%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e199029199095%_)))
                                                       (_%tl199031199100%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e199029199095%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%hd199030199098%_))
                                                       (let ((_%e199032199103%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%hd199030199098%_))))
                 (let ((_%hd199033199106%_
                        (let ()
                          (declare (not safe))
                          (##car _%e199032199103%_)))
                       (_%tl199034199108%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e199032199103%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl199034199108%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%tl199031199100%_))
                           (let ((_%e199035199111%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%tl199031199100%_))))
                             (let ((_%hd199036199114%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e199035199111%_)))
                                   (_%tl199037199116%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e199035199111%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd199036199114%_))
                                   (let ((_%e199038199119%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd199036199114%_))))
                                     (let ((_%hd199039199122%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e199038199119%_)))
                                           (_%tl199040199124%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e199038199119%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#identifier?
                                              _%hd199039199122%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-eq?
                                                  '%#let-values
                                                  _%hd199039199122%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%tl199040199124%_))
                                                   (let ((_%e199041199127%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%tl199040199124%_))))
                                                     (let ((_%hd199042199130%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e199041199127%_)))
                                                           (_%tl199043199132%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e199041199127%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%hd199042199130%_))
                                                           (let ((_%e199044199135%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%hd199042199130%_))))
                     (let ((_%hd199045199138%_
                            (let ()
                              (declare (not safe))
                              (##car _%e199044199135%_)))
                           (_%tl199046199140%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e199044199135%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%hd199045199138%_))
                           (let ((_%e199047199143%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd199045199138%_))))
                             (let ((_%hd199048199146%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e199047199143%_)))
                                   (_%tl199049199148%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e199047199143%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd199048199146%_))
                                   (let ((_%e199050199151%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd199048199146%_))))
                                     (let ((_%hd199051199154%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e199050199151%_)))
                                           (_%tl199052199156%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e199050199151%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl199052199156%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl199049199148%_))
                                               (let ((_%e199053199159%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%tl199049199148%_))))
                                                 (let ((_%hd199054199162%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e199053199159%_)))
                                                       (_%tl199055199164%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e199053199159%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl199055199164%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _%tl199046199140%_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _%tl199043199132%_))
                       (let ((_%e199056199167%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%tl199043199132%_))))
                         (let ((_%hd199057199170%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e199056199167%_)))
                               (_%tl199058199172%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e199056199167%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%tl199058199172%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl199037199116%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%tl199028199092%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%tl199025199084%_))
                                           (let ((_%e199059199175%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%tl199025199084%_))))
                                             (let ((_%hd199060199178%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e199059199175%_)))
                                                   (_%tl199061199180%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e199059199175%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl199061199180%_))
                                                   ((lambda (_%g199015199183%_
                                                             _%g199016199184%_
                                                             _%g199017199185%_
                                                             _%g199018199186%_
                                                             _%g199019199187%_)
                                                      (let* ((_%g199227199289%_
                                                              (lambda (_%g199228199286%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g199228199286%_))))
                     (_%g199226200228%_
                      (lambda (_%g199228199292%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g199228199292%_))
                            (let ((_%e199234199294%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g199228199292%_))))
                              (let ((_%hd199235199297%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e199234199294%_)))
                                    (_%tl199236199299%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e199234199294%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd199235199297%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _%hd199235199297%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl199236199299%_))
                                            (let ((_%e199237199302%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl199236199299%_))))
                                              (let ((_%hd199238199305%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e199237199302%_)))
                                                    (_%tl199239199307%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e199237199302%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl199239199307%_))
                                                    (let ((_%e199240199310%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl199239199307%_))))
                                                      (let ((_%hd199241199313%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e199240199310%_)))
                    (_%tl199242199315%_
                     (let () (declare (not safe)) (##cdr _%e199240199310%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%hd199241199313%_))
                    (let ((_%e199243199318%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd199241199313%_))))
                      (let ((_%hd199244199321%_
                             (let ()
                               (declare (not safe))
                               (##car _%e199243199318%_)))
                            (_%tl199245199323%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e199243199318%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%hd199244199321%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#call _%hd199244199321%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl199245199323%_))
                                    (let ((_%e199246199326%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl199245199323%_))))
                                      (let ((_%hd199247199329%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e199246199326%_)))
                                            (_%tl199248199331%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e199246199326%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd199247199329%_))
                                            (let ((_%e199249199334%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd199247199329%_))))
                                              (let ((_%hd199250199337%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e199249199334%_)))
                                                    (_%tl199251199339%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e199249199334%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd199250199337%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd199250199337%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl199251199339%_))
                                                            (let ((_%e199252199342%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl199251199339%_))))
                      (let ((_%hd199253199345%_
                             (let ()
                               (declare (not safe))
                               (##car _%e199252199342%_)))
                            (_%tl199254199347%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e199252199342%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl199254199347%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl199248199331%_))
                                (let ((_%e199255199350%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl199248199331%_))))
                                  (let ((_%hd199256199353%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e199255199350%_)))
                                        (_%tl199257199355%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e199255199350%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd199256199353%_))
                                        (let ((_%e199258199358%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd199256199353%_))))
                                          (let ((_%hd199259199361%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e199258199358%_)))
                                                (_%tl199260199363%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e199258199358%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _%hd199259199361%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _%hd199259199361%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl199260199363%_))
                                                        (let ((_%e199261199366%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl199260199363%_))))
                  (let ((_%hd199262199369%_
                         (let ()
                           (declare (not safe))
                           (##car _%e199261199366%_)))
                        (_%tl199263199371%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e199261199366%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl199263199371%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl199257199355%_))
                            (let ((_%e199264199374%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl199257199355%_))))
                              (let ((_%hd199265199377%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e199264199374%_)))
                                    (_%tl199266199379%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e199264199374%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd199265199377%_))
                                    (let ((_%e199267199382%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd199265199377%_))))
                                      (let ((_%hd199268199385%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e199267199382%_)))
                                            (_%tl199269199387%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e199267199382%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _%hd199268199385%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _%hd199268199385%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl199269199387%_))
                                                    (let ((_%e199270199390%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl199269199387%_))))
                                                      (let ((_%hd199271199393%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e199270199390%_)))
                    (_%tl199272199395%_
                     (let () (declare (not safe)) (##cdr _%e199270199390%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl199272199395%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%tl199266199379%_))
                        (if (let ((__tmp201648
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-length _%tl199266199379%_))))
                              (declare (not safe))
                              (##fx>= __tmp201648 '1))
                            (let ((_g201649_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _%tl199266199379%_
                                      '1))))
                              (begin
                                (let ((_g201650_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g201649_)
                                             (##values-length _g201649_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g201650_ 2)))
                                      (error "Context expects 2 values"
                                             _g201650_)))
                                (let ((_%target199273199398%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g201649_ 0)))
                                      (_%tl199275199400%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g201649_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl199275199400%_))
                                      (let ((_%e199282199403%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl199275199400%_))))
                                        (let ((_%hd199283199406%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e199282199403%_)))
                                              (_%tl199284199408%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e199282199403%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl199284199408%_))
                                              (letrec ((_%loop199276199411%_
                                                        (lambda (_%hd199274199414%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%kw-ref199280199416%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd199274199414%_))
                      (let ((_%e199277199418%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd199274199414%_))))
                        (let ((_%lp-hd199278199421%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e199277199418%_)))
                              (_%lp-tl199279199423%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e199277199418%_))))
                          (_%loop199276199411%_
                           _%lp-tl199279199423%_
                           (cons _%lp-hd199278199421%_
                                 _%kw-ref199280199416%_))))
                      (let ((_%kw-ref199281199426%_
                             (reverse _%kw-ref199280199416%_)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl199242199315%_))
                            ((lambda (_%g199229199428%_
                                      _%g199230199429%_
                                      _%g199231199430%_
                                      _%g199232199431%_
                                      _%g199233199432%_)
                               (let* ((_%kw-count199483%_
                                       (length (let ((__tmp201651
                                                      (lambda (_%g199475199478%_
                                                               _%g199476199480%_)
                                                        (cons _%g199475199478%_
                                                              _%g199476199480%_))))
                                                 (declare (not safe))
                                                 (__foldr1
                                                  __tmp201651
                                                  '()
                                                  _%g199230199429%_))))
                                      (_%self-index199485%_
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _%kw-count199483%_ '1))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#lambda-expr? _%g199017199185%_))
                                     (let* ((_%g199489199503%_
                                             (lambda (_%g199490199500%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g199490199500%_))))
                                            (_%g199488199626%_
                                             (lambda (_%g199490199506%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%g199490199506%_))
                                                   (let ((_%e199493199508%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%g199490199506%_))))
                                                     (let ((_%hd199494199511%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e199493199508%_)))
                                                           (_%tl199495199513%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e199493199508%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl199495199513%_))
                                                           (let ((_%e199496199516%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl199495199513%_))))
                     (let ((_%hd199497199519%_
                            (let ()
                              (declare (not safe))
                              (##car _%e199496199516%_)))
                           (_%tl199498199521%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e199496199516%_))))
                       ((lambda (_%g199491199524%_ _%g199492199525%_)
                          (let* ((_%self199542%_
                                  (list-ref
                                   _%g199492199525%_
                                   _%self-index199485%_))
                                 (_%receiver199547%_
                                  (let ((_%$e199544%_
                                         (gxc#apply-extract-receiver
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   '%#begin))
                                                _%g199491199524%_))))
                                    (if _%$e199544%_
                                        _%$e199544%_
                                        _%self199542%_))))
                            (for-each
                             (lambda (_%g199549199551%_)
                               (gxc#apply-collect-object-refs__%
                                '#f
                                _%receiver199547%_
                                _%method-calls197487%_
                                _%slot-refs197488%_
                                _%g199549199551%_))
                             _%g199491199524%_)
                            (if (_%no-specializer?197491%_)
                                _%stx197395%_
                                (let* ((_%specializer-id199560%_
                                        (let* ((_%id199554%_
                                                (let ((__tmp201652
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%g197406197468%_))))
                                                  (declare (not safe))
                                                  (make-symbol__1
                                                   __tmp201652
                                                   '"::specialize")))
                                               (_%specializer-id199557%_
                                                (let ((__tmp201653
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-source
                                                          _%stx197395%_))))
                                                  (declare (not safe))
                                                  (gx#core-quote-syntax__1
                                                   _%id199554%_
                                                   __tmp201653))))
                                          (let ()
                                            (declare (not safe))
                                            (gx#core-bind-runtime!__0
                                             _%specializer-id199557%_))
                                          _%specializer-id199557%_))
                                       (_%$klass199562%_
                                        (let ((__tmp201654
                                               (let ()
                                                 (declare (not safe))
                                                 (##gensym '__klass))))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp201654)))
                                       (_%$method-table199564%_
                                        (let ((__tmp201655
                                               (let ()
                                                 (declare (not safe))
                                                 (##gensym '__method-table))))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp201655)))
                                       (_%methods199566%_
                                        (let ()
                                          (declare (not safe))
                                          (__hash-keys
                                           _%method-calls197487%_)))
                                       (_%$methods199570%_
                                        (let ((__tmp201656
                                               (lambda (_%id199568%_)
                                                 (let ((__tmp201657
                                                        (gensym _%id199568%_)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    '"__"
                                                    __tmp201657)))))
                                          (declare (not safe))
                                          (##map __tmp201656
                                                 _%methods199566%_)))
                                       (_%_199579%_
                                        (let ((__tmp201658
                                               (lambda (_%g199571199574%_
                                                        _%g199572199576%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (__hash-put!
                                                    _%method-calls197487%_
                                                    _%g199571199574%_
                                                    _%g199572199576%_)))))
                                          (declare (not safe))
                                          (##for-each
                                           __tmp201658
                                           _%methods199566%_
                                           _%$methods199570%_)))
                                       (_%methods-bind199589%_
                                        (let ((__tmp201659
                                               (lambda (_%g199581199584%_
                                                        _%g199582199586%_)
                                                 (_%generate-method-bind197397%_
                                                  _%$klass199562%_
                                                  _%$method-table199564%_
                                                  _%g199581199584%_
                                                  _%g199582199586%_))))
                                          (declare (not safe))
                                          (##map __tmp201659
                                                 _%methods199566%_
                                                 _%$methods199570%_)))
                                       (_%slots199591%_
                                        (let ()
                                          (declare (not safe))
                                          (__hash-keys _%slot-refs197488%_)))
                                       (_%$slots199595%_
                                        (let ((__tmp201660
                                               (lambda (_%id199593%_)
                                                 (let ((__tmp201661
                                                        (gensym _%id199593%_)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    '"__"
                                                    __tmp201661)))))
                                          (declare (not safe))
                                          (##map __tmp201660 _%slots199591%_)))
                                       (_%_199604%_
                                        (let ((__tmp201662
                                               (lambda (_%g199596199599%_
                                                        _%g199597199601%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (__hash-put!
                                                    _%slot-refs197488%_
                                                    _%g199596199599%_
                                                    _%g199597199601%_)))))
                                          (declare (not safe))
                                          (##for-each
                                           __tmp201662
                                           _%slots199591%_
                                           _%$slots199595%_)))
                                       (_%slots-bind199613%_
                                        (let ((__tmp201663
                                               (lambda (_%g199605199608%_
                                                        _%g199606199610%_)
                                                 (_%generate-slot-bind197398%_
                                                  _%$klass199562%_
                                                  _%g199605199608%_
                                                  _%g199606199610%_))))
                                          (declare (not safe))
                                          (##map __tmp201663
                                                 _%slots199591%_
                                                 _%$slots199595%_)))
                                       (_%specializer-impl199621%_
                                        (let* ((_%specializer-body199619%_
                                                (map (lambda (_%g199614199616%_)
                                                       (gxc#apply-subst-object-refs__%
                                                        '#f
                                                        _%receiver199547%_
                                                        _%$klass199562%_
                                                        _%method-calls197487%_
                                                        _%slot-refs197488%_
                                                        _%g199614199616%_))
                                                     _%g199491199524%_))
                                               (__tmp201664
                                                (cons '%#let-values
                                                      (cons (cons (cons (cons _%g199019199187%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      '())
                                (cons (cons '%#let-values
                                            (cons (cons (cons (cons _%g199018199186%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())
                      (cons (let ((__tmp201665
                                   (cons '%#lambda
                                         (cons _%g199492199525%_
                                               _%specializer-body199619%_))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp201665
                               _%g199017199185%_))
                            '()))
                '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons _%g199016199184%_
                                                        '())))
                                      '()))
                          '())
                    (cons _%g199015199183%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp201664
                                           _%stx197395%_)))
                                       (_%specializer-impl199623%_
                                        (_%generate-specializer-impl197399%_
                                         _%$klass199562%_
                                         _%$method-table199564%_
                                         _%methods-bind199589%_
                                         _%slots-bind199613%_
                                         _%specializer-impl199621%_)))
                                  (let ((__tmp201667
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%g197406197468%_)))
                                        (__tmp201666
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e
                                            _%specializer-id199560%_))))
                                    (declare (not safe))
                                    (gxc#verbose
                                     '"generate method specializer "
                                     __tmp201667
                                     '" => "
                                     __tmp201666))
                                  (_%generate-specializer-def197400%_
                                   _%g197406197468%_
                                   _%specializer-id199560%_
                                   _%specializer-impl199623%_)))))
                        _%tl199498199521%_
                        _%hd199497199519%_)))
                   (_%g199489199503%_ _%g199490199506%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g199489199503%_
                                                    _%g199490199506%_)))))
                                       (_%g199488199626%_ _%g199017199185%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#opt-lambda-expr?
                                            _%g199017199185%_))
                                         (let* ((_%g199630199660%_
                                                 (lambda (_%g199631199657%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g199631199657%_))))
                                                (_%g199629200224%_
                                                 (lambda (_%g199631199663%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%g199631199663%_))
                                                       (let ((_%e199635199665%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%g199631199663%_))))
                 (let ((_%hd199636199668%_
                        (let ()
                          (declare (not safe))
                          (##car _%e199635199665%_)))
                       (_%tl199637199670%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e199635199665%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%tl199637199670%_))
                       (let ((_%e199638199673%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%tl199637199670%_))))
                         (let ((_%hd199639199676%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e199638199673%_)))
                               (_%tl199640199678%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e199638199673%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%hd199639199676%_))
                               (let ((_%e199641199681%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%hd199639199676%_))))
                                 (let ((_%hd199642199684%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e199641199681%_)))
                                       (_%tl199643199686%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e199641199681%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd199642199684%_))
                                       (let ((_%e199644199689%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd199642199684%_))))
                                         (let ((_%hd199645199692%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e199644199689%_)))
                                               (_%tl199646199694%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e199644199689%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%hd199645199692%_))
                                               (let ((_%e199647199697%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%hd199645199692%_))))
                                                 (let ((_%hd199648199700%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e199647199697%_)))
                                                       (_%tl199649199702%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e199647199697%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl199649199702%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl199646199694%_))
                                                           (let ((_%e199650199705%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl199646199694%_))))
                     (let ((_%hd199651199708%_
                            (let ()
                              (declare (not safe))
                              (##car _%e199650199705%_)))
                           (_%tl199652199710%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e199650199705%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl199652199710%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%tl199643199686%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%tl199640199678%_))
                                   (let ((_%e199653199713%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%tl199640199678%_))))
                                     (let ((_%hd199654199716%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e199653199713%_)))
                                           (_%tl199655199718%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e199653199713%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl199655199718%_))
                                           ((lambda (_%g199632199721%_
                                                     _%g199633199722%_
                                                     _%g199634199723%_)
                                              (let* ((_%g199747199761%_
                                                      (lambda (_%g199748199758%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g199748199758%_))))
                                                     (_%g199746199808%_
                                                      (lambda (_%g199748199764%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g199748199764%_))
                                                            (let ((_%e199751199766%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%g199748199764%_))))
                      (let ((_%hd199752199769%_
                             (let ()
                               (declare (not safe))
                               (##car _%e199751199766%_)))
                            (_%tl199753199771%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e199751199766%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl199753199771%_))
                            (let ((_%e199754199774%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl199753199771%_))))
                              (let ((_%hd199755199777%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e199754199774%_)))
                                    (_%tl199756199779%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e199754199774%_))))
                                ((lambda (_%g199749199782%_ _%g199750199783%_)
                                   (let* ((_%self199796%_
                                           (list-ref
                                            _%g199750199783%_
                                            _%self-index199485%_))
                                          (_%receiver199801%_
                                           (let ((_%$e199798%_
                                                  (gxc#apply-extract-receiver
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gx#datum->syntax__0
                                                            '#f
                                                            '%#begin))
                                                         _%g199749199782%_))))
                                             (if _%$e199798%_
                                                 _%$e199798%_
                                                 _%self199796%_))))
                                     (for-each
                                      (lambda (_%g199803199805%_)
                                        (gxc#apply-collect-object-refs__%
                                         '#f
                                         _%receiver199801%_
                                         _%method-calls197487%_
                                         _%slot-refs197488%_
                                         _%g199803199805%_))
                                      _%g199749199782%_)))
                                 _%tl199756199779%_
                                 _%hd199755199777%_)))
                            (_%g199747199761%_ _%g199748199764%_))))
                    (_%g199747199761%_ _%g199748199764%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g199746199808%_
                                                 _%g199633199722%_))
                                              (let* ((_%g199811199830%_
                                                      (lambda (_%g199812199827%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g199812199827%_))))
                                                     (_%g199810199939%_
                                                      (lambda (_%g199812199833%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g199812199833%_))
                                                            (let ((_%e199814199835%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%g199812199833%_))))
                      (let ((_%hd199815199838%_
                             (let ()
                               (declare (not safe))
                               (##car _%e199814199835%_)))
                            (_%tl199816199840%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e199814199835%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _%tl199816199840%_))
                            (let ((_g201668_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _%tl199816199840%_
                                      '0))))
                              (begin
                                (let ((_g201669_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g201668_)
                                             (##values-length _g201668_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g201669_ 2)))
                                      (error "Context expects 2 values"
                                             _g201669_)))
                                (let ((_%target199817199843%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g201668_ 0)))
                                      (_%tl199819199845%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g201668_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl199819199845%_))
                                      (letrec ((_%loop199820199848%_
                                                (lambda (_%hd199818199851%_
                                                         _%clause199824199853%_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%hd199818199851%_))
                                                      (let ((_%e199821199855%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd199818199851%_))))
                (let ((_%lp-hd199822199858%_
                       (let () (declare (not safe)) (##car _%e199821199855%_)))
                      (_%lp-tl199823199860%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e199821199855%_))))
                  (_%loop199820199848%_
                   _%lp-tl199823199860%_
                   (cons _%lp-hd199822199858%_ _%clause199824199853%_))))
              (let ((_%clause199825199863%_ (reverse _%clause199824199853%_)))
                ((lambda (_%g199813199865%_)
                   (for-each
                    (lambda (_%clause199878%_)
                      (let* ((_%g199880199891%_
                              (lambda (_%g199881199888%_)
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g199881199888%_))))
                             (_%g199879199929%_
                              (lambda (_%g199881199894%_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%g199881199894%_))
                                    (let ((_%e199884199896%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%g199881199894%_))))
                                      (let ((_%hd199885199899%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e199884199896%_)))
                                            (_%tl199886199901%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e199884199896%_))))
                                        ((lambda (_%g199882199904%_
                                                  _%g199883199905%_)
                                           (let* ((_%self199917%_
                                                   (list-ref
                                                    _%g199883199905%_
                                                    _%self-index199485%_))
                                                  (_%receiver199922%_
                                                   (let ((_%$e199919%_
                                                          (gxc#apply-extract-receiver
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '%#begin))
                         _%g199882199904%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _%$e199919%_
                                                         _%$e199919%_
                                                         _%self199917%_))))
                                             (for-each
                                              (lambda (_%g199924199926%_)
                                                (gxc#apply-collect-object-refs__%
                                                 '#f
                                                 _%receiver199922%_
                                                 _%method-calls197487%_
                                                 _%slot-refs197488%_
                                                 _%g199924199926%_))
                                              _%g199882199904%_)))
                                         _%tl199886199901%_
                                         _%hd199885199899%_)))
                                    (_%g199880199891%_ _%g199881199894%_)))))
                        (_%g199879199929%_ _%clause199878%_)))
                    (let ((__tmp201670
                           (lambda (_%g199931199934%_ _%g199932199936%_)
                             (cons _%g199931199934%_ _%g199932199936%_))))
                      (declare (not safe))
                      (__foldr1 __tmp201670 '() _%g199813199865%_))))
                 _%clause199825199863%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_%loop199820199848%_
                                         _%target199817199843%_
                                         '()))
                                      (_%g199811199830%_ _%g199812199833%_)))))
                            (_%g199811199830%_ _%g199812199833%_))))
                    (_%g199811199830%_ _%g199812199833%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g199810199939%_
                                                 _%g199632199721%_))
                                              (if (_%no-specializer?197491%_)
                                                  _%stx197395%_
                                                  (let* ((_%specializer-id199948%_
                                                          (let* ((_%id199942%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp201671
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%g197406197468%_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp201671 '"::specialize")))
                         (_%specializer-id199945%_
                          (let ((__tmp201672
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _%stx197395%_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _%id199942%_
                             __tmp201672))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _%specializer-id199945%_))
                    _%specializer-id199945%_))
                 (_%$klass199950%_
                  (let ((__tmp201673
                         (let () (declare (not safe)) (##gensym '__klass))))
                    (declare (not safe))
                    (make-symbol__0 __tmp201673)))
                 (_%$method-table199952%_
                  (let ((__tmp201674
                         (let ()
                           (declare (not safe))
                           (##gensym '__method-table))))
                    (declare (not safe))
                    (make-symbol__0 __tmp201674)))
                 (_%methods199954%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%method-calls197487%_)))
                 (_%$methods199958%_
                  (let ((__tmp201675
                         (lambda (_%id199956%_)
                           (let ((__tmp201676 (gensym _%id199956%_)))
                             (declare (not safe))
                             (make-symbol__1 '"__" __tmp201676)))))
                    (declare (not safe))
                    (##map __tmp201675 _%methods199954%_)))
                 (_%_199967%_
                  (let ((__tmp201677
                         (lambda (_%g199959199962%_ _%g199960199964%_)
                           (let ()
                             (declare (not safe))
                             (__hash-put!
                              _%method-calls197487%_
                              _%g199959199962%_
                              _%g199960199964%_)))))
                    (declare (not safe))
                    (##for-each
                     __tmp201677
                     _%methods199954%_
                     _%$methods199958%_)))
                 (_%methods-bind199977%_
                  (let ((__tmp201678
                         (lambda (_%g199969199972%_ _%g199970199974%_)
                           (_%generate-method-bind197397%_
                            _%$klass199950%_
                            _%$method-table199952%_
                            _%g199969199972%_
                            _%g199970199974%_))))
                    (declare (not safe))
                    (##map __tmp201678 _%methods199954%_ _%$methods199958%_)))
                 (_%slots199979%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%slot-refs197488%_)))
                 (_%$slots199983%_
                  (let ((__tmp201679
                         (lambda (_%id199981%_)
                           (let ((__tmp201680 (gensym _%id199981%_)))
                             (declare (not safe))
                             (make-symbol__1 '"__" __tmp201680)))))
                    (declare (not safe))
                    (##map __tmp201679 _%slots199979%_)))
                 (_%_199992%_
                  (let ((__tmp201681
                         (lambda (_%g199984199987%_ _%g199985199989%_)
                           (let ()
                             (declare (not safe))
                             (__hash-put!
                              _%slot-refs197488%_
                              _%g199984199987%_
                              _%g199985199989%_)))))
                    (declare (not safe))
                    (##for-each __tmp201681 _%slots199979%_ _%$slots199983%_)))
                 (_%slots-bind200001%_
                  (let ((__tmp201682
                         (lambda (_%g199993199996%_ _%g199994199998%_)
                           (_%generate-slot-bind197398%_
                            _%$klass199950%_
                            _%g199993199996%_
                            _%g199994199998%_))))
                    (declare (not safe))
                    (##map __tmp201682 _%slots199979%_ _%$slots199983%_)))
                 (_%specializer-lambda-expr200079%_
                  (let* ((_%g200003200017%_
                          (lambda (_%g200004200014%_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g200004200014%_))))
                         (_%g200002200076%_
                          (lambda (_%g200004200020%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%g200004200020%_))
                                (let ((_%e200007200022%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%g200004200020%_))))
                                  (let ((_%hd200008200025%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e200007200022%_)))
                                        (_%tl200009200027%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e200007200022%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl200009200027%_))
                                        (let ((_%e200010200030%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl200009200027%_))))
                                          (let ((_%hd200011200033%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e200010200030%_)))
                                                (_%tl200012200035%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e200010200030%_))))
                                            ((lambda (_%g200005200038%_
                                                      _%g200006200039%_)
                                               (let* ((_%self200062%_
                                                       (list-ref
                                                        _%g200006200039%_
                                                        _%self-index199485%_))
                                                      (_%receiver200067%_
                                                       (let ((_%$e200064%_
                                                              (gxc#apply-extract-receiver
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f '%#begin))
                             _%g200005200038%_))))
                 (if _%$e200064%_ _%$e200064%_ _%self200062%_)))
              (_%body200073%_
               (map (lambda (_%g200068200070%_)
                      (gxc#apply-subst-object-refs__%
                       '#f
                       _%receiver200067%_
                       _%$klass199950%_
                       _%method-calls197487%_
                       _%slot-refs197488%_
                       _%g200068200070%_))
                    _%g200005200038%_))
              (__tmp201683
               (cons '%#lambda (cons _%g200006200039%_ _%body200073%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp201683
                                                  _%g199633199722%_)))
                                             _%tl200012200035%_
                                             _%hd200011200033%_)))
                                        (_%g200003200017%_
                                         _%g200004200020%_))))
                                (_%g200003200017%_ _%g200004200020%_)))))
                    (_%g200002200076%_ _%g199633199722%_)))
                 (_%specializer-case-lambda-expr200217%_
                  (let* ((_%g200081200100%_
                          (lambda (_%g200082200097%_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g200082200097%_))))
                         (_%g200080200214%_
                          (lambda (_%g200082200103%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%g200082200103%_))
                                (let ((_%e200084200105%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%g200082200103%_))))
                                  (let ((_%hd200085200108%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e200084200105%_)))
                                        (_%tl200086200110%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e200084200105%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl200086200110%_))
                                        (let ((_g201684_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl200086200110%_
                                                  '0))))
                                          (begin
                                            (let ((_g201685_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g201684_)
                                                         (##values-length
                                                          _g201684_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g201685_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g201685_)))
                                            (let ((_%target200087200113%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g201684_
                                                      0)))
                                                  (_%tl200089200115%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g201684_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl200089200115%_))
                                                  (letrec ((_%loop200090200118%_
                                                            (lambda (_%hd200088200121%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%clause200094200123%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd200088200121%_))
                          (let ((_%e200091200125%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd200088200121%_))))
                            (let ((_%lp-hd200092200128%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e200091200125%_)))
                                  (_%lp-tl200093200130%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e200091200125%_))))
                              (_%loop200090200118%_
                               _%lp-tl200093200130%_
                               (cons _%lp-hd200092200128%_
                                     _%clause200094200123%_))))
                          (let ((_%clause200095200133%_
                                 (reverse _%clause200094200123%_)))
                            ((lambda (_%g200083200135%_)
                               (let* ((_%clauses200212%_
                                       (map (lambda (_%clause200149%_)
                                              (let* ((_%g200151200162%_
                                                      (lambda (_%g200152200159%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g200152200159%_))))
                                                     (_%g200150200202%_
                                                      (lambda (_%g200152200165%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g200152200165%_))
                                                            (let ((_%e200155200167%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%g200152200165%_))))
                      (let ((_%hd200156200170%_
                             (let ()
                               (declare (not safe))
                               (##car _%e200155200167%_)))
                            (_%tl200157200172%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e200155200167%_))))
                        ((lambda (_%g200153200175%_ _%g200154200176%_)
                           (let* ((_%self200188%_
                                   (list-ref
                                    _%g200154200176%_
                                    _%self-index199485%_))
                                  (_%receiver200193%_
                                   (let ((_%$e200190%_
                                          (gxc#apply-extract-receiver
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    '%#begin))
                                                 _%g200153200175%_))))
                                     (if _%$e200190%_
                                         _%$e200190%_
                                         _%self200188%_)))
                                  (_%body200199%_
                                   (map (lambda (_%g200194200196%_)
                                          (gxc#apply-subst-object-refs__%
                                           '#f
                                           _%receiver200193%_
                                           _%$klass199950%_
                                           _%method-calls197487%_
                                           _%slot-refs197488%_
                                           _%g200194200196%_))
                                        _%g200153200175%_)))
                             (cons _%g200154200176%_ _%body200199%_)))
                         _%tl200157200172%_
                         _%hd200156200170%_)))
                    (_%g200151200162%_ _%g200152200165%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g200150200202%_
                                                 _%clause200149%_)))
                                            (let ((__tmp201686
                                                   (lambda (_%g200204200207%_
                                                            _%g200205200209%_)
                                                     (cons _%g200204200207%_
                                                           _%g200205200209%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp201686
                                               '()
                                               _%g200083200135%_))))
                                      (__tmp201687
                                       (cons '%#case-lambda
                                             _%clauses200212%_)))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp201687
                                  _%g199632199721%_)))
                             _%clause200095200133%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop200090200118%_
                                                     _%target200087200113%_
                                                     '()))
                                                  (_%g200081200100%_
                                                   _%g200082200103%_)))))
                                        (_%g200081200100%_
                                         _%g200082200103%_))))
                                (_%g200081200100%_ _%g200082200103%_)))))
                    (_%g200080200214%_ _%g199632199721%_)))
                 (_%specializer-impl200219%_
                  (let ((__tmp201688
                         (cons '%#let-values
                               (cons (cons (cons (cons _%g199019199187%_ '())
                                                 (cons (cons '%#let-values
                                                             (cons (cons (cons (cons _%g199018199186%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                             '())
                                       (cons (let ((__tmp201689
                                                    (cons '%#let-values
                                                          (cons (cons (cons (cons _%g199634199723%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                          '())
                                    (cons _%specializer-lambda-expr200079%_
                                          '()))
                              '())
                        (cons _%specializer-case-lambda-expr200217%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp201689
                                                _%stx197395%_))
                                             '()))
                                 '())
                           (cons _%g199016199184%_ '())))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())
                                     (cons _%g199015199183%_ '())))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp201688 _%stx197395%_)))
                 (_%specializer-impl200221%_
                  (_%generate-specializer-impl197399%_
                   _%$klass199950%_
                   _%$method-table199952%_
                   _%methods-bind199977%_
                   _%slots-bind200001%_
                   _%specializer-impl200219%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp201691
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%g197406197468%_)))
                                                          (__tmp201690
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%specializer-id199948%_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp201691
                                                       '" => "
                                                       __tmp201690))
                                                    (_%generate-specializer-def197400%_
                                                     _%g197406197468%_
                                                     _%specializer-id199948%_
                                                     _%specializer-impl200221%_))))
                                            _%hd199654199716%_
                                            _%hd199651199708%_
                                            _%hd199648199700%_)
                                           (_%g199630199660%_
                                            _%g199631199663%_))))
                                   (_%g199630199660%_ _%g199631199663%_))
                               (_%g199630199660%_ _%g199631199663%_))
                           (_%g199630199660%_ _%g199631199663%_))))
                   (_%g199630199660%_ _%g199631199663%_))
               (_%g199630199660%_ _%g199631199663%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g199630199660%_
                                                _%g199631199663%_))))
                                       (_%g199630199660%_ _%g199631199663%_))))
                               (_%g199630199660%_ _%g199631199663%_))))
                       (_%g199630199660%_ _%g199631199663%_))))
               (_%g199630199660%_ _%g199631199663%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g199629200224%_
                                            _%g199017199185%_))
                                         _%stx197395%_))))
                             _%hd199283199406%_
                             _%kw-ref199281199426%_
                             _%hd199271199393%_
                             _%hd199262199369%_
                             _%hd199253199345%_)
                            (_%g199227199289%_ _%g199228199292%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop199276199411%_
                                                 _%target199273199398%_
                                                 '()))
                                              (_%g199227199289%_
                                               _%g199228199292%_))))
                                      (_%g199227199289%_ _%g199228199292%_)))))
                            (_%g199227199289%_ _%g199228199292%_))
                        (_%g199227199289%_ _%g199228199292%_))
                    (_%g199227199289%_ _%g199228199292%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g199227199289%_
                                                     _%g199228199292%_))
                                                (_%g199227199289%_
                                                 _%g199228199292%_))
                                            (_%g199227199289%_
                                             _%g199228199292%_))))
                                    (_%g199227199289%_ _%g199228199292%_))))
                            (_%g199227199289%_ _%g199228199292%_))
                        (_%g199227199289%_ _%g199228199292%_))))
                (_%g199227199289%_ _%g199228199292%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g199227199289%_
                                                     _%g199228199292%_))
                                                (_%g199227199289%_
                                                 _%g199228199292%_))))
                                        (_%g199227199289%_
                                         _%g199228199292%_))))
                                (_%g199227199289%_ _%g199228199292%_))
                            (_%g199227199289%_ _%g199228199292%_))))
                    (_%g199227199289%_ _%g199228199292%_))
                (_%g199227199289%_ _%g199228199292%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g199227199289%_
                                                     _%g199228199292%_))))
                                            (_%g199227199289%_
                                             _%g199228199292%_))))
                                    (_%g199227199289%_ _%g199228199292%_))
                                (_%g199227199289%_ _%g199228199292%_))
                            (_%g199227199289%_ _%g199228199292%_))))
                    (_%g199227199289%_ _%g199228199292%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g199227199289%_
                                                     _%g199228199292%_))))
                                            (_%g199227199289%_
                                             _%g199228199292%_))
                                        (_%g199227199289%_ _%g199228199292%_))
                                    (_%g199227199289%_ _%g199228199292%_))))
                            (_%g199227199289%_ _%g199228199292%_)))))
                (_%g199226200228%_ _%g199016199184%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%hd199060199178%_
                                                    _%hd199057199170%_
                                                    _%hd199054199162%_
                                                    _%hd199051199154%_
                                                    _%hd199033199106%_)
                                                   (_%g199013199066%_
                                                    _%g199014199069%_))))
                                           (_%g199013199066%_
                                            _%g199014199069%_))
                                       (_%g199013199066%_ _%g199014199069%_))
                                   (_%g199013199066%_ _%g199014199069%_))
                               (_%g199013199066%_ _%g199014199069%_))))
                       (_%g199013199066%_ _%g199014199069%_))
                   (_%g199013199066%_ _%g199014199069%_))
               (_%g199013199066%_ _%g199014199069%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g199013199066%_
                                                _%g199014199069%_))
                                           (_%g199013199066%_
                                            _%g199014199069%_))))
                                   (_%g199013199066%_ _%g199014199069%_))))
                           (_%g199013199066%_ _%g199014199069%_))))
                   (_%g199013199066%_ _%g199014199069%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g199013199066%_
                                                    _%g199014199069%_))
                                               (_%g199013199066%_
                                                _%g199014199069%_))
                                           (_%g199013199066%_
                                            _%g199014199069%_))))
                                   (_%g199013199066%_ _%g199014199069%_))))
                           (_%g199013199066%_ _%g199014199069%_))
                       (_%g199013199066%_ _%g199014199069%_))))
               (_%g199013199066%_ _%g199014199069%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g199013199066%_
                                                _%g199014199069%_))))
                                       (_%g199013199066%_ _%g199014199069%_))))
                               (_%g199013199066%_ _%g199014199069%_))
                           (_%g199013199066%_ _%g199014199069%_))
                       (_%g199013199066%_ _%g199014199069%_))))
               (_%g199013199066%_ _%g199014199069%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g199012200231%_
                                            _%g197405197467%_))
                                         _%stx197395%_))))))))
                  (_%__kont200458200459%_ (lambda () _%stx197395%_)))
              (let ((_%__match200487200488%_
                     (lambda (_%e197407197435%_
                              _%hd197408197438%_
                              _%tl197409197440%_
                              _%e197410197443%_
                              _%hd197411197446%_
                              _%tl197412197448%_
                              _%e197413197451%_
                              _%hd197414197454%_
                              _%tl197415197456%_
                              _%e197416197459%_
                              _%hd197417197462%_
                              _%tl197418197464%_)
                       (let ((_%g197405197467%_ _%hd197417197462%_)
                             (_%g197406197468%_ _%hd197414197454%_))
                         (if (let ((__tmp201692
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol
                                       _%g197406197468%_))))
                               (declare (not safe))
                               (gxc#optimizer-top-level-method? __tmp201692))
                             (_%__kont200456200457%_
                              _%g197405197467%_
                              _%g197406197468%_)
                             (_%__kont200458200459%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx200454200455%_))
                    (let ((_%e197407197435%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx200454200455%_))))
                      (let ((_%tl197409197440%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e197407197435%_)))
                            (_%hd197408197438%_
                             (let ()
                               (declare (not safe))
                               (##car _%e197407197435%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl197409197440%_))
                            (let ((_%e197410197443%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl197409197440%_))))
                              (let ((_%tl197412197448%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e197410197443%_)))
                                    (_%hd197411197446%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e197410197443%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd197411197446%_))
                                    (let ((_%e197413197451%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd197411197446%_))))
                                      (let ((_%tl197415197456%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e197413197451%_)))
                                            (_%hd197414197454%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e197413197451%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl197415197456%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl197412197448%_))
                                                (let ((_%e197416197459%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl197412197448%_))))
                                                  (let ((_%tl197418197464%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e197416197459%_)))
                                                        (_%hd197417197462%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e197416197459%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl197418197464%_))
                                                        (_%__match200487200488%_
                                                         _%e197407197435%_
                                                         _%hd197408197438%_
                                                         _%tl197409197440%_
                                                         _%e197410197443%_
                                                         _%hd197411197446%_
                                                         _%tl197412197448%_
                                                         _%e197413197451%_
                                                         _%hd197414197454%_
                                                         _%tl197415197456%_
                                                         _%e197416197459%_
                                                         _%hd197417197462%_
                                                         _%tl197418197464%_)
                                                        (_%__kont200458200459%_))))
                                                (_%__kont200458200459%_))
                                            (_%__kont200458200459%_))))
                                    (_%__kont200458200459%_))))
                            (_%__kont200458200459%_))))
                    (_%__kont200458200459%_))))))))
    (define gxc#extract-receiver-begin-annotation%
      (lambda (_%self197247%_ _%stx197248%_)
        (let* ((_%__stx200490200491%_ _%stx197248%_)
               (_%g197251197284%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx200490200491%_)))))
          (let ((_%__kont200492200493%_
                 (lambda (_%g197253197374%_) _%g197253197374%_))
                (_%__kont200494200495%_
                 (lambda (_%g197269197313%_ _%g197270197314%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self197247%_ _%g197269197313%_)))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx200490200491%_))
                (let ((_%e197254197334%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%__stx200490200491%_))))
                  (let ((_%tl197256197339%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e197254197334%_)))
                        (_%hd197255197337%_
                         (let ()
                           (declare (not safe))
                           (##car _%e197254197334%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl197256197339%_))
                        (let ((_%e197257197342%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl197256197339%_))))
                          (let ((_%tl197259197347%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e197257197342%_)))
                                (_%hd197258197345%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e197257197342%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd197258197345%_))
                                (let ((_%e197260197350%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd197258197345%_))))
                                  (let ((_%tl197262197355%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e197260197350%_)))
                                        (_%hd197261197353%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e197260197350%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd197261197353%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '@receiver
                                               _%hd197261197353%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl197262197355%_))
                                                (let ((_%e197263197358%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl197262197355%_))))
                                                  (let ((_%tl197265197363%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e197263197358%_)))
                                                        (_%hd197264197361%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e197263197358%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl197265197363%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl197259197347%_))
                                                            (let ((_%e197266197366%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl197259197347%_))))
                      (let ((_%tl197268197371%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e197266197366%_)))
                            (_%hd197267197369%_
                             (let ()
                               (declare (not safe))
                               (##car _%e197266197366%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl197268197371%_))
                            (_%__kont200492200493%_ _%hd197264197361%_)
                            (let ()
                              (declare (not safe))
                              (_%g197251197284%_)))))
                    (let () (declare (not safe)) (_%g197251197284%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl197259197347%_))
                    (let ((_%e197277197305%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl197259197347%_))))
                      (let ((_%tl197279197310%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e197277197305%_)))
                            (_%hd197278197308%_
                             (let ()
                               (declare (not safe))
                               (##car _%e197277197305%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl197279197310%_))
                            (_%__kont200494200495%_
                             _%hd197278197308%_
                             _%hd197258197345%_)
                            (let ()
                              (declare (not safe))
                              (_%g197251197284%_)))))
                    (let () (declare (not safe)) (_%g197251197284%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl197259197347%_))
                                                    (let ((_%e197277197305%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl197259197347%_))))
                                                      (let ((_%tl197279197310%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e197277197305%_)))
                    (_%hd197278197308%_
                     (let () (declare (not safe)) (##car _%e197277197305%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl197279197310%_))
                    (_%__kont200494200495%_
                     _%hd197278197308%_
                     _%hd197258197345%_)
                    (let () (declare (not safe)) (_%g197251197284%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g197251197284%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl197259197347%_))
                                                (let ((_%e197277197305%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl197259197347%_))))
                                                  (let ((_%tl197279197310%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e197277197305%_)))
                                                        (_%hd197278197308%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e197277197305%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl197279197310%_))
                                                        (_%__kont200494200495%_
                                                         _%hd197278197308%_
                                                         _%hd197258197345%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g197251197284%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g197251197284%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl197259197347%_))
                                            (let ((_%e197277197305%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl197259197347%_))))
                                              (let ((_%tl197279197310%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e197277197305%_)))
                                                    (_%hd197278197308%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e197277197305%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl197279197310%_))
                                                    (_%__kont200494200495%_
                                                     _%hd197278197308%_
                                                     _%hd197258197345%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g197251197284%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g197251197284%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl197259197347%_))
                                    (let ((_%e197277197305%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl197259197347%_))))
                                      (let ((_%tl197279197310%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e197277197305%_)))
                                            (_%hd197278197308%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e197277197305%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl197279197310%_))
                                            (_%__kont200494200495%_
                                             _%hd197278197308%_
                                             _%hd197258197345%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g197251197284%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g197251197284%_))))))
                        (let () (declare (not safe)) (_%g197251197284%_)))))
                (let () (declare (not safe)) (_%g197251197284%_)))))))
    (define gxc#extract-receiver-if%
      (lambda (_%self197163%_ _%stx197164%_)
        (let* ((_%g197166197187%_
                (lambda (_%g197167197184%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g197167197184%_))))
               (_%g197165197244%_
                (lambda (_%g197167197190%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g197167197190%_))
                      (let ((_%e197171197192%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g197167197190%_))))
                        (let ((_%hd197172197195%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197171197192%_)))
                              (_%tl197173197197%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197171197192%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl197173197197%_))
                              (let ((_%e197174197200%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl197173197197%_))))
                                (let ((_%hd197175197203%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197174197200%_)))
                                      (_%tl197176197205%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197174197200%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl197176197205%_))
                                      (let ((_%e197177197208%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl197176197205%_))))
                                        (let ((_%hd197178197211%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e197177197208%_)))
                                              (_%tl197179197213%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e197177197208%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl197179197213%_))
                                              (let ((_%e197180197216%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl197179197213%_))))
                                                (let ((_%hd197181197219%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e197180197216%_)))
                                                      (_%tl197182197221%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e197180197216%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl197182197221%_))
                                                      ((lambda (_%g197168197224%_
                                                                _%g197169197225%_
                                                                _%g197170197226%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%self197163%_
                                                            _%g197169197225%_)))
                                                       _%hd197181197219%_
                                                       _%hd197178197211%_
                                                       _%hd197175197203%_)
                                                      (_%g197166197187%_
                                                       _%g197167197190%_))))
                                              (_%g197166197187%_
                                               _%g197167197190%_))))
                                      (_%g197166197187%_ _%g197167197190%_))))
                              (_%g197166197187%_ _%g197167197190%_))))
                      (_%g197166197187%_ _%g197167197190%_)))))
          (_%g197165197244%_ _%stx197164%_))))
    (define gxc#collect-object-refs-call%
      (lambda (_%self196128%_ _%stx196129%_)
        (let* ((_%__stx200556200557%_ _%stx196129%_)
               (_%g196137196359%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx200556200557%_)))))
          (let ((_%__kont200558200559%_
                 (lambda (_%g196139197112%_
                          _%g196140197113%_
                          _%g196141197114%_
                          _%g196142197115%_)
                   (let ((__tmp201694
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self196128%_ 'methods)))
                         (__tmp201693
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%g196140197113%_))))
                     (declare (not safe))
                     (hash-put! __tmp201694 __tmp201693 '#t))
                   (for-each
                    (lambda (_%g197148197150%_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self196128%_ _%g197148197150%_)))
                    (let ((__tmp201695
                           (lambda (_%g197152197155%_ _%g197153197157%_)
                             (cons _%g197152197155%_ _%g197153197157%_))))
                      (declare (not safe))
                      (__foldr1 __tmp201695 '() _%g196139197112%_)))))
                (_%__kont200562200563%_
                 (lambda (_%g196182196949%_
                          _%g196183196950%_
                          _%g196184196951%_
                          _%g196185196952%_
                          _%g196186196953%_)
                   (let ((__tmp201697
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self196128%_ 'methods)))
                         (__tmp201696
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%g196183196950%_))))
                     (declare (not safe))
                     (hash-put! __tmp201697 __tmp201696 '#t))
                   (for-each
                    (lambda (_%g196993196995%_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self196128%_ _%g196993196995%_)))
                    (let ((__tmp201698
                           (lambda (_%g196997197000%_ _%g196998197002%_)
                             (cons _%g196997197000%_ _%g196998197002%_))))
                      (declare (not safe))
                      (__foldr1 __tmp201698 '() _%g196182196949%_)))))
                (_%__kont200566200567%_
                 (lambda (_%g196235196784%_
                          _%g196236196785%_
                          _%g196237196786%_)
                   (let ((__tmp201700
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self196128%_ 'slots)))
                         (__tmp201699
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%g196235196784%_))))
                     (declare (not safe))
                     (hash-put! __tmp201700 __tmp201699 '#t))))
                (_%__kont200568200569%_
                 (lambda (_%g196268196661%_
                          _%g196269196662%_
                          _%g196270196663%_
                          _%g196271196664%_)
                   (let ((__tmp201702
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self196128%_ 'slots)))
                         (__tmp201701
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%g196269196662%_))))
                     (declare (not safe))
                     (hash-put! __tmp201702 __tmp201701 '#t))
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self196128%_ _%g196268196661%_))))
                (_%__kont200570200571%_
                 (lambda (_%g196305196535%_ _%g196306196536%_)
                   (let* ((_%accessor196558%_
                           (let ((__tmp201703
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol
                                     _%g196306196536%_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp201703)))
                          (_%klass196560%_
                           (let ((__tmp201704
                                  (##structure-ref
                                   _%accessor196558%_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _%stx196129%_
                              __tmp201704)))
                          (_%slot196562%_
                           (##structure-ref
                            _%accessor196558%_
                            '3
                            gxc#!accessor::t
                            '#f)))
                     (if (if (##structure-ref
                              _%accessor196558%_
                              '4
                              gxc#!accessor::t
                              '#f)
                             '#f
                             (or (let ()
                                   (declare (not safe))
                                   (gxc#!class-struct-slot?
                                    _%klass196560%_
                                    _%slot196562%_))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%klass196560%_
                                    '8
                                    '#f
                                    '#f))))
                         '#!void
                         (let ((__tmp201706
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _%self196128%_ 'slots)))
                               (__tmp201705
                                (##structure-ref
                                 _%accessor196558%_
                                 '3
                                 gxc#!accessor::t
                                 '#f)))
                           (declare (not safe))
                           (hash-put! __tmp201706 __tmp201705 '#t))))))
                (_%__kont200572200573%_
                 (lambda (_%g196328196435%_
                          _%g196329196436%_
                          _%g196330196437%_)
                   (let* ((_%mutator196464%_
                           (let ((__tmp201707
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol
                                     _%g196330196437%_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp201707)))
                          (_%klass196466%_
                           (let ((__tmp201708
                                  (##structure-ref
                                   _%mutator196464%_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _%stx196129%_
                              __tmp201708)))
                          (_%slot196468%_
                           (##structure-ref
                            _%mutator196464%_
                            '3
                            gxc#!mutator::t
                            '#f)))
                     (if (if (##structure-ref
                              _%mutator196464%_
                              '4
                              gxc#!mutator::t
                              '#f)
                             '#f
                             (or (let ()
                                   (declare (not safe))
                                   (gxc#!class-struct-slot?
                                    _%klass196466%_
                                    _%slot196468%_))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%klass196466%_
                                    '8
                                    '#f
                                    '#f))))
                         '#!void
                         (let ((__tmp201709
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _%self196128%_ 'slots))))
                           (declare (not safe))
                           (hash-put! __tmp201709 _%slot196468%_ '#t)))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-e__1 _%self196128%_ _%g196328196435%_)))))
                (_%__kont200574200575%_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#apply-operands _%self196128%_ _%stx196129%_)))))
            (let* ((_%__match201055201056%_
                    (lambda (_%e196331196371%_
                             _%hd196332196374%_
                             _%tl196333196376%_
                             _%e196334196379%_
                             _%hd196335196382%_
                             _%tl196336196384%_
                             _%e196337196387%_
                             _%hd196338196390%_
                             _%tl196339196392%_
                             _%e196340196395%_
                             _%hd196341196398%_
                             _%tl196342196400%_
                             _%e196343196403%_
                             _%hd196344196406%_
                             _%tl196345196408%_
                             _%e196346196411%_
                             _%hd196347196414%_
                             _%tl196348196416%_
                             _%e196349196419%_
                             _%hd196350196422%_
                             _%tl196351196424%_
                             _%e196352196427%_
                             _%hd196353196430%_
                             _%tl196354196432%_)
                      (let ((_%g196328196435%_ _%hd196353196430%_)
                            (_%g196329196436%_ _%hd196350196422%_)
                            (_%g196330196437%_ _%hd196341196398%_))
                        (if (and (let ((__tmp201710
                                        (let ((__tmp201711
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _%g196330196437%_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp201711))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp201710
                                    'gxc#!mutator::t))
                                 (let ((__tmp201712
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self196128%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%g196329196436%_
                                    __tmp201712)))
                            (_%__kont200572200573%_
                             _%g196328196435%_
                             _%g196329196436%_
                             _%g196330196437%_)
                            (_%__kont200574200575%_)))))
                   (_%__match201053201054%_
                    (lambda (_%e196331196371%_
                             _%hd196332196374%_
                             _%tl196333196376%_
                             _%e196334196379%_
                             _%hd196335196382%_
                             _%tl196336196384%_
                             _%e196337196387%_
                             _%hd196338196390%_
                             _%tl196339196392%_
                             _%e196340196395%_
                             _%hd196341196398%_
                             _%tl196342196400%_
                             _%e196343196403%_
                             _%hd196344196406%_
                             _%tl196345196408%_
                             _%e196346196411%_
                             _%hd196347196414%_
                             _%tl196348196416%_
                             _%e196349196419%_
                             _%hd196350196422%_
                             _%tl196351196424%_
                             _%e196352196427%_
                             _%hd196353196430%_
                             _%tl196354196432%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl196354196432%_))
                          (_%__match201055201056%_
                           _%e196331196371%_
                           _%hd196332196374%_
                           _%tl196333196376%_
                           _%e196334196379%_
                           _%hd196335196382%_
                           _%tl196336196384%_
                           _%e196337196387%_
                           _%hd196338196390%_
                           _%tl196339196392%_
                           _%e196340196395%_
                           _%hd196341196398%_
                           _%tl196342196400%_
                           _%e196343196403%_
                           _%hd196344196406%_
                           _%tl196345196408%_
                           _%e196346196411%_
                           _%hd196347196414%_
                           _%tl196348196416%_
                           _%e196349196419%_
                           _%hd196350196422%_
                           _%tl196351196424%_
                           _%e196352196427%_
                           _%hd196353196430%_
                           _%tl196354196432%_)
                          (_%__kont200574200575%_))))
                   (_%__match201047201048%_
                    (lambda (_%e196331196371%_
                             _%hd196332196374%_
                             _%tl196333196376%_
                             _%e196334196379%_
                             _%hd196335196382%_
                             _%tl196336196384%_
                             _%e196337196387%_
                             _%hd196338196390%_
                             _%tl196339196392%_
                             _%e196340196395%_
                             _%hd196341196398%_
                             _%tl196342196400%_
                             _%e196343196403%_
                             _%hd196344196406%_
                             _%tl196345196408%_
                             _%e196346196411%_
                             _%hd196347196414%_
                             _%tl196348196416%_
                             _%e196349196419%_
                             _%hd196350196422%_
                             _%tl196351196424%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl196345196408%_))
                          (let ((_%e196352196427%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl196345196408%_))))
                            (let ((_%tl196354196432%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e196352196427%_)))
                                  (_%hd196353196430%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e196352196427%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl196354196432%_))
                                  (_%__match201055201056%_
                                   _%e196331196371%_
                                   _%hd196332196374%_
                                   _%tl196333196376%_
                                   _%e196334196379%_
                                   _%hd196335196382%_
                                   _%tl196336196384%_
                                   _%e196337196387%_
                                   _%hd196338196390%_
                                   _%tl196339196392%_
                                   _%e196340196395%_
                                   _%hd196341196398%_
                                   _%tl196342196400%_
                                   _%e196343196403%_
                                   _%hd196344196406%_
                                   _%tl196345196408%_
                                   _%e196346196411%_
                                   _%hd196347196414%_
                                   _%tl196348196416%_
                                   _%e196349196419%_
                                   _%hd196350196422%_
                                   _%tl196351196424%_
                                   _%e196352196427%_
                                   _%hd196353196430%_
                                   _%tl196354196432%_)
                                  (_%__kont200574200575%_))))
                          (_%__kont200574200575%_))))
                   (_%__match200993200994%_
                    (lambda (_%e196307196479%_
                             _%hd196308196482%_
                             _%tl196309196484%_
                             _%e196310196487%_
                             _%hd196311196490%_
                             _%tl196312196492%_
                             _%e196313196495%_
                             _%hd196314196498%_
                             _%tl196315196500%_
                             _%e196316196503%_
                             _%hd196317196506%_
                             _%tl196318196508%_
                             _%e196319196511%_
                             _%hd196320196514%_
                             _%tl196321196516%_
                             _%e196322196519%_
                             _%hd196323196522%_
                             _%tl196324196524%_
                             _%e196325196527%_
                             _%hd196326196530%_
                             _%tl196327196532%_)
                      (let ((_%g196305196535%_ _%hd196326196530%_)
                            (_%g196306196536%_ _%hd196317196506%_))
                        (if (and (let ((__tmp201713
                                        (let ((__tmp201714
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _%g196306196536%_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp201714))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp201713
                                    'gxc#!accessor::t))
                                 (let ((__tmp201715
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self196128%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%g196305196535%_
                                    __tmp201715)))
                            (_%__kont200570200571%_
                             _%g196305196535%_
                             _%g196306196536%_)
                            (_%__kont200574200575%_)))))
                   (_%__match200991200992%_
                    (lambda (_%e196307196479%_
                             _%hd196308196482%_
                             _%tl196309196484%_
                             _%e196310196487%_
                             _%hd196311196490%_
                             _%tl196312196492%_
                             _%e196313196495%_
                             _%hd196314196498%_
                             _%tl196315196500%_
                             _%e196316196503%_
                             _%hd196317196506%_
                             _%tl196318196508%_
                             _%e196319196511%_
                             _%hd196320196514%_
                             _%tl196321196516%_
                             _%e196322196519%_
                             _%hd196323196522%_
                             _%tl196324196524%_
                             _%e196325196527%_
                             _%hd196326196530%_
                             _%tl196327196532%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl196321196516%_))
                          (_%__match200993200994%_
                           _%e196307196479%_
                           _%hd196308196482%_
                           _%tl196309196484%_
                           _%e196310196487%_
                           _%hd196311196490%_
                           _%tl196312196492%_
                           _%e196313196495%_
                           _%hd196314196498%_
                           _%tl196315196500%_
                           _%e196316196503%_
                           _%hd196317196506%_
                           _%tl196318196508%_
                           _%e196319196511%_
                           _%hd196320196514%_
                           _%tl196321196516%_
                           _%e196322196519%_
                           _%hd196323196522%_
                           _%tl196324196524%_
                           _%e196325196527%_
                           _%hd196326196530%_
                           _%tl196327196532%_)
                          (_%__match201047201048%_
                           _%e196307196479%_
                           _%hd196308196482%_
                           _%tl196309196484%_
                           _%e196310196487%_
                           _%hd196311196490%_
                           _%tl196312196492%_
                           _%e196313196495%_
                           _%hd196314196498%_
                           _%tl196315196500%_
                           _%e196316196503%_
                           _%hd196317196506%_
                           _%tl196318196508%_
                           _%e196319196511%_
                           _%hd196320196514%_
                           _%tl196321196516%_
                           _%e196322196519%_
                           _%hd196323196522%_
                           _%tl196324196524%_
                           _%e196325196527%_
                           _%hd196326196530%_
                           _%tl196327196532%_))))
                   (_%__match200937200938%_
                    (lambda (_%e196272196573%_
                             _%hd196273196576%_
                             _%tl196274196578%_
                             _%e196275196581%_
                             _%hd196276196584%_
                             _%tl196277196586%_
                             _%e196278196589%_
                             _%hd196279196592%_
                             _%tl196280196594%_
                             _%e196281196597%_
                             _%hd196282196600%_
                             _%tl196283196602%_
                             _%e196284196605%_
                             _%hd196285196608%_
                             _%tl196286196610%_
                             _%e196287196613%_
                             _%hd196288196616%_
                             _%tl196289196618%_
                             _%e196290196621%_
                             _%hd196291196624%_
                             _%tl196292196626%_
                             _%e196293196629%_
                             _%hd196294196632%_
                             _%tl196295196634%_
                             _%e196296196637%_
                             _%hd196297196640%_
                             _%tl196298196642%_
                             _%e196299196645%_
                             _%hd196300196648%_
                             _%tl196301196650%_
                             _%e196302196653%_
                             _%hd196303196656%_
                             _%tl196304196658%_)
                      (let ((_%g196268196661%_ _%hd196303196656%_)
                            (_%g196269196662%_ _%hd196300196648%_)
                            (_%g196270196663%_ _%hd196291196624%_)
                            (_%g196271196664%_ _%hd196282196600%_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%g196271196664%_
                                        'slot-set!))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%g196271196664%_
                                        'unchecked-slot-set!)))
                                 (let ((__tmp201716
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self196128%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%g196270196663%_
                                    __tmp201716)))
                            (_%__kont200568200569%_
                             _%g196268196661%_
                             _%g196269196662%_
                             _%g196270196663%_
                             _%g196271196664%_)
                            (_%__kont200574200575%_)))))
                   (_%__match200929200930%_
                    (lambda (_%e196272196573%_
                             _%hd196273196576%_
                             _%tl196274196578%_
                             _%e196275196581%_
                             _%hd196276196584%_
                             _%tl196277196586%_
                             _%e196278196589%_
                             _%hd196279196592%_
                             _%tl196280196594%_
                             _%e196281196597%_
                             _%hd196282196600%_
                             _%tl196283196602%_
                             _%e196284196605%_
                             _%hd196285196608%_
                             _%tl196286196610%_
                             _%e196287196613%_
                             _%hd196288196616%_
                             _%tl196289196618%_
                             _%e196290196621%_
                             _%hd196291196624%_
                             _%tl196292196626%_
                             _%e196293196629%_
                             _%hd196294196632%_
                             _%tl196295196634%_
                             _%e196296196637%_
                             _%hd196297196640%_
                             _%tl196298196642%_
                             _%e196299196645%_
                             _%hd196300196648%_
                             _%tl196301196650%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl196295196634%_))
                          (let ((_%e196302196653%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl196295196634%_))))
                            (let ((_%tl196304196658%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e196302196653%_)))
                                  (_%hd196303196656%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e196302196653%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl196304196658%_))
                                  (_%__match200937200938%_
                                   _%e196272196573%_
                                   _%hd196273196576%_
                                   _%tl196274196578%_
                                   _%e196275196581%_
                                   _%hd196276196584%_
                                   _%tl196277196586%_
                                   _%e196278196589%_
                                   _%hd196279196592%_
                                   _%tl196280196594%_
                                   _%e196281196597%_
                                   _%hd196282196600%_
                                   _%tl196283196602%_
                                   _%e196284196605%_
                                   _%hd196285196608%_
                                   _%tl196286196610%_
                                   _%e196287196613%_
                                   _%hd196288196616%_
                                   _%tl196289196618%_
                                   _%e196290196621%_
                                   _%hd196291196624%_
                                   _%tl196292196626%_
                                   _%e196293196629%_
                                   _%hd196294196632%_
                                   _%tl196295196634%_
                                   _%e196296196637%_
                                   _%hd196297196640%_
                                   _%tl196298196642%_
                                   _%e196299196645%_
                                   _%hd196300196648%_
                                   _%tl196301196650%_
                                   _%e196302196653%_
                                   _%hd196303196656%_
                                   _%tl196304196658%_)
                                  (_%__kont200574200575%_))))
                          (_%__match201053201054%_
                           _%e196272196573%_
                           _%hd196273196576%_
                           _%tl196274196578%_
                           _%e196275196581%_
                           _%hd196276196584%_
                           _%tl196277196586%_
                           _%e196278196589%_
                           _%hd196279196592%_
                           _%tl196280196594%_
                           _%e196281196597%_
                           _%hd196282196600%_
                           _%tl196283196602%_
                           _%e196284196605%_
                           _%hd196285196608%_
                           _%tl196286196610%_
                           _%e196287196613%_
                           _%hd196288196616%_
                           _%tl196289196618%_
                           _%e196290196621%_
                           _%hd196291196624%_
                           _%tl196292196626%_
                           _%e196293196629%_
                           _%hd196294196632%_
                           _%tl196295196634%_))))
                   (_%__match200851200852%_
                    (lambda (_%e196238196704%_
                             _%hd196239196707%_
                             _%tl196240196709%_
                             _%e196241196712%_
                             _%hd196242196715%_
                             _%tl196243196717%_
                             _%e196244196720%_
                             _%hd196245196723%_
                             _%tl196246196725%_
                             _%e196247196728%_
                             _%hd196248196731%_
                             _%tl196249196733%_
                             _%e196250196736%_
                             _%hd196251196739%_
                             _%tl196252196741%_
                             _%e196253196744%_
                             _%hd196254196747%_
                             _%tl196255196749%_
                             _%e196256196752%_
                             _%hd196257196755%_
                             _%tl196258196757%_
                             _%e196259196760%_
                             _%hd196260196763%_
                             _%tl196261196765%_
                             _%e196262196768%_
                             _%hd196263196771%_
                             _%tl196264196773%_
                             _%e196265196776%_
                             _%hd196266196779%_
                             _%tl196267196781%_)
                      (let ((_%g196235196784%_ _%hd196266196779%_)
                            (_%g196236196785%_ _%hd196257196755%_)
                            (_%g196237196786%_ _%hd196248196731%_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%g196237196786%_
                                        'slot-ref))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%g196237196786%_
                                        'unchecked-slot-ref)))
                                 (let ((__tmp201717
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self196128%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%g196236196785%_
                                    __tmp201717)))
                            (_%__kont200566200567%_
                             _%g196235196784%_
                             _%g196236196785%_
                             _%g196237196786%_)
                            (_%__match201055201056%_
                             _%e196238196704%_
                             _%hd196239196707%_
                             _%tl196240196709%_
                             _%e196241196712%_
                             _%hd196242196715%_
                             _%tl196243196717%_
                             _%e196244196720%_
                             _%hd196245196723%_
                             _%tl196246196725%_
                             _%e196247196728%_
                             _%hd196248196731%_
                             _%tl196249196733%_
                             _%e196250196736%_
                             _%hd196251196739%_
                             _%tl196252196741%_
                             _%e196253196744%_
                             _%hd196254196747%_
                             _%tl196255196749%_
                             _%e196256196752%_
                             _%hd196257196755%_
                             _%tl196258196757%_
                             _%e196259196760%_
                             _%hd196260196763%_
                             _%tl196261196765%_)))))
                   (_%__match200849200850%_
                    (lambda (_%e196238196704%_
                             _%hd196239196707%_
                             _%tl196240196709%_
                             _%e196241196712%_
                             _%hd196242196715%_
                             _%tl196243196717%_
                             _%e196244196720%_
                             _%hd196245196723%_
                             _%tl196246196725%_
                             _%e196247196728%_
                             _%hd196248196731%_
                             _%tl196249196733%_
                             _%e196250196736%_
                             _%hd196251196739%_
                             _%tl196252196741%_
                             _%e196253196744%_
                             _%hd196254196747%_
                             _%tl196255196749%_
                             _%e196256196752%_
                             _%hd196257196755%_
                             _%tl196258196757%_
                             _%e196259196760%_
                             _%hd196260196763%_
                             _%tl196261196765%_
                             _%e196262196768%_
                             _%hd196263196771%_
                             _%tl196264196773%_
                             _%e196265196776%_
                             _%hd196266196779%_
                             _%tl196267196781%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl196261196765%_))
                          (_%__match200851200852%_
                           _%e196238196704%_
                           _%hd196239196707%_
                           _%tl196240196709%_
                           _%e196241196712%_
                           _%hd196242196715%_
                           _%tl196243196717%_
                           _%e196244196720%_
                           _%hd196245196723%_
                           _%tl196246196725%_
                           _%e196247196728%_
                           _%hd196248196731%_
                           _%tl196249196733%_
                           _%e196250196736%_
                           _%hd196251196739%_
                           _%tl196252196741%_
                           _%e196253196744%_
                           _%hd196254196747%_
                           _%tl196255196749%_
                           _%e196256196752%_
                           _%hd196257196755%_
                           _%tl196258196757%_
                           _%e196259196760%_
                           _%hd196260196763%_
                           _%tl196261196765%_
                           _%e196262196768%_
                           _%hd196263196771%_
                           _%tl196264196773%_
                           _%e196265196776%_
                           _%hd196266196779%_
                           _%tl196267196781%_)
                          (_%__match200929200930%_
                           _%e196238196704%_
                           _%hd196239196707%_
                           _%tl196240196709%_
                           _%e196241196712%_
                           _%hd196242196715%_
                           _%tl196243196717%_
                           _%e196244196720%_
                           _%hd196245196723%_
                           _%tl196246196725%_
                           _%e196247196728%_
                           _%hd196248196731%_
                           _%tl196249196733%_
                           _%e196250196736%_
                           _%hd196251196739%_
                           _%tl196252196741%_
                           _%e196253196744%_
                           _%hd196254196747%_
                           _%tl196255196749%_
                           _%e196256196752%_
                           _%hd196257196755%_
                           _%tl196258196757%_
                           _%e196259196760%_
                           _%hd196260196763%_
                           _%tl196261196765%_
                           _%e196262196768%_
                           _%hd196263196771%_
                           _%tl196264196773%_
                           _%e196265196776%_
                           _%hd196266196779%_
                           _%tl196267196781%_))))
                   (_%__match200839200840%_
                    (lambda (_%e196238196704%_
                             _%hd196239196707%_
                             _%tl196240196709%_
                             _%e196241196712%_
                             _%hd196242196715%_
                             _%tl196243196717%_
                             _%e196244196720%_
                             _%hd196245196723%_
                             _%tl196246196725%_
                             _%e196247196728%_
                             _%hd196248196731%_
                             _%tl196249196733%_
                             _%e196250196736%_
                             _%hd196251196739%_
                             _%tl196252196741%_
                             _%e196253196744%_
                             _%hd196254196747%_
                             _%tl196255196749%_
                             _%e196256196752%_
                             _%hd196257196755%_
                             _%tl196258196757%_
                             _%e196259196760%_
                             _%hd196260196763%_
                             _%tl196261196765%_
                             _%e196262196768%_
                             _%hd196263196771%_
                             _%tl196264196773%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#quote _%hd196263196771%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl196264196773%_))
                              (let ((_%e196265196776%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl196264196773%_))))
                                (let ((_%tl196267196781%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196265196776%_)))
                                      (_%hd196266196779%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196265196776%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl196267196781%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl196261196765%_))
                                          (_%__match200851200852%_
                                           _%e196238196704%_
                                           _%hd196239196707%_
                                           _%tl196240196709%_
                                           _%e196241196712%_
                                           _%hd196242196715%_
                                           _%tl196243196717%_
                                           _%e196244196720%_
                                           _%hd196245196723%_
                                           _%tl196246196725%_
                                           _%e196247196728%_
                                           _%hd196248196731%_
                                           _%tl196249196733%_
                                           _%e196250196736%_
                                           _%hd196251196739%_
                                           _%tl196252196741%_
                                           _%e196253196744%_
                                           _%hd196254196747%_
                                           _%tl196255196749%_
                                           _%e196256196752%_
                                           _%hd196257196755%_
                                           _%tl196258196757%_
                                           _%e196259196760%_
                                           _%hd196260196763%_
                                           _%tl196261196765%_
                                           _%e196262196768%_
                                           _%hd196263196771%_
                                           _%tl196264196773%_
                                           _%e196265196776%_
                                           _%hd196266196779%_
                                           _%tl196267196781%_)
                                          (_%__match200929200930%_
                                           _%e196238196704%_
                                           _%hd196239196707%_
                                           _%tl196240196709%_
                                           _%e196241196712%_
                                           _%hd196242196715%_
                                           _%tl196243196717%_
                                           _%e196244196720%_
                                           _%hd196245196723%_
                                           _%tl196246196725%_
                                           _%e196247196728%_
                                           _%hd196248196731%_
                                           _%tl196249196733%_
                                           _%e196250196736%_
                                           _%hd196251196739%_
                                           _%tl196252196741%_
                                           _%e196253196744%_
                                           _%hd196254196747%_
                                           _%tl196255196749%_
                                           _%e196256196752%_
                                           _%hd196257196755%_
                                           _%tl196258196757%_
                                           _%e196259196760%_
                                           _%hd196260196763%_
                                           _%tl196261196765%_
                                           _%e196262196768%_
                                           _%hd196263196771%_
                                           _%tl196264196773%_
                                           _%e196265196776%_
                                           _%hd196266196779%_
                                           _%tl196267196781%_))
                                      (_%__match201053201054%_
                                       _%e196238196704%_
                                       _%hd196239196707%_
                                       _%tl196240196709%_
                                       _%e196241196712%_
                                       _%hd196242196715%_
                                       _%tl196243196717%_
                                       _%e196244196720%_
                                       _%hd196245196723%_
                                       _%tl196246196725%_
                                       _%e196247196728%_
                                       _%hd196248196731%_
                                       _%tl196249196733%_
                                       _%e196250196736%_
                                       _%hd196251196739%_
                                       _%tl196252196741%_
                                       _%e196253196744%_
                                       _%hd196254196747%_
                                       _%tl196255196749%_
                                       _%e196256196752%_
                                       _%hd196257196755%_
                                       _%tl196258196757%_
                                       _%e196259196760%_
                                       _%hd196260196763%_
                                       _%tl196261196765%_))))
                              (_%__match201053201054%_
                               _%e196238196704%_
                               _%hd196239196707%_
                               _%tl196240196709%_
                               _%e196241196712%_
                               _%hd196242196715%_
                               _%tl196243196717%_
                               _%e196244196720%_
                               _%hd196245196723%_
                               _%tl196246196725%_
                               _%e196247196728%_
                               _%hd196248196731%_
                               _%tl196249196733%_
                               _%e196250196736%_
                               _%hd196251196739%_
                               _%tl196252196741%_
                               _%e196253196744%_
                               _%hd196254196747%_
                               _%tl196255196749%_
                               _%e196256196752%_
                               _%hd196257196755%_
                               _%tl196258196757%_
                               _%e196259196760%_
                               _%hd196260196763%_
                               _%tl196261196765%_))
                          (_%__match201053201054%_
                           _%e196238196704%_
                           _%hd196239196707%_
                           _%tl196240196709%_
                           _%e196241196712%_
                           _%hd196242196715%_
                           _%tl196243196717%_
                           _%e196244196720%_
                           _%hd196245196723%_
                           _%tl196246196725%_
                           _%e196247196728%_
                           _%hd196248196731%_
                           _%tl196249196733%_
                           _%e196250196736%_
                           _%hd196251196739%_
                           _%tl196252196741%_
                           _%e196253196744%_
                           _%hd196254196747%_
                           _%tl196255196749%_
                           _%e196256196752%_
                           _%hd196257196755%_
                           _%tl196258196757%_
                           _%e196259196760%_
                           _%hd196260196763%_
                           _%tl196261196765%_))))
                   (_%__match200771200772%_
                    (lambda (_%e196187196823%_
                             _%hd196188196826%_
                             _%tl196189196828%_
                             _%e196190196831%_
                             _%hd196191196834%_
                             _%tl196192196836%_
                             _%e196193196839%_
                             _%hd196194196842%_
                             _%tl196195196844%_
                             _%e196196196847%_
                             _%hd196197196850%_
                             _%tl196198196852%_
                             _%e196199196855%_
                             _%hd196200196858%_
                             _%tl196201196860%_
                             _%e196202196863%_
                             _%hd196203196866%_
                             _%tl196204196868%_
                             _%e196205196871%_
                             _%hd196206196874%_
                             _%tl196207196876%_
                             _%e196208196879%_
                             _%hd196209196882%_
                             _%tl196210196884%_
                             _%e196211196887%_
                             _%hd196212196890%_
                             _%tl196213196892%_
                             _%e196214196895%_
                             _%hd196215196898%_
                             _%tl196216196900%_
                             _%e196217196903%_
                             _%hd196218196906%_
                             _%tl196219196908%_
                             _%e196220196911%_
                             _%hd196221196914%_
                             _%tl196222196916%_
                             _%e196223196919%_
                             _%hd196224196922%_
                             _%tl196225196924%_
                             _%__splice200564200565%_
                             _%target196226196927%_
                             _%tl196228196929%_)
                      (letrec ((_%loop196229196932%_
                                (lambda (_%hd196227196935%_
                                         _%args196233196937%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd196227196935%_))
                                      (let ((_%e196230196939%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd196227196935%_))))
                                        (let ((_%lp-tl196232196944%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e196230196939%_)))
                                              (_%lp-hd196231196942%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e196230196939%_))))
                                          (_%loop196229196932%_
                                           _%lp-tl196232196944%_
                                           (cons _%lp-hd196231196942%_
                                                 _%args196233196937%_))))
                                      (let ((_%args196234196947%_
                                             (reverse _%args196233196937%_)))
                                        (let ((_%g196182196949%_
                                               _%args196234196947%_)
                                              (_%g196183196950%_
                                               _%hd196224196922%_)
                                              (_%g196184196951%_
                                               _%hd196215196898%_)
                                              (_%g196185196952%_
                                               _%hd196206196874%_)
                                              (_%g196186196953%_
                                               _%hd196197196850%_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%g196186196953%_
                                                      'apply))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%g196185196952%_
                                                      'call-method))
                                                   (let ((__tmp201718
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self196128%_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%g196184196951%_
                                                      __tmp201718)))
                                              (_%__kont200562200563%_
                                               _%g196182196949%_
                                               _%g196183196950%_
                                               _%g196184196951%_
                                               _%g196185196952%_
                                               _%g196186196953%_)
                                              (_%__kont200574200575%_))))))))
                        (_%loop196229196932%_ _%target196226196927%_ '()))))
                   (_%__match200729200730%_
                    (lambda (_%e196187196823%_
                             _%hd196188196826%_
                             _%tl196189196828%_
                             _%e196190196831%_
                             _%hd196191196834%_
                             _%tl196192196836%_
                             _%e196193196839%_
                             _%hd196194196842%_
                             _%tl196195196844%_
                             _%e196196196847%_
                             _%hd196197196850%_
                             _%tl196198196852%_
                             _%e196199196855%_
                             _%hd196200196858%_
                             _%tl196201196860%_
                             _%e196202196863%_
                             _%hd196203196866%_
                             _%tl196204196868%_
                             _%e196205196871%_
                             _%hd196206196874%_
                             _%tl196207196876%_
                             _%e196208196879%_
                             _%hd196209196882%_
                             _%tl196210196884%_
                             _%e196211196887%_
                             _%hd196212196890%_
                             _%tl196213196892%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _%hd196212196890%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl196213196892%_))
                              (let ((_%e196214196895%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl196213196892%_))))
                                (let ((_%tl196216196900%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196214196895%_)))
                                      (_%hd196215196898%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196214196895%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl196216196900%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl196210196884%_))
                                          (let ((_%e196217196903%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl196210196884%_))))
                                            (let ((_%tl196219196908%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e196217196903%_)))
                                                  (_%hd196218196906%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e196217196903%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd196218196906%_))
                                                  (let ((_%e196220196911%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd196218196906%_))))
                                                    (let ((_%tl196222196916%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e196220196911%_)))
                                                          (_%hd196221196914%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e196220196911%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd196221196914%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#quote _%hd196221196914%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl196222196916%_))
                          (let ((_%e196223196919%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl196222196916%_))))
                            (let ((_%tl196225196924%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e196223196919%_)))
                                  (_%hd196224196922%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e196223196919%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl196225196924%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl196219196908%_))
                                      (let ((_%__splice200564200565%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%tl196219196908%_
                                                '0))))
                                        (let ((_%tl196228196929%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice200564200565%_
                                                  '1)))
                                              (_%target196226196927%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice200564200565%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl196228196929%_))
                                              (_%__match200771200772%_
                                               _%e196187196823%_
                                               _%hd196188196826%_
                                               _%tl196189196828%_
                                               _%e196190196831%_
                                               _%hd196191196834%_
                                               _%tl196192196836%_
                                               _%e196193196839%_
                                               _%hd196194196842%_
                                               _%tl196195196844%_
                                               _%e196196196847%_
                                               _%hd196197196850%_
                                               _%tl196198196852%_
                                               _%e196199196855%_
                                               _%hd196200196858%_
                                               _%tl196201196860%_
                                               _%e196202196863%_
                                               _%hd196203196866%_
                                               _%tl196204196868%_
                                               _%e196205196871%_
                                               _%hd196206196874%_
                                               _%tl196207196876%_
                                               _%e196208196879%_
                                               _%hd196209196882%_
                                               _%tl196210196884%_
                                               _%e196211196887%_
                                               _%hd196212196890%_
                                               _%tl196213196892%_
                                               _%e196214196895%_
                                               _%hd196215196898%_
                                               _%tl196216196900%_
                                               _%e196217196903%_
                                               _%hd196218196906%_
                                               _%tl196219196908%_
                                               _%e196220196911%_
                                               _%hd196221196914%_
                                               _%tl196222196916%_
                                               _%e196223196919%_
                                               _%hd196224196922%_
                                               _%tl196225196924%_
                                               _%__splice200564200565%_
                                               _%target196226196927%_
                                               _%tl196228196929%_)
                                              (_%__kont200574200575%_))))
                                      (_%__kont200574200575%_))
                                  (_%__kont200574200575%_))))
                          (_%__kont200574200575%_))
                      (_%__kont200574200575%_))
                  (_%__kont200574200575%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont200574200575%_))))
                                          (_%__match201053201054%_
                                           _%e196187196823%_
                                           _%hd196188196826%_
                                           _%tl196189196828%_
                                           _%e196190196831%_
                                           _%hd196191196834%_
                                           _%tl196192196836%_
                                           _%e196193196839%_
                                           _%hd196194196842%_
                                           _%tl196195196844%_
                                           _%e196196196847%_
                                           _%hd196197196850%_
                                           _%tl196198196852%_
                                           _%e196199196855%_
                                           _%hd196200196858%_
                                           _%tl196201196860%_
                                           _%e196202196863%_
                                           _%hd196203196866%_
                                           _%tl196204196868%_
                                           _%e196205196871%_
                                           _%hd196206196874%_
                                           _%tl196207196876%_
                                           _%e196208196879%_
                                           _%hd196209196882%_
                                           _%tl196210196884%_))
                                      (_%__match201053201054%_
                                       _%e196187196823%_
                                       _%hd196188196826%_
                                       _%tl196189196828%_
                                       _%e196190196831%_
                                       _%hd196191196834%_
                                       _%tl196192196836%_
                                       _%e196193196839%_
                                       _%hd196194196842%_
                                       _%tl196195196844%_
                                       _%e196196196847%_
                                       _%hd196197196850%_
                                       _%tl196198196852%_
                                       _%e196199196855%_
                                       _%hd196200196858%_
                                       _%tl196201196860%_
                                       _%e196202196863%_
                                       _%hd196203196866%_
                                       _%tl196204196868%_
                                       _%e196205196871%_
                                       _%hd196206196874%_
                                       _%tl196207196876%_
                                       _%e196208196879%_
                                       _%hd196209196882%_
                                       _%tl196210196884%_))))
                              (_%__match201053201054%_
                               _%e196187196823%_
                               _%hd196188196826%_
                               _%tl196189196828%_
                               _%e196190196831%_
                               _%hd196191196834%_
                               _%tl196192196836%_
                               _%e196193196839%_
                               _%hd196194196842%_
                               _%tl196195196844%_
                               _%e196196196847%_
                               _%hd196197196850%_
                               _%tl196198196852%_
                               _%e196199196855%_
                               _%hd196200196858%_
                               _%tl196201196860%_
                               _%e196202196863%_
                               _%hd196203196866%_
                               _%tl196204196868%_
                               _%e196205196871%_
                               _%hd196206196874%_
                               _%tl196207196876%_
                               _%e196208196879%_
                               _%hd196209196882%_
                               _%tl196210196884%_))
                          (_%__match200839200840%_
                           _%e196187196823%_
                           _%hd196188196826%_
                           _%tl196189196828%_
                           _%e196190196831%_
                           _%hd196191196834%_
                           _%tl196192196836%_
                           _%e196193196839%_
                           _%hd196194196842%_
                           _%tl196195196844%_
                           _%e196196196847%_
                           _%hd196197196850%_
                           _%tl196198196852%_
                           _%e196199196855%_
                           _%hd196200196858%_
                           _%tl196201196860%_
                           _%e196202196863%_
                           _%hd196203196866%_
                           _%tl196204196868%_
                           _%e196205196871%_
                           _%hd196206196874%_
                           _%tl196207196876%_
                           _%e196208196879%_
                           _%hd196209196882%_
                           _%tl196210196884%_
                           _%e196211196887%_
                           _%hd196212196890%_
                           _%tl196213196892%_))))
                   (_%__match200661200662%_
                    (lambda (_%e196143197010%_
                             _%hd196144197013%_
                             _%tl196145197015%_
                             _%e196146197018%_
                             _%hd196147197021%_
                             _%tl196148197023%_
                             _%e196149197026%_
                             _%hd196150197029%_
                             _%tl196151197031%_
                             _%e196152197034%_
                             _%hd196153197037%_
                             _%tl196154197039%_
                             _%e196155197042%_
                             _%hd196156197045%_
                             _%tl196157197047%_
                             _%e196158197050%_
                             _%hd196159197053%_
                             _%tl196160197055%_
                             _%e196161197058%_
                             _%hd196162197061%_
                             _%tl196163197063%_
                             _%e196164197066%_
                             _%hd196165197069%_
                             _%tl196166197071%_
                             _%e196167197074%_
                             _%hd196168197077%_
                             _%tl196169197079%_
                             _%e196170197082%_
                             _%hd196171197085%_
                             _%tl196172197087%_
                             _%__splice200560200561%_
                             _%target196173197090%_
                             _%tl196175197092%_)
                      (letrec ((_%loop196176197095%_
                                (lambda (_%hd196174197098%_
                                         _%args196180197100%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd196174197098%_))
                                      (let ((_%e196177197102%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd196174197098%_))))
                                        (let ((_%lp-tl196179197107%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e196177197102%_)))
                                              (_%lp-hd196178197105%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e196177197102%_))))
                                          (_%loop196176197095%_
                                           _%lp-tl196179197107%_
                                           (cons _%lp-hd196178197105%_
                                                 _%args196180197100%_))))
                                      (let ((_%args196181197110%_
                                             (reverse _%args196180197100%_)))
                                        (let ((_%g196139197112%_
                                               _%args196181197110%_)
                                              (_%g196140197113%_
                                               _%hd196171197085%_)
                                              (_%g196141197114%_
                                               _%hd196162197061%_)
                                              (_%g196142197115%_
                                               _%hd196153197037%_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%g196142197115%_
                                                      'call-method))
                                                   (let ((__tmp201719
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self196128%_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%g196141197114%_
                                                      __tmp201719)))
                                              (_%__kont200558200559%_
                                               _%g196139197112%_
                                               _%g196140197113%_
                                               _%g196141197114%_
                                               _%g196142197115%_)
                                              (_%__match200849200850%_
                                               _%e196143197010%_
                                               _%hd196144197013%_
                                               _%tl196145197015%_
                                               _%e196146197018%_
                                               _%hd196147197021%_
                                               _%tl196148197023%_
                                               _%e196149197026%_
                                               _%hd196150197029%_
                                               _%tl196151197031%_
                                               _%e196152197034%_
                                               _%hd196153197037%_
                                               _%tl196154197039%_
                                               _%e196155197042%_
                                               _%hd196156197045%_
                                               _%tl196157197047%_
                                               _%e196158197050%_
                                               _%hd196159197053%_
                                               _%tl196160197055%_
                                               _%e196161197058%_
                                               _%hd196162197061%_
                                               _%tl196163197063%_
                                               _%e196164197066%_
                                               _%hd196165197069%_
                                               _%tl196166197071%_
                                               _%e196167197074%_
                                               _%hd196168197077%_
                                               _%tl196169197079%_
                                               _%e196170197082%_
                                               _%hd196171197085%_
                                               _%tl196172197087%_))))))))
                        (_%loop196176197095%_ _%target196173197090%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx200556200557%_))
                  (let ((_%e196143197010%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx200556200557%_))))
                    (let ((_%tl196145197015%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e196143197010%_)))
                          (_%hd196144197013%_
                           (let ()
                             (declare (not safe))
                             (##car _%e196143197010%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl196145197015%_))
                          (let ((_%e196146197018%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl196145197015%_))))
                            (let ((_%tl196148197023%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e196146197018%_)))
                                  (_%hd196147197021%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e196146197018%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd196147197021%_))
                                  (let ((_%e196149197026%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd196147197021%_))))
                                    (let ((_%tl196151197031%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e196149197026%_)))
                                          (_%hd196150197029%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e196149197026%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd196150197029%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd196150197029%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl196151197031%_))
                                                  (let ((_%e196152197034%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl196151197031%_))))
                                                    (let ((_%tl196154197039%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e196152197034%_)))
                                                          (_%hd196153197037%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e196152197034%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl196154197039%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl196148197023%_))
                      (let ((_%e196155197042%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl196148197023%_))))
                        (let ((_%tl196157197047%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196155197042%_)))
                              (_%hd196156197045%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196155197042%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd196156197045%_))
                              (let ((_%e196158197050%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd196156197045%_))))
                                (let ((_%tl196160197055%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196158197050%_)))
                                      (_%hd196159197053%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196158197050%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd196159197053%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd196159197053%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl196160197055%_))
                                              (let ((_%e196161197058%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl196160197055%_))))
                                                (let ((_%tl196163197063%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e196161197058%_)))
                                                      (_%hd196162197061%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e196161197058%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl196163197063%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl196157197047%_))
                                                          (let ((_%e196164197066%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl196157197047%_))))
                    (let ((_%tl196166197071%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e196164197066%_)))
                          (_%hd196165197069%_
                           (let ()
                             (declare (not safe))
                             (##car _%e196164197066%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd196165197069%_))
                          (let ((_%e196167197074%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd196165197069%_))))
                            (let ((_%tl196169197079%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e196167197074%_)))
                                  (_%hd196168197077%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e196167197074%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd196168197077%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%hd196168197077%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl196169197079%_))
                                          (let ((_%e196170197082%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl196169197079%_))))
                                            (let ((_%tl196172197087%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e196170197082%_)))
                                                  (_%hd196171197085%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e196170197082%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl196172197087%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl196166197071%_))
                                                      (let ((_%__splice200560200561%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%tl196166197071%_
                        '0))))
                (let ((_%tl196175197092%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice200560200561%_ '1)))
                      (_%target196173197090%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice200560200561%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl196175197092%_))
                      (_%__match200661200662%_
                       _%e196143197010%_
                       _%hd196144197013%_
                       _%tl196145197015%_
                       _%e196146197018%_
                       _%hd196147197021%_
                       _%tl196148197023%_
                       _%e196149197026%_
                       _%hd196150197029%_
                       _%tl196151197031%_
                       _%e196152197034%_
                       _%hd196153197037%_
                       _%tl196154197039%_
                       _%e196155197042%_
                       _%hd196156197045%_
                       _%tl196157197047%_
                       _%e196158197050%_
                       _%hd196159197053%_
                       _%tl196160197055%_
                       _%e196161197058%_
                       _%hd196162197061%_
                       _%tl196163197063%_
                       _%e196164197066%_
                       _%hd196165197069%_
                       _%tl196166197071%_
                       _%e196167197074%_
                       _%hd196168197077%_
                       _%tl196169197079%_
                       _%e196170197082%_
                       _%hd196171197085%_
                       _%tl196172197087%_
                       _%__splice200560200561%_
                       _%target196173197090%_
                       _%tl196175197092%_)
                      (_%__match200849200850%_
                       _%e196143197010%_
                       _%hd196144197013%_
                       _%tl196145197015%_
                       _%e196146197018%_
                       _%hd196147197021%_
                       _%tl196148197023%_
                       _%e196149197026%_
                       _%hd196150197029%_
                       _%tl196151197031%_
                       _%e196152197034%_
                       _%hd196153197037%_
                       _%tl196154197039%_
                       _%e196155197042%_
                       _%hd196156197045%_
                       _%tl196157197047%_
                       _%e196158197050%_
                       _%hd196159197053%_
                       _%tl196160197055%_
                       _%e196161197058%_
                       _%hd196162197061%_
                       _%tl196163197063%_
                       _%e196164197066%_
                       _%hd196165197069%_
                       _%tl196166197071%_
                       _%e196167197074%_
                       _%hd196168197077%_
                       _%tl196169197079%_
                       _%e196170197082%_
                       _%hd196171197085%_
                       _%tl196172197087%_))))
              (_%__match200849200850%_
               _%e196143197010%_
               _%hd196144197013%_
               _%tl196145197015%_
               _%e196146197018%_
               _%hd196147197021%_
               _%tl196148197023%_
               _%e196149197026%_
               _%hd196150197029%_
               _%tl196151197031%_
               _%e196152197034%_
               _%hd196153197037%_
               _%tl196154197039%_
               _%e196155197042%_
               _%hd196156197045%_
               _%tl196157197047%_
               _%e196158197050%_
               _%hd196159197053%_
               _%tl196160197055%_
               _%e196161197058%_
               _%hd196162197061%_
               _%tl196163197063%_
               _%e196164197066%_
               _%hd196165197069%_
               _%tl196166197071%_
               _%e196167197074%_
               _%hd196168197077%_
               _%tl196169197079%_
               _%e196170197082%_
               _%hd196171197085%_
               _%tl196172197087%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__match201053201054%_
                                                   _%e196143197010%_
                                                   _%hd196144197013%_
                                                   _%tl196145197015%_
                                                   _%e196146197018%_
                                                   _%hd196147197021%_
                                                   _%tl196148197023%_
                                                   _%e196149197026%_
                                                   _%hd196150197029%_
                                                   _%tl196151197031%_
                                                   _%e196152197034%_
                                                   _%hd196153197037%_
                                                   _%tl196154197039%_
                                                   _%e196155197042%_
                                                   _%hd196156197045%_
                                                   _%tl196157197047%_
                                                   _%e196158197050%_
                                                   _%hd196159197053%_
                                                   _%tl196160197055%_
                                                   _%e196161197058%_
                                                   _%hd196162197061%_
                                                   _%tl196163197063%_
                                                   _%e196164197066%_
                                                   _%hd196165197069%_
                                                   _%tl196166197071%_))))
                                          (_%__match201053201054%_
                                           _%e196143197010%_
                                           _%hd196144197013%_
                                           _%tl196145197015%_
                                           _%e196146197018%_
                                           _%hd196147197021%_
                                           _%tl196148197023%_
                                           _%e196149197026%_
                                           _%hd196150197029%_
                                           _%tl196151197031%_
                                           _%e196152197034%_
                                           _%hd196153197037%_
                                           _%tl196154197039%_
                                           _%e196155197042%_
                                           _%hd196156197045%_
                                           _%tl196157197047%_
                                           _%e196158197050%_
                                           _%hd196159197053%_
                                           _%tl196160197055%_
                                           _%e196161197058%_
                                           _%hd196162197061%_
                                           _%tl196163197063%_
                                           _%e196164197066%_
                                           _%hd196165197069%_
                                           _%tl196166197071%_))
                                      (_%__match200729200730%_
                                       _%e196143197010%_
                                       _%hd196144197013%_
                                       _%tl196145197015%_
                                       _%e196146197018%_
                                       _%hd196147197021%_
                                       _%tl196148197023%_
                                       _%e196149197026%_
                                       _%hd196150197029%_
                                       _%tl196151197031%_
                                       _%e196152197034%_
                                       _%hd196153197037%_
                                       _%tl196154197039%_
                                       _%e196155197042%_
                                       _%hd196156197045%_
                                       _%tl196157197047%_
                                       _%e196158197050%_
                                       _%hd196159197053%_
                                       _%tl196160197055%_
                                       _%e196161197058%_
                                       _%hd196162197061%_
                                       _%tl196163197063%_
                                       _%e196164197066%_
                                       _%hd196165197069%_
                                       _%tl196166197071%_
                                       _%e196167197074%_
                                       _%hd196168197077%_
                                       _%tl196169197079%_))
                                  (_%__match201053201054%_
                                   _%e196143197010%_
                                   _%hd196144197013%_
                                   _%tl196145197015%_
                                   _%e196146197018%_
                                   _%hd196147197021%_
                                   _%tl196148197023%_
                                   _%e196149197026%_
                                   _%hd196150197029%_
                                   _%tl196151197031%_
                                   _%e196152197034%_
                                   _%hd196153197037%_
                                   _%tl196154197039%_
                                   _%e196155197042%_
                                   _%hd196156197045%_
                                   _%tl196157197047%_
                                   _%e196158197050%_
                                   _%hd196159197053%_
                                   _%tl196160197055%_
                                   _%e196161197058%_
                                   _%hd196162197061%_
                                   _%tl196163197063%_
                                   _%e196164197066%_
                                   _%hd196165197069%_
                                   _%tl196166197071%_))))
                          (_%__match201053201054%_
                           _%e196143197010%_
                           _%hd196144197013%_
                           _%tl196145197015%_
                           _%e196146197018%_
                           _%hd196147197021%_
                           _%tl196148197023%_
                           _%e196149197026%_
                           _%hd196150197029%_
                           _%tl196151197031%_
                           _%e196152197034%_
                           _%hd196153197037%_
                           _%tl196154197039%_
                           _%e196155197042%_
                           _%hd196156197045%_
                           _%tl196157197047%_
                           _%e196158197050%_
                           _%hd196159197053%_
                           _%tl196160197055%_
                           _%e196161197058%_
                           _%hd196162197061%_
                           _%tl196163197063%_
                           _%e196164197066%_
                           _%hd196165197069%_
                           _%tl196166197071%_))))
                  (_%__match200991200992%_
                   _%e196143197010%_
                   _%hd196144197013%_
                   _%tl196145197015%_
                   _%e196146197018%_
                   _%hd196147197021%_
                   _%tl196148197023%_
                   _%e196149197026%_
                   _%hd196150197029%_
                   _%tl196151197031%_
                   _%e196152197034%_
                   _%hd196153197037%_
                   _%tl196154197039%_
                   _%e196155197042%_
                   _%hd196156197045%_
                   _%tl196157197047%_
                   _%e196158197050%_
                   _%hd196159197053%_
                   _%tl196160197055%_
                   _%e196161197058%_
                   _%hd196162197061%_
                   _%tl196163197063%_))
              (_%__kont200574200575%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont200574200575%_))
                                          (_%__kont200574200575%_))
                                      (_%__kont200574200575%_))))
                              (_%__kont200574200575%_))))
                      (_%__kont200574200575%_))
                  (_%__kont200574200575%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont200574200575%_))
                                              (_%__kont200574200575%_))
                                          (_%__kont200574200575%_))))
                                  (_%__kont200574200575%_))))
                          (_%__kont200574200575%_))))
                  (_%__kont200574200575%_)))))))
    (define gxc#subst-object-refs-call%
      (lambda (_%self195071%_ _%stx195072%_)
        (letrec ((_%force-e195074%_
                  (lambda (_%target196126%_)
                    (cons '%#call
                          (cons (cons '%#ref (cons 'force '()))
                                (cons (cons '%#ref (cons _%target196126%_ '()))
                                      '()))))))
          (let* ((_%__stx201058201059%_ _%stx195072%_)
                 (_%g195082195304%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx201058201059%_)))))
            (let ((_%__kont201060201061%_
                   (lambda (_%g195084196072%_
                            _%g195085196073%_
                            _%g195086196074%_
                            _%g195087196075%_)
                     (let ((_%$method196120%_
                            (let ((__tmp201721
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self195071%_ 'methods)))
                                  (__tmp201720
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g195085196073%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp201721 __tmp201720)))
                           (_%args196121%_
                            (map (lambda (_%g196108196110%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self195071%_
                                      _%g196108196110%_)))
                                 (let ((__tmp201722
                                        (lambda (_%g196112196115%_
                                                 _%g196113196117%_)
                                          (cons _%g196112196115%_
                                                _%g196113196117%_))))
                                   (declare (not safe))
                                   (__foldr1
                                    __tmp201722
                                    '()
                                    _%g195084196072%_)))))
                       (let ((__tmp201723
                              (cons '%#call
                                    (cons (_%force-e195074%_ _%$method196120%_)
                                          (cons (cons '%#ref
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self195071%_
                                                               'receiver))
                                                            '()))
                                                _%args196121%_)))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp201723 _%stx195072%_)))))
                  (_%__kont201064201065%_
                   (lambda (_%g195127195906%_
                            _%g195128195907%_
                            _%g195129195908%_
                            _%g195130195909%_
                            _%g195131195910%_)
                     (let ((_%$method195962%_
                            (let ((__tmp201725
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self195071%_ 'methods)))
                                  (__tmp201724
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g195128195907%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp201725 __tmp201724)))
                           (_%args195963%_
                            (map (lambda (_%g195950195952%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self195071%_
                                      _%g195950195952%_)))
                                 (let ((__tmp201726
                                        (lambda (_%g195954195957%_
                                                 _%g195955195959%_)
                                          (cons _%g195954195957%_
                                                _%g195955195959%_))))
                                   (declare (not safe))
                                   (__foldr1
                                    __tmp201726
                                    '()
                                    _%g195127195906%_)))))
                       (let ((__tmp201727
                              (cons '%#call
                                    (cons (cons '%#ref (cons 'apply '()))
                                          (cons (_%force-e195074%_
                                                 _%$method195962%_)
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (slot-ref__0 _%self195071%_ 'receiver))
                          '()))
              _%args195963%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp201727 _%stx195072%_)))))
                  (_%__kont201068201069%_
                   (lambda (_%g195180195739%_
                            _%g195181195740%_
                            _%g195182195741%_)
                     (let* ((_%$field195773%_
                             (let ((__tmp201729
                                    (let ()
                                      (declare (not safe))
                                      (slot-ref__0 _%self195071%_ 'slots)))
                                   (__tmp201728
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%g195180195739%_))))
                               (declare (not safe))
                               (hash-ref__0 __tmp201729 __tmp201728)))
                            (__tmp201730
                             (cons '%#struct-unchecked-ref
                                   (cons (cons '%#ref
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (slot-ref__0
                                                        _%self195071%_
                                                        'klass))
                                                     '()))
                                         (cons (cons '%#ref
                                                     (cons _%$field195773%_
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (slot-ref__0 _%self195071%_ 'receiver))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp201730 _%stx195072%_))))
                  (_%__kont201070201071%_
                   (lambda (_%g195213195613%_
                            _%g195214195614%_
                            _%g195215195615%_
                            _%g195216195616%_)
                     (let ((_%$field195651%_
                            (let ((__tmp201732
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self195071%_ 'slots)))
                                  (__tmp201731
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g195214195614%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp201732 __tmp201731)))
                           (_%expr195652%_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-e__1
                               _%self195071%_
                               _%g195213195613%_))))
                       (let ((__tmp201733
                              (cons '%#struct-unchecked-set!
                                    (cons (cons '%#ref
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (slot-ref__0
                                                         _%self195071%_
                                                         'klass))
                                                      '()))
                                          (cons (cons '%#ref
                                                      (cons _%$field195651%_
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (slot-ref__0 _%self195071%_ 'receiver))
                          '()))
              (cons _%expr195652%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp201733 _%stx195072%_)))))
                  (_%__kont201072201073%_
                   (lambda (_%g195250195485%_ _%g195251195486%_)
                     (let* ((_%accessor195508%_
                             (let ((__tmp201734
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol
                                       _%g195251195486%_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp201734)))
                            (_%klass195510%_
                             (let ((__tmp201735
                                    (##structure-ref
                                     _%accessor195508%_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _%stx195072%_
                                __tmp201735)))
                            (_%slot195512%_
                             (##structure-ref
                              _%accessor195508%_
                              '3
                              gxc#!accessor::t
                              '#f)))
                       (if (if (##structure-ref
                                _%accessor195508%_
                                '4
                                gxc#!accessor::t
                                '#f)
                               '#f
                               (or (let ()
                                     (declare (not safe))
                                     (gxc#!class-struct-slot?
                                      _%klass195510%_
                                      _%slot195512%_))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass195510%_
                                      '8
                                      '#f
                                      '#f))))
                           _%stx195072%_
                           (let* ((_%$field195518%_
                                   (let ((__tmp201736
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self195071%_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp201736 _%slot195512%_)))
                                  (__tmp201737
                                   (cons '%#struct-unchecked-ref
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (slot-ref__0
                                                              _%self195071%_
                                                              'klass))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$field195518%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _%self195071%_ 'receiver))
                               '()))
                   '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp201737
                              _%stx195072%_))))))
                  (_%__kont201074201075%_
                   (lambda (_%g195273195380%_
                            _%g195274195381%_
                            _%g195275195382%_)
                     (let* ((_%mutator195410%_
                             (let ((__tmp201738
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol
                                       _%g195275195382%_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp201738)))
                            (_%klass195412%_
                             (let ((__tmp201739
                                    (##structure-ref
                                     _%mutator195410%_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _%stx195072%_
                                __tmp201739)))
                            (_%slot195414%_
                             (##structure-ref
                              _%mutator195410%_
                              '3
                              gxc#!mutator::t
                              '#f))
                            (_%expr195416%_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-e__1
                                _%self195071%_
                                _%g195273195380%_))))
                       (if (if (##structure-ref
                                _%mutator195410%_
                                '4
                                gxc#!mutator::t
                                '#f)
                               '#f
                               (or (let ()
                                     (declare (not safe))
                                     (gxc#!class-struct-slot?
                                      _%klass195412%_
                                      _%slot195414%_))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass195412%_
                                      '8
                                      '#f
                                      '#f))))
                           (let ((__tmp201740
                                  (cons '%#call
                                        (cons (cons (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       '%#ref))
                                                    (cons _%g195275195382%_
                                                          '()))
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#ref))
                                                          (cons _%g195274195381%_
                                                                '()))
                                                    (cons _%expr195416%_
                                                          '()))))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp201740 _%stx195072%_))
                           (let* ((_%$field195422%_
                                   (let ((__tmp201741
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self195071%_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp201741 _%slot195414%_)))
                                  (__tmp201742
                                   (cons '%#struct-unchecked-set!
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (slot-ref__0
                                                              _%self195071%_
                                                              'klass))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$field195422%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _%self195071%_ 'receiver))
                               '()))
                   (cons _%expr195416%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp201742
                              _%stx195072%_))))))
                  (_%__kont201076201077%_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-operands _%self195071%_ _%stx195072%_)))))
              (let* ((_%__match201557201558%_
                      (lambda (_%e195276195316%_
                               _%hd195277195319%_
                               _%tl195278195321%_
                               _%e195279195324%_
                               _%hd195280195327%_
                               _%tl195281195329%_
                               _%e195282195332%_
                               _%hd195283195335%_
                               _%tl195284195337%_
                               _%e195285195340%_
                               _%hd195286195343%_
                               _%tl195287195345%_
                               _%e195288195348%_
                               _%hd195289195351%_
                               _%tl195290195353%_
                               _%e195291195356%_
                               _%hd195292195359%_
                               _%tl195293195361%_
                               _%e195294195364%_
                               _%hd195295195367%_
                               _%tl195296195369%_
                               _%e195297195372%_
                               _%hd195298195375%_
                               _%tl195299195377%_)
                        (let ((_%g195273195380%_ _%hd195298195375%_)
                              (_%g195274195381%_ _%hd195295195367%_)
                              (_%g195275195382%_ _%hd195286195343%_))
                          (if (and (let ((__tmp201743
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self195071%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%g195274195381%_
                                      __tmp201743))
                                   (let ((__tmp201744
                                          (let ((__tmp201745
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%g195275195382%_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp201745))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp201744
                                      'gxc#!mutator::t)))
                              (_%__kont201074201075%_
                               _%g195273195380%_
                               _%g195274195381%_
                               _%g195275195382%_)
                              (_%__kont201076201077%_)))))
                     (_%__match201555201556%_
                      (lambda (_%e195276195316%_
                               _%hd195277195319%_
                               _%tl195278195321%_
                               _%e195279195324%_
                               _%hd195280195327%_
                               _%tl195281195329%_
                               _%e195282195332%_
                               _%hd195283195335%_
                               _%tl195284195337%_
                               _%e195285195340%_
                               _%hd195286195343%_
                               _%tl195287195345%_
                               _%e195288195348%_
                               _%hd195289195351%_
                               _%tl195290195353%_
                               _%e195291195356%_
                               _%hd195292195359%_
                               _%tl195293195361%_
                               _%e195294195364%_
                               _%hd195295195367%_
                               _%tl195296195369%_
                               _%e195297195372%_
                               _%hd195298195375%_
                               _%tl195299195377%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl195299195377%_))
                            (_%__match201557201558%_
                             _%e195276195316%_
                             _%hd195277195319%_
                             _%tl195278195321%_
                             _%e195279195324%_
                             _%hd195280195327%_
                             _%tl195281195329%_
                             _%e195282195332%_
                             _%hd195283195335%_
                             _%tl195284195337%_
                             _%e195285195340%_
                             _%hd195286195343%_
                             _%tl195287195345%_
                             _%e195288195348%_
                             _%hd195289195351%_
                             _%tl195290195353%_
                             _%e195291195356%_
                             _%hd195292195359%_
                             _%tl195293195361%_
                             _%e195294195364%_
                             _%hd195295195367%_
                             _%tl195296195369%_
                             _%e195297195372%_
                             _%hd195298195375%_
                             _%tl195299195377%_)
                            (_%__kont201076201077%_))))
                     (_%__match201549201550%_
                      (lambda (_%e195276195316%_
                               _%hd195277195319%_
                               _%tl195278195321%_
                               _%e195279195324%_
                               _%hd195280195327%_
                               _%tl195281195329%_
                               _%e195282195332%_
                               _%hd195283195335%_
                               _%tl195284195337%_
                               _%e195285195340%_
                               _%hd195286195343%_
                               _%tl195287195345%_
                               _%e195288195348%_
                               _%hd195289195351%_
                               _%tl195290195353%_
                               _%e195291195356%_
                               _%hd195292195359%_
                               _%tl195293195361%_
                               _%e195294195364%_
                               _%hd195295195367%_
                               _%tl195296195369%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl195290195353%_))
                            (let ((_%e195297195372%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl195290195353%_))))
                              (let ((_%tl195299195377%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e195297195372%_)))
                                    (_%hd195298195375%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e195297195372%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl195299195377%_))
                                    (_%__match201557201558%_
                                     _%e195276195316%_
                                     _%hd195277195319%_
                                     _%tl195278195321%_
                                     _%e195279195324%_
                                     _%hd195280195327%_
                                     _%tl195281195329%_
                                     _%e195282195332%_
                                     _%hd195283195335%_
                                     _%tl195284195337%_
                                     _%e195285195340%_
                                     _%hd195286195343%_
                                     _%tl195287195345%_
                                     _%e195288195348%_
                                     _%hd195289195351%_
                                     _%tl195290195353%_
                                     _%e195291195356%_
                                     _%hd195292195359%_
                                     _%tl195293195361%_
                                     _%e195294195364%_
                                     _%hd195295195367%_
                                     _%tl195296195369%_
                                     _%e195297195372%_
                                     _%hd195298195375%_
                                     _%tl195299195377%_)
                                    (_%__kont201076201077%_))))
                            (_%__kont201076201077%_))))
                     (_%__match201495201496%_
                      (lambda (_%e195252195429%_
                               _%hd195253195432%_
                               _%tl195254195434%_
                               _%e195255195437%_
                               _%hd195256195440%_
                               _%tl195257195442%_
                               _%e195258195445%_
                               _%hd195259195448%_
                               _%tl195260195450%_
                               _%e195261195453%_
                               _%hd195262195456%_
                               _%tl195263195458%_
                               _%e195264195461%_
                               _%hd195265195464%_
                               _%tl195266195466%_
                               _%e195267195469%_
                               _%hd195268195472%_
                               _%tl195269195474%_
                               _%e195270195477%_
                               _%hd195271195480%_
                               _%tl195272195482%_)
                        (let ((_%g195250195485%_ _%hd195271195480%_)
                              (_%g195251195486%_ _%hd195262195456%_))
                          (if (and (let ((__tmp201746
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self195071%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%g195250195485%_
                                      __tmp201746))
                                   (let ((__tmp201747
                                          (let ((__tmp201748
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%g195251195486%_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp201748))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp201747
                                      'gxc#!accessor::t)))
                              (_%__kont201072201073%_
                               _%g195250195485%_
                               _%g195251195486%_)
                              (_%__kont201076201077%_)))))
                     (_%__match201493201494%_
                      (lambda (_%e195252195429%_
                               _%hd195253195432%_
                               _%tl195254195434%_
                               _%e195255195437%_
                               _%hd195256195440%_
                               _%tl195257195442%_
                               _%e195258195445%_
                               _%hd195259195448%_
                               _%tl195260195450%_
                               _%e195261195453%_
                               _%hd195262195456%_
                               _%tl195263195458%_
                               _%e195264195461%_
                               _%hd195265195464%_
                               _%tl195266195466%_
                               _%e195267195469%_
                               _%hd195268195472%_
                               _%tl195269195474%_
                               _%e195270195477%_
                               _%hd195271195480%_
                               _%tl195272195482%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl195266195466%_))
                            (_%__match201495201496%_
                             _%e195252195429%_
                             _%hd195253195432%_
                             _%tl195254195434%_
                             _%e195255195437%_
                             _%hd195256195440%_
                             _%tl195257195442%_
                             _%e195258195445%_
                             _%hd195259195448%_
                             _%tl195260195450%_
                             _%e195261195453%_
                             _%hd195262195456%_
                             _%tl195263195458%_
                             _%e195264195461%_
                             _%hd195265195464%_
                             _%tl195266195466%_
                             _%e195267195469%_
                             _%hd195268195472%_
                             _%tl195269195474%_
                             _%e195270195477%_
                             _%hd195271195480%_
                             _%tl195272195482%_)
                            (_%__match201549201550%_
                             _%e195252195429%_
                             _%hd195253195432%_
                             _%tl195254195434%_
                             _%e195255195437%_
                             _%hd195256195440%_
                             _%tl195257195442%_
                             _%e195258195445%_
                             _%hd195259195448%_
                             _%tl195260195450%_
                             _%e195261195453%_
                             _%hd195262195456%_
                             _%tl195263195458%_
                             _%e195264195461%_
                             _%hd195265195464%_
                             _%tl195266195466%_
                             _%e195267195469%_
                             _%hd195268195472%_
                             _%tl195269195474%_
                             _%e195270195477%_
                             _%hd195271195480%_
                             _%tl195272195482%_))))
                     (_%__match201439201440%_
                      (lambda (_%e195217195525%_
                               _%hd195218195528%_
                               _%tl195219195530%_
                               _%e195220195533%_
                               _%hd195221195536%_
                               _%tl195222195538%_
                               _%e195223195541%_
                               _%hd195224195544%_
                               _%tl195225195546%_
                               _%e195226195549%_
                               _%hd195227195552%_
                               _%tl195228195554%_
                               _%e195229195557%_
                               _%hd195230195560%_
                               _%tl195231195562%_
                               _%e195232195565%_
                               _%hd195233195568%_
                               _%tl195234195570%_
                               _%e195235195573%_
                               _%hd195236195576%_
                               _%tl195237195578%_
                               _%e195238195581%_
                               _%hd195239195584%_
                               _%tl195240195586%_
                               _%e195241195589%_
                               _%hd195242195592%_
                               _%tl195243195594%_
                               _%e195244195597%_
                               _%hd195245195600%_
                               _%tl195246195602%_
                               _%e195247195605%_
                               _%hd195248195608%_
                               _%tl195249195610%_)
                        (let ((_%g195213195613%_ _%hd195248195608%_)
                              (_%g195214195614%_ _%hd195245195600%_)
                              (_%g195215195615%_ _%hd195236195576%_)
                              (_%g195216195616%_ _%hd195227195552%_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%g195216195616%_
                                          'slot-set!))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%g195216195616%_
                                          'unchecked-slot-set!)))
                                   (let ((__tmp201749
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self195071%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%g195215195615%_
                                      __tmp201749)))
                              (_%__kont201070201071%_
                               _%g195213195613%_
                               _%g195214195614%_
                               _%g195215195615%_
                               _%g195216195616%_)
                              (_%__kont201076201077%_)))))
                     (_%__match201431201432%_
                      (lambda (_%e195217195525%_
                               _%hd195218195528%_
                               _%tl195219195530%_
                               _%e195220195533%_
                               _%hd195221195536%_
                               _%tl195222195538%_
                               _%e195223195541%_
                               _%hd195224195544%_
                               _%tl195225195546%_
                               _%e195226195549%_
                               _%hd195227195552%_
                               _%tl195228195554%_
                               _%e195229195557%_
                               _%hd195230195560%_
                               _%tl195231195562%_
                               _%e195232195565%_
                               _%hd195233195568%_
                               _%tl195234195570%_
                               _%e195235195573%_
                               _%hd195236195576%_
                               _%tl195237195578%_
                               _%e195238195581%_
                               _%hd195239195584%_
                               _%tl195240195586%_
                               _%e195241195589%_
                               _%hd195242195592%_
                               _%tl195243195594%_
                               _%e195244195597%_
                               _%hd195245195600%_
                               _%tl195246195602%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl195240195586%_))
                            (let ((_%e195247195605%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl195240195586%_))))
                              (let ((_%tl195249195610%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e195247195605%_)))
                                    (_%hd195248195608%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e195247195605%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl195249195610%_))
                                    (_%__match201439201440%_
                                     _%e195217195525%_
                                     _%hd195218195528%_
                                     _%tl195219195530%_
                                     _%e195220195533%_
                                     _%hd195221195536%_
                                     _%tl195222195538%_
                                     _%e195223195541%_
                                     _%hd195224195544%_
                                     _%tl195225195546%_
                                     _%e195226195549%_
                                     _%hd195227195552%_
                                     _%tl195228195554%_
                                     _%e195229195557%_
                                     _%hd195230195560%_
                                     _%tl195231195562%_
                                     _%e195232195565%_
                                     _%hd195233195568%_
                                     _%tl195234195570%_
                                     _%e195235195573%_
                                     _%hd195236195576%_
                                     _%tl195237195578%_
                                     _%e195238195581%_
                                     _%hd195239195584%_
                                     _%tl195240195586%_
                                     _%e195241195589%_
                                     _%hd195242195592%_
                                     _%tl195243195594%_
                                     _%e195244195597%_
                                     _%hd195245195600%_
                                     _%tl195246195602%_
                                     _%e195247195605%_
                                     _%hd195248195608%_
                                     _%tl195249195610%_)
                                    (_%__kont201076201077%_))))
                            (_%__match201555201556%_
                             _%e195217195525%_
                             _%hd195218195528%_
                             _%tl195219195530%_
                             _%e195220195533%_
                             _%hd195221195536%_
                             _%tl195222195538%_
                             _%e195223195541%_
                             _%hd195224195544%_
                             _%tl195225195546%_
                             _%e195226195549%_
                             _%hd195227195552%_
                             _%tl195228195554%_
                             _%e195229195557%_
                             _%hd195230195560%_
                             _%tl195231195562%_
                             _%e195232195565%_
                             _%hd195233195568%_
                             _%tl195234195570%_
                             _%e195235195573%_
                             _%hd195236195576%_
                             _%tl195237195578%_
                             _%e195238195581%_
                             _%hd195239195584%_
                             _%tl195240195586%_))))
                     (_%__match201353201354%_
                      (lambda (_%e195183195659%_
                               _%hd195184195662%_
                               _%tl195185195664%_
                               _%e195186195667%_
                               _%hd195187195670%_
                               _%tl195188195672%_
                               _%e195189195675%_
                               _%hd195190195678%_
                               _%tl195191195680%_
                               _%e195192195683%_
                               _%hd195193195686%_
                               _%tl195194195688%_
                               _%e195195195691%_
                               _%hd195196195694%_
                               _%tl195197195696%_
                               _%e195198195699%_
                               _%hd195199195702%_
                               _%tl195200195704%_
                               _%e195201195707%_
                               _%hd195202195710%_
                               _%tl195203195712%_
                               _%e195204195715%_
                               _%hd195205195718%_
                               _%tl195206195720%_
                               _%e195207195723%_
                               _%hd195208195726%_
                               _%tl195209195728%_
                               _%e195210195731%_
                               _%hd195211195734%_
                               _%tl195212195736%_)
                        (let ((_%g195180195739%_ _%hd195211195734%_)
                              (_%g195181195740%_ _%hd195202195710%_)
                              (_%g195182195741%_ _%hd195193195686%_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%g195182195741%_
                                          'slot-ref))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%g195182195741%_
                                          'unchecked-slot-ref)))
                                   (let ((__tmp201750
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self195071%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%g195181195740%_
                                      __tmp201750)))
                              (_%__kont201068201069%_
                               _%g195180195739%_
                               _%g195181195740%_
                               _%g195182195741%_)
                              (_%__match201557201558%_
                               _%e195183195659%_
                               _%hd195184195662%_
                               _%tl195185195664%_
                               _%e195186195667%_
                               _%hd195187195670%_
                               _%tl195188195672%_
                               _%e195189195675%_
                               _%hd195190195678%_
                               _%tl195191195680%_
                               _%e195192195683%_
                               _%hd195193195686%_
                               _%tl195194195688%_
                               _%e195195195691%_
                               _%hd195196195694%_
                               _%tl195197195696%_
                               _%e195198195699%_
                               _%hd195199195702%_
                               _%tl195200195704%_
                               _%e195201195707%_
                               _%hd195202195710%_
                               _%tl195203195712%_
                               _%e195204195715%_
                               _%hd195205195718%_
                               _%tl195206195720%_)))))
                     (_%__match201351201352%_
                      (lambda (_%e195183195659%_
                               _%hd195184195662%_
                               _%tl195185195664%_
                               _%e195186195667%_
                               _%hd195187195670%_
                               _%tl195188195672%_
                               _%e195189195675%_
                               _%hd195190195678%_
                               _%tl195191195680%_
                               _%e195192195683%_
                               _%hd195193195686%_
                               _%tl195194195688%_
                               _%e195195195691%_
                               _%hd195196195694%_
                               _%tl195197195696%_
                               _%e195198195699%_
                               _%hd195199195702%_
                               _%tl195200195704%_
                               _%e195201195707%_
                               _%hd195202195710%_
                               _%tl195203195712%_
                               _%e195204195715%_
                               _%hd195205195718%_
                               _%tl195206195720%_
                               _%e195207195723%_
                               _%hd195208195726%_
                               _%tl195209195728%_
                               _%e195210195731%_
                               _%hd195211195734%_
                               _%tl195212195736%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl195206195720%_))
                            (_%__match201353201354%_
                             _%e195183195659%_
                             _%hd195184195662%_
                             _%tl195185195664%_
                             _%e195186195667%_
                             _%hd195187195670%_
                             _%tl195188195672%_
                             _%e195189195675%_
                             _%hd195190195678%_
                             _%tl195191195680%_
                             _%e195192195683%_
                             _%hd195193195686%_
                             _%tl195194195688%_
                             _%e195195195691%_
                             _%hd195196195694%_
                             _%tl195197195696%_
                             _%e195198195699%_
                             _%hd195199195702%_
                             _%tl195200195704%_
                             _%e195201195707%_
                             _%hd195202195710%_
                             _%tl195203195712%_
                             _%e195204195715%_
                             _%hd195205195718%_
                             _%tl195206195720%_
                             _%e195207195723%_
                             _%hd195208195726%_
                             _%tl195209195728%_
                             _%e195210195731%_
                             _%hd195211195734%_
                             _%tl195212195736%_)
                            (_%__match201431201432%_
                             _%e195183195659%_
                             _%hd195184195662%_
                             _%tl195185195664%_
                             _%e195186195667%_
                             _%hd195187195670%_
                             _%tl195188195672%_
                             _%e195189195675%_
                             _%hd195190195678%_
                             _%tl195191195680%_
                             _%e195192195683%_
                             _%hd195193195686%_
                             _%tl195194195688%_
                             _%e195195195691%_
                             _%hd195196195694%_
                             _%tl195197195696%_
                             _%e195198195699%_
                             _%hd195199195702%_
                             _%tl195200195704%_
                             _%e195201195707%_
                             _%hd195202195710%_
                             _%tl195203195712%_
                             _%e195204195715%_
                             _%hd195205195718%_
                             _%tl195206195720%_
                             _%e195207195723%_
                             _%hd195208195726%_
                             _%tl195209195728%_
                             _%e195210195731%_
                             _%hd195211195734%_
                             _%tl195212195736%_))))
                     (_%__match201341201342%_
                      (lambda (_%e195183195659%_
                               _%hd195184195662%_
                               _%tl195185195664%_
                               _%e195186195667%_
                               _%hd195187195670%_
                               _%tl195188195672%_
                               _%e195189195675%_
                               _%hd195190195678%_
                               _%tl195191195680%_
                               _%e195192195683%_
                               _%hd195193195686%_
                               _%tl195194195688%_
                               _%e195195195691%_
                               _%hd195196195694%_
                               _%tl195197195696%_
                               _%e195198195699%_
                               _%hd195199195702%_
                               _%tl195200195704%_
                               _%e195201195707%_
                               _%hd195202195710%_
                               _%tl195203195712%_
                               _%e195204195715%_
                               _%hd195205195718%_
                               _%tl195206195720%_
                               _%e195207195723%_
                               _%hd195208195726%_
                               _%tl195209195728%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#quote _%hd195208195726%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl195209195728%_))
                                (let ((_%e195210195731%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl195209195728%_))))
                                  (let ((_%tl195212195736%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e195210195731%_)))
                                        (_%hd195211195734%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e195210195731%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl195212195736%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl195206195720%_))
                                            (_%__match201353201354%_
                                             _%e195183195659%_
                                             _%hd195184195662%_
                                             _%tl195185195664%_
                                             _%e195186195667%_
                                             _%hd195187195670%_
                                             _%tl195188195672%_
                                             _%e195189195675%_
                                             _%hd195190195678%_
                                             _%tl195191195680%_
                                             _%e195192195683%_
                                             _%hd195193195686%_
                                             _%tl195194195688%_
                                             _%e195195195691%_
                                             _%hd195196195694%_
                                             _%tl195197195696%_
                                             _%e195198195699%_
                                             _%hd195199195702%_
                                             _%tl195200195704%_
                                             _%e195201195707%_
                                             _%hd195202195710%_
                                             _%tl195203195712%_
                                             _%e195204195715%_
                                             _%hd195205195718%_
                                             _%tl195206195720%_
                                             _%e195207195723%_
                                             _%hd195208195726%_
                                             _%tl195209195728%_
                                             _%e195210195731%_
                                             _%hd195211195734%_
                                             _%tl195212195736%_)
                                            (_%__match201431201432%_
                                             _%e195183195659%_
                                             _%hd195184195662%_
                                             _%tl195185195664%_
                                             _%e195186195667%_
                                             _%hd195187195670%_
                                             _%tl195188195672%_
                                             _%e195189195675%_
                                             _%hd195190195678%_
                                             _%tl195191195680%_
                                             _%e195192195683%_
                                             _%hd195193195686%_
                                             _%tl195194195688%_
                                             _%e195195195691%_
                                             _%hd195196195694%_
                                             _%tl195197195696%_
                                             _%e195198195699%_
                                             _%hd195199195702%_
                                             _%tl195200195704%_
                                             _%e195201195707%_
                                             _%hd195202195710%_
                                             _%tl195203195712%_
                                             _%e195204195715%_
                                             _%hd195205195718%_
                                             _%tl195206195720%_
                                             _%e195207195723%_
                                             _%hd195208195726%_
                                             _%tl195209195728%_
                                             _%e195210195731%_
                                             _%hd195211195734%_
                                             _%tl195212195736%_))
                                        (_%__match201555201556%_
                                         _%e195183195659%_
                                         _%hd195184195662%_
                                         _%tl195185195664%_
                                         _%e195186195667%_
                                         _%hd195187195670%_
                                         _%tl195188195672%_
                                         _%e195189195675%_
                                         _%hd195190195678%_
                                         _%tl195191195680%_
                                         _%e195192195683%_
                                         _%hd195193195686%_
                                         _%tl195194195688%_
                                         _%e195195195691%_
                                         _%hd195196195694%_
                                         _%tl195197195696%_
                                         _%e195198195699%_
                                         _%hd195199195702%_
                                         _%tl195200195704%_
                                         _%e195201195707%_
                                         _%hd195202195710%_
                                         _%tl195203195712%_
                                         _%e195204195715%_
                                         _%hd195205195718%_
                                         _%tl195206195720%_))))
                                (_%__match201555201556%_
                                 _%e195183195659%_
                                 _%hd195184195662%_
                                 _%tl195185195664%_
                                 _%e195186195667%_
                                 _%hd195187195670%_
                                 _%tl195188195672%_
                                 _%e195189195675%_
                                 _%hd195190195678%_
                                 _%tl195191195680%_
                                 _%e195192195683%_
                                 _%hd195193195686%_
                                 _%tl195194195688%_
                                 _%e195195195691%_
                                 _%hd195196195694%_
                                 _%tl195197195696%_
                                 _%e195198195699%_
                                 _%hd195199195702%_
                                 _%tl195200195704%_
                                 _%e195201195707%_
                                 _%hd195202195710%_
                                 _%tl195203195712%_
                                 _%e195204195715%_
                                 _%hd195205195718%_
                                 _%tl195206195720%_))
                            (_%__match201555201556%_
                             _%e195183195659%_
                             _%hd195184195662%_
                             _%tl195185195664%_
                             _%e195186195667%_
                             _%hd195187195670%_
                             _%tl195188195672%_
                             _%e195189195675%_
                             _%hd195190195678%_
                             _%tl195191195680%_
                             _%e195192195683%_
                             _%hd195193195686%_
                             _%tl195194195688%_
                             _%e195195195691%_
                             _%hd195196195694%_
                             _%tl195197195696%_
                             _%e195198195699%_
                             _%hd195199195702%_
                             _%tl195200195704%_
                             _%e195201195707%_
                             _%hd195202195710%_
                             _%tl195203195712%_
                             _%e195204195715%_
                             _%hd195205195718%_
                             _%tl195206195720%_))))
                     (_%__match201273201274%_
                      (lambda (_%e195132195780%_
                               _%hd195133195783%_
                               _%tl195134195785%_
                               _%e195135195788%_
                               _%hd195136195791%_
                               _%tl195137195793%_
                               _%e195138195796%_
                               _%hd195139195799%_
                               _%tl195140195801%_
                               _%e195141195804%_
                               _%hd195142195807%_
                               _%tl195143195809%_
                               _%e195144195812%_
                               _%hd195145195815%_
                               _%tl195146195817%_
                               _%e195147195820%_
                               _%hd195148195823%_
                               _%tl195149195825%_
                               _%e195150195828%_
                               _%hd195151195831%_
                               _%tl195152195833%_
                               _%e195153195836%_
                               _%hd195154195839%_
                               _%tl195155195841%_
                               _%e195156195844%_
                               _%hd195157195847%_
                               _%tl195158195849%_
                               _%e195159195852%_
                               _%hd195160195855%_
                               _%tl195161195857%_
                               _%e195162195860%_
                               _%hd195163195863%_
                               _%tl195164195865%_
                               _%e195165195868%_
                               _%hd195166195871%_
                               _%tl195167195873%_
                               _%e195168195876%_
                               _%hd195169195879%_
                               _%tl195170195881%_
                               _%__splice201066201067%_
                               _%target195171195884%_
                               _%tl195173195886%_)
                        (letrec ((_%loop195174195889%_
                                  (lambda (_%hd195172195892%_
                                           _%args195178195894%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd195172195892%_))
                                        (let ((_%e195175195896%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd195172195892%_))))
                                          (let ((_%lp-tl195177195901%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e195175195896%_)))
                                                (_%lp-hd195176195899%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e195175195896%_))))
                                            (_%loop195174195889%_
                                             _%lp-tl195177195901%_
                                             (cons _%lp-hd195176195899%_
                                                   _%args195178195894%_))))
                                        (let ((_%args195179195904%_
                                               (reverse _%args195178195894%_)))
                                          (let ((_%g195127195906%_
                                                 _%args195179195904%_)
                                                (_%g195128195907%_
                                                 _%hd195169195879%_)
                                                (_%g195129195908%_
                                                 _%hd195160195855%_)
                                                (_%g195130195909%_
                                                 _%hd195151195831%_)
                                                (_%g195131195910%_
                                                 _%hd195142195807%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%g195131195910%_
                                                        'apply))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%g195130195909%_
                                                        'call-method))
                                                     (let ((__tmp201751
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self195071%_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _%g195129195908%_
                                                        __tmp201751)))
                                                (_%__kont201064201065%_
                                                 _%g195127195906%_
                                                 _%g195128195907%_
                                                 _%g195129195908%_
                                                 _%g195130195909%_
                                                 _%g195131195910%_)
                                                (_%__kont201076201077%_))))))))
                          (_%loop195174195889%_ _%target195171195884%_ '()))))
                     (_%__match201231201232%_
                      (lambda (_%e195132195780%_
                               _%hd195133195783%_
                               _%tl195134195785%_
                               _%e195135195788%_
                               _%hd195136195791%_
                               _%tl195137195793%_
                               _%e195138195796%_
                               _%hd195139195799%_
                               _%tl195140195801%_
                               _%e195141195804%_
                               _%hd195142195807%_
                               _%tl195143195809%_
                               _%e195144195812%_
                               _%hd195145195815%_
                               _%tl195146195817%_
                               _%e195147195820%_
                               _%hd195148195823%_
                               _%tl195149195825%_
                               _%e195150195828%_
                               _%hd195151195831%_
                               _%tl195152195833%_
                               _%e195153195836%_
                               _%hd195154195839%_
                               _%tl195155195841%_
                               _%e195156195844%_
                               _%hd195157195847%_
                               _%tl195158195849%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _%hd195157195847%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl195158195849%_))
                                (let ((_%e195159195852%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl195158195849%_))))
                                  (let ((_%tl195161195857%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e195159195852%_)))
                                        (_%hd195160195855%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e195159195852%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl195161195857%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl195155195841%_))
                                            (let ((_%e195162195860%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl195155195841%_))))
                                              (let ((_%tl195164195865%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e195162195860%_)))
                                                    (_%hd195163195863%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e195162195860%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%hd195163195863%_))
                                                    (let ((_%e195165195868%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd195163195863%_))))
                                                      (let ((_%tl195167195873%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e195165195868%_)))
                    (_%hd195166195871%_
                     (let () (declare (not safe)) (##car _%e195165195868%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _%hd195166195871%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _%hd195166195871%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl195167195873%_))
                            (let ((_%e195168195876%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl195167195873%_))))
                              (let ((_%tl195170195881%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e195168195876%_)))
                                    (_%hd195169195879%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e195168195876%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl195170195881%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl195164195865%_))
                                        (let ((_%__splice201066201067%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice->vector
                                                  _%tl195164195865%_
                                                  '0))))
                                          (let ((_%tl195173195886%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice201066201067%_
                                                    '1)))
                                                (_%target195171195884%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice201066201067%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl195173195886%_))
                                                (_%__match201273201274%_
                                                 _%e195132195780%_
                                                 _%hd195133195783%_
                                                 _%tl195134195785%_
                                                 _%e195135195788%_
                                                 _%hd195136195791%_
                                                 _%tl195137195793%_
                                                 _%e195138195796%_
                                                 _%hd195139195799%_
                                                 _%tl195140195801%_
                                                 _%e195141195804%_
                                                 _%hd195142195807%_
                                                 _%tl195143195809%_
                                                 _%e195144195812%_
                                                 _%hd195145195815%_
                                                 _%tl195146195817%_
                                                 _%e195147195820%_
                                                 _%hd195148195823%_
                                                 _%tl195149195825%_
                                                 _%e195150195828%_
                                                 _%hd195151195831%_
                                                 _%tl195152195833%_
                                                 _%e195153195836%_
                                                 _%hd195154195839%_
                                                 _%tl195155195841%_
                                                 _%e195156195844%_
                                                 _%hd195157195847%_
                                                 _%tl195158195849%_
                                                 _%e195159195852%_
                                                 _%hd195160195855%_
                                                 _%tl195161195857%_
                                                 _%e195162195860%_
                                                 _%hd195163195863%_
                                                 _%tl195164195865%_
                                                 _%e195165195868%_
                                                 _%hd195166195871%_
                                                 _%tl195167195873%_
                                                 _%e195168195876%_
                                                 _%hd195169195879%_
                                                 _%tl195170195881%_
                                                 _%__splice201066201067%_
                                                 _%target195171195884%_
                                                 _%tl195173195886%_)
                                                (_%__kont201076201077%_))))
                                        (_%__kont201076201077%_))
                                    (_%__kont201076201077%_))))
                            (_%__kont201076201077%_))
                        (_%__kont201076201077%_))
                    (_%__kont201076201077%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont201076201077%_))))
                                            (_%__match201555201556%_
                                             _%e195132195780%_
                                             _%hd195133195783%_
                                             _%tl195134195785%_
                                             _%e195135195788%_
                                             _%hd195136195791%_
                                             _%tl195137195793%_
                                             _%e195138195796%_
                                             _%hd195139195799%_
                                             _%tl195140195801%_
                                             _%e195141195804%_
                                             _%hd195142195807%_
                                             _%tl195143195809%_
                                             _%e195144195812%_
                                             _%hd195145195815%_
                                             _%tl195146195817%_
                                             _%e195147195820%_
                                             _%hd195148195823%_
                                             _%tl195149195825%_
                                             _%e195150195828%_
                                             _%hd195151195831%_
                                             _%tl195152195833%_
                                             _%e195153195836%_
                                             _%hd195154195839%_
                                             _%tl195155195841%_))
                                        (_%__match201555201556%_
                                         _%e195132195780%_
                                         _%hd195133195783%_
                                         _%tl195134195785%_
                                         _%e195135195788%_
                                         _%hd195136195791%_
                                         _%tl195137195793%_
                                         _%e195138195796%_
                                         _%hd195139195799%_
                                         _%tl195140195801%_
                                         _%e195141195804%_
                                         _%hd195142195807%_
                                         _%tl195143195809%_
                                         _%e195144195812%_
                                         _%hd195145195815%_
                                         _%tl195146195817%_
                                         _%e195147195820%_
                                         _%hd195148195823%_
                                         _%tl195149195825%_
                                         _%e195150195828%_
                                         _%hd195151195831%_
                                         _%tl195152195833%_
                                         _%e195153195836%_
                                         _%hd195154195839%_
                                         _%tl195155195841%_))))
                                (_%__match201555201556%_
                                 _%e195132195780%_
                                 _%hd195133195783%_
                                 _%tl195134195785%_
                                 _%e195135195788%_
                                 _%hd195136195791%_
                                 _%tl195137195793%_
                                 _%e195138195796%_
                                 _%hd195139195799%_
                                 _%tl195140195801%_
                                 _%e195141195804%_
                                 _%hd195142195807%_
                                 _%tl195143195809%_
                                 _%e195144195812%_
                                 _%hd195145195815%_
                                 _%tl195146195817%_
                                 _%e195147195820%_
                                 _%hd195148195823%_
                                 _%tl195149195825%_
                                 _%e195150195828%_
                                 _%hd195151195831%_
                                 _%tl195152195833%_
                                 _%e195153195836%_
                                 _%hd195154195839%_
                                 _%tl195155195841%_))
                            (_%__match201341201342%_
                             _%e195132195780%_
                             _%hd195133195783%_
                             _%tl195134195785%_
                             _%e195135195788%_
                             _%hd195136195791%_
                             _%tl195137195793%_
                             _%e195138195796%_
                             _%hd195139195799%_
                             _%tl195140195801%_
                             _%e195141195804%_
                             _%hd195142195807%_
                             _%tl195143195809%_
                             _%e195144195812%_
                             _%hd195145195815%_
                             _%tl195146195817%_
                             _%e195147195820%_
                             _%hd195148195823%_
                             _%tl195149195825%_
                             _%e195150195828%_
                             _%hd195151195831%_
                             _%tl195152195833%_
                             _%e195153195836%_
                             _%hd195154195839%_
                             _%tl195155195841%_
                             _%e195156195844%_
                             _%hd195157195847%_
                             _%tl195158195849%_))))
                     (_%__match201163201164%_
                      (lambda (_%e195088195970%_
                               _%hd195089195973%_
                               _%tl195090195975%_
                               _%e195091195978%_
                               _%hd195092195981%_
                               _%tl195093195983%_
                               _%e195094195986%_
                               _%hd195095195989%_
                               _%tl195096195991%_
                               _%e195097195994%_
                               _%hd195098195997%_
                               _%tl195099195999%_
                               _%e195100196002%_
                               _%hd195101196005%_
                               _%tl195102196007%_
                               _%e195103196010%_
                               _%hd195104196013%_
                               _%tl195105196015%_
                               _%e195106196018%_
                               _%hd195107196021%_
                               _%tl195108196023%_
                               _%e195109196026%_
                               _%hd195110196029%_
                               _%tl195111196031%_
                               _%e195112196034%_
                               _%hd195113196037%_
                               _%tl195114196039%_
                               _%e195115196042%_
                               _%hd195116196045%_
                               _%tl195117196047%_
                               _%__splice201062201063%_
                               _%target195118196050%_
                               _%tl195120196052%_)
                        (letrec ((_%loop195121196055%_
                                  (lambda (_%hd195119196058%_
                                           _%args195125196060%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd195119196058%_))
                                        (let ((_%e195122196062%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd195119196058%_))))
                                          (let ((_%lp-tl195124196067%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e195122196062%_)))
                                                (_%lp-hd195123196065%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e195122196062%_))))
                                            (_%loop195121196055%_
                                             _%lp-tl195124196067%_
                                             (cons _%lp-hd195123196065%_
                                                   _%args195125196060%_))))
                                        (let ((_%args195126196070%_
                                               (reverse _%args195125196060%_)))
                                          (let ((_%g195084196072%_
                                                 _%args195126196070%_)
                                                (_%g195085196073%_
                                                 _%hd195116196045%_)
                                                (_%g195086196074%_
                                                 _%hd195107196021%_)
                                                (_%g195087196075%_
                                                 _%hd195098195997%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%g195087196075%_
                                                        'call-method))
                                                     (let ((__tmp201752
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self195071%_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _%g195086196074%_
                                                        __tmp201752)))
                                                (_%__kont201060201061%_
                                                 _%g195084196072%_
                                                 _%g195085196073%_
                                                 _%g195086196074%_
                                                 _%g195087196075%_)
                                                (_%__match201351201352%_
                                                 _%e195088195970%_
                                                 _%hd195089195973%_
                                                 _%tl195090195975%_
                                                 _%e195091195978%_
                                                 _%hd195092195981%_
                                                 _%tl195093195983%_
                                                 _%e195094195986%_
                                                 _%hd195095195989%_
                                                 _%tl195096195991%_
                                                 _%e195097195994%_
                                                 _%hd195098195997%_
                                                 _%tl195099195999%_
                                                 _%e195100196002%_
                                                 _%hd195101196005%_
                                                 _%tl195102196007%_
                                                 _%e195103196010%_
                                                 _%hd195104196013%_
                                                 _%tl195105196015%_
                                                 _%e195106196018%_
                                                 _%hd195107196021%_
                                                 _%tl195108196023%_
                                                 _%e195109196026%_
                                                 _%hd195110196029%_
                                                 _%tl195111196031%_
                                                 _%e195112196034%_
                                                 _%hd195113196037%_
                                                 _%tl195114196039%_
                                                 _%e195115196042%_
                                                 _%hd195116196045%_
                                                 _%tl195117196047%_))))))))
                          (_%loop195121196055%_ _%target195118196050%_ '())))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx201058201059%_))
                    (let ((_%e195088195970%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx201058201059%_))))
                      (let ((_%tl195090195975%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e195088195970%_)))
                            (_%hd195089195973%_
                             (let ()
                               (declare (not safe))
                               (##car _%e195088195970%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl195090195975%_))
                            (let ((_%e195091195978%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl195090195975%_))))
                              (let ((_%tl195093195983%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e195091195978%_)))
                                    (_%hd195092195981%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e195091195978%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd195092195981%_))
                                    (let ((_%e195094195986%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd195092195981%_))))
                                      (let ((_%tl195096195991%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e195094195986%_)))
                                            (_%hd195095195989%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e195094195986%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _%hd195095195989%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _%hd195095195989%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl195096195991%_))
                                                    (let ((_%e195097195994%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl195096195991%_))))
                                                      (let ((_%tl195099195999%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e195097195994%_)))
                    (_%hd195098195997%_
                     (let () (declare (not safe)) (##car _%e195097195994%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl195099195999%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl195093195983%_))
                        (let ((_%e195100196002%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl195093195983%_))))
                          (let ((_%tl195102196007%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e195100196002%_)))
                                (_%hd195101196005%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e195100196002%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd195101196005%_))
                                (let ((_%e195103196010%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd195101196005%_))))
                                  (let ((_%tl195105196015%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e195103196010%_)))
                                        (_%hd195104196013%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e195103196010%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd195104196013%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _%hd195104196013%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl195105196015%_))
                                                (let ((_%e195106196018%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl195105196015%_))))
                                                  (let ((_%tl195108196023%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e195106196018%_)))
                                                        (_%hd195107196021%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e195106196018%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl195108196023%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl195102196007%_))
                                                            (let ((_%e195109196026%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl195102196007%_))))
                      (let ((_%tl195111196031%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e195109196026%_)))
                            (_%hd195110196029%_
                             (let ()
                               (declare (not safe))
                               (##car _%e195109196026%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd195110196029%_))
                            (let ((_%e195112196034%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd195110196029%_))))
                              (let ((_%tl195114196039%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e195112196034%_)))
                                    (_%hd195113196037%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e195112196034%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd195113196037%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd195113196037%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl195114196039%_))
                                            (let ((_%e195115196042%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl195114196039%_))))
                                              (let ((_%tl195117196047%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e195115196042%_)))
                                                    (_%hd195116196045%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e195115196042%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl195117196047%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair/null?
                                                           _%tl195111196031%_))
                                                        (let ((_%__splice201062201063%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-split-splice->vector
                          _%tl195111196031%_
                          '0))))
                  (let ((_%tl195120196052%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice201062201063%_ '1)))
                        (_%target195118196050%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice201062201063%_ '0))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl195120196052%_))
                        (_%__match201163201164%_
                         _%e195088195970%_
                         _%hd195089195973%_
                         _%tl195090195975%_
                         _%e195091195978%_
                         _%hd195092195981%_
                         _%tl195093195983%_
                         _%e195094195986%_
                         _%hd195095195989%_
                         _%tl195096195991%_
                         _%e195097195994%_
                         _%hd195098195997%_
                         _%tl195099195999%_
                         _%e195100196002%_
                         _%hd195101196005%_
                         _%tl195102196007%_
                         _%e195103196010%_
                         _%hd195104196013%_
                         _%tl195105196015%_
                         _%e195106196018%_
                         _%hd195107196021%_
                         _%tl195108196023%_
                         _%e195109196026%_
                         _%hd195110196029%_
                         _%tl195111196031%_
                         _%e195112196034%_
                         _%hd195113196037%_
                         _%tl195114196039%_
                         _%e195115196042%_
                         _%hd195116196045%_
                         _%tl195117196047%_
                         _%__splice201062201063%_
                         _%target195118196050%_
                         _%tl195120196052%_)
                        (_%__match201351201352%_
                         _%e195088195970%_
                         _%hd195089195973%_
                         _%tl195090195975%_
                         _%e195091195978%_
                         _%hd195092195981%_
                         _%tl195093195983%_
                         _%e195094195986%_
                         _%hd195095195989%_
                         _%tl195096195991%_
                         _%e195097195994%_
                         _%hd195098195997%_
                         _%tl195099195999%_
                         _%e195100196002%_
                         _%hd195101196005%_
                         _%tl195102196007%_
                         _%e195103196010%_
                         _%hd195104196013%_
                         _%tl195105196015%_
                         _%e195106196018%_
                         _%hd195107196021%_
                         _%tl195108196023%_
                         _%e195109196026%_
                         _%hd195110196029%_
                         _%tl195111196031%_
                         _%e195112196034%_
                         _%hd195113196037%_
                         _%tl195114196039%_
                         _%e195115196042%_
                         _%hd195116196045%_
                         _%tl195117196047%_))))
                (_%__match201351201352%_
                 _%e195088195970%_
                 _%hd195089195973%_
                 _%tl195090195975%_
                 _%e195091195978%_
                 _%hd195092195981%_
                 _%tl195093195983%_
                 _%e195094195986%_
                 _%hd195095195989%_
                 _%tl195096195991%_
                 _%e195097195994%_
                 _%hd195098195997%_
                 _%tl195099195999%_
                 _%e195100196002%_
                 _%hd195101196005%_
                 _%tl195102196007%_
                 _%e195103196010%_
                 _%hd195104196013%_
                 _%tl195105196015%_
                 _%e195106196018%_
                 _%hd195107196021%_
                 _%tl195108196023%_
                 _%e195109196026%_
                 _%hd195110196029%_
                 _%tl195111196031%_
                 _%e195112196034%_
                 _%hd195113196037%_
                 _%tl195114196039%_
                 _%e195115196042%_
                 _%hd195116196045%_
                 _%tl195117196047%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match201555201556%_
                                                     _%e195088195970%_
                                                     _%hd195089195973%_
                                                     _%tl195090195975%_
                                                     _%e195091195978%_
                                                     _%hd195092195981%_
                                                     _%tl195093195983%_
                                                     _%e195094195986%_
                                                     _%hd195095195989%_
                                                     _%tl195096195991%_
                                                     _%e195097195994%_
                                                     _%hd195098195997%_
                                                     _%tl195099195999%_
                                                     _%e195100196002%_
                                                     _%hd195101196005%_
                                                     _%tl195102196007%_
                                                     _%e195103196010%_
                                                     _%hd195104196013%_
                                                     _%tl195105196015%_
                                                     _%e195106196018%_
                                                     _%hd195107196021%_
                                                     _%tl195108196023%_
                                                     _%e195109196026%_
                                                     _%hd195110196029%_
                                                     _%tl195111196031%_))))
                                            (_%__match201555201556%_
                                             _%e195088195970%_
                                             _%hd195089195973%_
                                             _%tl195090195975%_
                                             _%e195091195978%_
                                             _%hd195092195981%_
                                             _%tl195093195983%_
                                             _%e195094195986%_
                                             _%hd195095195989%_
                                             _%tl195096195991%_
                                             _%e195097195994%_
                                             _%hd195098195997%_
                                             _%tl195099195999%_
                                             _%e195100196002%_
                                             _%hd195101196005%_
                                             _%tl195102196007%_
                                             _%e195103196010%_
                                             _%hd195104196013%_
                                             _%tl195105196015%_
                                             _%e195106196018%_
                                             _%hd195107196021%_
                                             _%tl195108196023%_
                                             _%e195109196026%_
                                             _%hd195110196029%_
                                             _%tl195111196031%_))
                                        (_%__match201231201232%_
                                         _%e195088195970%_
                                         _%hd195089195973%_
                                         _%tl195090195975%_
                                         _%e195091195978%_
                                         _%hd195092195981%_
                                         _%tl195093195983%_
                                         _%e195094195986%_
                                         _%hd195095195989%_
                                         _%tl195096195991%_
                                         _%e195097195994%_
                                         _%hd195098195997%_
                                         _%tl195099195999%_
                                         _%e195100196002%_
                                         _%hd195101196005%_
                                         _%tl195102196007%_
                                         _%e195103196010%_
                                         _%hd195104196013%_
                                         _%tl195105196015%_
                                         _%e195106196018%_
                                         _%hd195107196021%_
                                         _%tl195108196023%_
                                         _%e195109196026%_
                                         _%hd195110196029%_
                                         _%tl195111196031%_
                                         _%e195112196034%_
                                         _%hd195113196037%_
                                         _%tl195114196039%_))
                                    (_%__match201555201556%_
                                     _%e195088195970%_
                                     _%hd195089195973%_
                                     _%tl195090195975%_
                                     _%e195091195978%_
                                     _%hd195092195981%_
                                     _%tl195093195983%_
                                     _%e195094195986%_
                                     _%hd195095195989%_
                                     _%tl195096195991%_
                                     _%e195097195994%_
                                     _%hd195098195997%_
                                     _%tl195099195999%_
                                     _%e195100196002%_
                                     _%hd195101196005%_
                                     _%tl195102196007%_
                                     _%e195103196010%_
                                     _%hd195104196013%_
                                     _%tl195105196015%_
                                     _%e195106196018%_
                                     _%hd195107196021%_
                                     _%tl195108196023%_
                                     _%e195109196026%_
                                     _%hd195110196029%_
                                     _%tl195111196031%_))))
                            (_%__match201555201556%_
                             _%e195088195970%_
                             _%hd195089195973%_
                             _%tl195090195975%_
                             _%e195091195978%_
                             _%hd195092195981%_
                             _%tl195093195983%_
                             _%e195094195986%_
                             _%hd195095195989%_
                             _%tl195096195991%_
                             _%e195097195994%_
                             _%hd195098195997%_
                             _%tl195099195999%_
                             _%e195100196002%_
                             _%hd195101196005%_
                             _%tl195102196007%_
                             _%e195103196010%_
                             _%hd195104196013%_
                             _%tl195105196015%_
                             _%e195106196018%_
                             _%hd195107196021%_
                             _%tl195108196023%_
                             _%e195109196026%_
                             _%hd195110196029%_
                             _%tl195111196031%_))))
                    (_%__match201493201494%_
                     _%e195088195970%_
                     _%hd195089195973%_
                     _%tl195090195975%_
                     _%e195091195978%_
                     _%hd195092195981%_
                     _%tl195093195983%_
                     _%e195094195986%_
                     _%hd195095195989%_
                     _%tl195096195991%_
                     _%e195097195994%_
                     _%hd195098195997%_
                     _%tl195099195999%_
                     _%e195100196002%_
                     _%hd195101196005%_
                     _%tl195102196007%_
                     _%e195103196010%_
                     _%hd195104196013%_
                     _%tl195105196015%_
                     _%e195106196018%_
                     _%hd195107196021%_
                     _%tl195108196023%_))
                (_%__kont201076201077%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont201076201077%_))
                                            (_%__kont201076201077%_))
                                        (_%__kont201076201077%_))))
                                (_%__kont201076201077%_))))
                        (_%__kont201076201077%_))
                    (_%__kont201076201077%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont201076201077%_))
                                                (_%__kont201076201077%_))
                                            (_%__kont201076201077%_))))
                                    (_%__kont201076201077%_))))
                            (_%__kont201076201077%_))))
                    (_%__kont201076201077%_))))))))))
