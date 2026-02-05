(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-spec::timestamp 1770333062)
  (begin
    (define gxc#::generate-method-specializers::t
      (let ((__tmp201709 (list gxc#::identity::t))
            (__tmp201708 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-method-specializers::t
         '::generate-method-specializers
         __tmp201709
         '()
         __tmp201708
         '#f)))
    (define gxc#::generate-method-specializers?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-method-specializers::t)))
    (define gxc#make-::generate-method-specializers
      (lambda _%$args200506%_
        (apply make-instance
               gxc#::generate-method-specializers::t
               _%$args200506%_)))
    (define gxc#::generate-method-specializers-bind-methods!
      (let ((__tmp201710
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
        (__make-atomic-promise __tmp201710)))
    (define gxc#apply-generate-method-specializers
      (lambda (_%stx200498%_)
        (force gxc#::generate-method-specializers-bind-methods!)
        (let* ((_%self200501%_
                (let ((__obj201701
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-method-specializers::t))))
                  __obj201701))
               (__tmp201711
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self200501%_ _%stx200498%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp201711
           gxc#current-compile-method
           _%self200501%_))))
    (define gxc#::extract-receiver::t
      (let ((__tmp201713 (list gxc#::false::t))
            (__tmp201712 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::extract-receiver::t
         '::extract-receiver
         __tmp201713
         '()
         __tmp201712
         '#f)))
    (define gxc#::extract-receiver?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::extract-receiver::t)))
    (define gxc#make-::extract-receiver
      (lambda _%$args200495%_
        (apply make-instance gxc#::extract-receiver::t _%$args200495%_)))
    (define gxc#::extract-receiver-bind-methods!
      (let ((__tmp201714
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
        (__make-atomic-promise __tmp201714)))
    (define gxc#apply-extract-receiver
      (lambda (_%stx200487%_)
        (force gxc#::extract-receiver-bind-methods!)
        (let* ((_%self200490%_
                (let ((__obj201703
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::extract-receiver::t))))
                  __obj201703))
               (__tmp201715
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self200490%_ _%stx200487%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp201715
           gxc#current-compile-method
           _%self200490%_))))
    (define gxc#::collect-object-refs::t
      (let ((__tmp201717 (list gxc#::void::t))
            (__tmp201716 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-object-refs::t
         '::collect-object-refs
         __tmp201717
         '(receiver methods slots)
         __tmp201716
         '#f)))
    (define gxc#::collect-object-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-object-refs::t)))
    (define gxc#make-::collect-object-refs
      (lambda _%$args200484%_
        (apply make-instance gxc#::collect-object-refs::t _%$args200484%_)))
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
      (let ((__tmp201718
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
        (__make-atomic-promise __tmp201718)))
    (define gxc#apply-collect-object-refs__%
      (lambda (_%@@keywords200453%_
               _%receiver200448200454%_
               _%methods200449200455%_
               _%slots200450200456%_
               _%stx200457%_)
        (let* ((_%receiver200460%_
                (if (eq? _%receiver200448200454%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _%receiver200448200454%_))
               (_%methods200462%_
                (if (eq? _%methods200449200455%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _%methods200449200455%_))
               (_%slots200464%_
                (if (eq? _%slots200450200456%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _%slots200450200456%_)))
          (force gxc#::collect-object-refs-bind-methods!)
          (let* ((_%self200466%_
                  (let ((__obj201705
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
                       __obj201705
                       _%receiver200460%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj201705
                       _%methods200462%_
                       '2
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj201705
                       _%slots200464%_
                       '3
                       '#f
                       '#f))
                    __obj201705))
                 (__tmp201719
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self200466%_ _%stx200457%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp201719
             gxc#current-compile-method
             _%self200466%_)))))
    (define gxc#apply-collect-object-refs__@
      (lambda (_%@@keywords200473%_ . _%args200474%_)
        (apply gxc#apply-collect-object-refs__%
               _%@@keywords200473%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords200473%_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords200473%_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords200473%_
                  'slots:
                  absent-value))
               _%args200474%_)))
    (define gxc#apply-collect-object-refs
      (lambda _%args200451200480%_
        (apply keyword-dispatch
               '#(receiver: slots: methods:)
               gxc#apply-collect-object-refs__@
               _%args200451200480%_)))
    (define gxc#::subst-object-refs::t
      (let ((__tmp201721 (list gxc#::basic-xform-expression::t))
            (__tmp201720 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::subst-object-refs::t
         '::subst-object-refs
         __tmp201721
         '(receiver klass methods slots)
         __tmp201720
         '#f)))
    (define gxc#::subst-object-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::subst-object-refs::t)))
    (define gxc#make-::subst-object-refs
      (lambda _%$args200444%_
        (apply make-instance gxc#::subst-object-refs::t _%$args200444%_)))
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
      (let ((__tmp201722
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
        (__make-atomic-promise __tmp201722)))
    (define gxc#apply-subst-object-refs__%
      (lambda (_%@@keywords200410%_
               _%receiver200404200411%_
               _%klass200405200412%_
               _%methods200406200413%_
               _%slots200407200414%_
               _%stx200415%_)
        (let* ((_%receiver200418%_
                (if (eq? _%receiver200404200411%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _%receiver200404200411%_))
               (_%klass200420%_
                (if (eq? _%klass200405200412%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'klass:))
                    _%klass200405200412%_))
               (_%methods200422%_
                (if (eq? _%methods200406200413%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _%methods200406200413%_))
               (_%slots200424%_
                (if (eq? _%slots200407200414%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _%slots200407200414%_)))
          (force gxc#::subst-object-refs-bind-methods!)
          (let* ((_%self200426%_
                  (let ((__obj201707
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
                       __obj201707
                       _%receiver200418%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj201707
                       _%klass200420%_
                       '2
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj201707
                       _%methods200422%_
                       '3
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj201707
                       _%slots200424%_
                       '4
                       '#f
                       '#f))
                    __obj201707))
                 (__tmp201723
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self200426%_ _%stx200415%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp201723
             gxc#current-compile-method
             _%self200426%_)))))
    (define gxc#apply-subst-object-refs__@
      (lambda (_%@@keywords200433%_ . _%args200434%_)
        (apply gxc#apply-subst-object-refs__%
               _%@@keywords200433%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords200433%_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords200433%_
                  'klass:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords200433%_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords200433%_
                  'slots:
                  absent-value))
               _%args200434%_)))
    (define gxc#apply-subst-object-refs
      (lambda _%args200408200440%_
        (apply keyword-dispatch
               '#(receiver: methods: slots: klass:)
               gxc#apply-subst-object-refs__@
               _%args200408200440%_)))
    (define gxc#generate-method-specializers-define-values%
      (lambda (_%self197535%_ _%stx197536%_)
        (letrec ((_%generate-method-bind197538%_
                  (lambda (_%$klass200396%_
                           _%$method-table200397%_
                           _%id200398%_
                           _%$id200399%_)
                    (let ((_%$tmp200401%_
                           (let ((__tmp201724
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__method))))
                             (declare (not safe))
                             (make-symbol__0 __tmp201724))))
                      (cons (cons _%$id200399%_ '())
                            (cons (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons 'make-promise '()))
                                              (cons (cons '%#lambda
                                                          (cons '()
                                                                (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons (cons (cons _%$tmp200401%_ '())
                                                      (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#ref (cons 'symbolic-table-ref '()))
                                (cons (cons '%#ref
                                            (cons _%$method-table200397%_ '()))
                                      (cons (cons '%#quote
                                                  (cons _%id200398%_ '()))
                                            (cons (cons '%#quote
                                                        (cons '#f '()))
                                                  '())))))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())
                                          (cons (cons '%#if
                                                      (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%$tmp200401%_ '()))
                    (cons (cons '%#ref (cons _%$tmp200401%_ '()))
                          (cons (cons '%#call
                                      (cons (cons '%#ref (cons 'error '()))
                                            (cons (cons '%#quote
                                                        (cons '"Missing method"
                                                              '()))
                                                  (cons (cons '%#quote
                                                              (cons _%id200398%_
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
                 (_%generate-slot-bind197539%_
                  (lambda (_%$klass200390%_ _%id200391%_ _%$id200392%_)
                    (let ((_%$tmp200394%_
                           (let ((__tmp201725
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__slot))))
                             (declare (not safe))
                             (make-symbol__0 __tmp201725))))
                      (cons (cons _%$id200392%_ '())
                            (cons (cons '%#let-values
                                        (cons (cons (cons (cons _%$tmp200394%_
                                                                '())
                                                          (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '%#ref (cons 'class-slot-offset '()))
                                    (cons (cons '%#ref
                                                (cons _%$klass200390%_ '()))
                                          (cons (cons '%#quote
                                                      (cons _%id200391%_ '()))
                                                '()))))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())
                                              (cons (cons '%#if
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$tmp200394%_ '()))
                        (cons (cons '%#ref (cons _%$tmp200394%_ '()))
                              (cons (cons '%#call
                                          (cons (cons '%#ref (cons 'error '()))
                                                (cons (cons '%#quote
                                                            (cons '"Unknown slot"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#quote (cons _%id200391%_ '())) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '())))))
                 (_%generate-specializer-impl197540%_
                  (lambda (_%$klass200384%_
                           _%$method-table200385%_
                           _%methods-bind200386%_
                           _%slots-bind200387%_
                           _%specializer-impl200388%_)
                    (let ((__tmp201726
                           (cons '%#lambda
                                 (cons (cons _%$klass200384%_
                                             (cons _%$method-table200385%_
                                                   '()))
                                       (cons (cons '%#let-values
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (__foldr1
                                                            cons
                                                            _%slots-bind200387%_
                                                            _%methods-bind200386%_))
                                                         (cons _%specializer-impl200388%_
                                                               '())))
                                             '())))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp201726 _%stx197536%_))))
                 (_%generate-specializer-def197541%_
                  (lambda (_%id200380%_
                           _%specializer-id200381%_
                           _%specializer-impl200382%_)
                    (let ((__tmp201727
                           (cons '%#begin
                                 (cons _%stx197536%_
                                       (cons (let ((__tmp201728
                                                    (cons '%#define-values
                                                          (cons (cons _%specializer-id200381%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons _%specializer-impl200382%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp201728
                                                _%stx197536%_))
                                             (cons (let ((__tmp201729
                                                          (cons '%#call
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons 'bind-specializer! '()))
                              (cons (cons '%#ref (cons _%id200380%_ '()))
                                    (cons (cons '%#ref
                                                (cons _%specializer-id200381%_
                                                      '()))
                                          '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp201729
                                                      _%stx197536%_))
                                                   '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp201727 _%stx197536%_)))))
          (let* ((_%__stx200595200596%_ _%stx197536%_)
                 (_%g197544197564%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx200595200596%_)))))
            (let ((_%__kont200597200598%_
                   (lambda (_%g197546197608%_ _%g197547197609%_)
                     (let ((_%method-calls197628%_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_%slot-refs197629%_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_%empty197630%_
                            (let ()
                              (declare (not safe))
                              (make-hash-table-eq))))
                       (letrec ((_%no-specializer?197632%_
                                 (lambda ()
                                   (if (let ((__tmp201730
                                              (let ()
                                                (declare (not safe))
                                                (__hash-length
                                                 _%method-calls197628%_))))
                                         (declare (not safe))
                                         (##fxzero? __tmp201730))
                                       (let ((__tmp201731
                                              (let ()
                                                (declare (not safe))
                                                (__hash-length
                                                 _%slot-refs197629%_))))
                                         (declare (not safe))
                                         (##fxzero? __tmp201731))
                                       '#f))))
                         (if (let ()
                               (declare (not safe))
                               (gxc#lambda-expr? _%g197546197608%_))
                             (let* ((_%__stx200509200510%_ _%g197546197608%_)
                                    (_%g198016198034%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx200509200510%_)))))
                               (let ((_%__kont200511200512%_
                                      (lambda (_%g198018198070%_
                                               _%g198019198071%_
                                               _%g198020198072%_)
                                        (let ((_%receiver198092%_
                                               (let ((_%$e198089%_
                                                      (gxc#apply-extract-receiver
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f '%#begin))
                     _%g198018198070%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e198089%_
                                                     _%$e198089%_
                                                     _%g198020198072%_))))
                                          (for-each
                                           (lambda (_%g198093198095%_)
                                             (gxc#apply-collect-object-refs__%
                                              '#f
                                              _%receiver198092%_
                                              _%method-calls197628%_
                                              _%slot-refs197629%_
                                              _%g198093198095%_))
                                           _%g198018198070%_)
                                          (if (_%no-specializer?197632%_)
                                              _%stx197536%_
                                              (let* ((_%specializer-id198104%_
                                                      (let* ((_%id198098%_
                                                              (let ((__tmp201732
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g197547197609%_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp201732 '"::specialize")))
                     (_%specializer-id198101%_
                      (let ((__tmp201733
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _%stx197536%_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _%id198098%_ __tmp201733))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _%specializer-id198101%_))
                _%specializer-id198101%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$klass198106%_
                                                      (let ((__tmp201734
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__klass))))
                (declare (not safe))
                (make-symbol__0 __tmp201734)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$method-table198108%_
                                                      (let ((__tmp201735
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__method-table))))
                (declare (not safe))
                (make-symbol__0 __tmp201735)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods198110%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%method-calls197628%_)))
                                                     (_%$methods198114%_
                                                      (let ((__tmp201736
                                                             (lambda (_%id198112%_)
                                                               (let ((__tmp201737
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gensym _%id198112%_)))
                         (declare (not safe))
                         (make-symbol__1 '"__" __tmp201737)))))
                (declare (not safe))
                (##map __tmp201736 _%methods198110%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_198123%_
                                                      (let ((__tmp201738
                                                             (lambda (_%g198115198118%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g198116198120%_)
                       (let ()
                         (declare (not safe))
                         (__hash-put!
                          _%method-calls197628%_
                          _%g198115198118%_
                          _%g198116198120%_)))))
                (declare (not safe))
                (##for-each __tmp201738 _%methods198110%_ _%$methods198114%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods-bind198133%_
                                                      (let ((__tmp201739
                                                             (lambda (_%g198125198128%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g198126198130%_)
                       (_%generate-method-bind197538%_
                        _%$klass198106%_
                        _%$method-table198108%_
                        _%g198125198128%_
                        _%g198126198130%_))))
                (declare (not safe))
                (##map __tmp201739 _%methods198110%_ _%$methods198114%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots198135%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%slot-refs197629%_)))
                                                     (_%$slots198139%_
                                                      (let ((__tmp201740
                                                             (lambda (_%id198137%_)
                                                               (let ((__tmp201741
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gensym _%id198137%_)))
                         (declare (not safe))
                         (make-symbol__1 '"__" __tmp201741)))))
                (declare (not safe))
                (##map __tmp201740 _%slots198135%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_198148%_
                                                      (let ((__tmp201742
                                                             (lambda (_%g198140198143%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g198141198145%_)
                       (let ()
                         (declare (not safe))
                         (__hash-put!
                          _%slot-refs197629%_
                          _%g198140198143%_
                          _%g198141198145%_)))))
                (declare (not safe))
                (##for-each __tmp201742 _%slots198135%_ _%$slots198139%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots-bind198157%_
                                                      (let ((__tmp201743
                                                             (lambda (_%g198149198152%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g198150198154%_)
                       (_%generate-slot-bind197539%_
                        _%$klass198106%_
                        _%g198149198152%_
                        _%g198150198154%_))))
                (declare (not safe))
                (##map __tmp201743 _%slots198135%_ _%$slots198139%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-body198163%_
                                                      (map (lambda (_%g198158198160%_)
                                                             (gxc#apply-subst-object-refs__%
                                                              '#f
                                                              _%receiver198092%_
                                                              _%$klass198106%_
                                                              _%method-calls197628%_
                                                              _%slot-refs197629%_
                                                              _%g198158198160%_))
                                                           _%g198018198070%_))
                                                     (_%specializer-impl198165%_
                                                      (let ((__tmp201744
                                                             (cons '%#lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons _%g198020198072%_ _%g198019198071%_)
                                 _%specializer-body198163%_))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp201744 _%stx197536%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl198167%_
                                                      (_%generate-specializer-impl197540%_
                                                       _%$klass198106%_
                                                       _%$method-table198108%_
                                                       _%methods-bind198133%_
                                                       _%slots-bind198157%_
                                                       _%specializer-impl198165%_)))
                                                (let ((__tmp201746
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%g197547197609%_)))
                                                      (__tmp201745
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%specializer-id198104%_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp201746
                                                   '" => "
                                                   __tmp201745))
                                                (_%generate-specializer-def197541%_
                                                 _%g197547197609%_
                                                 _%specializer-id198104%_
                                                 _%specializer-impl198167%_))))))
                                     (_%__kont200513200514%_
                                      (lambda () _%stx197536%_)))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%__stx200509200510%_))
                                     (let ((_%e198021198046%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e
                                               _%__stx200509200510%_))))
                                       (let ((_%tl198023198051%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e198021198046%_)))
                                             (_%hd198022198049%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e198021198046%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl198023198051%_))
                                             (let ((_%e198024198054%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%tl198023198051%_))))
                                               (let ((_%tl198026198059%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e198024198054%_)))
                                                     (_%hd198025198057%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e198024198054%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%hd198025198057%_))
                                                     (let ((_%e198027198062%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%hd198025198057%_))))
                                                       (let ((_%tl198029198067%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e198027198062%_)))
                     (_%hd198028198065%_
                      (let () (declare (not safe)) (##car _%e198027198062%_))))
                 (_%__kont200511200512%_
                  _%tl198026198059%_
                  _%tl198029198067%_
                  _%hd198028198065%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont200513200514%_))))
                                             (_%__kont200513200514%_))))
                                     (_%__kont200513200514%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gxc#case-lambda-expr? _%g197546197608%_))
                                 (let* ((_%g198174198193%_
                                         (lambda (_%g198175198190%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g198175198190%_))))
                                        (_%g198173198489%_
                                         (lambda (_%g198175198196%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g198175198196%_))
                                               (let ((_%e198177198198%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%g198175198196%_))))
                                                 (let ((_%hd198178198201%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e198177198198%_)))
                                                       (_%tl198179198203%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e198177198198%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair/null?
                                                          _%tl198179198203%_))
                                                       (let ((_g201747_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-split-splice _%tl198179198203%_ '0))))
                 (begin
                   (let ((_g201748_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g201747_)
                                (##values-length _g201747_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g201748_ 2)))
                         (error "Context expects 2 values" _g201748_)))
                   (let ((_%target198180198206%_
                          (let ()
                            (declare (not safe))
                            (##values-ref _g201747_ 0)))
                         (_%tl198182198208%_
                          (let ()
                            (declare (not safe))
                            (##values-ref _g201747_ 1))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl198182198208%_))
                         (letrec ((_%loop198183198211%_
                                   (lambda (_%hd198181198214%_
                                            _%clause198187198216%_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd198181198214%_))
                                         (let ((_%e198184198218%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd198181198214%_))))
                                           (let ((_%lp-hd198185198221%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e198184198218%_)))
                                                 (_%lp-tl198186198223%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e198184198218%_))))
                                             (_%loop198183198211%_
                                              _%lp-tl198186198223%_
                                              (cons _%lp-hd198185198221%_
                                                    _%clause198187198216%_))))
                                         (let ((_%clause198188198226%_
                                                (reverse _%clause198187198216%_)))
                                           ((lambda (_%g198176198228%_)
                                              (for-each
                                               (lambda (_%clause198242%_)
                                                 (let* ((_%__stx200535200536%_
                                                         _%clause198242%_)
                                                        (_%g198245198260%_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%__stx200535200536%_)))))
                                                   (let ((_%__kont200537200538%_
                                                          (lambda (_%g198247198288%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g198248198289%_
                           _%g198249198290%_)
                    (let ((_%receiver198309%_
                           (let ((_%$e198306%_
                                  (gxc#apply-extract-receiver
                                   (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f '%#begin))
                                         _%g198247198288%_))))
                             (if _%$e198306%_
                                 _%$e198306%_
                                 _%g198249198290%_))))
                      (for-each
                       (lambda (_%g198310198312%_)
                         (gxc#apply-collect-object-refs__%
                          '#f
                          _%receiver198309%_
                          _%method-calls197628%_
                          _%slot-refs197629%_
                          _%g198310198312%_))
                       _%g198247198288%_))))
                 (_%__kont200539200540%_ (lambda () '#!void)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%__stx200535200536%_))
                                                         (let ((_%e198250198272%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%__stx200535200536%_))))
                   (let ((_%tl198252198277%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e198250198272%_)))
                         (_%hd198251198275%_
                          (let ()
                            (declare (not safe))
                            (##car _%e198250198272%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%hd198251198275%_))
                         (let ((_%e198253198280%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd198251198275%_))))
                           (let ((_%tl198255198285%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e198253198280%_)))
                                 (_%hd198254198283%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e198253198280%_))))
                             (_%__kont200537200538%_
                              _%tl198252198277%_
                              _%tl198255198285%_
                              _%hd198254198283%_)))
                         (_%__kont200539200540%_))))
                 (_%__kont200539200540%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((__tmp201749
                                                      (lambda (_%g198317198320%_
                                                               _%g198318198322%_)
                                                        (cons _%g198317198320%_
                                                              _%g198318198322%_))))
                                                 (declare (not safe))
                                                 (__foldr1
                                                  __tmp201749
                                                  '()
                                                  _%g198176198228%_)))
                                              (if (_%no-specializer?197632%_)
                                                  _%stx197536%_
                                                  (let* ((_%specializer-id198331%_
                                                          (let* ((_%id198325%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp201750
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%g197547197609%_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp201750 '"::specialize")))
                         (_%specializer-id198328%_
                          (let ((__tmp201751
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _%stx197536%_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _%id198325%_
                             __tmp201751))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _%specializer-id198328%_))
                    _%specializer-id198328%_))
                 (_%$klass198333%_
                  (let ((__tmp201752
                         (let () (declare (not safe)) (##gensym '__klass))))
                    (declare (not safe))
                    (make-symbol__0 __tmp201752)))
                 (_%$method-table198335%_
                  (let ((__tmp201753
                         (let ()
                           (declare (not safe))
                           (##gensym '__method-table))))
                    (declare (not safe))
                    (make-symbol__0 __tmp201753)))
                 (_%methods198337%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%method-calls197628%_)))
                 (_%$methods198341%_
                  (let ((__tmp201754
                         (lambda (_%id198339%_)
                           (let ((__tmp201755 (gensym _%id198339%_)))
                             (declare (not safe))
                             (make-symbol__1 '"__" __tmp201755)))))
                    (declare (not safe))
                    (##map __tmp201754 _%methods198337%_)))
                 (_%_198350%_
                  (let ((__tmp201756
                         (lambda (_%g198342198345%_ _%g198343198347%_)
                           (let ()
                             (declare (not safe))
                             (__hash-put!
                              _%method-calls197628%_
                              _%g198342198345%_
                              _%g198343198347%_)))))
                    (declare (not safe))
                    (##for-each
                     __tmp201756
                     _%methods198337%_
                     _%$methods198341%_)))
                 (_%methods-bind198360%_
                  (let ((__tmp201757
                         (lambda (_%g198352198355%_ _%g198353198357%_)
                           (_%generate-method-bind197538%_
                            _%$klass198333%_
                            _%$method-table198335%_
                            _%g198352198355%_
                            _%g198353198357%_))))
                    (declare (not safe))
                    (##map __tmp201757 _%methods198337%_ _%$methods198341%_)))
                 (_%slots198362%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%slot-refs197629%_)))
                 (_%$slots198366%_
                  (let ((__tmp201758
                         (lambda (_%id198364%_)
                           (let ((__tmp201759 (gensym _%id198364%_)))
                             (declare (not safe))
                             (make-symbol__1 '"__" __tmp201759)))))
                    (declare (not safe))
                    (##map __tmp201758 _%slots198362%_)))
                 (_%_198375%_
                  (let ((__tmp201760
                         (lambda (_%g198367198370%_ _%g198368198372%_)
                           (let ()
                             (declare (not safe))
                             (__hash-put!
                              _%slot-refs197629%_
                              _%g198367198370%_
                              _%g198368198372%_)))))
                    (declare (not safe))
                    (##for-each __tmp201760 _%slots198362%_ _%$slots198366%_)))
                 (_%slots-bind198384%_
                  (let ((__tmp201761
                         (lambda (_%g198376198379%_ _%g198377198381%_)
                           (_%generate-slot-bind197539%_
                            _%$klass198333%_
                            _%g198376198379%_
                            _%g198377198381%_))))
                    (declare (not safe))
                    (##map __tmp201761 _%slots198362%_ _%$slots198366%_)))
                 (_%specializer-clauses198482%_
                  (map (lambda (_%clause198386%_)
                         (let* ((_%__stx200555200556%_ _%clause198386%_)
                                (_%g198389198404%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx200555200556%_)))))
                           (let ((_%__kont200557200558%_
                                  (lambda (_%g198391198432%_
                                           _%g198392198433%_
                                           _%g198393198434%_)
                                    (let* ((_%receiver198463%_
                                            (let ((_%$e198460%_
                                                   (gxc#apply-extract-receiver
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#begin))
                                                          _%g198391198432%_))))
                                              (if _%$e198460%_
                                                  _%$e198460%_
                                                  _%g198393198434%_)))
                                           (_%body198469%_
                                            (map (lambda (_%g198464198466%_)
                                                   (gxc#apply-subst-object-refs__%
                                                    '#f
                                                    _%receiver198463%_
                                                    _%$klass198333%_
                                                    _%method-calls197628%_
                                                    _%slot-refs197629%_
                                                    _%g198464198466%_))
                                                 _%g198391198432%_)))
                                      (cons (cons _%g198393198434%_
                                                  _%g198392198433%_)
                                            _%body198469%_))))
                                 (_%__kont200559200560%_
                                  (lambda () _%clause198386%_)))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx200555200556%_))
                                 (let ((_%e198394198416%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx200555200556%_))))
                                   (let ((_%tl198396198421%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e198394198416%_)))
                                         (_%hd198395198419%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e198394198416%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd198395198419%_))
                                         (let ((_%e198397198424%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd198395198419%_))))
                                           (let ((_%tl198399198429%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e198397198424%_)))
                                                 (_%hd198398198427%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e198397198424%_))))
                                             (_%__kont200557200558%_
                                              _%tl198396198421%_
                                              _%tl198399198429%_
                                              _%hd198398198427%_)))
                                         (_%__kont200559200560%_))))
                                 (_%__kont200559200560%_)))))
                       (let ((__tmp201762
                              (lambda (_%g198474198477%_ _%g198475198479%_)
                                (cons _%g198474198477%_ _%g198475198479%_))))
                         (declare (not safe))
                         (__foldr1 __tmp201762 '() _%g198176198228%_))))
                 (_%specializer-impl198484%_
                  (let ((__tmp201763
                         (cons '%#case-lambda _%specializer-clauses198482%_)))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp201763 _%stx197536%_)))
                 (_%specializer-impl198486%_
                  (_%generate-specializer-impl197540%_
                   _%$klass198333%_
                   _%$method-table198335%_
                   _%methods-bind198360%_
                   _%slots-bind198384%_
                   _%specializer-impl198484%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp201765
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%g197547197609%_)))
                                                          (__tmp201764
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%specializer-id198331%_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp201765
                                                       '" => "
                                                       __tmp201764))
                                                    (_%generate-specializer-def197541%_
                                                     _%g197547197609%_
                                                     _%specializer-id198331%_
                                                     _%specializer-impl198486%_))))
                                            _%clause198188198226%_))))))
                           (_%loop198183198211%_ _%target198180198206%_ '()))
                         (_%g198174198193%_ _%g198175198196%_)))))
               (_%g198174198193%_ _%g198175198196%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g198174198193%_
                                                _%g198175198196%_)))))
                                   (_%g198173198489%_ _%g197546197608%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#opt-lambda-expr?
                                        _%g197546197608%_))
                                     (let* ((_%g198493198523%_
                                             (lambda (_%g198494198520%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g198494198520%_))))
                                            (_%g198492199150%_
                                             (lambda (_%g198494198526%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%g198494198526%_))
                                                   (let ((_%e198498198528%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%g198494198526%_))))
                                                     (let ((_%hd198499198531%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e198498198528%_)))
                                                           (_%tl198500198533%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e198498198528%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl198500198533%_))
                                                           (let ((_%e198501198536%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl198500198533%_))))
                     (let ((_%hd198502198539%_
                            (let ()
                              (declare (not safe))
                              (##car _%e198501198536%_)))
                           (_%tl198503198541%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e198501198536%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%hd198502198539%_))
                           (let ((_%e198504198544%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd198502198539%_))))
                             (let ((_%hd198505198547%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e198504198544%_)))
                                   (_%tl198506198549%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e198504198544%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd198505198547%_))
                                   (let ((_%e198507198552%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd198505198547%_))))
                                     (let ((_%hd198508198555%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e198507198552%_)))
                                           (_%tl198509198557%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e198507198552%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%hd198508198555%_))
                                           (let ((_%e198510198560%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%hd198508198555%_))))
                                             (let ((_%hd198511198563%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e198510198560%_)))
                                                   (_%tl198512198565%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e198510198560%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl198512198565%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl198509198557%_))
                                                       (let ((_%e198513198568%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%tl198509198557%_))))
                 (let ((_%hd198514198571%_
                        (let ()
                          (declare (not safe))
                          (##car _%e198513198568%_)))
                       (_%tl198515198573%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e198513198568%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl198515198573%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl198506198549%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl198503198541%_))
                               (let ((_%e198516198576%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%tl198503198541%_))))
                                 (let ((_%hd198517198579%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e198516198576%_)))
                                       (_%tl198518198581%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e198516198576%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%tl198518198581%_))
                                       ((lambda (_%g198495198584%_
                                                 _%g198496198585%_
                                                 _%g198497198586%_)
                                          (let* ((_%g198610198628%_
                                                  (lambda (_%g198611198625%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g198611198625%_))))
                                                 (_%g198609198684%_
                                                  (lambda (_%g198611198631%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%g198611198631%_))
                                                        (let ((_%e198615198633%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%g198611198631%_))))
                  (let ((_%hd198616198636%_
                         (let ()
                           (declare (not safe))
                           (##car _%e198615198633%_)))
                        (_%tl198617198638%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e198615198633%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl198617198638%_))
                        (let ((_%e198618198641%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl198617198638%_))))
                          (let ((_%hd198619198644%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e198618198641%_)))
                                (_%tl198620198646%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e198618198641%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd198619198644%_))
                                (let ((_%e198621198649%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd198619198644%_))))
                                  (let ((_%hd198622198652%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e198621198649%_)))
                                        (_%tl198623198654%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e198621198649%_))))
                                    ((lambda (_%g198612198657%_
                                              _%g198613198658%_
                                              _%g198614198659%_)
                                       (let ((_%receiver198678%_
                                              (let ((_%$e198675%_
                                                     (gxc#apply-extract-receiver
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               '%#begin))
                                                            _%g198612198657%_))))
                                                (if _%$e198675%_
                                                    _%$e198675%_
                                                    _%g198614198659%_))))
                                         (for-each
                                          (lambda (_%g198679198681%_)
                                            (gxc#apply-collect-object-refs__%
                                             '#f
                                             _%receiver198678%_
                                             _%method-calls197628%_
                                             _%slot-refs197629%_
                                             _%g198679198681%_))
                                          _%g198612198657%_)))
                                     _%tl198620198646%_
                                     _%tl198623198654%_
                                     _%hd198622198652%_)))
                                (_%g198610198628%_ _%g198611198631%_))))
                        (_%g198610198628%_ _%g198611198631%_))))
                (_%g198610198628%_ _%g198611198631%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g198609198684%_
                                             _%g198496198585%_))
                                          (let* ((_%g198687198706%_
                                                  (lambda (_%g198688198703%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g198688198703%_))))
                                                 (_%g198686198828%_
                                                  (lambda (_%g198688198709%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%g198688198709%_))
                                                        (let ((_%e198690198711%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%g198688198709%_))))
                  (let ((_%hd198691198714%_
                         (let ()
                           (declare (not safe))
                           (##car _%e198690198711%_)))
                        (_%tl198692198716%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e198690198711%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%tl198692198716%_))
                        (let ((_g201766_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _%tl198692198716%_
                                  '0))))
                          (begin
                            (let ((_g201767_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g201766_)
                                         (##values-length _g201766_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g201767_ 2)))
                                  (error "Context expects 2 values"
                                         _g201767_)))
                            (let ((_%target198693198719%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g201766_ 0)))
                                  (_%tl198695198721%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g201766_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl198695198721%_))
                                  (letrec ((_%loop198696198724%_
                                            (lambda (_%hd198694198727%_
                                                     _%clause198700198729%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd198694198727%_))
                                                  (let ((_%e198697198731%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd198694198727%_))))
                                                    (let ((_%lp-hd198698198734%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e198697198731%_)))
                                                          (_%lp-tl198699198736%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e198697198731%_))))
                                                      (_%loop198696198724%_
                                                       _%lp-tl198699198736%_
                                                       (cons _%lp-hd198698198734%_
                                                             _%clause198700198729%_))))
                                                  (let ((_%clause198701198739%_
                                                         (reverse _%clause198700198729%_)))
                                                    ((lambda (_%g198689198741%_)
                                                       (for-each
                                                        (lambda (_%clause198754%_)
                                                          (let* ((_%g198756198771%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%g198757198768%_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g198757198768%_))))
                         (_%g198755198818%_
                          (lambda (_%g198757198774%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%g198757198774%_))
                                (let ((_%e198761198776%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%g198757198774%_))))
                                  (let ((_%hd198762198779%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e198761198776%_)))
                                        (_%tl198763198781%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e198761198776%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd198762198779%_))
                                        (let ((_%e198764198784%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd198762198779%_))))
                                          (let ((_%hd198765198787%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e198764198784%_)))
                                                (_%tl198766198789%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e198764198784%_))))
                                            ((lambda (_%g198758198792%_
                                                      _%g198759198793%_
                                                      _%g198760198794%_)
                                               (let ((_%receiver198812%_
                                                      (let ((_%$e198809%_
                                                             (gxc#apply-extract-receiver
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f '%#begin))
                            _%g198758198792%_))))
                (if _%$e198809%_ _%$e198809%_ _%g198760198794%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (for-each
                                                  (lambda (_%g198813198815%_)
                                                    (gxc#apply-collect-object-refs__%
                                                     '#f
                                                     _%receiver198812%_
                                                     _%method-calls197628%_
                                                     _%slot-refs197629%_
                                                     _%g198813198815%_))
                                                  _%g198758198792%_)))
                                             _%tl198763198781%_
                                             _%tl198766198789%_
                                             _%hd198765198787%_)))
                                        (_%g198756198771%_
                                         _%g198757198774%_))))
                                (_%g198756198771%_ _%g198757198774%_)))))
                    (_%g198755198818%_ _%clause198754%_)))
                (let ((__tmp201768
                       (lambda (_%g198820198823%_ _%g198821198825%_)
                         (cons _%g198820198823%_ _%g198821198825%_))))
                  (declare (not safe))
                  (__foldr1 __tmp201768 '() _%g198689198741%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%clause198701198739%_))))))
                                    (_%loop198696198724%_
                                     _%target198693198719%_
                                     '()))
                                  (_%g198687198706%_ _%g198688198709%_)))))
                        (_%g198687198706%_ _%g198688198709%_))))
                (_%g198687198706%_ _%g198688198709%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g198686198828%_
                                             _%g198495198584%_))
                                          (if (_%no-specializer?197632%_)
                                              _%stx197536%_
                                              (let* ((_%specializer-id198837%_
                                                      (let* ((_%id198831%_
                                                              (let ((__tmp201769
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g197547197609%_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp201769 '"::specialize")))
                     (_%specializer-id198834%_
                      (let ((__tmp201770
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _%stx197536%_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _%id198831%_ __tmp201770))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _%specializer-id198834%_))
                _%specializer-id198834%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$klass198839%_
                                                      (let ((__tmp201771
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__klass))))
                (declare (not safe))
                (make-symbol__0 __tmp201771)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$method-table198841%_
                                                      (let ((__tmp201772
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__method-table))))
                (declare (not safe))
                (make-symbol__0 __tmp201772)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods198843%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%method-calls197628%_)))
                                                     (_%$methods198847%_
                                                      (let ((__tmp201773
                                                             (lambda (_%id198845%_)
                                                               (let ((__tmp201774
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gensym _%id198845%_)))
                         (declare (not safe))
                         (make-symbol__1 '"__" __tmp201774)))))
                (declare (not safe))
                (##map __tmp201773 _%methods198843%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_198856%_
                                                      (let ((__tmp201775
                                                             (lambda (_%g198848198851%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g198849198853%_)
                       (let ()
                         (declare (not safe))
                         (__hash-put!
                          _%method-calls197628%_
                          _%g198848198851%_
                          _%g198849198853%_)))))
                (declare (not safe))
                (##for-each __tmp201775 _%methods198843%_ _%$methods198847%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods-bind198866%_
                                                      (let ((__tmp201776
                                                             (lambda (_%g198858198861%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g198859198863%_)
                       (_%generate-method-bind197538%_
                        _%$klass198839%_
                        _%$method-table198841%_
                        _%g198858198861%_
                        _%g198859198863%_))))
                (declare (not safe))
                (##map __tmp201776 _%methods198843%_ _%$methods198847%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots198868%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%slot-refs197629%_)))
                                                     (_%$slots198872%_
                                                      (let ((__tmp201777
                                                             (lambda (_%id198870%_)
                                                               (let ((__tmp201778
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gensym _%id198870%_)))
                         (declare (not safe))
                         (make-symbol__1 '"__" __tmp201778)))))
                (declare (not safe))
                (##map __tmp201777 _%slots198868%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_198881%_
                                                      (let ((__tmp201779
                                                             (lambda (_%g198873198876%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g198874198878%_)
                       (let ()
                         (declare (not safe))
                         (__hash-put!
                          _%slot-refs197629%_
                          _%g198873198876%_
                          _%g198874198878%_)))))
                (declare (not safe))
                (##for-each __tmp201779 _%slots198868%_ _%$slots198872%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots-bind198890%_
                                                      (let ((__tmp201780
                                                             (lambda (_%g198882198885%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g198883198887%_)
                       (_%generate-slot-bind197539%_
                        _%$klass198839%_
                        _%g198882198885%_
                        _%g198883198887%_))))
                (declare (not safe))
                (##map __tmp201780 _%slots198868%_ _%$slots198872%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-lambda-expr198982%_
                                                      (let* ((_%g198892198910%_
                                                              (lambda (_%g198893198907%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g198893198907%_))))
                     (_%g198891198979%_
                      (lambda (_%g198893198913%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g198893198913%_))
                            (let ((_%e198897198915%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g198893198913%_))))
                              (let ((_%hd198898198918%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e198897198915%_)))
                                    (_%tl198899198920%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e198897198915%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl198899198920%_))
                                    (let ((_%e198900198923%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl198899198920%_))))
                                      (let ((_%hd198901198926%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e198900198923%_)))
                                            (_%tl198902198928%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e198900198923%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd198901198926%_))
                                            (let ((_%e198903198931%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd198901198926%_))))
                                              (let ((_%hd198904198934%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e198903198931%_)))
                                                    (_%tl198905198936%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e198903198931%_))))
                                                ((lambda (_%g198894198939%_
                                                          _%g198895198940%_
                                                          _%g198896198941%_)
                                                   (let* ((_%receiver198970%_
                                                           (let ((_%$e198967%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gxc#apply-extract-receiver
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '%#begin))
                                 _%g198894198939%_))))
                     (if _%$e198967%_ _%$e198967%_ _%g198896198941%_)))
                  (_%body198976%_
                   (map (lambda (_%g198971198973%_)
                          (gxc#apply-subst-object-refs__%
                           '#f
                           _%receiver198970%_
                           _%$klass198839%_
                           _%method-calls197628%_
                           _%slot-refs197629%_
                           _%g198971198973%_))
                        _%g198894198939%_))
                  (__tmp201781
                   (cons '%#lambda
                         (cons (cons _%g198896198941%_ _%g198895198940%_)
                               _%body198976%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp201781
                                                      _%g198496198585%_)))
                                                 _%tl198902198928%_
                                                 _%tl198905198936%_
                                                 _%hd198904198934%_)))
                                            (_%g198892198910%_
                                             _%g198893198913%_))))
                                    (_%g198892198910%_ _%g198893198913%_))))
                            (_%g198892198910%_ _%g198893198913%_)))))
                (_%g198891198979%_ _%g198496198585%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-case-lambda-expr199143%_
                                                      (let* ((_%g198984199003%_
                                                              (lambda (_%g198985199000%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g198985199000%_))))
                     (_%g198983199140%_
                      (lambda (_%g198985199006%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g198985199006%_))
                            (let ((_%e198987199008%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g198985199006%_))))
                              (let ((_%hd198988199011%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e198987199008%_)))
                                    (_%tl198989199013%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e198987199008%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl198989199013%_))
                                    (let ((_g201782_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _%tl198989199013%_
                                              '0))))
                                      (begin
                                        (let ((_g201783_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g201782_)
                                                     (##values-length
                                                      _g201782_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g201783_ 2)))
                                              (error "Context expects 2 values"
                                                     _g201783_)))
                                        (let ((_%target198990199016%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g201782_ 0)))
                                              (_%tl198992199018%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g201782_ 1))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl198992199018%_))
                                              (letrec ((_%loop198993199021%_
                                                        (lambda (_%hd198991199024%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%clause198997199026%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd198991199024%_))
                      (let ((_%e198994199028%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd198991199024%_))))
                        (let ((_%lp-hd198995199031%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e198994199028%_)))
                              (_%lp-tl198996199033%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e198994199028%_))))
                          (_%loop198993199021%_
                           _%lp-tl198996199033%_
                           (cons _%lp-hd198995199031%_
                                 _%clause198997199026%_))))
                      (let ((_%clause198998199036%_
                             (reverse _%clause198997199026%_)))
                        ((lambda (_%g198986199038%_)
                           (let* ((_%clauses199138%_
                                   (map (lambda (_%clause199052%_)
                                          (let* ((_%__stx200575200576%_
                                                  _%clause199052%_)
                                                 (_%g199055199070%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx200575200576%_)))))
                                            (let ((_%__kont200577200578%_
                                                   (lambda (_%g199057199098%_
                                                            _%g199058199099%_
                                                            _%g199059199100%_)
                                                     (let* ((_%receiver199119%_
                                                             (let ((_%$e199116%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gxc#apply-extract-receiver
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f '%#begin))
                                   _%g199057199098%_))))
                       (if _%$e199116%_ _%$e199116%_ _%g199059199100%_)))
                    (_%body199125%_
                     (map (lambda (_%g199120199122%_)
                            (gxc#apply-subst-object-refs__%
                             '#f
                             _%receiver199119%_
                             _%$klass198839%_
                             _%method-calls197628%_
                             _%slot-refs197629%_
                             _%g199120199122%_))
                          _%g199057199098%_)))
               (cons (cons _%g199059199100%_ _%g199058199099%_)
                     _%body199125%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont200579200580%_
                                                   (lambda ()
                                                     _%clause199052%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%__stx200575200576%_))
                                                  (let ((_%e199060199082%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%__stx200575200576%_))))
                                                    (let ((_%tl199062199087%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e199060199082%_)))
                                                          (_%hd199061199085%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e199060199082%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd199061199085%_))
                                                          (let ((_%e199063199090%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd199061199085%_))))
                    (let ((_%tl199065199095%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e199063199090%_)))
                          (_%hd199064199093%_
                           (let ()
                             (declare (not safe))
                             (##car _%e199063199090%_))))
                      (_%__kont200577200578%_
                       _%tl199062199087%_
                       _%tl199065199095%_
                       _%hd199064199093%_)))
                  (_%__kont200579200580%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont200579200580%_)))))
                                        (let ((__tmp201784
                                               (lambda (_%g199130199133%_
                                                        _%g199131199135%_)
                                                 (cons _%g199130199133%_
                                                       _%g199131199135%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp201784
                                           '()
                                           _%g198986199038%_))))
                                  (__tmp201785
                                   (cons '%#case-lambda _%clauses199138%_)))
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp201785
                              _%g198495198584%_)))
                         _%clause198998199036%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop198993199021%_
                                                 _%target198990199016%_
                                                 '()))
                                              (_%g198984199003%_
                                               _%g198985199006%_)))))
                                    (_%g198984199003%_ _%g198985199006%_))))
                            (_%g198984199003%_ _%g198985199006%_)))))
                (_%g198983199140%_ _%g198495198584%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl199145%_
                                                      (let ((__tmp201786
                                                             (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (cons (cons _%g198497198586%_ '())
                                             (cons _%specializer-lambda-expr198982%_
                                                   '()))
                                       '())
                                 (cons _%specializer-case-lambda-expr199143%_
                                       '())))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp201786 _%stx197536%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl199147%_
                                                      (_%generate-specializer-impl197540%_
                                                       _%$klass198839%_
                                                       _%$method-table198841%_
                                                       _%methods-bind198866%_
                                                       _%slots-bind198890%_
                                                       _%specializer-impl199145%_)))
                                                (let ((__tmp201788
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%g197547197609%_)))
                                                      (__tmp201787
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%specializer-id198837%_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp201788
                                                   '" => "
                                                   __tmp201787))
                                                (_%generate-specializer-def197541%_
                                                 _%g197547197609%_
                                                 _%specializer-id198837%_
                                                 _%specializer-impl199147%_))))
                                        _%hd198517198579%_
                                        _%hd198514198571%_
                                        _%hd198511198563%_)
                                       (_%g198493198523%_ _%g198494198526%_))))
                               (_%g198493198523%_ _%g198494198526%_))
                           (_%g198493198523%_ _%g198494198526%_))
                       (_%g198493198523%_ _%g198494198526%_))))
               (_%g198493198523%_ _%g198494198526%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g198493198523%_
                                                    _%g198494198526%_))))
                                           (_%g198493198523%_
                                            _%g198494198526%_))))
                                   (_%g198493198523%_ _%g198494198526%_))))
                           (_%g198493198523%_ _%g198494198526%_))))
                   (_%g198493198523%_ _%g198494198526%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g198493198523%_
                                                    _%g198494198526%_)))))
                                       (_%g198492199150%_ _%g197546197608%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#kw-lambda-expr?
                                            _%g197546197608%_))
                                         (let* ((_%g199154199207%_
                                                 (lambda (_%g199155199204%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g199155199204%_))))
                                                (_%g199153200372%_
                                                 (lambda (_%g199155199210%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%g199155199210%_))
                                                       (let ((_%e199161199212%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%g199155199210%_))))
                 (let ((_%hd199162199215%_
                        (let ()
                          (declare (not safe))
                          (##car _%e199161199212%_)))
                       (_%tl199163199217%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e199161199212%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#identifier? _%hd199162199215%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-eq? '%#let-values _%hd199162199215%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl199163199217%_))
                               (let ((_%e199164199220%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%tl199163199217%_))))
                                 (let ((_%hd199165199223%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e199164199220%_)))
                                       (_%tl199166199225%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e199164199220%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd199165199223%_))
                                       (let ((_%e199167199228%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd199165199223%_))))
                                         (let ((_%hd199168199231%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e199167199228%_)))
                                               (_%tl199169199233%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e199167199228%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%hd199168199231%_))
                                               (let ((_%e199170199236%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%hd199168199231%_))))
                                                 (let ((_%hd199171199239%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e199170199236%_)))
                                                       (_%tl199172199241%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e199170199236%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%hd199171199239%_))
                                                       (let ((_%e199173199244%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%hd199171199239%_))))
                 (let ((_%hd199174199247%_
                        (let ()
                          (declare (not safe))
                          (##car _%e199173199244%_)))
                       (_%tl199175199249%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e199173199244%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl199175199249%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%tl199172199241%_))
                           (let ((_%e199176199252%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%tl199172199241%_))))
                             (let ((_%hd199177199255%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e199176199252%_)))
                                   (_%tl199178199257%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e199176199252%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd199177199255%_))
                                   (let ((_%e199179199260%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd199177199255%_))))
                                     (let ((_%hd199180199263%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e199179199260%_)))
                                           (_%tl199181199265%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e199179199260%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#identifier?
                                              _%hd199180199263%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-eq?
                                                  '%#let-values
                                                  _%hd199180199263%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%tl199181199265%_))
                                                   (let ((_%e199182199268%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%tl199181199265%_))))
                                                     (let ((_%hd199183199271%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e199182199268%_)))
                                                           (_%tl199184199273%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e199182199268%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%hd199183199271%_))
                                                           (let ((_%e199185199276%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%hd199183199271%_))))
                     (let ((_%hd199186199279%_
                            (let ()
                              (declare (not safe))
                              (##car _%e199185199276%_)))
                           (_%tl199187199281%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e199185199276%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%hd199186199279%_))
                           (let ((_%e199188199284%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd199186199279%_))))
                             (let ((_%hd199189199287%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e199188199284%_)))
                                   (_%tl199190199289%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e199188199284%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd199189199287%_))
                                   (let ((_%e199191199292%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd199189199287%_))))
                                     (let ((_%hd199192199295%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e199191199292%_)))
                                           (_%tl199193199297%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e199191199292%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl199193199297%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl199190199289%_))
                                               (let ((_%e199194199300%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%tl199190199289%_))))
                                                 (let ((_%hd199195199303%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e199194199300%_)))
                                                       (_%tl199196199305%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e199194199300%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl199196199305%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _%tl199187199281%_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _%tl199184199273%_))
                       (let ((_%e199197199308%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%tl199184199273%_))))
                         (let ((_%hd199198199311%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e199197199308%_)))
                               (_%tl199199199313%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e199197199308%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%tl199199199313%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl199178199257%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%tl199169199233%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%tl199166199225%_))
                                           (let ((_%e199200199316%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%tl199166199225%_))))
                                             (let ((_%hd199201199319%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e199200199316%_)))
                                                   (_%tl199202199321%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e199200199316%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl199202199321%_))
                                                   ((lambda (_%g199156199324%_
                                                             _%g199157199325%_
                                                             _%g199158199326%_
                                                             _%g199159199327%_
                                                             _%g199160199328%_)
                                                      (let* ((_%g199368199430%_
                                                              (lambda (_%g199369199427%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g199369199427%_))))
                     (_%g199367200369%_
                      (lambda (_%g199369199433%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g199369199433%_))
                            (let ((_%e199375199435%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g199369199433%_))))
                              (let ((_%hd199376199438%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e199375199435%_)))
                                    (_%tl199377199440%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e199375199435%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd199376199438%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _%hd199376199438%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl199377199440%_))
                                            (let ((_%e199378199443%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl199377199440%_))))
                                              (let ((_%hd199379199446%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e199378199443%_)))
                                                    (_%tl199380199448%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e199378199443%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl199380199448%_))
                                                    (let ((_%e199381199451%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl199380199448%_))))
                                                      (let ((_%hd199382199454%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e199381199451%_)))
                    (_%tl199383199456%_
                     (let () (declare (not safe)) (##cdr _%e199381199451%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%hd199382199454%_))
                    (let ((_%e199384199459%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd199382199454%_))))
                      (let ((_%hd199385199462%_
                             (let ()
                               (declare (not safe))
                               (##car _%e199384199459%_)))
                            (_%tl199386199464%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e199384199459%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%hd199385199462%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#call _%hd199385199462%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl199386199464%_))
                                    (let ((_%e199387199467%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl199386199464%_))))
                                      (let ((_%hd199388199470%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e199387199467%_)))
                                            (_%tl199389199472%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e199387199467%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd199388199470%_))
                                            (let ((_%e199390199475%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd199388199470%_))))
                                              (let ((_%hd199391199478%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e199390199475%_)))
                                                    (_%tl199392199480%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e199390199475%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd199391199478%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd199391199478%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl199392199480%_))
                                                            (let ((_%e199393199483%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl199392199480%_))))
                      (let ((_%hd199394199486%_
                             (let ()
                               (declare (not safe))
                               (##car _%e199393199483%_)))
                            (_%tl199395199488%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e199393199483%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl199395199488%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl199389199472%_))
                                (let ((_%e199396199491%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl199389199472%_))))
                                  (let ((_%hd199397199494%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e199396199491%_)))
                                        (_%tl199398199496%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e199396199491%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd199397199494%_))
                                        (let ((_%e199399199499%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd199397199494%_))))
                                          (let ((_%hd199400199502%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e199399199499%_)))
                                                (_%tl199401199504%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e199399199499%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _%hd199400199502%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _%hd199400199502%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl199401199504%_))
                                                        (let ((_%e199402199507%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl199401199504%_))))
                  (let ((_%hd199403199510%_
                         (let ()
                           (declare (not safe))
                           (##car _%e199402199507%_)))
                        (_%tl199404199512%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e199402199507%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl199404199512%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl199398199496%_))
                            (let ((_%e199405199515%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl199398199496%_))))
                              (let ((_%hd199406199518%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e199405199515%_)))
                                    (_%tl199407199520%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e199405199515%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd199406199518%_))
                                    (let ((_%e199408199523%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd199406199518%_))))
                                      (let ((_%hd199409199526%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e199408199523%_)))
                                            (_%tl199410199528%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e199408199523%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _%hd199409199526%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _%hd199409199526%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl199410199528%_))
                                                    (let ((_%e199411199531%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl199410199528%_))))
                                                      (let ((_%hd199412199534%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e199411199531%_)))
                    (_%tl199413199536%_
                     (let () (declare (not safe)) (##cdr _%e199411199531%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl199413199536%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%tl199407199520%_))
                        (if (let ((__tmp201789
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-length _%tl199407199520%_))))
                              (declare (not safe))
                              (##fx>= __tmp201789 '1))
                            (let ((_g201790_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _%tl199407199520%_
                                      '1))))
                              (begin
                                (let ((_g201791_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g201790_)
                                             (##values-length _g201790_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g201791_ 2)))
                                      (error "Context expects 2 values"
                                             _g201791_)))
                                (let ((_%target199414199539%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g201790_ 0)))
                                      (_%tl199416199541%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g201790_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl199416199541%_))
                                      (let ((_%e199423199544%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl199416199541%_))))
                                        (let ((_%hd199424199547%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e199423199544%_)))
                                              (_%tl199425199549%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e199423199544%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl199425199549%_))
                                              (letrec ((_%loop199417199552%_
                                                        (lambda (_%hd199415199555%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%kw-ref199421199557%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd199415199555%_))
                      (let ((_%e199418199559%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd199415199555%_))))
                        (let ((_%lp-hd199419199562%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e199418199559%_)))
                              (_%lp-tl199420199564%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e199418199559%_))))
                          (_%loop199417199552%_
                           _%lp-tl199420199564%_
                           (cons _%lp-hd199419199562%_
                                 _%kw-ref199421199557%_))))
                      (let ((_%kw-ref199422199567%_
                             (reverse _%kw-ref199421199557%_)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl199383199456%_))
                            ((lambda (_%g199370199569%_
                                      _%g199371199570%_
                                      _%g199372199571%_
                                      _%g199373199572%_
                                      _%g199374199573%_)
                               (let* ((_%kw-count199624%_
                                       (length (let ((__tmp201792
                                                      (lambda (_%g199616199619%_
                                                               _%g199617199621%_)
                                                        (cons _%g199616199619%_
                                                              _%g199617199621%_))))
                                                 (declare (not safe))
                                                 (__foldr1
                                                  __tmp201792
                                                  '()
                                                  _%g199371199570%_))))
                                      (_%self-index199626%_
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _%kw-count199624%_ '1))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#lambda-expr? _%g199158199326%_))
                                     (let* ((_%g199630199644%_
                                             (lambda (_%g199631199641%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g199631199641%_))))
                                            (_%g199629199767%_
                                             (lambda (_%g199631199647%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%g199631199647%_))
                                                   (let ((_%e199634199649%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%g199631199647%_))))
                                                     (let ((_%hd199635199652%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e199634199649%_)))
                                                           (_%tl199636199654%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e199634199649%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl199636199654%_))
                                                           (let ((_%e199637199657%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl199636199654%_))))
                     (let ((_%hd199638199660%_
                            (let ()
                              (declare (not safe))
                              (##car _%e199637199657%_)))
                           (_%tl199639199662%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e199637199657%_))))
                       ((lambda (_%g199632199665%_ _%g199633199666%_)
                          (let* ((_%self199683%_
                                  (list-ref
                                   _%g199633199666%_
                                   _%self-index199626%_))
                                 (_%receiver199688%_
                                  (let ((_%$e199685%_
                                         (gxc#apply-extract-receiver
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   '%#begin))
                                                _%g199632199665%_))))
                                    (if _%$e199685%_
                                        _%$e199685%_
                                        _%self199683%_))))
                            (for-each
                             (lambda (_%g199690199692%_)
                               (gxc#apply-collect-object-refs__%
                                '#f
                                _%receiver199688%_
                                _%method-calls197628%_
                                _%slot-refs197629%_
                                _%g199690199692%_))
                             _%g199632199665%_)
                            (if (_%no-specializer?197632%_)
                                _%stx197536%_
                                (let* ((_%specializer-id199701%_
                                        (let* ((_%id199695%_
                                                (let ((__tmp201793
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%g197547197609%_))))
                                                  (declare (not safe))
                                                  (make-symbol__1
                                                   __tmp201793
                                                   '"::specialize")))
                                               (_%specializer-id199698%_
                                                (let ((__tmp201794
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-source
                                                          _%stx197536%_))))
                                                  (declare (not safe))
                                                  (gx#core-quote-syntax__1
                                                   _%id199695%_
                                                   __tmp201794))))
                                          (let ()
                                            (declare (not safe))
                                            (gx#core-bind-runtime!__0
                                             _%specializer-id199698%_))
                                          _%specializer-id199698%_))
                                       (_%$klass199703%_
                                        (let ((__tmp201795
                                               (let ()
                                                 (declare (not safe))
                                                 (##gensym '__klass))))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp201795)))
                                       (_%$method-table199705%_
                                        (let ((__tmp201796
                                               (let ()
                                                 (declare (not safe))
                                                 (##gensym '__method-table))))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp201796)))
                                       (_%methods199707%_
                                        (let ()
                                          (declare (not safe))
                                          (__hash-keys
                                           _%method-calls197628%_)))
                                       (_%$methods199711%_
                                        (let ((__tmp201797
                                               (lambda (_%id199709%_)
                                                 (let ((__tmp201798
                                                        (gensym _%id199709%_)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    '"__"
                                                    __tmp201798)))))
                                          (declare (not safe))
                                          (##map __tmp201797
                                                 _%methods199707%_)))
                                       (_%_199720%_
                                        (let ((__tmp201799
                                               (lambda (_%g199712199715%_
                                                        _%g199713199717%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (__hash-put!
                                                    _%method-calls197628%_
                                                    _%g199712199715%_
                                                    _%g199713199717%_)))))
                                          (declare (not safe))
                                          (##for-each
                                           __tmp201799
                                           _%methods199707%_
                                           _%$methods199711%_)))
                                       (_%methods-bind199730%_
                                        (let ((__tmp201800
                                               (lambda (_%g199722199725%_
                                                        _%g199723199727%_)
                                                 (_%generate-method-bind197538%_
                                                  _%$klass199703%_
                                                  _%$method-table199705%_
                                                  _%g199722199725%_
                                                  _%g199723199727%_))))
                                          (declare (not safe))
                                          (##map __tmp201800
                                                 _%methods199707%_
                                                 _%$methods199711%_)))
                                       (_%slots199732%_
                                        (let ()
                                          (declare (not safe))
                                          (__hash-keys _%slot-refs197629%_)))
                                       (_%$slots199736%_
                                        (let ((__tmp201801
                                               (lambda (_%id199734%_)
                                                 (let ((__tmp201802
                                                        (gensym _%id199734%_)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    '"__"
                                                    __tmp201802)))))
                                          (declare (not safe))
                                          (##map __tmp201801 _%slots199732%_)))
                                       (_%_199745%_
                                        (let ((__tmp201803
                                               (lambda (_%g199737199740%_
                                                        _%g199738199742%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (__hash-put!
                                                    _%slot-refs197629%_
                                                    _%g199737199740%_
                                                    _%g199738199742%_)))))
                                          (declare (not safe))
                                          (##for-each
                                           __tmp201803
                                           _%slots199732%_
                                           _%$slots199736%_)))
                                       (_%slots-bind199754%_
                                        (let ((__tmp201804
                                               (lambda (_%g199746199749%_
                                                        _%g199747199751%_)
                                                 (_%generate-slot-bind197539%_
                                                  _%$klass199703%_
                                                  _%g199746199749%_
                                                  _%g199747199751%_))))
                                          (declare (not safe))
                                          (##map __tmp201804
                                                 _%slots199732%_
                                                 _%$slots199736%_)))
                                       (_%specializer-impl199762%_
                                        (let* ((_%specializer-body199760%_
                                                (map (lambda (_%g199755199757%_)
                                                       (gxc#apply-subst-object-refs__%
                                                        '#f
                                                        _%receiver199688%_
                                                        _%$klass199703%_
                                                        _%method-calls197628%_
                                                        _%slot-refs197629%_
                                                        _%g199755199757%_))
                                                     _%g199632199665%_))
                                               (__tmp201805
                                                (cons '%#let-values
                                                      (cons (cons (cons (cons _%g199160199328%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      '())
                                (cons (cons '%#let-values
                                            (cons (cons (cons (cons _%g199159199327%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())
                      (cons (let ((__tmp201806
                                   (cons '%#lambda
                                         (cons _%g199633199666%_
                                               _%specializer-body199760%_))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp201806
                               _%g199158199326%_))
                            '()))
                '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons _%g199157199325%_
                                                        '())))
                                      '()))
                          '())
                    (cons _%g199156199324%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp201805
                                           _%stx197536%_)))
                                       (_%specializer-impl199764%_
                                        (_%generate-specializer-impl197540%_
                                         _%$klass199703%_
                                         _%$method-table199705%_
                                         _%methods-bind199730%_
                                         _%slots-bind199754%_
                                         _%specializer-impl199762%_)))
                                  (let ((__tmp201808
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%g197547197609%_)))
                                        (__tmp201807
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e
                                            _%specializer-id199701%_))))
                                    (declare (not safe))
                                    (gxc#verbose
                                     '"generate method specializer "
                                     __tmp201808
                                     '" => "
                                     __tmp201807))
                                  (_%generate-specializer-def197541%_
                                   _%g197547197609%_
                                   _%specializer-id199701%_
                                   _%specializer-impl199764%_)))))
                        _%tl199639199662%_
                        _%hd199638199660%_)))
                   (_%g199630199644%_ _%g199631199647%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g199630199644%_
                                                    _%g199631199647%_)))))
                                       (_%g199629199767%_ _%g199158199326%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#opt-lambda-expr?
                                            _%g199158199326%_))
                                         (let* ((_%g199771199801%_
                                                 (lambda (_%g199772199798%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g199772199798%_))))
                                                (_%g199770200365%_
                                                 (lambda (_%g199772199804%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%g199772199804%_))
                                                       (let ((_%e199776199806%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%g199772199804%_))))
                 (let ((_%hd199777199809%_
                        (let ()
                          (declare (not safe))
                          (##car _%e199776199806%_)))
                       (_%tl199778199811%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e199776199806%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%tl199778199811%_))
                       (let ((_%e199779199814%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%tl199778199811%_))))
                         (let ((_%hd199780199817%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e199779199814%_)))
                               (_%tl199781199819%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e199779199814%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%hd199780199817%_))
                               (let ((_%e199782199822%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%hd199780199817%_))))
                                 (let ((_%hd199783199825%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e199782199822%_)))
                                       (_%tl199784199827%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e199782199822%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd199783199825%_))
                                       (let ((_%e199785199830%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd199783199825%_))))
                                         (let ((_%hd199786199833%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e199785199830%_)))
                                               (_%tl199787199835%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e199785199830%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%hd199786199833%_))
                                               (let ((_%e199788199838%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%hd199786199833%_))))
                                                 (let ((_%hd199789199841%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e199788199838%_)))
                                                       (_%tl199790199843%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e199788199838%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl199790199843%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl199787199835%_))
                                                           (let ((_%e199791199846%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl199787199835%_))))
                     (let ((_%hd199792199849%_
                            (let ()
                              (declare (not safe))
                              (##car _%e199791199846%_)))
                           (_%tl199793199851%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e199791199846%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl199793199851%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%tl199784199827%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%tl199781199819%_))
                                   (let ((_%e199794199854%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%tl199781199819%_))))
                                     (let ((_%hd199795199857%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e199794199854%_)))
                                           (_%tl199796199859%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e199794199854%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl199796199859%_))
                                           ((lambda (_%g199773199862%_
                                                     _%g199774199863%_
                                                     _%g199775199864%_)
                                              (let* ((_%g199888199902%_
                                                      (lambda (_%g199889199899%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g199889199899%_))))
                                                     (_%g199887199949%_
                                                      (lambda (_%g199889199905%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g199889199905%_))
                                                            (let ((_%e199892199907%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%g199889199905%_))))
                      (let ((_%hd199893199910%_
                             (let ()
                               (declare (not safe))
                               (##car _%e199892199907%_)))
                            (_%tl199894199912%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e199892199907%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl199894199912%_))
                            (let ((_%e199895199915%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl199894199912%_))))
                              (let ((_%hd199896199918%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e199895199915%_)))
                                    (_%tl199897199920%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e199895199915%_))))
                                ((lambda (_%g199890199923%_ _%g199891199924%_)
                                   (let* ((_%self199937%_
                                           (list-ref
                                            _%g199891199924%_
                                            _%self-index199626%_))
                                          (_%receiver199942%_
                                           (let ((_%$e199939%_
                                                  (gxc#apply-extract-receiver
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gx#datum->syntax__0
                                                            '#f
                                                            '%#begin))
                                                         _%g199890199923%_))))
                                             (if _%$e199939%_
                                                 _%$e199939%_
                                                 _%self199937%_))))
                                     (for-each
                                      (lambda (_%g199944199946%_)
                                        (gxc#apply-collect-object-refs__%
                                         '#f
                                         _%receiver199942%_
                                         _%method-calls197628%_
                                         _%slot-refs197629%_
                                         _%g199944199946%_))
                                      _%g199890199923%_)))
                                 _%tl199897199920%_
                                 _%hd199896199918%_)))
                            (_%g199888199902%_ _%g199889199905%_))))
                    (_%g199888199902%_ _%g199889199905%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g199887199949%_
                                                 _%g199774199863%_))
                                              (let* ((_%g199952199971%_
                                                      (lambda (_%g199953199968%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g199953199968%_))))
                                                     (_%g199951200080%_
                                                      (lambda (_%g199953199974%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g199953199974%_))
                                                            (let ((_%e199955199976%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%g199953199974%_))))
                      (let ((_%hd199956199979%_
                             (let ()
                               (declare (not safe))
                               (##car _%e199955199976%_)))
                            (_%tl199957199981%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e199955199976%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _%tl199957199981%_))
                            (let ((_g201809_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _%tl199957199981%_
                                      '0))))
                              (begin
                                (let ((_g201810_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g201809_)
                                             (##values-length _g201809_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g201810_ 2)))
                                      (error "Context expects 2 values"
                                             _g201810_)))
                                (let ((_%target199958199984%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g201809_ 0)))
                                      (_%tl199960199986%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g201809_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl199960199986%_))
                                      (letrec ((_%loop199961199989%_
                                                (lambda (_%hd199959199992%_
                                                         _%clause199965199994%_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%hd199959199992%_))
                                                      (let ((_%e199962199996%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd199959199992%_))))
                (let ((_%lp-hd199963199999%_
                       (let () (declare (not safe)) (##car _%e199962199996%_)))
                      (_%lp-tl199964200001%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e199962199996%_))))
                  (_%loop199961199989%_
                   _%lp-tl199964200001%_
                   (cons _%lp-hd199963199999%_ _%clause199965199994%_))))
              (let ((_%clause199966200004%_ (reverse _%clause199965199994%_)))
                ((lambda (_%g199954200006%_)
                   (for-each
                    (lambda (_%clause200019%_)
                      (let* ((_%g200021200032%_
                              (lambda (_%g200022200029%_)
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g200022200029%_))))
                             (_%g200020200070%_
                              (lambda (_%g200022200035%_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%g200022200035%_))
                                    (let ((_%e200025200037%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%g200022200035%_))))
                                      (let ((_%hd200026200040%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e200025200037%_)))
                                            (_%tl200027200042%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e200025200037%_))))
                                        ((lambda (_%g200023200045%_
                                                  _%g200024200046%_)
                                           (let* ((_%self200058%_
                                                   (list-ref
                                                    _%g200024200046%_
                                                    _%self-index199626%_))
                                                  (_%receiver200063%_
                                                   (let ((_%$e200060%_
                                                          (gxc#apply-extract-receiver
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '%#begin))
                         _%g200023200045%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _%$e200060%_
                                                         _%$e200060%_
                                                         _%self200058%_))))
                                             (for-each
                                              (lambda (_%g200065200067%_)
                                                (gxc#apply-collect-object-refs__%
                                                 '#f
                                                 _%receiver200063%_
                                                 _%method-calls197628%_
                                                 _%slot-refs197629%_
                                                 _%g200065200067%_))
                                              _%g200023200045%_)))
                                         _%tl200027200042%_
                                         _%hd200026200040%_)))
                                    (_%g200021200032%_ _%g200022200035%_)))))
                        (_%g200020200070%_ _%clause200019%_)))
                    (let ((__tmp201811
                           (lambda (_%g200072200075%_ _%g200073200077%_)
                             (cons _%g200072200075%_ _%g200073200077%_))))
                      (declare (not safe))
                      (__foldr1 __tmp201811 '() _%g199954200006%_))))
                 _%clause199966200004%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_%loop199961199989%_
                                         _%target199958199984%_
                                         '()))
                                      (_%g199952199971%_ _%g199953199974%_)))))
                            (_%g199952199971%_ _%g199953199974%_))))
                    (_%g199952199971%_ _%g199953199974%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g199951200080%_
                                                 _%g199773199862%_))
                                              (if (_%no-specializer?197632%_)
                                                  _%stx197536%_
                                                  (let* ((_%specializer-id200089%_
                                                          (let* ((_%id200083%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp201812
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%g197547197609%_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp201812 '"::specialize")))
                         (_%specializer-id200086%_
                          (let ((__tmp201813
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _%stx197536%_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _%id200083%_
                             __tmp201813))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _%specializer-id200086%_))
                    _%specializer-id200086%_))
                 (_%$klass200091%_
                  (let ((__tmp201814
                         (let () (declare (not safe)) (##gensym '__klass))))
                    (declare (not safe))
                    (make-symbol__0 __tmp201814)))
                 (_%$method-table200093%_
                  (let ((__tmp201815
                         (let ()
                           (declare (not safe))
                           (##gensym '__method-table))))
                    (declare (not safe))
                    (make-symbol__0 __tmp201815)))
                 (_%methods200095%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%method-calls197628%_)))
                 (_%$methods200099%_
                  (let ((__tmp201816
                         (lambda (_%id200097%_)
                           (let ((__tmp201817 (gensym _%id200097%_)))
                             (declare (not safe))
                             (make-symbol__1 '"__" __tmp201817)))))
                    (declare (not safe))
                    (##map __tmp201816 _%methods200095%_)))
                 (_%_200108%_
                  (let ((__tmp201818
                         (lambda (_%g200100200103%_ _%g200101200105%_)
                           (let ()
                             (declare (not safe))
                             (__hash-put!
                              _%method-calls197628%_
                              _%g200100200103%_
                              _%g200101200105%_)))))
                    (declare (not safe))
                    (##for-each
                     __tmp201818
                     _%methods200095%_
                     _%$methods200099%_)))
                 (_%methods-bind200118%_
                  (let ((__tmp201819
                         (lambda (_%g200110200113%_ _%g200111200115%_)
                           (_%generate-method-bind197538%_
                            _%$klass200091%_
                            _%$method-table200093%_
                            _%g200110200113%_
                            _%g200111200115%_))))
                    (declare (not safe))
                    (##map __tmp201819 _%methods200095%_ _%$methods200099%_)))
                 (_%slots200120%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%slot-refs197629%_)))
                 (_%$slots200124%_
                  (let ((__tmp201820
                         (lambda (_%id200122%_)
                           (let ((__tmp201821 (gensym _%id200122%_)))
                             (declare (not safe))
                             (make-symbol__1 '"__" __tmp201821)))))
                    (declare (not safe))
                    (##map __tmp201820 _%slots200120%_)))
                 (_%_200133%_
                  (let ((__tmp201822
                         (lambda (_%g200125200128%_ _%g200126200130%_)
                           (let ()
                             (declare (not safe))
                             (__hash-put!
                              _%slot-refs197629%_
                              _%g200125200128%_
                              _%g200126200130%_)))))
                    (declare (not safe))
                    (##for-each __tmp201822 _%slots200120%_ _%$slots200124%_)))
                 (_%slots-bind200142%_
                  (let ((__tmp201823
                         (lambda (_%g200134200137%_ _%g200135200139%_)
                           (_%generate-slot-bind197539%_
                            _%$klass200091%_
                            _%g200134200137%_
                            _%g200135200139%_))))
                    (declare (not safe))
                    (##map __tmp201823 _%slots200120%_ _%$slots200124%_)))
                 (_%specializer-lambda-expr200220%_
                  (let* ((_%g200144200158%_
                          (lambda (_%g200145200155%_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g200145200155%_))))
                         (_%g200143200217%_
                          (lambda (_%g200145200161%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%g200145200161%_))
                                (let ((_%e200148200163%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%g200145200161%_))))
                                  (let ((_%hd200149200166%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e200148200163%_)))
                                        (_%tl200150200168%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e200148200163%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl200150200168%_))
                                        (let ((_%e200151200171%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl200150200168%_))))
                                          (let ((_%hd200152200174%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e200151200171%_)))
                                                (_%tl200153200176%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e200151200171%_))))
                                            ((lambda (_%g200146200179%_
                                                      _%g200147200180%_)
                                               (let* ((_%self200203%_
                                                       (list-ref
                                                        _%g200147200180%_
                                                        _%self-index199626%_))
                                                      (_%receiver200208%_
                                                       (let ((_%$e200205%_
                                                              (gxc#apply-extract-receiver
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f '%#begin))
                             _%g200146200179%_))))
                 (if _%$e200205%_ _%$e200205%_ _%self200203%_)))
              (_%body200214%_
               (map (lambda (_%g200209200211%_)
                      (gxc#apply-subst-object-refs__%
                       '#f
                       _%receiver200208%_
                       _%$klass200091%_
                       _%method-calls197628%_
                       _%slot-refs197629%_
                       _%g200209200211%_))
                    _%g200146200179%_))
              (__tmp201824
               (cons '%#lambda (cons _%g200147200180%_ _%body200214%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp201824
                                                  _%g199774199863%_)))
                                             _%tl200153200176%_
                                             _%hd200152200174%_)))
                                        (_%g200144200158%_
                                         _%g200145200161%_))))
                                (_%g200144200158%_ _%g200145200161%_)))))
                    (_%g200143200217%_ _%g199774199863%_)))
                 (_%specializer-case-lambda-expr200358%_
                  (let* ((_%g200222200241%_
                          (lambda (_%g200223200238%_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g200223200238%_))))
                         (_%g200221200355%_
                          (lambda (_%g200223200244%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%g200223200244%_))
                                (let ((_%e200225200246%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%g200223200244%_))))
                                  (let ((_%hd200226200249%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e200225200246%_)))
                                        (_%tl200227200251%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e200225200246%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl200227200251%_))
                                        (let ((_g201825_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl200227200251%_
                                                  '0))))
                                          (begin
                                            (let ((_g201826_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g201825_)
                                                         (##values-length
                                                          _g201825_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g201826_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g201826_)))
                                            (let ((_%target200228200254%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g201825_
                                                      0)))
                                                  (_%tl200230200256%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g201825_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl200230200256%_))
                                                  (letrec ((_%loop200231200259%_
                                                            (lambda (_%hd200229200262%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%clause200235200264%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd200229200262%_))
                          (let ((_%e200232200266%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd200229200262%_))))
                            (let ((_%lp-hd200233200269%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e200232200266%_)))
                                  (_%lp-tl200234200271%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e200232200266%_))))
                              (_%loop200231200259%_
                               _%lp-tl200234200271%_
                               (cons _%lp-hd200233200269%_
                                     _%clause200235200264%_))))
                          (let ((_%clause200236200274%_
                                 (reverse _%clause200235200264%_)))
                            ((lambda (_%g200224200276%_)
                               (let* ((_%clauses200353%_
                                       (map (lambda (_%clause200290%_)
                                              (let* ((_%g200292200303%_
                                                      (lambda (_%g200293200300%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g200293200300%_))))
                                                     (_%g200291200343%_
                                                      (lambda (_%g200293200306%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g200293200306%_))
                                                            (let ((_%e200296200308%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%g200293200306%_))))
                      (let ((_%hd200297200311%_
                             (let ()
                               (declare (not safe))
                               (##car _%e200296200308%_)))
                            (_%tl200298200313%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e200296200308%_))))
                        ((lambda (_%g200294200316%_ _%g200295200317%_)
                           (let* ((_%self200329%_
                                   (list-ref
                                    _%g200295200317%_
                                    _%self-index199626%_))
                                  (_%receiver200334%_
                                   (let ((_%$e200331%_
                                          (gxc#apply-extract-receiver
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    '%#begin))
                                                 _%g200294200316%_))))
                                     (if _%$e200331%_
                                         _%$e200331%_
                                         _%self200329%_)))
                                  (_%body200340%_
                                   (map (lambda (_%g200335200337%_)
                                          (gxc#apply-subst-object-refs__%
                                           '#f
                                           _%receiver200334%_
                                           _%$klass200091%_
                                           _%method-calls197628%_
                                           _%slot-refs197629%_
                                           _%g200335200337%_))
                                        _%g200294200316%_)))
                             (cons _%g200295200317%_ _%body200340%_)))
                         _%tl200298200313%_
                         _%hd200297200311%_)))
                    (_%g200292200303%_ _%g200293200306%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g200291200343%_
                                                 _%clause200290%_)))
                                            (let ((__tmp201827
                                                   (lambda (_%g200345200348%_
                                                            _%g200346200350%_)
                                                     (cons _%g200345200348%_
                                                           _%g200346200350%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp201827
                                               '()
                                               _%g200224200276%_))))
                                      (__tmp201828
                                       (cons '%#case-lambda
                                             _%clauses200353%_)))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp201828
                                  _%g199773199862%_)))
                             _%clause200236200274%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop200231200259%_
                                                     _%target200228200254%_
                                                     '()))
                                                  (_%g200222200241%_
                                                   _%g200223200244%_)))))
                                        (_%g200222200241%_
                                         _%g200223200244%_))))
                                (_%g200222200241%_ _%g200223200244%_)))))
                    (_%g200221200355%_ _%g199773199862%_)))
                 (_%specializer-impl200360%_
                  (let ((__tmp201829
                         (cons '%#let-values
                               (cons (cons (cons (cons _%g199160199328%_ '())
                                                 (cons (cons '%#let-values
                                                             (cons (cons (cons (cons _%g199159199327%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                             '())
                                       (cons (let ((__tmp201830
                                                    (cons '%#let-values
                                                          (cons (cons (cons (cons _%g199775199864%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                          '())
                                    (cons _%specializer-lambda-expr200220%_
                                          '()))
                              '())
                        (cons _%specializer-case-lambda-expr200358%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp201830
                                                _%stx197536%_))
                                             '()))
                                 '())
                           (cons _%g199157199325%_ '())))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())
                                     (cons _%g199156199324%_ '())))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp201829 _%stx197536%_)))
                 (_%specializer-impl200362%_
                  (_%generate-specializer-impl197540%_
                   _%$klass200091%_
                   _%$method-table200093%_
                   _%methods-bind200118%_
                   _%slots-bind200142%_
                   _%specializer-impl200360%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp201832
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%g197547197609%_)))
                                                          (__tmp201831
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%specializer-id200089%_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp201832
                                                       '" => "
                                                       __tmp201831))
                                                    (_%generate-specializer-def197541%_
                                                     _%g197547197609%_
                                                     _%specializer-id200089%_
                                                     _%specializer-impl200362%_))))
                                            _%hd199795199857%_
                                            _%hd199792199849%_
                                            _%hd199789199841%_)
                                           (_%g199771199801%_
                                            _%g199772199804%_))))
                                   (_%g199771199801%_ _%g199772199804%_))
                               (_%g199771199801%_ _%g199772199804%_))
                           (_%g199771199801%_ _%g199772199804%_))))
                   (_%g199771199801%_ _%g199772199804%_))
               (_%g199771199801%_ _%g199772199804%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g199771199801%_
                                                _%g199772199804%_))))
                                       (_%g199771199801%_ _%g199772199804%_))))
                               (_%g199771199801%_ _%g199772199804%_))))
                       (_%g199771199801%_ _%g199772199804%_))))
               (_%g199771199801%_ _%g199772199804%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g199770200365%_
                                            _%g199158199326%_))
                                         _%stx197536%_))))
                             _%hd199424199547%_
                             _%kw-ref199422199567%_
                             _%hd199412199534%_
                             _%hd199403199510%_
                             _%hd199394199486%_)
                            (_%g199368199430%_ _%g199369199433%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop199417199552%_
                                                 _%target199414199539%_
                                                 '()))
                                              (_%g199368199430%_
                                               _%g199369199433%_))))
                                      (_%g199368199430%_ _%g199369199433%_)))))
                            (_%g199368199430%_ _%g199369199433%_))
                        (_%g199368199430%_ _%g199369199433%_))
                    (_%g199368199430%_ _%g199369199433%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g199368199430%_
                                                     _%g199369199433%_))
                                                (_%g199368199430%_
                                                 _%g199369199433%_))
                                            (_%g199368199430%_
                                             _%g199369199433%_))))
                                    (_%g199368199430%_ _%g199369199433%_))))
                            (_%g199368199430%_ _%g199369199433%_))
                        (_%g199368199430%_ _%g199369199433%_))))
                (_%g199368199430%_ _%g199369199433%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g199368199430%_
                                                     _%g199369199433%_))
                                                (_%g199368199430%_
                                                 _%g199369199433%_))))
                                        (_%g199368199430%_
                                         _%g199369199433%_))))
                                (_%g199368199430%_ _%g199369199433%_))
                            (_%g199368199430%_ _%g199369199433%_))))
                    (_%g199368199430%_ _%g199369199433%_))
                (_%g199368199430%_ _%g199369199433%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g199368199430%_
                                                     _%g199369199433%_))))
                                            (_%g199368199430%_
                                             _%g199369199433%_))))
                                    (_%g199368199430%_ _%g199369199433%_))
                                (_%g199368199430%_ _%g199369199433%_))
                            (_%g199368199430%_ _%g199369199433%_))))
                    (_%g199368199430%_ _%g199369199433%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g199368199430%_
                                                     _%g199369199433%_))))
                                            (_%g199368199430%_
                                             _%g199369199433%_))
                                        (_%g199368199430%_ _%g199369199433%_))
                                    (_%g199368199430%_ _%g199369199433%_))))
                            (_%g199368199430%_ _%g199369199433%_)))))
                (_%g199367200369%_ _%g199157199325%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%hd199201199319%_
                                                    _%hd199198199311%_
                                                    _%hd199195199303%_
                                                    _%hd199192199295%_
                                                    _%hd199174199247%_)
                                                   (_%g199154199207%_
                                                    _%g199155199210%_))))
                                           (_%g199154199207%_
                                            _%g199155199210%_))
                                       (_%g199154199207%_ _%g199155199210%_))
                                   (_%g199154199207%_ _%g199155199210%_))
                               (_%g199154199207%_ _%g199155199210%_))))
                       (_%g199154199207%_ _%g199155199210%_))
                   (_%g199154199207%_ _%g199155199210%_))
               (_%g199154199207%_ _%g199155199210%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g199154199207%_
                                                _%g199155199210%_))
                                           (_%g199154199207%_
                                            _%g199155199210%_))))
                                   (_%g199154199207%_ _%g199155199210%_))))
                           (_%g199154199207%_ _%g199155199210%_))))
                   (_%g199154199207%_ _%g199155199210%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g199154199207%_
                                                    _%g199155199210%_))
                                               (_%g199154199207%_
                                                _%g199155199210%_))
                                           (_%g199154199207%_
                                            _%g199155199210%_))))
                                   (_%g199154199207%_ _%g199155199210%_))))
                           (_%g199154199207%_ _%g199155199210%_))
                       (_%g199154199207%_ _%g199155199210%_))))
               (_%g199154199207%_ _%g199155199210%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g199154199207%_
                                                _%g199155199210%_))))
                                       (_%g199154199207%_ _%g199155199210%_))))
                               (_%g199154199207%_ _%g199155199210%_))
                           (_%g199154199207%_ _%g199155199210%_))
                       (_%g199154199207%_ _%g199155199210%_))))
               (_%g199154199207%_ _%g199155199210%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g199153200372%_
                                            _%g197546197608%_))
                                         _%stx197536%_))))))))
                  (_%__kont200599200600%_ (lambda () _%stx197536%_)))
              (let ((_%__match200628200629%_
                     (lambda (_%e197548197576%_
                              _%hd197549197579%_
                              _%tl197550197581%_
                              _%e197551197584%_
                              _%hd197552197587%_
                              _%tl197553197589%_
                              _%e197554197592%_
                              _%hd197555197595%_
                              _%tl197556197597%_
                              _%e197557197600%_
                              _%hd197558197603%_
                              _%tl197559197605%_)
                       (let ((_%g197546197608%_ _%hd197558197603%_)
                             (_%g197547197609%_ _%hd197555197595%_))
                         (if (let ((__tmp201833
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol
                                       _%g197547197609%_))))
                               (declare (not safe))
                               (gxc#optimizer-top-level-method? __tmp201833))
                             (_%__kont200597200598%_
                              _%g197546197608%_
                              _%g197547197609%_)
                             (_%__kont200599200600%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx200595200596%_))
                    (let ((_%e197548197576%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx200595200596%_))))
                      (let ((_%tl197550197581%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e197548197576%_)))
                            (_%hd197549197579%_
                             (let ()
                               (declare (not safe))
                               (##car _%e197548197576%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl197550197581%_))
                            (let ((_%e197551197584%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl197550197581%_))))
                              (let ((_%tl197553197589%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e197551197584%_)))
                                    (_%hd197552197587%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e197551197584%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd197552197587%_))
                                    (let ((_%e197554197592%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd197552197587%_))))
                                      (let ((_%tl197556197597%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e197554197592%_)))
                                            (_%hd197555197595%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e197554197592%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl197556197597%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl197553197589%_))
                                                (let ((_%e197557197600%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl197553197589%_))))
                                                  (let ((_%tl197559197605%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e197557197600%_)))
                                                        (_%hd197558197603%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e197557197600%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl197559197605%_))
                                                        (_%__match200628200629%_
                                                         _%e197548197576%_
                                                         _%hd197549197579%_
                                                         _%tl197550197581%_
                                                         _%e197551197584%_
                                                         _%hd197552197587%_
                                                         _%tl197553197589%_
                                                         _%e197554197592%_
                                                         _%hd197555197595%_
                                                         _%tl197556197597%_
                                                         _%e197557197600%_
                                                         _%hd197558197603%_
                                                         _%tl197559197605%_)
                                                        (_%__kont200599200600%_))))
                                                (_%__kont200599200600%_))
                                            (_%__kont200599200600%_))))
                                    (_%__kont200599200600%_))))
                            (_%__kont200599200600%_))))
                    (_%__kont200599200600%_))))))))
    (define gxc#extract-receiver-begin-annotation%
      (lambda (_%self197388%_ _%stx197389%_)
        (let* ((_%__stx200631200632%_ _%stx197389%_)
               (_%g197392197425%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx200631200632%_)))))
          (let ((_%__kont200633200634%_
                 (lambda (_%g197394197515%_) _%g197394197515%_))
                (_%__kont200635200636%_
                 (lambda (_%g197410197454%_ _%g197411197455%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self197388%_ _%g197410197454%_)))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx200631200632%_))
                (let ((_%e197395197475%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%__stx200631200632%_))))
                  (let ((_%tl197397197480%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e197395197475%_)))
                        (_%hd197396197478%_
                         (let ()
                           (declare (not safe))
                           (##car _%e197395197475%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl197397197480%_))
                        (let ((_%e197398197483%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl197397197480%_))))
                          (let ((_%tl197400197488%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e197398197483%_)))
                                (_%hd197399197486%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e197398197483%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd197399197486%_))
                                (let ((_%e197401197491%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd197399197486%_))))
                                  (let ((_%tl197403197496%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e197401197491%_)))
                                        (_%hd197402197494%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e197401197491%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd197402197494%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '@receiver
                                               _%hd197402197494%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl197403197496%_))
                                                (let ((_%e197404197499%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl197403197496%_))))
                                                  (let ((_%tl197406197504%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e197404197499%_)))
                                                        (_%hd197405197502%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e197404197499%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl197406197504%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl197400197488%_))
                                                            (let ((_%e197407197507%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl197400197488%_))))
                      (let ((_%tl197409197512%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e197407197507%_)))
                            (_%hd197408197510%_
                             (let ()
                               (declare (not safe))
                               (##car _%e197407197507%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl197409197512%_))
                            (_%__kont200633200634%_ _%hd197405197502%_)
                            (let ()
                              (declare (not safe))
                              (_%g197392197425%_)))))
                    (let () (declare (not safe)) (_%g197392197425%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl197400197488%_))
                    (let ((_%e197418197446%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl197400197488%_))))
                      (let ((_%tl197420197451%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e197418197446%_)))
                            (_%hd197419197449%_
                             (let ()
                               (declare (not safe))
                               (##car _%e197418197446%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl197420197451%_))
                            (_%__kont200635200636%_
                             _%hd197419197449%_
                             _%hd197399197486%_)
                            (let ()
                              (declare (not safe))
                              (_%g197392197425%_)))))
                    (let () (declare (not safe)) (_%g197392197425%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl197400197488%_))
                                                    (let ((_%e197418197446%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl197400197488%_))))
                                                      (let ((_%tl197420197451%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e197418197446%_)))
                    (_%hd197419197449%_
                     (let () (declare (not safe)) (##car _%e197418197446%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl197420197451%_))
                    (_%__kont200635200636%_
                     _%hd197419197449%_
                     _%hd197399197486%_)
                    (let () (declare (not safe)) (_%g197392197425%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g197392197425%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl197400197488%_))
                                                (let ((_%e197418197446%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl197400197488%_))))
                                                  (let ((_%tl197420197451%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e197418197446%_)))
                                                        (_%hd197419197449%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e197418197446%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl197420197451%_))
                                                        (_%__kont200635200636%_
                                                         _%hd197419197449%_
                                                         _%hd197399197486%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g197392197425%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g197392197425%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl197400197488%_))
                                            (let ((_%e197418197446%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl197400197488%_))))
                                              (let ((_%tl197420197451%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e197418197446%_)))
                                                    (_%hd197419197449%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e197418197446%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl197420197451%_))
                                                    (_%__kont200635200636%_
                                                     _%hd197419197449%_
                                                     _%hd197399197486%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g197392197425%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g197392197425%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl197400197488%_))
                                    (let ((_%e197418197446%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl197400197488%_))))
                                      (let ((_%tl197420197451%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e197418197446%_)))
                                            (_%hd197419197449%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e197418197446%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl197420197451%_))
                                            (_%__kont200635200636%_
                                             _%hd197419197449%_
                                             _%hd197399197486%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g197392197425%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g197392197425%_))))))
                        (let () (declare (not safe)) (_%g197392197425%_)))))
                (let () (declare (not safe)) (_%g197392197425%_)))))))
    (define gxc#extract-receiver-if%
      (lambda (_%self197304%_ _%stx197305%_)
        (let* ((_%g197307197328%_
                (lambda (_%g197308197325%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g197308197325%_))))
               (_%g197306197385%_
                (lambda (_%g197308197331%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g197308197331%_))
                      (let ((_%e197312197333%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g197308197331%_))))
                        (let ((_%hd197313197336%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197312197333%_)))
                              (_%tl197314197338%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197312197333%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl197314197338%_))
                              (let ((_%e197315197341%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl197314197338%_))))
                                (let ((_%hd197316197344%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197315197341%_)))
                                      (_%tl197317197346%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197315197341%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl197317197346%_))
                                      (let ((_%e197318197349%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl197317197346%_))))
                                        (let ((_%hd197319197352%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e197318197349%_)))
                                              (_%tl197320197354%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e197318197349%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl197320197354%_))
                                              (let ((_%e197321197357%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl197320197354%_))))
                                                (let ((_%hd197322197360%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e197321197357%_)))
                                                      (_%tl197323197362%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e197321197357%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl197323197362%_))
                                                      ((lambda (_%g197309197365%_
                                                                _%g197310197366%_
                                                                _%g197311197367%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%self197304%_
                                                            _%g197310197366%_)))
                                                       _%hd197322197360%_
                                                       _%hd197319197352%_
                                                       _%hd197316197344%_)
                                                      (_%g197307197328%_
                                                       _%g197308197331%_))))
                                              (_%g197307197328%_
                                               _%g197308197331%_))))
                                      (_%g197307197328%_ _%g197308197331%_))))
                              (_%g197307197328%_ _%g197308197331%_))))
                      (_%g197307197328%_ _%g197308197331%_)))))
          (_%g197306197385%_ _%stx197305%_))))
    (define gxc#collect-object-refs-call%
      (lambda (_%self196269%_ _%stx196270%_)
        (let* ((_%__stx200697200698%_ _%stx196270%_)
               (_%g196278196500%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx200697200698%_)))))
          (let ((_%__kont200699200700%_
                 (lambda (_%g196280197253%_
                          _%g196281197254%_
                          _%g196282197255%_
                          _%g196283197256%_)
                   (let ((__tmp201835
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self196269%_ 'methods)))
                         (__tmp201834
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%g196281197254%_))))
                     (declare (not safe))
                     (hash-put! __tmp201835 __tmp201834 '#t))
                   (for-each
                    (lambda (_%g197289197291%_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self196269%_ _%g197289197291%_)))
                    (let ((__tmp201836
                           (lambda (_%g197293197296%_ _%g197294197298%_)
                             (cons _%g197293197296%_ _%g197294197298%_))))
                      (declare (not safe))
                      (__foldr1 __tmp201836 '() _%g196280197253%_)))))
                (_%__kont200703200704%_
                 (lambda (_%g196323197090%_
                          _%g196324197091%_
                          _%g196325197092%_
                          _%g196326197093%_
                          _%g196327197094%_)
                   (let ((__tmp201838
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self196269%_ 'methods)))
                         (__tmp201837
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%g196324197091%_))))
                     (declare (not safe))
                     (hash-put! __tmp201838 __tmp201837 '#t))
                   (for-each
                    (lambda (_%g197134197136%_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self196269%_ _%g197134197136%_)))
                    (let ((__tmp201839
                           (lambda (_%g197138197141%_ _%g197139197143%_)
                             (cons _%g197138197141%_ _%g197139197143%_))))
                      (declare (not safe))
                      (__foldr1 __tmp201839 '() _%g196323197090%_)))))
                (_%__kont200707200708%_
                 (lambda (_%g196376196925%_
                          _%g196377196926%_
                          _%g196378196927%_)
                   (let ((__tmp201841
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self196269%_ 'slots)))
                         (__tmp201840
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%g196376196925%_))))
                     (declare (not safe))
                     (hash-put! __tmp201841 __tmp201840 '#t))))
                (_%__kont200709200710%_
                 (lambda (_%g196409196802%_
                          _%g196410196803%_
                          _%g196411196804%_
                          _%g196412196805%_)
                   (let ((__tmp201843
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self196269%_ 'slots)))
                         (__tmp201842
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%g196410196803%_))))
                     (declare (not safe))
                     (hash-put! __tmp201843 __tmp201842 '#t))
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self196269%_ _%g196409196802%_))))
                (_%__kont200711200712%_
                 (lambda (_%g196446196676%_ _%g196447196677%_)
                   (let* ((_%accessor196699%_
                           (let ((__tmp201844
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol
                                     _%g196447196677%_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp201844)))
                          (_%klass196701%_
                           (let ((__tmp201845
                                  (##structure-ref
                                   _%accessor196699%_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _%stx196270%_
                              __tmp201845)))
                          (_%slot196703%_
                           (##structure-ref
                            _%accessor196699%_
                            '3
                            gxc#!accessor::t
                            '#f)))
                     (if (if (##structure-ref
                              _%accessor196699%_
                              '4
                              gxc#!accessor::t
                              '#f)
                             '#f
                             (or (let ()
                                   (declare (not safe))
                                   (gxc#!class-struct-slot?
                                    _%klass196701%_
                                    _%slot196703%_))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%klass196701%_
                                    '8
                                    '#f
                                    '#f))))
                         '#!void
                         (let ((__tmp201847
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _%self196269%_ 'slots)))
                               (__tmp201846
                                (##structure-ref
                                 _%accessor196699%_
                                 '3
                                 gxc#!accessor::t
                                 '#f)))
                           (declare (not safe))
                           (hash-put! __tmp201847 __tmp201846 '#t))))))
                (_%__kont200713200714%_
                 (lambda (_%g196469196576%_
                          _%g196470196577%_
                          _%g196471196578%_)
                   (let* ((_%mutator196605%_
                           (let ((__tmp201848
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol
                                     _%g196471196578%_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp201848)))
                          (_%klass196607%_
                           (let ((__tmp201849
                                  (##structure-ref
                                   _%mutator196605%_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _%stx196270%_
                              __tmp201849)))
                          (_%slot196609%_
                           (##structure-ref
                            _%mutator196605%_
                            '3
                            gxc#!mutator::t
                            '#f)))
                     (if (if (##structure-ref
                              _%mutator196605%_
                              '4
                              gxc#!mutator::t
                              '#f)
                             '#f
                             (or (let ()
                                   (declare (not safe))
                                   (gxc#!class-struct-slot?
                                    _%klass196607%_
                                    _%slot196609%_))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%klass196607%_
                                    '8
                                    '#f
                                    '#f))))
                         '#!void
                         (let ((__tmp201850
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _%self196269%_ 'slots))))
                           (declare (not safe))
                           (hash-put! __tmp201850 _%slot196609%_ '#t)))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-e__1 _%self196269%_ _%g196469196576%_)))))
                (_%__kont200715200716%_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#apply-operands _%self196269%_ _%stx196270%_)))))
            (let* ((_%__match201196201197%_
                    (lambda (_%e196472196512%_
                             _%hd196473196515%_
                             _%tl196474196517%_
                             _%e196475196520%_
                             _%hd196476196523%_
                             _%tl196477196525%_
                             _%e196478196528%_
                             _%hd196479196531%_
                             _%tl196480196533%_
                             _%e196481196536%_
                             _%hd196482196539%_
                             _%tl196483196541%_
                             _%e196484196544%_
                             _%hd196485196547%_
                             _%tl196486196549%_
                             _%e196487196552%_
                             _%hd196488196555%_
                             _%tl196489196557%_
                             _%e196490196560%_
                             _%hd196491196563%_
                             _%tl196492196565%_
                             _%e196493196568%_
                             _%hd196494196571%_
                             _%tl196495196573%_)
                      (let ((_%g196469196576%_ _%hd196494196571%_)
                            (_%g196470196577%_ _%hd196491196563%_)
                            (_%g196471196578%_ _%hd196482196539%_))
                        (if (and (let ((__tmp201851
                                        (let ((__tmp201852
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _%g196471196578%_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp201852))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp201851
                                    'gxc#!mutator::t))
                                 (let ((__tmp201853
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self196269%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%g196470196577%_
                                    __tmp201853)))
                            (_%__kont200713200714%_
                             _%g196469196576%_
                             _%g196470196577%_
                             _%g196471196578%_)
                            (_%__kont200715200716%_)))))
                   (_%__match201194201195%_
                    (lambda (_%e196472196512%_
                             _%hd196473196515%_
                             _%tl196474196517%_
                             _%e196475196520%_
                             _%hd196476196523%_
                             _%tl196477196525%_
                             _%e196478196528%_
                             _%hd196479196531%_
                             _%tl196480196533%_
                             _%e196481196536%_
                             _%hd196482196539%_
                             _%tl196483196541%_
                             _%e196484196544%_
                             _%hd196485196547%_
                             _%tl196486196549%_
                             _%e196487196552%_
                             _%hd196488196555%_
                             _%tl196489196557%_
                             _%e196490196560%_
                             _%hd196491196563%_
                             _%tl196492196565%_
                             _%e196493196568%_
                             _%hd196494196571%_
                             _%tl196495196573%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl196495196573%_))
                          (_%__match201196201197%_
                           _%e196472196512%_
                           _%hd196473196515%_
                           _%tl196474196517%_
                           _%e196475196520%_
                           _%hd196476196523%_
                           _%tl196477196525%_
                           _%e196478196528%_
                           _%hd196479196531%_
                           _%tl196480196533%_
                           _%e196481196536%_
                           _%hd196482196539%_
                           _%tl196483196541%_
                           _%e196484196544%_
                           _%hd196485196547%_
                           _%tl196486196549%_
                           _%e196487196552%_
                           _%hd196488196555%_
                           _%tl196489196557%_
                           _%e196490196560%_
                           _%hd196491196563%_
                           _%tl196492196565%_
                           _%e196493196568%_
                           _%hd196494196571%_
                           _%tl196495196573%_)
                          (_%__kont200715200716%_))))
                   (_%__match201188201189%_
                    (lambda (_%e196472196512%_
                             _%hd196473196515%_
                             _%tl196474196517%_
                             _%e196475196520%_
                             _%hd196476196523%_
                             _%tl196477196525%_
                             _%e196478196528%_
                             _%hd196479196531%_
                             _%tl196480196533%_
                             _%e196481196536%_
                             _%hd196482196539%_
                             _%tl196483196541%_
                             _%e196484196544%_
                             _%hd196485196547%_
                             _%tl196486196549%_
                             _%e196487196552%_
                             _%hd196488196555%_
                             _%tl196489196557%_
                             _%e196490196560%_
                             _%hd196491196563%_
                             _%tl196492196565%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl196486196549%_))
                          (let ((_%e196493196568%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl196486196549%_))))
                            (let ((_%tl196495196573%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e196493196568%_)))
                                  (_%hd196494196571%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e196493196568%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl196495196573%_))
                                  (_%__match201196201197%_
                                   _%e196472196512%_
                                   _%hd196473196515%_
                                   _%tl196474196517%_
                                   _%e196475196520%_
                                   _%hd196476196523%_
                                   _%tl196477196525%_
                                   _%e196478196528%_
                                   _%hd196479196531%_
                                   _%tl196480196533%_
                                   _%e196481196536%_
                                   _%hd196482196539%_
                                   _%tl196483196541%_
                                   _%e196484196544%_
                                   _%hd196485196547%_
                                   _%tl196486196549%_
                                   _%e196487196552%_
                                   _%hd196488196555%_
                                   _%tl196489196557%_
                                   _%e196490196560%_
                                   _%hd196491196563%_
                                   _%tl196492196565%_
                                   _%e196493196568%_
                                   _%hd196494196571%_
                                   _%tl196495196573%_)
                                  (_%__kont200715200716%_))))
                          (_%__kont200715200716%_))))
                   (_%__match201134201135%_
                    (lambda (_%e196448196620%_
                             _%hd196449196623%_
                             _%tl196450196625%_
                             _%e196451196628%_
                             _%hd196452196631%_
                             _%tl196453196633%_
                             _%e196454196636%_
                             _%hd196455196639%_
                             _%tl196456196641%_
                             _%e196457196644%_
                             _%hd196458196647%_
                             _%tl196459196649%_
                             _%e196460196652%_
                             _%hd196461196655%_
                             _%tl196462196657%_
                             _%e196463196660%_
                             _%hd196464196663%_
                             _%tl196465196665%_
                             _%e196466196668%_
                             _%hd196467196671%_
                             _%tl196468196673%_)
                      (let ((_%g196446196676%_ _%hd196467196671%_)
                            (_%g196447196677%_ _%hd196458196647%_))
                        (if (and (let ((__tmp201854
                                        (let ((__tmp201855
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _%g196447196677%_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp201855))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp201854
                                    'gxc#!accessor::t))
                                 (let ((__tmp201856
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self196269%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%g196446196676%_
                                    __tmp201856)))
                            (_%__kont200711200712%_
                             _%g196446196676%_
                             _%g196447196677%_)
                            (_%__kont200715200716%_)))))
                   (_%__match201132201133%_
                    (lambda (_%e196448196620%_
                             _%hd196449196623%_
                             _%tl196450196625%_
                             _%e196451196628%_
                             _%hd196452196631%_
                             _%tl196453196633%_
                             _%e196454196636%_
                             _%hd196455196639%_
                             _%tl196456196641%_
                             _%e196457196644%_
                             _%hd196458196647%_
                             _%tl196459196649%_
                             _%e196460196652%_
                             _%hd196461196655%_
                             _%tl196462196657%_
                             _%e196463196660%_
                             _%hd196464196663%_
                             _%tl196465196665%_
                             _%e196466196668%_
                             _%hd196467196671%_
                             _%tl196468196673%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl196462196657%_))
                          (_%__match201134201135%_
                           _%e196448196620%_
                           _%hd196449196623%_
                           _%tl196450196625%_
                           _%e196451196628%_
                           _%hd196452196631%_
                           _%tl196453196633%_
                           _%e196454196636%_
                           _%hd196455196639%_
                           _%tl196456196641%_
                           _%e196457196644%_
                           _%hd196458196647%_
                           _%tl196459196649%_
                           _%e196460196652%_
                           _%hd196461196655%_
                           _%tl196462196657%_
                           _%e196463196660%_
                           _%hd196464196663%_
                           _%tl196465196665%_
                           _%e196466196668%_
                           _%hd196467196671%_
                           _%tl196468196673%_)
                          (_%__match201188201189%_
                           _%e196448196620%_
                           _%hd196449196623%_
                           _%tl196450196625%_
                           _%e196451196628%_
                           _%hd196452196631%_
                           _%tl196453196633%_
                           _%e196454196636%_
                           _%hd196455196639%_
                           _%tl196456196641%_
                           _%e196457196644%_
                           _%hd196458196647%_
                           _%tl196459196649%_
                           _%e196460196652%_
                           _%hd196461196655%_
                           _%tl196462196657%_
                           _%e196463196660%_
                           _%hd196464196663%_
                           _%tl196465196665%_
                           _%e196466196668%_
                           _%hd196467196671%_
                           _%tl196468196673%_))))
                   (_%__match201078201079%_
                    (lambda (_%e196413196714%_
                             _%hd196414196717%_
                             _%tl196415196719%_
                             _%e196416196722%_
                             _%hd196417196725%_
                             _%tl196418196727%_
                             _%e196419196730%_
                             _%hd196420196733%_
                             _%tl196421196735%_
                             _%e196422196738%_
                             _%hd196423196741%_
                             _%tl196424196743%_
                             _%e196425196746%_
                             _%hd196426196749%_
                             _%tl196427196751%_
                             _%e196428196754%_
                             _%hd196429196757%_
                             _%tl196430196759%_
                             _%e196431196762%_
                             _%hd196432196765%_
                             _%tl196433196767%_
                             _%e196434196770%_
                             _%hd196435196773%_
                             _%tl196436196775%_
                             _%e196437196778%_
                             _%hd196438196781%_
                             _%tl196439196783%_
                             _%e196440196786%_
                             _%hd196441196789%_
                             _%tl196442196791%_
                             _%e196443196794%_
                             _%hd196444196797%_
                             _%tl196445196799%_)
                      (let ((_%g196409196802%_ _%hd196444196797%_)
                            (_%g196410196803%_ _%hd196441196789%_)
                            (_%g196411196804%_ _%hd196432196765%_)
                            (_%g196412196805%_ _%hd196423196741%_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%g196412196805%_
                                        'slot-set!))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%g196412196805%_
                                        'unchecked-slot-set!)))
                                 (let ((__tmp201857
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self196269%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%g196411196804%_
                                    __tmp201857)))
                            (_%__kont200709200710%_
                             _%g196409196802%_
                             _%g196410196803%_
                             _%g196411196804%_
                             _%g196412196805%_)
                            (_%__kont200715200716%_)))))
                   (_%__match201070201071%_
                    (lambda (_%e196413196714%_
                             _%hd196414196717%_
                             _%tl196415196719%_
                             _%e196416196722%_
                             _%hd196417196725%_
                             _%tl196418196727%_
                             _%e196419196730%_
                             _%hd196420196733%_
                             _%tl196421196735%_
                             _%e196422196738%_
                             _%hd196423196741%_
                             _%tl196424196743%_
                             _%e196425196746%_
                             _%hd196426196749%_
                             _%tl196427196751%_
                             _%e196428196754%_
                             _%hd196429196757%_
                             _%tl196430196759%_
                             _%e196431196762%_
                             _%hd196432196765%_
                             _%tl196433196767%_
                             _%e196434196770%_
                             _%hd196435196773%_
                             _%tl196436196775%_
                             _%e196437196778%_
                             _%hd196438196781%_
                             _%tl196439196783%_
                             _%e196440196786%_
                             _%hd196441196789%_
                             _%tl196442196791%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl196436196775%_))
                          (let ((_%e196443196794%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl196436196775%_))))
                            (let ((_%tl196445196799%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e196443196794%_)))
                                  (_%hd196444196797%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e196443196794%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl196445196799%_))
                                  (_%__match201078201079%_
                                   _%e196413196714%_
                                   _%hd196414196717%_
                                   _%tl196415196719%_
                                   _%e196416196722%_
                                   _%hd196417196725%_
                                   _%tl196418196727%_
                                   _%e196419196730%_
                                   _%hd196420196733%_
                                   _%tl196421196735%_
                                   _%e196422196738%_
                                   _%hd196423196741%_
                                   _%tl196424196743%_
                                   _%e196425196746%_
                                   _%hd196426196749%_
                                   _%tl196427196751%_
                                   _%e196428196754%_
                                   _%hd196429196757%_
                                   _%tl196430196759%_
                                   _%e196431196762%_
                                   _%hd196432196765%_
                                   _%tl196433196767%_
                                   _%e196434196770%_
                                   _%hd196435196773%_
                                   _%tl196436196775%_
                                   _%e196437196778%_
                                   _%hd196438196781%_
                                   _%tl196439196783%_
                                   _%e196440196786%_
                                   _%hd196441196789%_
                                   _%tl196442196791%_
                                   _%e196443196794%_
                                   _%hd196444196797%_
                                   _%tl196445196799%_)
                                  (_%__kont200715200716%_))))
                          (_%__match201194201195%_
                           _%e196413196714%_
                           _%hd196414196717%_
                           _%tl196415196719%_
                           _%e196416196722%_
                           _%hd196417196725%_
                           _%tl196418196727%_
                           _%e196419196730%_
                           _%hd196420196733%_
                           _%tl196421196735%_
                           _%e196422196738%_
                           _%hd196423196741%_
                           _%tl196424196743%_
                           _%e196425196746%_
                           _%hd196426196749%_
                           _%tl196427196751%_
                           _%e196428196754%_
                           _%hd196429196757%_
                           _%tl196430196759%_
                           _%e196431196762%_
                           _%hd196432196765%_
                           _%tl196433196767%_
                           _%e196434196770%_
                           _%hd196435196773%_
                           _%tl196436196775%_))))
                   (_%__match200992200993%_
                    (lambda (_%e196379196845%_
                             _%hd196380196848%_
                             _%tl196381196850%_
                             _%e196382196853%_
                             _%hd196383196856%_
                             _%tl196384196858%_
                             _%e196385196861%_
                             _%hd196386196864%_
                             _%tl196387196866%_
                             _%e196388196869%_
                             _%hd196389196872%_
                             _%tl196390196874%_
                             _%e196391196877%_
                             _%hd196392196880%_
                             _%tl196393196882%_
                             _%e196394196885%_
                             _%hd196395196888%_
                             _%tl196396196890%_
                             _%e196397196893%_
                             _%hd196398196896%_
                             _%tl196399196898%_
                             _%e196400196901%_
                             _%hd196401196904%_
                             _%tl196402196906%_
                             _%e196403196909%_
                             _%hd196404196912%_
                             _%tl196405196914%_
                             _%e196406196917%_
                             _%hd196407196920%_
                             _%tl196408196922%_)
                      (let ((_%g196376196925%_ _%hd196407196920%_)
                            (_%g196377196926%_ _%hd196398196896%_)
                            (_%g196378196927%_ _%hd196389196872%_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%g196378196927%_
                                        'slot-ref))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%g196378196927%_
                                        'unchecked-slot-ref)))
                                 (let ((__tmp201858
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self196269%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%g196377196926%_
                                    __tmp201858)))
                            (_%__kont200707200708%_
                             _%g196376196925%_
                             _%g196377196926%_
                             _%g196378196927%_)
                            (_%__match201196201197%_
                             _%e196379196845%_
                             _%hd196380196848%_
                             _%tl196381196850%_
                             _%e196382196853%_
                             _%hd196383196856%_
                             _%tl196384196858%_
                             _%e196385196861%_
                             _%hd196386196864%_
                             _%tl196387196866%_
                             _%e196388196869%_
                             _%hd196389196872%_
                             _%tl196390196874%_
                             _%e196391196877%_
                             _%hd196392196880%_
                             _%tl196393196882%_
                             _%e196394196885%_
                             _%hd196395196888%_
                             _%tl196396196890%_
                             _%e196397196893%_
                             _%hd196398196896%_
                             _%tl196399196898%_
                             _%e196400196901%_
                             _%hd196401196904%_
                             _%tl196402196906%_)))))
                   (_%__match200990200991%_
                    (lambda (_%e196379196845%_
                             _%hd196380196848%_
                             _%tl196381196850%_
                             _%e196382196853%_
                             _%hd196383196856%_
                             _%tl196384196858%_
                             _%e196385196861%_
                             _%hd196386196864%_
                             _%tl196387196866%_
                             _%e196388196869%_
                             _%hd196389196872%_
                             _%tl196390196874%_
                             _%e196391196877%_
                             _%hd196392196880%_
                             _%tl196393196882%_
                             _%e196394196885%_
                             _%hd196395196888%_
                             _%tl196396196890%_
                             _%e196397196893%_
                             _%hd196398196896%_
                             _%tl196399196898%_
                             _%e196400196901%_
                             _%hd196401196904%_
                             _%tl196402196906%_
                             _%e196403196909%_
                             _%hd196404196912%_
                             _%tl196405196914%_
                             _%e196406196917%_
                             _%hd196407196920%_
                             _%tl196408196922%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl196402196906%_))
                          (_%__match200992200993%_
                           _%e196379196845%_
                           _%hd196380196848%_
                           _%tl196381196850%_
                           _%e196382196853%_
                           _%hd196383196856%_
                           _%tl196384196858%_
                           _%e196385196861%_
                           _%hd196386196864%_
                           _%tl196387196866%_
                           _%e196388196869%_
                           _%hd196389196872%_
                           _%tl196390196874%_
                           _%e196391196877%_
                           _%hd196392196880%_
                           _%tl196393196882%_
                           _%e196394196885%_
                           _%hd196395196888%_
                           _%tl196396196890%_
                           _%e196397196893%_
                           _%hd196398196896%_
                           _%tl196399196898%_
                           _%e196400196901%_
                           _%hd196401196904%_
                           _%tl196402196906%_
                           _%e196403196909%_
                           _%hd196404196912%_
                           _%tl196405196914%_
                           _%e196406196917%_
                           _%hd196407196920%_
                           _%tl196408196922%_)
                          (_%__match201070201071%_
                           _%e196379196845%_
                           _%hd196380196848%_
                           _%tl196381196850%_
                           _%e196382196853%_
                           _%hd196383196856%_
                           _%tl196384196858%_
                           _%e196385196861%_
                           _%hd196386196864%_
                           _%tl196387196866%_
                           _%e196388196869%_
                           _%hd196389196872%_
                           _%tl196390196874%_
                           _%e196391196877%_
                           _%hd196392196880%_
                           _%tl196393196882%_
                           _%e196394196885%_
                           _%hd196395196888%_
                           _%tl196396196890%_
                           _%e196397196893%_
                           _%hd196398196896%_
                           _%tl196399196898%_
                           _%e196400196901%_
                           _%hd196401196904%_
                           _%tl196402196906%_
                           _%e196403196909%_
                           _%hd196404196912%_
                           _%tl196405196914%_
                           _%e196406196917%_
                           _%hd196407196920%_
                           _%tl196408196922%_))))
                   (_%__match200980200981%_
                    (lambda (_%e196379196845%_
                             _%hd196380196848%_
                             _%tl196381196850%_
                             _%e196382196853%_
                             _%hd196383196856%_
                             _%tl196384196858%_
                             _%e196385196861%_
                             _%hd196386196864%_
                             _%tl196387196866%_
                             _%e196388196869%_
                             _%hd196389196872%_
                             _%tl196390196874%_
                             _%e196391196877%_
                             _%hd196392196880%_
                             _%tl196393196882%_
                             _%e196394196885%_
                             _%hd196395196888%_
                             _%tl196396196890%_
                             _%e196397196893%_
                             _%hd196398196896%_
                             _%tl196399196898%_
                             _%e196400196901%_
                             _%hd196401196904%_
                             _%tl196402196906%_
                             _%e196403196909%_
                             _%hd196404196912%_
                             _%tl196405196914%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#quote _%hd196404196912%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl196405196914%_))
                              (let ((_%e196406196917%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl196405196914%_))))
                                (let ((_%tl196408196922%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196406196917%_)))
                                      (_%hd196407196920%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196406196917%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl196408196922%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl196402196906%_))
                                          (_%__match200992200993%_
                                           _%e196379196845%_
                                           _%hd196380196848%_
                                           _%tl196381196850%_
                                           _%e196382196853%_
                                           _%hd196383196856%_
                                           _%tl196384196858%_
                                           _%e196385196861%_
                                           _%hd196386196864%_
                                           _%tl196387196866%_
                                           _%e196388196869%_
                                           _%hd196389196872%_
                                           _%tl196390196874%_
                                           _%e196391196877%_
                                           _%hd196392196880%_
                                           _%tl196393196882%_
                                           _%e196394196885%_
                                           _%hd196395196888%_
                                           _%tl196396196890%_
                                           _%e196397196893%_
                                           _%hd196398196896%_
                                           _%tl196399196898%_
                                           _%e196400196901%_
                                           _%hd196401196904%_
                                           _%tl196402196906%_
                                           _%e196403196909%_
                                           _%hd196404196912%_
                                           _%tl196405196914%_
                                           _%e196406196917%_
                                           _%hd196407196920%_
                                           _%tl196408196922%_)
                                          (_%__match201070201071%_
                                           _%e196379196845%_
                                           _%hd196380196848%_
                                           _%tl196381196850%_
                                           _%e196382196853%_
                                           _%hd196383196856%_
                                           _%tl196384196858%_
                                           _%e196385196861%_
                                           _%hd196386196864%_
                                           _%tl196387196866%_
                                           _%e196388196869%_
                                           _%hd196389196872%_
                                           _%tl196390196874%_
                                           _%e196391196877%_
                                           _%hd196392196880%_
                                           _%tl196393196882%_
                                           _%e196394196885%_
                                           _%hd196395196888%_
                                           _%tl196396196890%_
                                           _%e196397196893%_
                                           _%hd196398196896%_
                                           _%tl196399196898%_
                                           _%e196400196901%_
                                           _%hd196401196904%_
                                           _%tl196402196906%_
                                           _%e196403196909%_
                                           _%hd196404196912%_
                                           _%tl196405196914%_
                                           _%e196406196917%_
                                           _%hd196407196920%_
                                           _%tl196408196922%_))
                                      (_%__match201194201195%_
                                       _%e196379196845%_
                                       _%hd196380196848%_
                                       _%tl196381196850%_
                                       _%e196382196853%_
                                       _%hd196383196856%_
                                       _%tl196384196858%_
                                       _%e196385196861%_
                                       _%hd196386196864%_
                                       _%tl196387196866%_
                                       _%e196388196869%_
                                       _%hd196389196872%_
                                       _%tl196390196874%_
                                       _%e196391196877%_
                                       _%hd196392196880%_
                                       _%tl196393196882%_
                                       _%e196394196885%_
                                       _%hd196395196888%_
                                       _%tl196396196890%_
                                       _%e196397196893%_
                                       _%hd196398196896%_
                                       _%tl196399196898%_
                                       _%e196400196901%_
                                       _%hd196401196904%_
                                       _%tl196402196906%_))))
                              (_%__match201194201195%_
                               _%e196379196845%_
                               _%hd196380196848%_
                               _%tl196381196850%_
                               _%e196382196853%_
                               _%hd196383196856%_
                               _%tl196384196858%_
                               _%e196385196861%_
                               _%hd196386196864%_
                               _%tl196387196866%_
                               _%e196388196869%_
                               _%hd196389196872%_
                               _%tl196390196874%_
                               _%e196391196877%_
                               _%hd196392196880%_
                               _%tl196393196882%_
                               _%e196394196885%_
                               _%hd196395196888%_
                               _%tl196396196890%_
                               _%e196397196893%_
                               _%hd196398196896%_
                               _%tl196399196898%_
                               _%e196400196901%_
                               _%hd196401196904%_
                               _%tl196402196906%_))
                          (_%__match201194201195%_
                           _%e196379196845%_
                           _%hd196380196848%_
                           _%tl196381196850%_
                           _%e196382196853%_
                           _%hd196383196856%_
                           _%tl196384196858%_
                           _%e196385196861%_
                           _%hd196386196864%_
                           _%tl196387196866%_
                           _%e196388196869%_
                           _%hd196389196872%_
                           _%tl196390196874%_
                           _%e196391196877%_
                           _%hd196392196880%_
                           _%tl196393196882%_
                           _%e196394196885%_
                           _%hd196395196888%_
                           _%tl196396196890%_
                           _%e196397196893%_
                           _%hd196398196896%_
                           _%tl196399196898%_
                           _%e196400196901%_
                           _%hd196401196904%_
                           _%tl196402196906%_))))
                   (_%__match200912200913%_
                    (lambda (_%e196328196964%_
                             _%hd196329196967%_
                             _%tl196330196969%_
                             _%e196331196972%_
                             _%hd196332196975%_
                             _%tl196333196977%_
                             _%e196334196980%_
                             _%hd196335196983%_
                             _%tl196336196985%_
                             _%e196337196988%_
                             _%hd196338196991%_
                             _%tl196339196993%_
                             _%e196340196996%_
                             _%hd196341196999%_
                             _%tl196342197001%_
                             _%e196343197004%_
                             _%hd196344197007%_
                             _%tl196345197009%_
                             _%e196346197012%_
                             _%hd196347197015%_
                             _%tl196348197017%_
                             _%e196349197020%_
                             _%hd196350197023%_
                             _%tl196351197025%_
                             _%e196352197028%_
                             _%hd196353197031%_
                             _%tl196354197033%_
                             _%e196355197036%_
                             _%hd196356197039%_
                             _%tl196357197041%_
                             _%e196358197044%_
                             _%hd196359197047%_
                             _%tl196360197049%_
                             _%e196361197052%_
                             _%hd196362197055%_
                             _%tl196363197057%_
                             _%e196364197060%_
                             _%hd196365197063%_
                             _%tl196366197065%_
                             _%__splice200705200706%_
                             _%target196367197068%_
                             _%tl196369197070%_)
                      (letrec ((_%loop196370197073%_
                                (lambda (_%hd196368197076%_
                                         _%args196374197078%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd196368197076%_))
                                      (let ((_%e196371197080%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd196368197076%_))))
                                        (let ((_%lp-tl196373197085%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e196371197080%_)))
                                              (_%lp-hd196372197083%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e196371197080%_))))
                                          (_%loop196370197073%_
                                           _%lp-tl196373197085%_
                                           (cons _%lp-hd196372197083%_
                                                 _%args196374197078%_))))
                                      (let ((_%args196375197088%_
                                             (reverse _%args196374197078%_)))
                                        (let ((_%g196323197090%_
                                               _%args196375197088%_)
                                              (_%g196324197091%_
                                               _%hd196365197063%_)
                                              (_%g196325197092%_
                                               _%hd196356197039%_)
                                              (_%g196326197093%_
                                               _%hd196347197015%_)
                                              (_%g196327197094%_
                                               _%hd196338196991%_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%g196327197094%_
                                                      'apply))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%g196326197093%_
                                                      'call-method))
                                                   (let ((__tmp201859
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self196269%_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%g196325197092%_
                                                      __tmp201859)))
                                              (_%__kont200703200704%_
                                               _%g196323197090%_
                                               _%g196324197091%_
                                               _%g196325197092%_
                                               _%g196326197093%_
                                               _%g196327197094%_)
                                              (_%__kont200715200716%_))))))))
                        (_%loop196370197073%_ _%target196367197068%_ '()))))
                   (_%__match200870200871%_
                    (lambda (_%e196328196964%_
                             _%hd196329196967%_
                             _%tl196330196969%_
                             _%e196331196972%_
                             _%hd196332196975%_
                             _%tl196333196977%_
                             _%e196334196980%_
                             _%hd196335196983%_
                             _%tl196336196985%_
                             _%e196337196988%_
                             _%hd196338196991%_
                             _%tl196339196993%_
                             _%e196340196996%_
                             _%hd196341196999%_
                             _%tl196342197001%_
                             _%e196343197004%_
                             _%hd196344197007%_
                             _%tl196345197009%_
                             _%e196346197012%_
                             _%hd196347197015%_
                             _%tl196348197017%_
                             _%e196349197020%_
                             _%hd196350197023%_
                             _%tl196351197025%_
                             _%e196352197028%_
                             _%hd196353197031%_
                             _%tl196354197033%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _%hd196353197031%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl196354197033%_))
                              (let ((_%e196355197036%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl196354197033%_))))
                                (let ((_%tl196357197041%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196355197036%_)))
                                      (_%hd196356197039%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196355197036%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl196357197041%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl196351197025%_))
                                          (let ((_%e196358197044%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl196351197025%_))))
                                            (let ((_%tl196360197049%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e196358197044%_)))
                                                  (_%hd196359197047%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e196358197044%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd196359197047%_))
                                                  (let ((_%e196361197052%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd196359197047%_))))
                                                    (let ((_%tl196363197057%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e196361197052%_)))
                                                          (_%hd196362197055%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e196361197052%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd196362197055%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#quote _%hd196362197055%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl196363197057%_))
                          (let ((_%e196364197060%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl196363197057%_))))
                            (let ((_%tl196366197065%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e196364197060%_)))
                                  (_%hd196365197063%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e196364197060%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl196366197065%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl196360197049%_))
                                      (let ((_%__splice200705200706%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%tl196360197049%_
                                                '0))))
                                        (let ((_%tl196369197070%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice200705200706%_
                                                  '1)))
                                              (_%target196367197068%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice200705200706%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl196369197070%_))
                                              (_%__match200912200913%_
                                               _%e196328196964%_
                                               _%hd196329196967%_
                                               _%tl196330196969%_
                                               _%e196331196972%_
                                               _%hd196332196975%_
                                               _%tl196333196977%_
                                               _%e196334196980%_
                                               _%hd196335196983%_
                                               _%tl196336196985%_
                                               _%e196337196988%_
                                               _%hd196338196991%_
                                               _%tl196339196993%_
                                               _%e196340196996%_
                                               _%hd196341196999%_
                                               _%tl196342197001%_
                                               _%e196343197004%_
                                               _%hd196344197007%_
                                               _%tl196345197009%_
                                               _%e196346197012%_
                                               _%hd196347197015%_
                                               _%tl196348197017%_
                                               _%e196349197020%_
                                               _%hd196350197023%_
                                               _%tl196351197025%_
                                               _%e196352197028%_
                                               _%hd196353197031%_
                                               _%tl196354197033%_
                                               _%e196355197036%_
                                               _%hd196356197039%_
                                               _%tl196357197041%_
                                               _%e196358197044%_
                                               _%hd196359197047%_
                                               _%tl196360197049%_
                                               _%e196361197052%_
                                               _%hd196362197055%_
                                               _%tl196363197057%_
                                               _%e196364197060%_
                                               _%hd196365197063%_
                                               _%tl196366197065%_
                                               _%__splice200705200706%_
                                               _%target196367197068%_
                                               _%tl196369197070%_)
                                              (_%__kont200715200716%_))))
                                      (_%__kont200715200716%_))
                                  (_%__kont200715200716%_))))
                          (_%__kont200715200716%_))
                      (_%__kont200715200716%_))
                  (_%__kont200715200716%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont200715200716%_))))
                                          (_%__match201194201195%_
                                           _%e196328196964%_
                                           _%hd196329196967%_
                                           _%tl196330196969%_
                                           _%e196331196972%_
                                           _%hd196332196975%_
                                           _%tl196333196977%_
                                           _%e196334196980%_
                                           _%hd196335196983%_
                                           _%tl196336196985%_
                                           _%e196337196988%_
                                           _%hd196338196991%_
                                           _%tl196339196993%_
                                           _%e196340196996%_
                                           _%hd196341196999%_
                                           _%tl196342197001%_
                                           _%e196343197004%_
                                           _%hd196344197007%_
                                           _%tl196345197009%_
                                           _%e196346197012%_
                                           _%hd196347197015%_
                                           _%tl196348197017%_
                                           _%e196349197020%_
                                           _%hd196350197023%_
                                           _%tl196351197025%_))
                                      (_%__match201194201195%_
                                       _%e196328196964%_
                                       _%hd196329196967%_
                                       _%tl196330196969%_
                                       _%e196331196972%_
                                       _%hd196332196975%_
                                       _%tl196333196977%_
                                       _%e196334196980%_
                                       _%hd196335196983%_
                                       _%tl196336196985%_
                                       _%e196337196988%_
                                       _%hd196338196991%_
                                       _%tl196339196993%_
                                       _%e196340196996%_
                                       _%hd196341196999%_
                                       _%tl196342197001%_
                                       _%e196343197004%_
                                       _%hd196344197007%_
                                       _%tl196345197009%_
                                       _%e196346197012%_
                                       _%hd196347197015%_
                                       _%tl196348197017%_
                                       _%e196349197020%_
                                       _%hd196350197023%_
                                       _%tl196351197025%_))))
                              (_%__match201194201195%_
                               _%e196328196964%_
                               _%hd196329196967%_
                               _%tl196330196969%_
                               _%e196331196972%_
                               _%hd196332196975%_
                               _%tl196333196977%_
                               _%e196334196980%_
                               _%hd196335196983%_
                               _%tl196336196985%_
                               _%e196337196988%_
                               _%hd196338196991%_
                               _%tl196339196993%_
                               _%e196340196996%_
                               _%hd196341196999%_
                               _%tl196342197001%_
                               _%e196343197004%_
                               _%hd196344197007%_
                               _%tl196345197009%_
                               _%e196346197012%_
                               _%hd196347197015%_
                               _%tl196348197017%_
                               _%e196349197020%_
                               _%hd196350197023%_
                               _%tl196351197025%_))
                          (_%__match200980200981%_
                           _%e196328196964%_
                           _%hd196329196967%_
                           _%tl196330196969%_
                           _%e196331196972%_
                           _%hd196332196975%_
                           _%tl196333196977%_
                           _%e196334196980%_
                           _%hd196335196983%_
                           _%tl196336196985%_
                           _%e196337196988%_
                           _%hd196338196991%_
                           _%tl196339196993%_
                           _%e196340196996%_
                           _%hd196341196999%_
                           _%tl196342197001%_
                           _%e196343197004%_
                           _%hd196344197007%_
                           _%tl196345197009%_
                           _%e196346197012%_
                           _%hd196347197015%_
                           _%tl196348197017%_
                           _%e196349197020%_
                           _%hd196350197023%_
                           _%tl196351197025%_
                           _%e196352197028%_
                           _%hd196353197031%_
                           _%tl196354197033%_))))
                   (_%__match200802200803%_
                    (lambda (_%e196284197151%_
                             _%hd196285197154%_
                             _%tl196286197156%_
                             _%e196287197159%_
                             _%hd196288197162%_
                             _%tl196289197164%_
                             _%e196290197167%_
                             _%hd196291197170%_
                             _%tl196292197172%_
                             _%e196293197175%_
                             _%hd196294197178%_
                             _%tl196295197180%_
                             _%e196296197183%_
                             _%hd196297197186%_
                             _%tl196298197188%_
                             _%e196299197191%_
                             _%hd196300197194%_
                             _%tl196301197196%_
                             _%e196302197199%_
                             _%hd196303197202%_
                             _%tl196304197204%_
                             _%e196305197207%_
                             _%hd196306197210%_
                             _%tl196307197212%_
                             _%e196308197215%_
                             _%hd196309197218%_
                             _%tl196310197220%_
                             _%e196311197223%_
                             _%hd196312197226%_
                             _%tl196313197228%_
                             _%__splice200701200702%_
                             _%target196314197231%_
                             _%tl196316197233%_)
                      (letrec ((_%loop196317197236%_
                                (lambda (_%hd196315197239%_
                                         _%args196321197241%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd196315197239%_))
                                      (let ((_%e196318197243%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd196315197239%_))))
                                        (let ((_%lp-tl196320197248%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e196318197243%_)))
                                              (_%lp-hd196319197246%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e196318197243%_))))
                                          (_%loop196317197236%_
                                           _%lp-tl196320197248%_
                                           (cons _%lp-hd196319197246%_
                                                 _%args196321197241%_))))
                                      (let ((_%args196322197251%_
                                             (reverse _%args196321197241%_)))
                                        (let ((_%g196280197253%_
                                               _%args196322197251%_)
                                              (_%g196281197254%_
                                               _%hd196312197226%_)
                                              (_%g196282197255%_
                                               _%hd196303197202%_)
                                              (_%g196283197256%_
                                               _%hd196294197178%_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%g196283197256%_
                                                      'call-method))
                                                   (let ((__tmp201860
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self196269%_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%g196282197255%_
                                                      __tmp201860)))
                                              (_%__kont200699200700%_
                                               _%g196280197253%_
                                               _%g196281197254%_
                                               _%g196282197255%_
                                               _%g196283197256%_)
                                              (_%__match200990200991%_
                                               _%e196284197151%_
                                               _%hd196285197154%_
                                               _%tl196286197156%_
                                               _%e196287197159%_
                                               _%hd196288197162%_
                                               _%tl196289197164%_
                                               _%e196290197167%_
                                               _%hd196291197170%_
                                               _%tl196292197172%_
                                               _%e196293197175%_
                                               _%hd196294197178%_
                                               _%tl196295197180%_
                                               _%e196296197183%_
                                               _%hd196297197186%_
                                               _%tl196298197188%_
                                               _%e196299197191%_
                                               _%hd196300197194%_
                                               _%tl196301197196%_
                                               _%e196302197199%_
                                               _%hd196303197202%_
                                               _%tl196304197204%_
                                               _%e196305197207%_
                                               _%hd196306197210%_
                                               _%tl196307197212%_
                                               _%e196308197215%_
                                               _%hd196309197218%_
                                               _%tl196310197220%_
                                               _%e196311197223%_
                                               _%hd196312197226%_
                                               _%tl196313197228%_))))))))
                        (_%loop196317197236%_ _%target196314197231%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx200697200698%_))
                  (let ((_%e196284197151%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx200697200698%_))))
                    (let ((_%tl196286197156%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e196284197151%_)))
                          (_%hd196285197154%_
                           (let ()
                             (declare (not safe))
                             (##car _%e196284197151%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl196286197156%_))
                          (let ((_%e196287197159%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl196286197156%_))))
                            (let ((_%tl196289197164%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e196287197159%_)))
                                  (_%hd196288197162%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e196287197159%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd196288197162%_))
                                  (let ((_%e196290197167%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd196288197162%_))))
                                    (let ((_%tl196292197172%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e196290197167%_)))
                                          (_%hd196291197170%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e196290197167%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd196291197170%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd196291197170%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl196292197172%_))
                                                  (let ((_%e196293197175%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl196292197172%_))))
                                                    (let ((_%tl196295197180%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e196293197175%_)))
                                                          (_%hd196294197178%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e196293197175%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl196295197180%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl196289197164%_))
                      (let ((_%e196296197183%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl196289197164%_))))
                        (let ((_%tl196298197188%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196296197183%_)))
                              (_%hd196297197186%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196296197183%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd196297197186%_))
                              (let ((_%e196299197191%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd196297197186%_))))
                                (let ((_%tl196301197196%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196299197191%_)))
                                      (_%hd196300197194%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196299197191%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd196300197194%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd196300197194%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl196301197196%_))
                                              (let ((_%e196302197199%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl196301197196%_))))
                                                (let ((_%tl196304197204%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e196302197199%_)))
                                                      (_%hd196303197202%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e196302197199%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl196304197204%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl196298197188%_))
                                                          (let ((_%e196305197207%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl196298197188%_))))
                    (let ((_%tl196307197212%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e196305197207%_)))
                          (_%hd196306197210%_
                           (let ()
                             (declare (not safe))
                             (##car _%e196305197207%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd196306197210%_))
                          (let ((_%e196308197215%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd196306197210%_))))
                            (let ((_%tl196310197220%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e196308197215%_)))
                                  (_%hd196309197218%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e196308197215%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd196309197218%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%hd196309197218%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl196310197220%_))
                                          (let ((_%e196311197223%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl196310197220%_))))
                                            (let ((_%tl196313197228%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e196311197223%_)))
                                                  (_%hd196312197226%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e196311197223%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl196313197228%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl196307197212%_))
                                                      (let ((_%__splice200701200702%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%tl196307197212%_
                        '0))))
                (let ((_%tl196316197233%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice200701200702%_ '1)))
                      (_%target196314197231%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice200701200702%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl196316197233%_))
                      (_%__match200802200803%_
                       _%e196284197151%_
                       _%hd196285197154%_
                       _%tl196286197156%_
                       _%e196287197159%_
                       _%hd196288197162%_
                       _%tl196289197164%_
                       _%e196290197167%_
                       _%hd196291197170%_
                       _%tl196292197172%_
                       _%e196293197175%_
                       _%hd196294197178%_
                       _%tl196295197180%_
                       _%e196296197183%_
                       _%hd196297197186%_
                       _%tl196298197188%_
                       _%e196299197191%_
                       _%hd196300197194%_
                       _%tl196301197196%_
                       _%e196302197199%_
                       _%hd196303197202%_
                       _%tl196304197204%_
                       _%e196305197207%_
                       _%hd196306197210%_
                       _%tl196307197212%_
                       _%e196308197215%_
                       _%hd196309197218%_
                       _%tl196310197220%_
                       _%e196311197223%_
                       _%hd196312197226%_
                       _%tl196313197228%_
                       _%__splice200701200702%_
                       _%target196314197231%_
                       _%tl196316197233%_)
                      (_%__match200990200991%_
                       _%e196284197151%_
                       _%hd196285197154%_
                       _%tl196286197156%_
                       _%e196287197159%_
                       _%hd196288197162%_
                       _%tl196289197164%_
                       _%e196290197167%_
                       _%hd196291197170%_
                       _%tl196292197172%_
                       _%e196293197175%_
                       _%hd196294197178%_
                       _%tl196295197180%_
                       _%e196296197183%_
                       _%hd196297197186%_
                       _%tl196298197188%_
                       _%e196299197191%_
                       _%hd196300197194%_
                       _%tl196301197196%_
                       _%e196302197199%_
                       _%hd196303197202%_
                       _%tl196304197204%_
                       _%e196305197207%_
                       _%hd196306197210%_
                       _%tl196307197212%_
                       _%e196308197215%_
                       _%hd196309197218%_
                       _%tl196310197220%_
                       _%e196311197223%_
                       _%hd196312197226%_
                       _%tl196313197228%_))))
              (_%__match200990200991%_
               _%e196284197151%_
               _%hd196285197154%_
               _%tl196286197156%_
               _%e196287197159%_
               _%hd196288197162%_
               _%tl196289197164%_
               _%e196290197167%_
               _%hd196291197170%_
               _%tl196292197172%_
               _%e196293197175%_
               _%hd196294197178%_
               _%tl196295197180%_
               _%e196296197183%_
               _%hd196297197186%_
               _%tl196298197188%_
               _%e196299197191%_
               _%hd196300197194%_
               _%tl196301197196%_
               _%e196302197199%_
               _%hd196303197202%_
               _%tl196304197204%_
               _%e196305197207%_
               _%hd196306197210%_
               _%tl196307197212%_
               _%e196308197215%_
               _%hd196309197218%_
               _%tl196310197220%_
               _%e196311197223%_
               _%hd196312197226%_
               _%tl196313197228%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__match201194201195%_
                                                   _%e196284197151%_
                                                   _%hd196285197154%_
                                                   _%tl196286197156%_
                                                   _%e196287197159%_
                                                   _%hd196288197162%_
                                                   _%tl196289197164%_
                                                   _%e196290197167%_
                                                   _%hd196291197170%_
                                                   _%tl196292197172%_
                                                   _%e196293197175%_
                                                   _%hd196294197178%_
                                                   _%tl196295197180%_
                                                   _%e196296197183%_
                                                   _%hd196297197186%_
                                                   _%tl196298197188%_
                                                   _%e196299197191%_
                                                   _%hd196300197194%_
                                                   _%tl196301197196%_
                                                   _%e196302197199%_
                                                   _%hd196303197202%_
                                                   _%tl196304197204%_
                                                   _%e196305197207%_
                                                   _%hd196306197210%_
                                                   _%tl196307197212%_))))
                                          (_%__match201194201195%_
                                           _%e196284197151%_
                                           _%hd196285197154%_
                                           _%tl196286197156%_
                                           _%e196287197159%_
                                           _%hd196288197162%_
                                           _%tl196289197164%_
                                           _%e196290197167%_
                                           _%hd196291197170%_
                                           _%tl196292197172%_
                                           _%e196293197175%_
                                           _%hd196294197178%_
                                           _%tl196295197180%_
                                           _%e196296197183%_
                                           _%hd196297197186%_
                                           _%tl196298197188%_
                                           _%e196299197191%_
                                           _%hd196300197194%_
                                           _%tl196301197196%_
                                           _%e196302197199%_
                                           _%hd196303197202%_
                                           _%tl196304197204%_
                                           _%e196305197207%_
                                           _%hd196306197210%_
                                           _%tl196307197212%_))
                                      (_%__match200870200871%_
                                       _%e196284197151%_
                                       _%hd196285197154%_
                                       _%tl196286197156%_
                                       _%e196287197159%_
                                       _%hd196288197162%_
                                       _%tl196289197164%_
                                       _%e196290197167%_
                                       _%hd196291197170%_
                                       _%tl196292197172%_
                                       _%e196293197175%_
                                       _%hd196294197178%_
                                       _%tl196295197180%_
                                       _%e196296197183%_
                                       _%hd196297197186%_
                                       _%tl196298197188%_
                                       _%e196299197191%_
                                       _%hd196300197194%_
                                       _%tl196301197196%_
                                       _%e196302197199%_
                                       _%hd196303197202%_
                                       _%tl196304197204%_
                                       _%e196305197207%_
                                       _%hd196306197210%_
                                       _%tl196307197212%_
                                       _%e196308197215%_
                                       _%hd196309197218%_
                                       _%tl196310197220%_))
                                  (_%__match201194201195%_
                                   _%e196284197151%_
                                   _%hd196285197154%_
                                   _%tl196286197156%_
                                   _%e196287197159%_
                                   _%hd196288197162%_
                                   _%tl196289197164%_
                                   _%e196290197167%_
                                   _%hd196291197170%_
                                   _%tl196292197172%_
                                   _%e196293197175%_
                                   _%hd196294197178%_
                                   _%tl196295197180%_
                                   _%e196296197183%_
                                   _%hd196297197186%_
                                   _%tl196298197188%_
                                   _%e196299197191%_
                                   _%hd196300197194%_
                                   _%tl196301197196%_
                                   _%e196302197199%_
                                   _%hd196303197202%_
                                   _%tl196304197204%_
                                   _%e196305197207%_
                                   _%hd196306197210%_
                                   _%tl196307197212%_))))
                          (_%__match201194201195%_
                           _%e196284197151%_
                           _%hd196285197154%_
                           _%tl196286197156%_
                           _%e196287197159%_
                           _%hd196288197162%_
                           _%tl196289197164%_
                           _%e196290197167%_
                           _%hd196291197170%_
                           _%tl196292197172%_
                           _%e196293197175%_
                           _%hd196294197178%_
                           _%tl196295197180%_
                           _%e196296197183%_
                           _%hd196297197186%_
                           _%tl196298197188%_
                           _%e196299197191%_
                           _%hd196300197194%_
                           _%tl196301197196%_
                           _%e196302197199%_
                           _%hd196303197202%_
                           _%tl196304197204%_
                           _%e196305197207%_
                           _%hd196306197210%_
                           _%tl196307197212%_))))
                  (_%__match201132201133%_
                   _%e196284197151%_
                   _%hd196285197154%_
                   _%tl196286197156%_
                   _%e196287197159%_
                   _%hd196288197162%_
                   _%tl196289197164%_
                   _%e196290197167%_
                   _%hd196291197170%_
                   _%tl196292197172%_
                   _%e196293197175%_
                   _%hd196294197178%_
                   _%tl196295197180%_
                   _%e196296197183%_
                   _%hd196297197186%_
                   _%tl196298197188%_
                   _%e196299197191%_
                   _%hd196300197194%_
                   _%tl196301197196%_
                   _%e196302197199%_
                   _%hd196303197202%_
                   _%tl196304197204%_))
              (_%__kont200715200716%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont200715200716%_))
                                          (_%__kont200715200716%_))
                                      (_%__kont200715200716%_))))
                              (_%__kont200715200716%_))))
                      (_%__kont200715200716%_))
                  (_%__kont200715200716%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont200715200716%_))
                                              (_%__kont200715200716%_))
                                          (_%__kont200715200716%_))))
                                  (_%__kont200715200716%_))))
                          (_%__kont200715200716%_))))
                  (_%__kont200715200716%_)))))))
    (define gxc#subst-object-refs-call%
      (lambda (_%self195212%_ _%stx195213%_)
        (letrec ((_%force-e195215%_
                  (lambda (_%target196267%_)
                    (cons '%#call
                          (cons (cons '%#ref (cons 'force '()))
                                (cons (cons '%#ref (cons _%target196267%_ '()))
                                      '()))))))
          (let* ((_%__stx201199201200%_ _%stx195213%_)
                 (_%g195223195445%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx201199201200%_)))))
            (let ((_%__kont201201201202%_
                   (lambda (_%g195225196213%_
                            _%g195226196214%_
                            _%g195227196215%_
                            _%g195228196216%_)
                     (let ((_%$method196261%_
                            (let ((__tmp201862
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self195212%_ 'methods)))
                                  (__tmp201861
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g195226196214%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp201862 __tmp201861)))
                           (_%args196262%_
                            (map (lambda (_%g196249196251%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self195212%_
                                      _%g196249196251%_)))
                                 (let ((__tmp201863
                                        (lambda (_%g196253196256%_
                                                 _%g196254196258%_)
                                          (cons _%g196253196256%_
                                                _%g196254196258%_))))
                                   (declare (not safe))
                                   (__foldr1
                                    __tmp201863
                                    '()
                                    _%g195225196213%_)))))
                       (let ((__tmp201864
                              (cons '%#call
                                    (cons (_%force-e195215%_ _%$method196261%_)
                                          (cons (cons '%#ref
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self195212%_
                                                               'receiver))
                                                            '()))
                                                _%args196262%_)))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp201864 _%stx195213%_)))))
                  (_%__kont201205201206%_
                   (lambda (_%g195268196047%_
                            _%g195269196048%_
                            _%g195270196049%_
                            _%g195271196050%_
                            _%g195272196051%_)
                     (let ((_%$method196103%_
                            (let ((__tmp201866
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self195212%_ 'methods)))
                                  (__tmp201865
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g195269196048%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp201866 __tmp201865)))
                           (_%args196104%_
                            (map (lambda (_%g196091196093%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self195212%_
                                      _%g196091196093%_)))
                                 (let ((__tmp201867
                                        (lambda (_%g196095196098%_
                                                 _%g196096196100%_)
                                          (cons _%g196095196098%_
                                                _%g196096196100%_))))
                                   (declare (not safe))
                                   (__foldr1
                                    __tmp201867
                                    '()
                                    _%g195268196047%_)))))
                       (let ((__tmp201868
                              (cons '%#call
                                    (cons (cons '%#ref (cons 'apply '()))
                                          (cons (_%force-e195215%_
                                                 _%$method196103%_)
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (slot-ref__0 _%self195212%_ 'receiver))
                          '()))
              _%args196104%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp201868 _%stx195213%_)))))
                  (_%__kont201209201210%_
                   (lambda (_%g195321195880%_
                            _%g195322195881%_
                            _%g195323195882%_)
                     (let* ((_%$field195914%_
                             (let ((__tmp201870
                                    (let ()
                                      (declare (not safe))
                                      (slot-ref__0 _%self195212%_ 'slots)))
                                   (__tmp201869
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%g195321195880%_))))
                               (declare (not safe))
                               (hash-ref__0 __tmp201870 __tmp201869)))
                            (__tmp201871
                             (cons '%#struct-unchecked-ref
                                   (cons (cons '%#ref
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (slot-ref__0
                                                        _%self195212%_
                                                        'klass))
                                                     '()))
                                         (cons (cons '%#ref
                                                     (cons _%$field195914%_
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (slot-ref__0 _%self195212%_ 'receiver))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp201871 _%stx195213%_))))
                  (_%__kont201211201212%_
                   (lambda (_%g195354195754%_
                            _%g195355195755%_
                            _%g195356195756%_
                            _%g195357195757%_)
                     (let ((_%$field195792%_
                            (let ((__tmp201873
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self195212%_ 'slots)))
                                  (__tmp201872
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g195355195755%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp201873 __tmp201872)))
                           (_%expr195793%_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-e__1
                               _%self195212%_
                               _%g195354195754%_))))
                       (let ((__tmp201874
                              (cons '%#struct-unchecked-set!
                                    (cons (cons '%#ref
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (slot-ref__0
                                                         _%self195212%_
                                                         'klass))
                                                      '()))
                                          (cons (cons '%#ref
                                                      (cons _%$field195792%_
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (slot-ref__0 _%self195212%_ 'receiver))
                          '()))
              (cons _%expr195793%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp201874 _%stx195213%_)))))
                  (_%__kont201213201214%_
                   (lambda (_%g195391195626%_ _%g195392195627%_)
                     (let* ((_%accessor195649%_
                             (let ((__tmp201875
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol
                                       _%g195392195627%_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp201875)))
                            (_%klass195651%_
                             (let ((__tmp201876
                                    (##structure-ref
                                     _%accessor195649%_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _%stx195213%_
                                __tmp201876)))
                            (_%slot195653%_
                             (##structure-ref
                              _%accessor195649%_
                              '3
                              gxc#!accessor::t
                              '#f)))
                       (if (if (##structure-ref
                                _%accessor195649%_
                                '4
                                gxc#!accessor::t
                                '#f)
                               '#f
                               (or (let ()
                                     (declare (not safe))
                                     (gxc#!class-struct-slot?
                                      _%klass195651%_
                                      _%slot195653%_))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass195651%_
                                      '8
                                      '#f
                                      '#f))))
                           _%stx195213%_
                           (let* ((_%$field195659%_
                                   (let ((__tmp201877
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self195212%_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp201877 _%slot195653%_)))
                                  (__tmp201878
                                   (cons '%#struct-unchecked-ref
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (slot-ref__0
                                                              _%self195212%_
                                                              'klass))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$field195659%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _%self195212%_ 'receiver))
                               '()))
                   '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp201878
                              _%stx195213%_))))))
                  (_%__kont201215201216%_
                   (lambda (_%g195414195521%_
                            _%g195415195522%_
                            _%g195416195523%_)
                     (let* ((_%mutator195551%_
                             (let ((__tmp201879
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol
                                       _%g195416195523%_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp201879)))
                            (_%klass195553%_
                             (let ((__tmp201880
                                    (##structure-ref
                                     _%mutator195551%_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _%stx195213%_
                                __tmp201880)))
                            (_%slot195555%_
                             (##structure-ref
                              _%mutator195551%_
                              '3
                              gxc#!mutator::t
                              '#f))
                            (_%expr195557%_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-e__1
                                _%self195212%_
                                _%g195414195521%_))))
                       (if (if (##structure-ref
                                _%mutator195551%_
                                '4
                                gxc#!mutator::t
                                '#f)
                               '#f
                               (or (let ()
                                     (declare (not safe))
                                     (gxc#!class-struct-slot?
                                      _%klass195553%_
                                      _%slot195555%_))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass195553%_
                                      '8
                                      '#f
                                      '#f))))
                           (let ((__tmp201881
                                  (cons '%#call
                                        (cons (cons (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       '%#ref))
                                                    (cons _%g195416195523%_
                                                          '()))
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#ref))
                                                          (cons _%g195415195522%_
                                                                '()))
                                                    (cons _%expr195557%_
                                                          '()))))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp201881 _%stx195213%_))
                           (let* ((_%$field195563%_
                                   (let ((__tmp201882
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self195212%_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp201882 _%slot195555%_)))
                                  (__tmp201883
                                   (cons '%#struct-unchecked-set!
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (slot-ref__0
                                                              _%self195212%_
                                                              'klass))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$field195563%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _%self195212%_ 'receiver))
                               '()))
                   (cons _%expr195557%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp201883
                              _%stx195213%_))))))
                  (_%__kont201217201218%_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-operands _%self195212%_ _%stx195213%_)))))
              (let* ((_%__match201698201699%_
                      (lambda (_%e195417195457%_
                               _%hd195418195460%_
                               _%tl195419195462%_
                               _%e195420195465%_
                               _%hd195421195468%_
                               _%tl195422195470%_
                               _%e195423195473%_
                               _%hd195424195476%_
                               _%tl195425195478%_
                               _%e195426195481%_
                               _%hd195427195484%_
                               _%tl195428195486%_
                               _%e195429195489%_
                               _%hd195430195492%_
                               _%tl195431195494%_
                               _%e195432195497%_
                               _%hd195433195500%_
                               _%tl195434195502%_
                               _%e195435195505%_
                               _%hd195436195508%_
                               _%tl195437195510%_
                               _%e195438195513%_
                               _%hd195439195516%_
                               _%tl195440195518%_)
                        (let ((_%g195414195521%_ _%hd195439195516%_)
                              (_%g195415195522%_ _%hd195436195508%_)
                              (_%g195416195523%_ _%hd195427195484%_))
                          (if (and (let ((__tmp201884
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self195212%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%g195415195522%_
                                      __tmp201884))
                                   (let ((__tmp201885
                                          (let ((__tmp201886
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%g195416195523%_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp201886))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp201885
                                      'gxc#!mutator::t)))
                              (_%__kont201215201216%_
                               _%g195414195521%_
                               _%g195415195522%_
                               _%g195416195523%_)
                              (_%__kont201217201218%_)))))
                     (_%__match201696201697%_
                      (lambda (_%e195417195457%_
                               _%hd195418195460%_
                               _%tl195419195462%_
                               _%e195420195465%_
                               _%hd195421195468%_
                               _%tl195422195470%_
                               _%e195423195473%_
                               _%hd195424195476%_
                               _%tl195425195478%_
                               _%e195426195481%_
                               _%hd195427195484%_
                               _%tl195428195486%_
                               _%e195429195489%_
                               _%hd195430195492%_
                               _%tl195431195494%_
                               _%e195432195497%_
                               _%hd195433195500%_
                               _%tl195434195502%_
                               _%e195435195505%_
                               _%hd195436195508%_
                               _%tl195437195510%_
                               _%e195438195513%_
                               _%hd195439195516%_
                               _%tl195440195518%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl195440195518%_))
                            (_%__match201698201699%_
                             _%e195417195457%_
                             _%hd195418195460%_
                             _%tl195419195462%_
                             _%e195420195465%_
                             _%hd195421195468%_
                             _%tl195422195470%_
                             _%e195423195473%_
                             _%hd195424195476%_
                             _%tl195425195478%_
                             _%e195426195481%_
                             _%hd195427195484%_
                             _%tl195428195486%_
                             _%e195429195489%_
                             _%hd195430195492%_
                             _%tl195431195494%_
                             _%e195432195497%_
                             _%hd195433195500%_
                             _%tl195434195502%_
                             _%e195435195505%_
                             _%hd195436195508%_
                             _%tl195437195510%_
                             _%e195438195513%_
                             _%hd195439195516%_
                             _%tl195440195518%_)
                            (_%__kont201217201218%_))))
                     (_%__match201690201691%_
                      (lambda (_%e195417195457%_
                               _%hd195418195460%_
                               _%tl195419195462%_
                               _%e195420195465%_
                               _%hd195421195468%_
                               _%tl195422195470%_
                               _%e195423195473%_
                               _%hd195424195476%_
                               _%tl195425195478%_
                               _%e195426195481%_
                               _%hd195427195484%_
                               _%tl195428195486%_
                               _%e195429195489%_
                               _%hd195430195492%_
                               _%tl195431195494%_
                               _%e195432195497%_
                               _%hd195433195500%_
                               _%tl195434195502%_
                               _%e195435195505%_
                               _%hd195436195508%_
                               _%tl195437195510%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl195431195494%_))
                            (let ((_%e195438195513%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl195431195494%_))))
                              (let ((_%tl195440195518%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e195438195513%_)))
                                    (_%hd195439195516%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e195438195513%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl195440195518%_))
                                    (_%__match201698201699%_
                                     _%e195417195457%_
                                     _%hd195418195460%_
                                     _%tl195419195462%_
                                     _%e195420195465%_
                                     _%hd195421195468%_
                                     _%tl195422195470%_
                                     _%e195423195473%_
                                     _%hd195424195476%_
                                     _%tl195425195478%_
                                     _%e195426195481%_
                                     _%hd195427195484%_
                                     _%tl195428195486%_
                                     _%e195429195489%_
                                     _%hd195430195492%_
                                     _%tl195431195494%_
                                     _%e195432195497%_
                                     _%hd195433195500%_
                                     _%tl195434195502%_
                                     _%e195435195505%_
                                     _%hd195436195508%_
                                     _%tl195437195510%_
                                     _%e195438195513%_
                                     _%hd195439195516%_
                                     _%tl195440195518%_)
                                    (_%__kont201217201218%_))))
                            (_%__kont201217201218%_))))
                     (_%__match201636201637%_
                      (lambda (_%e195393195570%_
                               _%hd195394195573%_
                               _%tl195395195575%_
                               _%e195396195578%_
                               _%hd195397195581%_
                               _%tl195398195583%_
                               _%e195399195586%_
                               _%hd195400195589%_
                               _%tl195401195591%_
                               _%e195402195594%_
                               _%hd195403195597%_
                               _%tl195404195599%_
                               _%e195405195602%_
                               _%hd195406195605%_
                               _%tl195407195607%_
                               _%e195408195610%_
                               _%hd195409195613%_
                               _%tl195410195615%_
                               _%e195411195618%_
                               _%hd195412195621%_
                               _%tl195413195623%_)
                        (let ((_%g195391195626%_ _%hd195412195621%_)
                              (_%g195392195627%_ _%hd195403195597%_))
                          (if (and (let ((__tmp201887
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self195212%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%g195391195626%_
                                      __tmp201887))
                                   (let ((__tmp201888
                                          (let ((__tmp201889
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%g195392195627%_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp201889))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp201888
                                      'gxc#!accessor::t)))
                              (_%__kont201213201214%_
                               _%g195391195626%_
                               _%g195392195627%_)
                              (_%__kont201217201218%_)))))
                     (_%__match201634201635%_
                      (lambda (_%e195393195570%_
                               _%hd195394195573%_
                               _%tl195395195575%_
                               _%e195396195578%_
                               _%hd195397195581%_
                               _%tl195398195583%_
                               _%e195399195586%_
                               _%hd195400195589%_
                               _%tl195401195591%_
                               _%e195402195594%_
                               _%hd195403195597%_
                               _%tl195404195599%_
                               _%e195405195602%_
                               _%hd195406195605%_
                               _%tl195407195607%_
                               _%e195408195610%_
                               _%hd195409195613%_
                               _%tl195410195615%_
                               _%e195411195618%_
                               _%hd195412195621%_
                               _%tl195413195623%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl195407195607%_))
                            (_%__match201636201637%_
                             _%e195393195570%_
                             _%hd195394195573%_
                             _%tl195395195575%_
                             _%e195396195578%_
                             _%hd195397195581%_
                             _%tl195398195583%_
                             _%e195399195586%_
                             _%hd195400195589%_
                             _%tl195401195591%_
                             _%e195402195594%_
                             _%hd195403195597%_
                             _%tl195404195599%_
                             _%e195405195602%_
                             _%hd195406195605%_
                             _%tl195407195607%_
                             _%e195408195610%_
                             _%hd195409195613%_
                             _%tl195410195615%_
                             _%e195411195618%_
                             _%hd195412195621%_
                             _%tl195413195623%_)
                            (_%__match201690201691%_
                             _%e195393195570%_
                             _%hd195394195573%_
                             _%tl195395195575%_
                             _%e195396195578%_
                             _%hd195397195581%_
                             _%tl195398195583%_
                             _%e195399195586%_
                             _%hd195400195589%_
                             _%tl195401195591%_
                             _%e195402195594%_
                             _%hd195403195597%_
                             _%tl195404195599%_
                             _%e195405195602%_
                             _%hd195406195605%_
                             _%tl195407195607%_
                             _%e195408195610%_
                             _%hd195409195613%_
                             _%tl195410195615%_
                             _%e195411195618%_
                             _%hd195412195621%_
                             _%tl195413195623%_))))
                     (_%__match201580201581%_
                      (lambda (_%e195358195666%_
                               _%hd195359195669%_
                               _%tl195360195671%_
                               _%e195361195674%_
                               _%hd195362195677%_
                               _%tl195363195679%_
                               _%e195364195682%_
                               _%hd195365195685%_
                               _%tl195366195687%_
                               _%e195367195690%_
                               _%hd195368195693%_
                               _%tl195369195695%_
                               _%e195370195698%_
                               _%hd195371195701%_
                               _%tl195372195703%_
                               _%e195373195706%_
                               _%hd195374195709%_
                               _%tl195375195711%_
                               _%e195376195714%_
                               _%hd195377195717%_
                               _%tl195378195719%_
                               _%e195379195722%_
                               _%hd195380195725%_
                               _%tl195381195727%_
                               _%e195382195730%_
                               _%hd195383195733%_
                               _%tl195384195735%_
                               _%e195385195738%_
                               _%hd195386195741%_
                               _%tl195387195743%_
                               _%e195388195746%_
                               _%hd195389195749%_
                               _%tl195390195751%_)
                        (let ((_%g195354195754%_ _%hd195389195749%_)
                              (_%g195355195755%_ _%hd195386195741%_)
                              (_%g195356195756%_ _%hd195377195717%_)
                              (_%g195357195757%_ _%hd195368195693%_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%g195357195757%_
                                          'slot-set!))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%g195357195757%_
                                          'unchecked-slot-set!)))
                                   (let ((__tmp201890
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self195212%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%g195356195756%_
                                      __tmp201890)))
                              (_%__kont201211201212%_
                               _%g195354195754%_
                               _%g195355195755%_
                               _%g195356195756%_
                               _%g195357195757%_)
                              (_%__kont201217201218%_)))))
                     (_%__match201572201573%_
                      (lambda (_%e195358195666%_
                               _%hd195359195669%_
                               _%tl195360195671%_
                               _%e195361195674%_
                               _%hd195362195677%_
                               _%tl195363195679%_
                               _%e195364195682%_
                               _%hd195365195685%_
                               _%tl195366195687%_
                               _%e195367195690%_
                               _%hd195368195693%_
                               _%tl195369195695%_
                               _%e195370195698%_
                               _%hd195371195701%_
                               _%tl195372195703%_
                               _%e195373195706%_
                               _%hd195374195709%_
                               _%tl195375195711%_
                               _%e195376195714%_
                               _%hd195377195717%_
                               _%tl195378195719%_
                               _%e195379195722%_
                               _%hd195380195725%_
                               _%tl195381195727%_
                               _%e195382195730%_
                               _%hd195383195733%_
                               _%tl195384195735%_
                               _%e195385195738%_
                               _%hd195386195741%_
                               _%tl195387195743%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl195381195727%_))
                            (let ((_%e195388195746%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl195381195727%_))))
                              (let ((_%tl195390195751%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e195388195746%_)))
                                    (_%hd195389195749%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e195388195746%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl195390195751%_))
                                    (_%__match201580201581%_
                                     _%e195358195666%_
                                     _%hd195359195669%_
                                     _%tl195360195671%_
                                     _%e195361195674%_
                                     _%hd195362195677%_
                                     _%tl195363195679%_
                                     _%e195364195682%_
                                     _%hd195365195685%_
                                     _%tl195366195687%_
                                     _%e195367195690%_
                                     _%hd195368195693%_
                                     _%tl195369195695%_
                                     _%e195370195698%_
                                     _%hd195371195701%_
                                     _%tl195372195703%_
                                     _%e195373195706%_
                                     _%hd195374195709%_
                                     _%tl195375195711%_
                                     _%e195376195714%_
                                     _%hd195377195717%_
                                     _%tl195378195719%_
                                     _%e195379195722%_
                                     _%hd195380195725%_
                                     _%tl195381195727%_
                                     _%e195382195730%_
                                     _%hd195383195733%_
                                     _%tl195384195735%_
                                     _%e195385195738%_
                                     _%hd195386195741%_
                                     _%tl195387195743%_
                                     _%e195388195746%_
                                     _%hd195389195749%_
                                     _%tl195390195751%_)
                                    (_%__kont201217201218%_))))
                            (_%__match201696201697%_
                             _%e195358195666%_
                             _%hd195359195669%_
                             _%tl195360195671%_
                             _%e195361195674%_
                             _%hd195362195677%_
                             _%tl195363195679%_
                             _%e195364195682%_
                             _%hd195365195685%_
                             _%tl195366195687%_
                             _%e195367195690%_
                             _%hd195368195693%_
                             _%tl195369195695%_
                             _%e195370195698%_
                             _%hd195371195701%_
                             _%tl195372195703%_
                             _%e195373195706%_
                             _%hd195374195709%_
                             _%tl195375195711%_
                             _%e195376195714%_
                             _%hd195377195717%_
                             _%tl195378195719%_
                             _%e195379195722%_
                             _%hd195380195725%_
                             _%tl195381195727%_))))
                     (_%__match201494201495%_
                      (lambda (_%e195324195800%_
                               _%hd195325195803%_
                               _%tl195326195805%_
                               _%e195327195808%_
                               _%hd195328195811%_
                               _%tl195329195813%_
                               _%e195330195816%_
                               _%hd195331195819%_
                               _%tl195332195821%_
                               _%e195333195824%_
                               _%hd195334195827%_
                               _%tl195335195829%_
                               _%e195336195832%_
                               _%hd195337195835%_
                               _%tl195338195837%_
                               _%e195339195840%_
                               _%hd195340195843%_
                               _%tl195341195845%_
                               _%e195342195848%_
                               _%hd195343195851%_
                               _%tl195344195853%_
                               _%e195345195856%_
                               _%hd195346195859%_
                               _%tl195347195861%_
                               _%e195348195864%_
                               _%hd195349195867%_
                               _%tl195350195869%_
                               _%e195351195872%_
                               _%hd195352195875%_
                               _%tl195353195877%_)
                        (let ((_%g195321195880%_ _%hd195352195875%_)
                              (_%g195322195881%_ _%hd195343195851%_)
                              (_%g195323195882%_ _%hd195334195827%_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%g195323195882%_
                                          'slot-ref))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%g195323195882%_
                                          'unchecked-slot-ref)))
                                   (let ((__tmp201891
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self195212%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%g195322195881%_
                                      __tmp201891)))
                              (_%__kont201209201210%_
                               _%g195321195880%_
                               _%g195322195881%_
                               _%g195323195882%_)
                              (_%__match201698201699%_
                               _%e195324195800%_
                               _%hd195325195803%_
                               _%tl195326195805%_
                               _%e195327195808%_
                               _%hd195328195811%_
                               _%tl195329195813%_
                               _%e195330195816%_
                               _%hd195331195819%_
                               _%tl195332195821%_
                               _%e195333195824%_
                               _%hd195334195827%_
                               _%tl195335195829%_
                               _%e195336195832%_
                               _%hd195337195835%_
                               _%tl195338195837%_
                               _%e195339195840%_
                               _%hd195340195843%_
                               _%tl195341195845%_
                               _%e195342195848%_
                               _%hd195343195851%_
                               _%tl195344195853%_
                               _%e195345195856%_
                               _%hd195346195859%_
                               _%tl195347195861%_)))))
                     (_%__match201492201493%_
                      (lambda (_%e195324195800%_
                               _%hd195325195803%_
                               _%tl195326195805%_
                               _%e195327195808%_
                               _%hd195328195811%_
                               _%tl195329195813%_
                               _%e195330195816%_
                               _%hd195331195819%_
                               _%tl195332195821%_
                               _%e195333195824%_
                               _%hd195334195827%_
                               _%tl195335195829%_
                               _%e195336195832%_
                               _%hd195337195835%_
                               _%tl195338195837%_
                               _%e195339195840%_
                               _%hd195340195843%_
                               _%tl195341195845%_
                               _%e195342195848%_
                               _%hd195343195851%_
                               _%tl195344195853%_
                               _%e195345195856%_
                               _%hd195346195859%_
                               _%tl195347195861%_
                               _%e195348195864%_
                               _%hd195349195867%_
                               _%tl195350195869%_
                               _%e195351195872%_
                               _%hd195352195875%_
                               _%tl195353195877%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl195347195861%_))
                            (_%__match201494201495%_
                             _%e195324195800%_
                             _%hd195325195803%_
                             _%tl195326195805%_
                             _%e195327195808%_
                             _%hd195328195811%_
                             _%tl195329195813%_
                             _%e195330195816%_
                             _%hd195331195819%_
                             _%tl195332195821%_
                             _%e195333195824%_
                             _%hd195334195827%_
                             _%tl195335195829%_
                             _%e195336195832%_
                             _%hd195337195835%_
                             _%tl195338195837%_
                             _%e195339195840%_
                             _%hd195340195843%_
                             _%tl195341195845%_
                             _%e195342195848%_
                             _%hd195343195851%_
                             _%tl195344195853%_
                             _%e195345195856%_
                             _%hd195346195859%_
                             _%tl195347195861%_
                             _%e195348195864%_
                             _%hd195349195867%_
                             _%tl195350195869%_
                             _%e195351195872%_
                             _%hd195352195875%_
                             _%tl195353195877%_)
                            (_%__match201572201573%_
                             _%e195324195800%_
                             _%hd195325195803%_
                             _%tl195326195805%_
                             _%e195327195808%_
                             _%hd195328195811%_
                             _%tl195329195813%_
                             _%e195330195816%_
                             _%hd195331195819%_
                             _%tl195332195821%_
                             _%e195333195824%_
                             _%hd195334195827%_
                             _%tl195335195829%_
                             _%e195336195832%_
                             _%hd195337195835%_
                             _%tl195338195837%_
                             _%e195339195840%_
                             _%hd195340195843%_
                             _%tl195341195845%_
                             _%e195342195848%_
                             _%hd195343195851%_
                             _%tl195344195853%_
                             _%e195345195856%_
                             _%hd195346195859%_
                             _%tl195347195861%_
                             _%e195348195864%_
                             _%hd195349195867%_
                             _%tl195350195869%_
                             _%e195351195872%_
                             _%hd195352195875%_
                             _%tl195353195877%_))))
                     (_%__match201482201483%_
                      (lambda (_%e195324195800%_
                               _%hd195325195803%_
                               _%tl195326195805%_
                               _%e195327195808%_
                               _%hd195328195811%_
                               _%tl195329195813%_
                               _%e195330195816%_
                               _%hd195331195819%_
                               _%tl195332195821%_
                               _%e195333195824%_
                               _%hd195334195827%_
                               _%tl195335195829%_
                               _%e195336195832%_
                               _%hd195337195835%_
                               _%tl195338195837%_
                               _%e195339195840%_
                               _%hd195340195843%_
                               _%tl195341195845%_
                               _%e195342195848%_
                               _%hd195343195851%_
                               _%tl195344195853%_
                               _%e195345195856%_
                               _%hd195346195859%_
                               _%tl195347195861%_
                               _%e195348195864%_
                               _%hd195349195867%_
                               _%tl195350195869%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#quote _%hd195349195867%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl195350195869%_))
                                (let ((_%e195351195872%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl195350195869%_))))
                                  (let ((_%tl195353195877%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e195351195872%_)))
                                        (_%hd195352195875%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e195351195872%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl195353195877%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl195347195861%_))
                                            (_%__match201494201495%_
                                             _%e195324195800%_
                                             _%hd195325195803%_
                                             _%tl195326195805%_
                                             _%e195327195808%_
                                             _%hd195328195811%_
                                             _%tl195329195813%_
                                             _%e195330195816%_
                                             _%hd195331195819%_
                                             _%tl195332195821%_
                                             _%e195333195824%_
                                             _%hd195334195827%_
                                             _%tl195335195829%_
                                             _%e195336195832%_
                                             _%hd195337195835%_
                                             _%tl195338195837%_
                                             _%e195339195840%_
                                             _%hd195340195843%_
                                             _%tl195341195845%_
                                             _%e195342195848%_
                                             _%hd195343195851%_
                                             _%tl195344195853%_
                                             _%e195345195856%_
                                             _%hd195346195859%_
                                             _%tl195347195861%_
                                             _%e195348195864%_
                                             _%hd195349195867%_
                                             _%tl195350195869%_
                                             _%e195351195872%_
                                             _%hd195352195875%_
                                             _%tl195353195877%_)
                                            (_%__match201572201573%_
                                             _%e195324195800%_
                                             _%hd195325195803%_
                                             _%tl195326195805%_
                                             _%e195327195808%_
                                             _%hd195328195811%_
                                             _%tl195329195813%_
                                             _%e195330195816%_
                                             _%hd195331195819%_
                                             _%tl195332195821%_
                                             _%e195333195824%_
                                             _%hd195334195827%_
                                             _%tl195335195829%_
                                             _%e195336195832%_
                                             _%hd195337195835%_
                                             _%tl195338195837%_
                                             _%e195339195840%_
                                             _%hd195340195843%_
                                             _%tl195341195845%_
                                             _%e195342195848%_
                                             _%hd195343195851%_
                                             _%tl195344195853%_
                                             _%e195345195856%_
                                             _%hd195346195859%_
                                             _%tl195347195861%_
                                             _%e195348195864%_
                                             _%hd195349195867%_
                                             _%tl195350195869%_
                                             _%e195351195872%_
                                             _%hd195352195875%_
                                             _%tl195353195877%_))
                                        (_%__match201696201697%_
                                         _%e195324195800%_
                                         _%hd195325195803%_
                                         _%tl195326195805%_
                                         _%e195327195808%_
                                         _%hd195328195811%_
                                         _%tl195329195813%_
                                         _%e195330195816%_
                                         _%hd195331195819%_
                                         _%tl195332195821%_
                                         _%e195333195824%_
                                         _%hd195334195827%_
                                         _%tl195335195829%_
                                         _%e195336195832%_
                                         _%hd195337195835%_
                                         _%tl195338195837%_
                                         _%e195339195840%_
                                         _%hd195340195843%_
                                         _%tl195341195845%_
                                         _%e195342195848%_
                                         _%hd195343195851%_
                                         _%tl195344195853%_
                                         _%e195345195856%_
                                         _%hd195346195859%_
                                         _%tl195347195861%_))))
                                (_%__match201696201697%_
                                 _%e195324195800%_
                                 _%hd195325195803%_
                                 _%tl195326195805%_
                                 _%e195327195808%_
                                 _%hd195328195811%_
                                 _%tl195329195813%_
                                 _%e195330195816%_
                                 _%hd195331195819%_
                                 _%tl195332195821%_
                                 _%e195333195824%_
                                 _%hd195334195827%_
                                 _%tl195335195829%_
                                 _%e195336195832%_
                                 _%hd195337195835%_
                                 _%tl195338195837%_
                                 _%e195339195840%_
                                 _%hd195340195843%_
                                 _%tl195341195845%_
                                 _%e195342195848%_
                                 _%hd195343195851%_
                                 _%tl195344195853%_
                                 _%e195345195856%_
                                 _%hd195346195859%_
                                 _%tl195347195861%_))
                            (_%__match201696201697%_
                             _%e195324195800%_
                             _%hd195325195803%_
                             _%tl195326195805%_
                             _%e195327195808%_
                             _%hd195328195811%_
                             _%tl195329195813%_
                             _%e195330195816%_
                             _%hd195331195819%_
                             _%tl195332195821%_
                             _%e195333195824%_
                             _%hd195334195827%_
                             _%tl195335195829%_
                             _%e195336195832%_
                             _%hd195337195835%_
                             _%tl195338195837%_
                             _%e195339195840%_
                             _%hd195340195843%_
                             _%tl195341195845%_
                             _%e195342195848%_
                             _%hd195343195851%_
                             _%tl195344195853%_
                             _%e195345195856%_
                             _%hd195346195859%_
                             _%tl195347195861%_))))
                     (_%__match201414201415%_
                      (lambda (_%e195273195921%_
                               _%hd195274195924%_
                               _%tl195275195926%_
                               _%e195276195929%_
                               _%hd195277195932%_
                               _%tl195278195934%_
                               _%e195279195937%_
                               _%hd195280195940%_
                               _%tl195281195942%_
                               _%e195282195945%_
                               _%hd195283195948%_
                               _%tl195284195950%_
                               _%e195285195953%_
                               _%hd195286195956%_
                               _%tl195287195958%_
                               _%e195288195961%_
                               _%hd195289195964%_
                               _%tl195290195966%_
                               _%e195291195969%_
                               _%hd195292195972%_
                               _%tl195293195974%_
                               _%e195294195977%_
                               _%hd195295195980%_
                               _%tl195296195982%_
                               _%e195297195985%_
                               _%hd195298195988%_
                               _%tl195299195990%_
                               _%e195300195993%_
                               _%hd195301195996%_
                               _%tl195302195998%_
                               _%e195303196001%_
                               _%hd195304196004%_
                               _%tl195305196006%_
                               _%e195306196009%_
                               _%hd195307196012%_
                               _%tl195308196014%_
                               _%e195309196017%_
                               _%hd195310196020%_
                               _%tl195311196022%_
                               _%__splice201207201208%_
                               _%target195312196025%_
                               _%tl195314196027%_)
                        (letrec ((_%loop195315196030%_
                                  (lambda (_%hd195313196033%_
                                           _%args195319196035%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd195313196033%_))
                                        (let ((_%e195316196037%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd195313196033%_))))
                                          (let ((_%lp-tl195318196042%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e195316196037%_)))
                                                (_%lp-hd195317196040%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e195316196037%_))))
                                            (_%loop195315196030%_
                                             _%lp-tl195318196042%_
                                             (cons _%lp-hd195317196040%_
                                                   _%args195319196035%_))))
                                        (let ((_%args195320196045%_
                                               (reverse _%args195319196035%_)))
                                          (let ((_%g195268196047%_
                                                 _%args195320196045%_)
                                                (_%g195269196048%_
                                                 _%hd195310196020%_)
                                                (_%g195270196049%_
                                                 _%hd195301195996%_)
                                                (_%g195271196050%_
                                                 _%hd195292195972%_)
                                                (_%g195272196051%_
                                                 _%hd195283195948%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%g195272196051%_
                                                        'apply))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%g195271196050%_
                                                        'call-method))
                                                     (let ((__tmp201892
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self195212%_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _%g195270196049%_
                                                        __tmp201892)))
                                                (_%__kont201205201206%_
                                                 _%g195268196047%_
                                                 _%g195269196048%_
                                                 _%g195270196049%_
                                                 _%g195271196050%_
                                                 _%g195272196051%_)
                                                (_%__kont201217201218%_))))))))
                          (_%loop195315196030%_ _%target195312196025%_ '()))))
                     (_%__match201372201373%_
                      (lambda (_%e195273195921%_
                               _%hd195274195924%_
                               _%tl195275195926%_
                               _%e195276195929%_
                               _%hd195277195932%_
                               _%tl195278195934%_
                               _%e195279195937%_
                               _%hd195280195940%_
                               _%tl195281195942%_
                               _%e195282195945%_
                               _%hd195283195948%_
                               _%tl195284195950%_
                               _%e195285195953%_
                               _%hd195286195956%_
                               _%tl195287195958%_
                               _%e195288195961%_
                               _%hd195289195964%_
                               _%tl195290195966%_
                               _%e195291195969%_
                               _%hd195292195972%_
                               _%tl195293195974%_
                               _%e195294195977%_
                               _%hd195295195980%_
                               _%tl195296195982%_
                               _%e195297195985%_
                               _%hd195298195988%_
                               _%tl195299195990%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _%hd195298195988%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl195299195990%_))
                                (let ((_%e195300195993%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl195299195990%_))))
                                  (let ((_%tl195302195998%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e195300195993%_)))
                                        (_%hd195301195996%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e195300195993%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl195302195998%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl195296195982%_))
                                            (let ((_%e195303196001%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl195296195982%_))))
                                              (let ((_%tl195305196006%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e195303196001%_)))
                                                    (_%hd195304196004%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e195303196001%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%hd195304196004%_))
                                                    (let ((_%e195306196009%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd195304196004%_))))
                                                      (let ((_%tl195308196014%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e195306196009%_)))
                    (_%hd195307196012%_
                     (let () (declare (not safe)) (##car _%e195306196009%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _%hd195307196012%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _%hd195307196012%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl195308196014%_))
                            (let ((_%e195309196017%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl195308196014%_))))
                              (let ((_%tl195311196022%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e195309196017%_)))
                                    (_%hd195310196020%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e195309196017%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl195311196022%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl195305196006%_))
                                        (let ((_%__splice201207201208%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice->vector
                                                  _%tl195305196006%_
                                                  '0))))
                                          (let ((_%tl195314196027%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice201207201208%_
                                                    '1)))
                                                (_%target195312196025%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice201207201208%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl195314196027%_))
                                                (_%__match201414201415%_
                                                 _%e195273195921%_
                                                 _%hd195274195924%_
                                                 _%tl195275195926%_
                                                 _%e195276195929%_
                                                 _%hd195277195932%_
                                                 _%tl195278195934%_
                                                 _%e195279195937%_
                                                 _%hd195280195940%_
                                                 _%tl195281195942%_
                                                 _%e195282195945%_
                                                 _%hd195283195948%_
                                                 _%tl195284195950%_
                                                 _%e195285195953%_
                                                 _%hd195286195956%_
                                                 _%tl195287195958%_
                                                 _%e195288195961%_
                                                 _%hd195289195964%_
                                                 _%tl195290195966%_
                                                 _%e195291195969%_
                                                 _%hd195292195972%_
                                                 _%tl195293195974%_
                                                 _%e195294195977%_
                                                 _%hd195295195980%_
                                                 _%tl195296195982%_
                                                 _%e195297195985%_
                                                 _%hd195298195988%_
                                                 _%tl195299195990%_
                                                 _%e195300195993%_
                                                 _%hd195301195996%_
                                                 _%tl195302195998%_
                                                 _%e195303196001%_
                                                 _%hd195304196004%_
                                                 _%tl195305196006%_
                                                 _%e195306196009%_
                                                 _%hd195307196012%_
                                                 _%tl195308196014%_
                                                 _%e195309196017%_
                                                 _%hd195310196020%_
                                                 _%tl195311196022%_
                                                 _%__splice201207201208%_
                                                 _%target195312196025%_
                                                 _%tl195314196027%_)
                                                (_%__kont201217201218%_))))
                                        (_%__kont201217201218%_))
                                    (_%__kont201217201218%_))))
                            (_%__kont201217201218%_))
                        (_%__kont201217201218%_))
                    (_%__kont201217201218%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont201217201218%_))))
                                            (_%__match201696201697%_
                                             _%e195273195921%_
                                             _%hd195274195924%_
                                             _%tl195275195926%_
                                             _%e195276195929%_
                                             _%hd195277195932%_
                                             _%tl195278195934%_
                                             _%e195279195937%_
                                             _%hd195280195940%_
                                             _%tl195281195942%_
                                             _%e195282195945%_
                                             _%hd195283195948%_
                                             _%tl195284195950%_
                                             _%e195285195953%_
                                             _%hd195286195956%_
                                             _%tl195287195958%_
                                             _%e195288195961%_
                                             _%hd195289195964%_
                                             _%tl195290195966%_
                                             _%e195291195969%_
                                             _%hd195292195972%_
                                             _%tl195293195974%_
                                             _%e195294195977%_
                                             _%hd195295195980%_
                                             _%tl195296195982%_))
                                        (_%__match201696201697%_
                                         _%e195273195921%_
                                         _%hd195274195924%_
                                         _%tl195275195926%_
                                         _%e195276195929%_
                                         _%hd195277195932%_
                                         _%tl195278195934%_
                                         _%e195279195937%_
                                         _%hd195280195940%_
                                         _%tl195281195942%_
                                         _%e195282195945%_
                                         _%hd195283195948%_
                                         _%tl195284195950%_
                                         _%e195285195953%_
                                         _%hd195286195956%_
                                         _%tl195287195958%_
                                         _%e195288195961%_
                                         _%hd195289195964%_
                                         _%tl195290195966%_
                                         _%e195291195969%_
                                         _%hd195292195972%_
                                         _%tl195293195974%_
                                         _%e195294195977%_
                                         _%hd195295195980%_
                                         _%tl195296195982%_))))
                                (_%__match201696201697%_
                                 _%e195273195921%_
                                 _%hd195274195924%_
                                 _%tl195275195926%_
                                 _%e195276195929%_
                                 _%hd195277195932%_
                                 _%tl195278195934%_
                                 _%e195279195937%_
                                 _%hd195280195940%_
                                 _%tl195281195942%_
                                 _%e195282195945%_
                                 _%hd195283195948%_
                                 _%tl195284195950%_
                                 _%e195285195953%_
                                 _%hd195286195956%_
                                 _%tl195287195958%_
                                 _%e195288195961%_
                                 _%hd195289195964%_
                                 _%tl195290195966%_
                                 _%e195291195969%_
                                 _%hd195292195972%_
                                 _%tl195293195974%_
                                 _%e195294195977%_
                                 _%hd195295195980%_
                                 _%tl195296195982%_))
                            (_%__match201482201483%_
                             _%e195273195921%_
                             _%hd195274195924%_
                             _%tl195275195926%_
                             _%e195276195929%_
                             _%hd195277195932%_
                             _%tl195278195934%_
                             _%e195279195937%_
                             _%hd195280195940%_
                             _%tl195281195942%_
                             _%e195282195945%_
                             _%hd195283195948%_
                             _%tl195284195950%_
                             _%e195285195953%_
                             _%hd195286195956%_
                             _%tl195287195958%_
                             _%e195288195961%_
                             _%hd195289195964%_
                             _%tl195290195966%_
                             _%e195291195969%_
                             _%hd195292195972%_
                             _%tl195293195974%_
                             _%e195294195977%_
                             _%hd195295195980%_
                             _%tl195296195982%_
                             _%e195297195985%_
                             _%hd195298195988%_
                             _%tl195299195990%_))))
                     (_%__match201304201305%_
                      (lambda (_%e195229196111%_
                               _%hd195230196114%_
                               _%tl195231196116%_
                               _%e195232196119%_
                               _%hd195233196122%_
                               _%tl195234196124%_
                               _%e195235196127%_
                               _%hd195236196130%_
                               _%tl195237196132%_
                               _%e195238196135%_
                               _%hd195239196138%_
                               _%tl195240196140%_
                               _%e195241196143%_
                               _%hd195242196146%_
                               _%tl195243196148%_
                               _%e195244196151%_
                               _%hd195245196154%_
                               _%tl195246196156%_
                               _%e195247196159%_
                               _%hd195248196162%_
                               _%tl195249196164%_
                               _%e195250196167%_
                               _%hd195251196170%_
                               _%tl195252196172%_
                               _%e195253196175%_
                               _%hd195254196178%_
                               _%tl195255196180%_
                               _%e195256196183%_
                               _%hd195257196186%_
                               _%tl195258196188%_
                               _%__splice201203201204%_
                               _%target195259196191%_
                               _%tl195261196193%_)
                        (letrec ((_%loop195262196196%_
                                  (lambda (_%hd195260196199%_
                                           _%args195266196201%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd195260196199%_))
                                        (let ((_%e195263196203%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd195260196199%_))))
                                          (let ((_%lp-tl195265196208%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e195263196203%_)))
                                                (_%lp-hd195264196206%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e195263196203%_))))
                                            (_%loop195262196196%_
                                             _%lp-tl195265196208%_
                                             (cons _%lp-hd195264196206%_
                                                   _%args195266196201%_))))
                                        (let ((_%args195267196211%_
                                               (reverse _%args195266196201%_)))
                                          (let ((_%g195225196213%_
                                                 _%args195267196211%_)
                                                (_%g195226196214%_
                                                 _%hd195257196186%_)
                                                (_%g195227196215%_
                                                 _%hd195248196162%_)
                                                (_%g195228196216%_
                                                 _%hd195239196138%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%g195228196216%_
                                                        'call-method))
                                                     (let ((__tmp201893
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self195212%_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _%g195227196215%_
                                                        __tmp201893)))
                                                (_%__kont201201201202%_
                                                 _%g195225196213%_
                                                 _%g195226196214%_
                                                 _%g195227196215%_
                                                 _%g195228196216%_)
                                                (_%__match201492201493%_
                                                 _%e195229196111%_
                                                 _%hd195230196114%_
                                                 _%tl195231196116%_
                                                 _%e195232196119%_
                                                 _%hd195233196122%_
                                                 _%tl195234196124%_
                                                 _%e195235196127%_
                                                 _%hd195236196130%_
                                                 _%tl195237196132%_
                                                 _%e195238196135%_
                                                 _%hd195239196138%_
                                                 _%tl195240196140%_
                                                 _%e195241196143%_
                                                 _%hd195242196146%_
                                                 _%tl195243196148%_
                                                 _%e195244196151%_
                                                 _%hd195245196154%_
                                                 _%tl195246196156%_
                                                 _%e195247196159%_
                                                 _%hd195248196162%_
                                                 _%tl195249196164%_
                                                 _%e195250196167%_
                                                 _%hd195251196170%_
                                                 _%tl195252196172%_
                                                 _%e195253196175%_
                                                 _%hd195254196178%_
                                                 _%tl195255196180%_
                                                 _%e195256196183%_
                                                 _%hd195257196186%_
                                                 _%tl195258196188%_))))))))
                          (_%loop195262196196%_ _%target195259196191%_ '())))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx201199201200%_))
                    (let ((_%e195229196111%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx201199201200%_))))
                      (let ((_%tl195231196116%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e195229196111%_)))
                            (_%hd195230196114%_
                             (let ()
                               (declare (not safe))
                               (##car _%e195229196111%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl195231196116%_))
                            (let ((_%e195232196119%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl195231196116%_))))
                              (let ((_%tl195234196124%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e195232196119%_)))
                                    (_%hd195233196122%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e195232196119%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd195233196122%_))
                                    (let ((_%e195235196127%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd195233196122%_))))
                                      (let ((_%tl195237196132%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e195235196127%_)))
                                            (_%hd195236196130%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e195235196127%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _%hd195236196130%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _%hd195236196130%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl195237196132%_))
                                                    (let ((_%e195238196135%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl195237196132%_))))
                                                      (let ((_%tl195240196140%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e195238196135%_)))
                    (_%hd195239196138%_
                     (let () (declare (not safe)) (##car _%e195238196135%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl195240196140%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl195234196124%_))
                        (let ((_%e195241196143%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl195234196124%_))))
                          (let ((_%tl195243196148%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e195241196143%_)))
                                (_%hd195242196146%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e195241196143%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd195242196146%_))
                                (let ((_%e195244196151%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd195242196146%_))))
                                  (let ((_%tl195246196156%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e195244196151%_)))
                                        (_%hd195245196154%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e195244196151%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd195245196154%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _%hd195245196154%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl195246196156%_))
                                                (let ((_%e195247196159%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl195246196156%_))))
                                                  (let ((_%tl195249196164%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e195247196159%_)))
                                                        (_%hd195248196162%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e195247196159%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl195249196164%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl195243196148%_))
                                                            (let ((_%e195250196167%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl195243196148%_))))
                      (let ((_%tl195252196172%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e195250196167%_)))
                            (_%hd195251196170%_
                             (let ()
                               (declare (not safe))
                               (##car _%e195250196167%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd195251196170%_))
                            (let ((_%e195253196175%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd195251196170%_))))
                              (let ((_%tl195255196180%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e195253196175%_)))
                                    (_%hd195254196178%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e195253196175%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd195254196178%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd195254196178%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl195255196180%_))
                                            (let ((_%e195256196183%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl195255196180%_))))
                                              (let ((_%tl195258196188%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e195256196183%_)))
                                                    (_%hd195257196186%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e195256196183%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl195258196188%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair/null?
                                                           _%tl195252196172%_))
                                                        (let ((_%__splice201203201204%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-split-splice->vector
                          _%tl195252196172%_
                          '0))))
                  (let ((_%tl195261196193%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice201203201204%_ '1)))
                        (_%target195259196191%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice201203201204%_ '0))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl195261196193%_))
                        (_%__match201304201305%_
                         _%e195229196111%_
                         _%hd195230196114%_
                         _%tl195231196116%_
                         _%e195232196119%_
                         _%hd195233196122%_
                         _%tl195234196124%_
                         _%e195235196127%_
                         _%hd195236196130%_
                         _%tl195237196132%_
                         _%e195238196135%_
                         _%hd195239196138%_
                         _%tl195240196140%_
                         _%e195241196143%_
                         _%hd195242196146%_
                         _%tl195243196148%_
                         _%e195244196151%_
                         _%hd195245196154%_
                         _%tl195246196156%_
                         _%e195247196159%_
                         _%hd195248196162%_
                         _%tl195249196164%_
                         _%e195250196167%_
                         _%hd195251196170%_
                         _%tl195252196172%_
                         _%e195253196175%_
                         _%hd195254196178%_
                         _%tl195255196180%_
                         _%e195256196183%_
                         _%hd195257196186%_
                         _%tl195258196188%_
                         _%__splice201203201204%_
                         _%target195259196191%_
                         _%tl195261196193%_)
                        (_%__match201492201493%_
                         _%e195229196111%_
                         _%hd195230196114%_
                         _%tl195231196116%_
                         _%e195232196119%_
                         _%hd195233196122%_
                         _%tl195234196124%_
                         _%e195235196127%_
                         _%hd195236196130%_
                         _%tl195237196132%_
                         _%e195238196135%_
                         _%hd195239196138%_
                         _%tl195240196140%_
                         _%e195241196143%_
                         _%hd195242196146%_
                         _%tl195243196148%_
                         _%e195244196151%_
                         _%hd195245196154%_
                         _%tl195246196156%_
                         _%e195247196159%_
                         _%hd195248196162%_
                         _%tl195249196164%_
                         _%e195250196167%_
                         _%hd195251196170%_
                         _%tl195252196172%_
                         _%e195253196175%_
                         _%hd195254196178%_
                         _%tl195255196180%_
                         _%e195256196183%_
                         _%hd195257196186%_
                         _%tl195258196188%_))))
                (_%__match201492201493%_
                 _%e195229196111%_
                 _%hd195230196114%_
                 _%tl195231196116%_
                 _%e195232196119%_
                 _%hd195233196122%_
                 _%tl195234196124%_
                 _%e195235196127%_
                 _%hd195236196130%_
                 _%tl195237196132%_
                 _%e195238196135%_
                 _%hd195239196138%_
                 _%tl195240196140%_
                 _%e195241196143%_
                 _%hd195242196146%_
                 _%tl195243196148%_
                 _%e195244196151%_
                 _%hd195245196154%_
                 _%tl195246196156%_
                 _%e195247196159%_
                 _%hd195248196162%_
                 _%tl195249196164%_
                 _%e195250196167%_
                 _%hd195251196170%_
                 _%tl195252196172%_
                 _%e195253196175%_
                 _%hd195254196178%_
                 _%tl195255196180%_
                 _%e195256196183%_
                 _%hd195257196186%_
                 _%tl195258196188%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match201696201697%_
                                                     _%e195229196111%_
                                                     _%hd195230196114%_
                                                     _%tl195231196116%_
                                                     _%e195232196119%_
                                                     _%hd195233196122%_
                                                     _%tl195234196124%_
                                                     _%e195235196127%_
                                                     _%hd195236196130%_
                                                     _%tl195237196132%_
                                                     _%e195238196135%_
                                                     _%hd195239196138%_
                                                     _%tl195240196140%_
                                                     _%e195241196143%_
                                                     _%hd195242196146%_
                                                     _%tl195243196148%_
                                                     _%e195244196151%_
                                                     _%hd195245196154%_
                                                     _%tl195246196156%_
                                                     _%e195247196159%_
                                                     _%hd195248196162%_
                                                     _%tl195249196164%_
                                                     _%e195250196167%_
                                                     _%hd195251196170%_
                                                     _%tl195252196172%_))))
                                            (_%__match201696201697%_
                                             _%e195229196111%_
                                             _%hd195230196114%_
                                             _%tl195231196116%_
                                             _%e195232196119%_
                                             _%hd195233196122%_
                                             _%tl195234196124%_
                                             _%e195235196127%_
                                             _%hd195236196130%_
                                             _%tl195237196132%_
                                             _%e195238196135%_
                                             _%hd195239196138%_
                                             _%tl195240196140%_
                                             _%e195241196143%_
                                             _%hd195242196146%_
                                             _%tl195243196148%_
                                             _%e195244196151%_
                                             _%hd195245196154%_
                                             _%tl195246196156%_
                                             _%e195247196159%_
                                             _%hd195248196162%_
                                             _%tl195249196164%_
                                             _%e195250196167%_
                                             _%hd195251196170%_
                                             _%tl195252196172%_))
                                        (_%__match201372201373%_
                                         _%e195229196111%_
                                         _%hd195230196114%_
                                         _%tl195231196116%_
                                         _%e195232196119%_
                                         _%hd195233196122%_
                                         _%tl195234196124%_
                                         _%e195235196127%_
                                         _%hd195236196130%_
                                         _%tl195237196132%_
                                         _%e195238196135%_
                                         _%hd195239196138%_
                                         _%tl195240196140%_
                                         _%e195241196143%_
                                         _%hd195242196146%_
                                         _%tl195243196148%_
                                         _%e195244196151%_
                                         _%hd195245196154%_
                                         _%tl195246196156%_
                                         _%e195247196159%_
                                         _%hd195248196162%_
                                         _%tl195249196164%_
                                         _%e195250196167%_
                                         _%hd195251196170%_
                                         _%tl195252196172%_
                                         _%e195253196175%_
                                         _%hd195254196178%_
                                         _%tl195255196180%_))
                                    (_%__match201696201697%_
                                     _%e195229196111%_
                                     _%hd195230196114%_
                                     _%tl195231196116%_
                                     _%e195232196119%_
                                     _%hd195233196122%_
                                     _%tl195234196124%_
                                     _%e195235196127%_
                                     _%hd195236196130%_
                                     _%tl195237196132%_
                                     _%e195238196135%_
                                     _%hd195239196138%_
                                     _%tl195240196140%_
                                     _%e195241196143%_
                                     _%hd195242196146%_
                                     _%tl195243196148%_
                                     _%e195244196151%_
                                     _%hd195245196154%_
                                     _%tl195246196156%_
                                     _%e195247196159%_
                                     _%hd195248196162%_
                                     _%tl195249196164%_
                                     _%e195250196167%_
                                     _%hd195251196170%_
                                     _%tl195252196172%_))))
                            (_%__match201696201697%_
                             _%e195229196111%_
                             _%hd195230196114%_
                             _%tl195231196116%_
                             _%e195232196119%_
                             _%hd195233196122%_
                             _%tl195234196124%_
                             _%e195235196127%_
                             _%hd195236196130%_
                             _%tl195237196132%_
                             _%e195238196135%_
                             _%hd195239196138%_
                             _%tl195240196140%_
                             _%e195241196143%_
                             _%hd195242196146%_
                             _%tl195243196148%_
                             _%e195244196151%_
                             _%hd195245196154%_
                             _%tl195246196156%_
                             _%e195247196159%_
                             _%hd195248196162%_
                             _%tl195249196164%_
                             _%e195250196167%_
                             _%hd195251196170%_
                             _%tl195252196172%_))))
                    (_%__match201634201635%_
                     _%e195229196111%_
                     _%hd195230196114%_
                     _%tl195231196116%_
                     _%e195232196119%_
                     _%hd195233196122%_
                     _%tl195234196124%_
                     _%e195235196127%_
                     _%hd195236196130%_
                     _%tl195237196132%_
                     _%e195238196135%_
                     _%hd195239196138%_
                     _%tl195240196140%_
                     _%e195241196143%_
                     _%hd195242196146%_
                     _%tl195243196148%_
                     _%e195244196151%_
                     _%hd195245196154%_
                     _%tl195246196156%_
                     _%e195247196159%_
                     _%hd195248196162%_
                     _%tl195249196164%_))
                (_%__kont201217201218%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont201217201218%_))
                                            (_%__kont201217201218%_))
                                        (_%__kont201217201218%_))))
                                (_%__kont201217201218%_))))
                        (_%__kont201217201218%_))
                    (_%__kont201217201218%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont201217201218%_))
                                                (_%__kont201217201218%_))
                                            (_%__kont201217201218%_))))
                                    (_%__kont201217201218%_))))
                            (_%__kont201217201218%_))))
                    (_%__kont201217201218%_))))))))))
