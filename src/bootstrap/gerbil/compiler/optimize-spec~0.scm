(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-spec::timestamp 1770342307)
  (begin
    (define gxc#::generate-method-specializers::t
      (let ((__tmp201705 (list gxc#::identity::t))
            (__tmp201704 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-method-specializers::t
         '::generate-method-specializers
         __tmp201705
         '()
         __tmp201704
         '#f)))
    (define gxc#::generate-method-specializers?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-method-specializers::t)))
    (define gxc#make-::generate-method-specializers
      (lambda _%$args200502%_
        (apply make-instance
               gxc#::generate-method-specializers::t
               _%$args200502%_)))
    (define gxc#::generate-method-specializers-bind-methods!
      (let ((__tmp201706
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
        (__make-atomic-promise __tmp201706)))
    (define gxc#apply-generate-method-specializers
      (lambda (_%stx200494%_)
        (force gxc#::generate-method-specializers-bind-methods!)
        (let* ((_%self200497%_
                (let ((__obj201697
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-method-specializers::t))))
                  __obj201697))
               (__tmp201707
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self200497%_ _%stx200494%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp201707
           gxc#current-compile-method
           _%self200497%_))))
    (define gxc#::extract-receiver::t
      (let ((__tmp201709 (list gxc#::false::t))
            (__tmp201708 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::extract-receiver::t
         '::extract-receiver
         __tmp201709
         '()
         __tmp201708
         '#f)))
    (define gxc#::extract-receiver?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::extract-receiver::t)))
    (define gxc#make-::extract-receiver
      (lambda _%$args200491%_
        (apply make-instance gxc#::extract-receiver::t _%$args200491%_)))
    (define gxc#::extract-receiver-bind-methods!
      (let ((__tmp201710
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
        (__make-atomic-promise __tmp201710)))
    (define gxc#apply-extract-receiver
      (lambda (_%stx200483%_)
        (force gxc#::extract-receiver-bind-methods!)
        (let* ((_%self200486%_
                (let ((__obj201699
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::extract-receiver::t))))
                  __obj201699))
               (__tmp201711
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self200486%_ _%stx200483%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp201711
           gxc#current-compile-method
           _%self200486%_))))
    (define gxc#::collect-object-refs::t
      (let ((__tmp201713 (list gxc#::void::t))
            (__tmp201712 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-object-refs::t
         '::collect-object-refs
         __tmp201713
         '(receiver methods slots)
         __tmp201712
         '#f)))
    (define gxc#::collect-object-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-object-refs::t)))
    (define gxc#make-::collect-object-refs
      (lambda _%$args200480%_
        (apply make-instance gxc#::collect-object-refs::t _%$args200480%_)))
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
      (let ((__tmp201714
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
        (__make-atomic-promise __tmp201714)))
    (define gxc#apply-collect-object-refs__%
      (lambda (_%@@keywords200449%_
               _%receiver200444200450%_
               _%methods200445200451%_
               _%slots200446200452%_
               _%stx200453%_)
        (let* ((_%receiver200456%_
                (if (eq? _%receiver200444200450%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _%receiver200444200450%_))
               (_%methods200458%_
                (if (eq? _%methods200445200451%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _%methods200445200451%_))
               (_%slots200460%_
                (if (eq? _%slots200446200452%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _%slots200446200452%_)))
          (force gxc#::collect-object-refs-bind-methods!)
          (let* ((_%self200462%_
                  (let ((__obj201701
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
                       __obj201701
                       _%receiver200456%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj201701
                       _%methods200458%_
                       '2
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj201701
                       _%slots200460%_
                       '3
                       '#f
                       '#f))
                    __obj201701))
                 (__tmp201715
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self200462%_ _%stx200453%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp201715
             gxc#current-compile-method
             _%self200462%_)))))
    (define gxc#apply-collect-object-refs__@
      (lambda (_%@@keywords200469%_ . _%args200470%_)
        (apply gxc#apply-collect-object-refs__%
               _%@@keywords200469%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords200469%_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords200469%_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords200469%_
                  'slots:
                  absent-value))
               _%args200470%_)))
    (define gxc#apply-collect-object-refs
      (lambda _%args200447200476%_
        (apply keyword-dispatch
               '#(receiver: slots: methods:)
               gxc#apply-collect-object-refs__@
               _%args200447200476%_)))
    (define gxc#::subst-object-refs::t
      (let ((__tmp201717 (list gxc#::basic-xform-expression::t))
            (__tmp201716 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::subst-object-refs::t
         '::subst-object-refs
         __tmp201717
         '(receiver klass methods slots)
         __tmp201716
         '#f)))
    (define gxc#::subst-object-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::subst-object-refs::t)))
    (define gxc#make-::subst-object-refs
      (lambda _%$args200440%_
        (apply make-instance gxc#::subst-object-refs::t _%$args200440%_)))
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
      (let ((__tmp201718
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
        (__make-atomic-promise __tmp201718)))
    (define gxc#apply-subst-object-refs__%
      (lambda (_%@@keywords200406%_
               _%receiver200400200407%_
               _%klass200401200408%_
               _%methods200402200409%_
               _%slots200403200410%_
               _%stx200411%_)
        (let* ((_%receiver200414%_
                (if (eq? _%receiver200400200407%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _%receiver200400200407%_))
               (_%klass200416%_
                (if (eq? _%klass200401200408%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'klass:))
                    _%klass200401200408%_))
               (_%methods200418%_
                (if (eq? _%methods200402200409%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _%methods200402200409%_))
               (_%slots200420%_
                (if (eq? _%slots200403200410%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _%slots200403200410%_)))
          (force gxc#::subst-object-refs-bind-methods!)
          (let* ((_%self200422%_
                  (let ((__obj201703
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
                       __obj201703
                       _%receiver200414%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj201703
                       _%klass200416%_
                       '2
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj201703
                       _%methods200418%_
                       '3
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj201703
                       _%slots200420%_
                       '4
                       '#f
                       '#f))
                    __obj201703))
                 (__tmp201719
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self200422%_ _%stx200411%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp201719
             gxc#current-compile-method
             _%self200422%_)))))
    (define gxc#apply-subst-object-refs__@
      (lambda (_%@@keywords200429%_ . _%args200430%_)
        (apply gxc#apply-subst-object-refs__%
               _%@@keywords200429%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords200429%_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords200429%_
                  'klass:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords200429%_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords200429%_
                  'slots:
                  absent-value))
               _%args200430%_)))
    (define gxc#apply-subst-object-refs
      (lambda _%args200404200436%_
        (apply keyword-dispatch
               '#(receiver: methods: slots: klass:)
               gxc#apply-subst-object-refs__@
               _%args200404200436%_)))
    (define gxc#generate-method-specializers-define-values%
      (lambda (_%self197531%_ _%stx197532%_)
        (letrec ((_%generate-method-bind197534%_
                  (lambda (_%$klass200392%_
                           _%$method-table200393%_
                           _%id200394%_
                           _%$id200395%_)
                    (let ((_%$tmp200397%_
                           (let ((__tmp201720
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__method))))
                             (declare (not safe))
                             (make-symbol__0 __tmp201720))))
                      (cons (cons _%$id200395%_ '())
                            (cons (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons 'make-promise '()))
                                              (cons (cons '%#lambda
                                                          (cons '()
                                                                (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons (cons (cons _%$tmp200397%_ '())
                                                      (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#ref (cons 'symbolic-table-ref '()))
                                (cons (cons '%#ref
                                            (cons _%$method-table200393%_ '()))
                                      (cons (cons '%#quote
                                                  (cons _%id200394%_ '()))
                                            (cons (cons '%#quote
                                                        (cons '#f '()))
                                                  '())))))
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
                                                        (cons '"Missing method"
                                                              '()))
                                                  (cons (cons '%#quote
                                                              (cons _%id200394%_
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
                 (_%generate-slot-bind197535%_
                  (lambda (_%$klass200386%_ _%id200387%_ _%$id200388%_)
                    (let ((_%$tmp200390%_
                           (let ((__tmp201721
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__slot))))
                             (declare (not safe))
                             (make-symbol__0 __tmp201721))))
                      (cons (cons _%$id200388%_ '())
                            (cons (cons '%#let-values
                                        (cons (cons (cons (cons _%$tmp200390%_
                                                                '())
                                                          (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '%#ref (cons 'class-slot-offset '()))
                                    (cons (cons '%#ref
                                                (cons _%$klass200386%_ '()))
                                          (cons (cons '%#quote
                                                      (cons _%id200387%_ '()))
                                                '()))))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())
                                              (cons (cons '%#if
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$tmp200390%_ '()))
                        (cons (cons '%#ref (cons _%$tmp200390%_ '()))
                              (cons (cons '%#call
                                          (cons (cons '%#ref (cons 'error '()))
                                                (cons (cons '%#quote
                                                            (cons '"Unknown slot"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#quote (cons _%id200387%_ '())) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '())))))
                 (_%generate-specializer-impl197536%_
                  (lambda (_%$klass200380%_
                           _%$method-table200381%_
                           _%methods-bind200382%_
                           _%slots-bind200383%_
                           _%specializer-impl200384%_)
                    (let ((__tmp201722
                           (cons '%#lambda
                                 (cons (cons _%$klass200380%_
                                             (cons _%$method-table200381%_
                                                   '()))
                                       (cons (cons '%#let-values
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (__foldr1
                                                            cons
                                                            _%slots-bind200383%_
                                                            _%methods-bind200382%_))
                                                         (cons _%specializer-impl200384%_
                                                               '())))
                                             '())))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp201722 _%stx197532%_))))
                 (_%generate-specializer-def197537%_
                  (lambda (_%id200376%_
                           _%specializer-id200377%_
                           _%specializer-impl200378%_)
                    (let ((__tmp201723
                           (cons '%#begin
                                 (cons _%stx197532%_
                                       (cons (let ((__tmp201724
                                                    (cons '%#define-values
                                                          (cons (cons _%specializer-id200377%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons _%specializer-impl200378%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp201724
                                                _%stx197532%_))
                                             (cons (let ((__tmp201725
                                                          (cons '%#call
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons 'bind-specializer! '()))
                              (cons (cons '%#ref (cons _%id200376%_ '()))
                                    (cons (cons '%#ref
                                                (cons _%specializer-id200377%_
                                                      '()))
                                          '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp201725
                                                      _%stx197532%_))
                                                   '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp201723 _%stx197532%_)))))
          (let* ((_%__stx200591200592%_ _%stx197532%_)
                 (_%g197540197560%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx200591200592%_)))))
            (let ((_%__kont200593200594%_
                   (lambda (_%g197542197604%_ _%g197543197605%_)
                     (let ((_%method-calls197624%_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_%slot-refs197625%_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_%empty197626%_
                            (let ()
                              (declare (not safe))
                              (make-hash-table-eq))))
                       (letrec ((_%no-specializer?197628%_
                                 (lambda ()
                                   (if (let ((__tmp201726
                                              (let ()
                                                (declare (not safe))
                                                (__hash-length
                                                 _%method-calls197624%_))))
                                         (declare (not safe))
                                         (##fxzero? __tmp201726))
                                       (let ((__tmp201727
                                              (let ()
                                                (declare (not safe))
                                                (__hash-length
                                                 _%slot-refs197625%_))))
                                         (declare (not safe))
                                         (##fxzero? __tmp201727))
                                       '#f))))
                         (if (let ()
                               (declare (not safe))
                               (gxc#lambda-expr? _%g197542197604%_))
                             (let* ((_%__stx200505200506%_ _%g197542197604%_)
                                    (_%g198012198030%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx200505200506%_)))))
                               (let ((_%__kont200507200508%_
                                      (lambda (_%g198014198066%_
                                               _%g198015198067%_
                                               _%g198016198068%_)
                                        (let ((_%receiver198088%_
                                               (let ((_%$e198085%_
                                                      (gxc#apply-extract-receiver
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f '%#begin))
                     _%g198014198066%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e198085%_
                                                     _%$e198085%_
                                                     _%g198016198068%_))))
                                          (for-each
                                           (lambda (_%g198089198091%_)
                                             (gxc#apply-collect-object-refs__%
                                              '#f
                                              _%receiver198088%_
                                              _%method-calls197624%_
                                              _%slot-refs197625%_
                                              _%g198089198091%_))
                                           _%g198014198066%_)
                                          (if (_%no-specializer?197628%_)
                                              _%stx197532%_
                                              (let* ((_%specializer-id198100%_
                                                      (let* ((_%id198094%_
                                                              (let ((__tmp201728
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g197543197605%_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp201728 '"::specialize")))
                     (_%specializer-id198097%_
                      (let ((__tmp201729
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _%stx197532%_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _%id198094%_ __tmp201729))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _%specializer-id198097%_))
                _%specializer-id198097%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$klass198102%_
                                                      (let ((__tmp201730
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__klass))))
                (declare (not safe))
                (make-symbol__0 __tmp201730)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$method-table198104%_
                                                      (let ((__tmp201731
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__method-table))))
                (declare (not safe))
                (make-symbol__0 __tmp201731)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods198106%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%method-calls197624%_)))
                                                     (_%$methods198110%_
                                                      (let ((__tmp201732
                                                             (lambda (_%id198108%_)
                                                               (let ((__tmp201733
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gensym _%id198108%_)))
                         (declare (not safe))
                         (make-symbol__1 '"__" __tmp201733)))))
                (declare (not safe))
                (##map __tmp201732 _%methods198106%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_198119%_
                                                      (let ((__tmp201734
                                                             (lambda (_%g198111198114%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g198112198116%_)
                       (let ()
                         (declare (not safe))
                         (__hash-put!
                          _%method-calls197624%_
                          _%g198111198114%_
                          _%g198112198116%_)))))
                (declare (not safe))
                (##for-each __tmp201734 _%methods198106%_ _%$methods198110%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods-bind198129%_
                                                      (let ((__tmp201735
                                                             (lambda (_%g198121198124%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g198122198126%_)
                       (_%generate-method-bind197534%_
                        _%$klass198102%_
                        _%$method-table198104%_
                        _%g198121198124%_
                        _%g198122198126%_))))
                (declare (not safe))
                (##map __tmp201735 _%methods198106%_ _%$methods198110%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots198131%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%slot-refs197625%_)))
                                                     (_%$slots198135%_
                                                      (let ((__tmp201736
                                                             (lambda (_%id198133%_)
                                                               (let ((__tmp201737
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gensym _%id198133%_)))
                         (declare (not safe))
                         (make-symbol__1 '"__" __tmp201737)))))
                (declare (not safe))
                (##map __tmp201736 _%slots198131%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_198144%_
                                                      (let ((__tmp201738
                                                             (lambda (_%g198136198139%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g198137198141%_)
                       (let ()
                         (declare (not safe))
                         (__hash-put!
                          _%slot-refs197625%_
                          _%g198136198139%_
                          _%g198137198141%_)))))
                (declare (not safe))
                (##for-each __tmp201738 _%slots198131%_ _%$slots198135%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots-bind198153%_
                                                      (let ((__tmp201739
                                                             (lambda (_%g198145198148%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g198146198150%_)
                       (_%generate-slot-bind197535%_
                        _%$klass198102%_
                        _%g198145198148%_
                        _%g198146198150%_))))
                (declare (not safe))
                (##map __tmp201739 _%slots198131%_ _%$slots198135%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-body198159%_
                                                      (map (lambda (_%g198154198156%_)
                                                             (gxc#apply-subst-object-refs__%
                                                              '#f
                                                              _%receiver198088%_
                                                              _%$klass198102%_
                                                              _%method-calls197624%_
                                                              _%slot-refs197625%_
                                                              _%g198154198156%_))
                                                           _%g198014198066%_))
                                                     (_%specializer-impl198161%_
                                                      (let ((__tmp201740
                                                             (cons '%#lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons _%g198016198068%_ _%g198015198067%_)
                                 _%specializer-body198159%_))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp201740 _%stx197532%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl198163%_
                                                      (_%generate-specializer-impl197536%_
                                                       _%$klass198102%_
                                                       _%$method-table198104%_
                                                       _%methods-bind198129%_
                                                       _%slots-bind198153%_
                                                       _%specializer-impl198161%_)))
                                                (let ((__tmp201742
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%g197543197605%_)))
                                                      (__tmp201741
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%specializer-id198100%_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp201742
                                                   '" => "
                                                   __tmp201741))
                                                (_%generate-specializer-def197537%_
                                                 _%g197543197605%_
                                                 _%specializer-id198100%_
                                                 _%specializer-impl198163%_))))))
                                     (_%__kont200509200510%_
                                      (lambda () _%stx197532%_)))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%__stx200505200506%_))
                                     (let ((_%e198017198042%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e
                                               _%__stx200505200506%_))))
                                       (let ((_%tl198019198047%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e198017198042%_)))
                                             (_%hd198018198045%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e198017198042%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl198019198047%_))
                                             (let ((_%e198020198050%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%tl198019198047%_))))
                                               (let ((_%tl198022198055%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e198020198050%_)))
                                                     (_%hd198021198053%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e198020198050%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%hd198021198053%_))
                                                     (let ((_%e198023198058%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%hd198021198053%_))))
                                                       (let ((_%tl198025198063%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e198023198058%_)))
                     (_%hd198024198061%_
                      (let () (declare (not safe)) (##car _%e198023198058%_))))
                 (_%__kont200507200508%_
                  _%tl198022198055%_
                  _%tl198025198063%_
                  _%hd198024198061%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont200509200510%_))))
                                             (_%__kont200509200510%_))))
                                     (_%__kont200509200510%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gxc#case-lambda-expr? _%g197542197604%_))
                                 (let* ((_%g198170198189%_
                                         (lambda (_%g198171198186%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g198171198186%_))))
                                        (_%g198169198485%_
                                         (lambda (_%g198171198192%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g198171198192%_))
                                               (let ((_%e198173198194%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%g198171198192%_))))
                                                 (let ((_%hd198174198197%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e198173198194%_)))
                                                       (_%tl198175198199%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e198173198194%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair/null?
                                                          _%tl198175198199%_))
                                                       (let ((_g201743_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-split-splice _%tl198175198199%_ '0))))
                 (begin
                   (let ((_g201744_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g201743_)
                                (##values-length _g201743_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g201744_ 2)))
                         (error "Context expects 2 values" _g201744_)))
                   (let ((_%target198176198202%_
                          (let ()
                            (declare (not safe))
                            (##values-ref _g201743_ 0)))
                         (_%tl198178198204%_
                          (let ()
                            (declare (not safe))
                            (##values-ref _g201743_ 1))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl198178198204%_))
                         (letrec ((_%loop198179198207%_
                                   (lambda (_%hd198177198210%_
                                            _%clause198183198212%_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd198177198210%_))
                                         (let ((_%e198180198214%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd198177198210%_))))
                                           (let ((_%lp-hd198181198217%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e198180198214%_)))
                                                 (_%lp-tl198182198219%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e198180198214%_))))
                                             (_%loop198179198207%_
                                              _%lp-tl198182198219%_
                                              (cons _%lp-hd198181198217%_
                                                    _%clause198183198212%_))))
                                         (let ((_%clause198184198222%_
                                                (reverse _%clause198183198212%_)))
                                           ((lambda (_%g198172198224%_)
                                              (for-each
                                               (lambda (_%clause198238%_)
                                                 (let* ((_%__stx200531200532%_
                                                         _%clause198238%_)
                                                        (_%g198241198256%_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%__stx200531200532%_)))))
                                                   (let ((_%__kont200533200534%_
                                                          (lambda (_%g198243198284%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g198244198285%_
                           _%g198245198286%_)
                    (let ((_%receiver198305%_
                           (let ((_%$e198302%_
                                  (gxc#apply-extract-receiver
                                   (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f '%#begin))
                                         _%g198243198284%_))))
                             (if _%$e198302%_
                                 _%$e198302%_
                                 _%g198245198286%_))))
                      (for-each
                       (lambda (_%g198306198308%_)
                         (gxc#apply-collect-object-refs__%
                          '#f
                          _%receiver198305%_
                          _%method-calls197624%_
                          _%slot-refs197625%_
                          _%g198306198308%_))
                       _%g198243198284%_))))
                 (_%__kont200535200536%_ (lambda () '#!void)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%__stx200531200532%_))
                                                         (let ((_%e198246198268%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%__stx200531200532%_))))
                   (let ((_%tl198248198273%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e198246198268%_)))
                         (_%hd198247198271%_
                          (let ()
                            (declare (not safe))
                            (##car _%e198246198268%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%hd198247198271%_))
                         (let ((_%e198249198276%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd198247198271%_))))
                           (let ((_%tl198251198281%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e198249198276%_)))
                                 (_%hd198250198279%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e198249198276%_))))
                             (_%__kont200533200534%_
                              _%tl198248198273%_
                              _%tl198251198281%_
                              _%hd198250198279%_)))
                         (_%__kont200535200536%_))))
                 (_%__kont200535200536%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((__tmp201745
                                                      (lambda (_%g198313198316%_
                                                               _%g198314198318%_)
                                                        (cons _%g198313198316%_
                                                              _%g198314198318%_))))
                                                 (declare (not safe))
                                                 (__foldr1
                                                  __tmp201745
                                                  '()
                                                  _%g198172198224%_)))
                                              (if (_%no-specializer?197628%_)
                                                  _%stx197532%_
                                                  (let* ((_%specializer-id198327%_
                                                          (let* ((_%id198321%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp201746
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%g197543197605%_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp201746 '"::specialize")))
                         (_%specializer-id198324%_
                          (let ((__tmp201747
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _%stx197532%_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _%id198321%_
                             __tmp201747))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _%specializer-id198324%_))
                    _%specializer-id198324%_))
                 (_%$klass198329%_
                  (let ((__tmp201748
                         (let () (declare (not safe)) (##gensym '__klass))))
                    (declare (not safe))
                    (make-symbol__0 __tmp201748)))
                 (_%$method-table198331%_
                  (let ((__tmp201749
                         (let ()
                           (declare (not safe))
                           (##gensym '__method-table))))
                    (declare (not safe))
                    (make-symbol__0 __tmp201749)))
                 (_%methods198333%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%method-calls197624%_)))
                 (_%$methods198337%_
                  (let ((__tmp201750
                         (lambda (_%id198335%_)
                           (let ((__tmp201751 (gensym _%id198335%_)))
                             (declare (not safe))
                             (make-symbol__1 '"__" __tmp201751)))))
                    (declare (not safe))
                    (##map __tmp201750 _%methods198333%_)))
                 (_%_198346%_
                  (let ((__tmp201752
                         (lambda (_%g198338198341%_ _%g198339198343%_)
                           (let ()
                             (declare (not safe))
                             (__hash-put!
                              _%method-calls197624%_
                              _%g198338198341%_
                              _%g198339198343%_)))))
                    (declare (not safe))
                    (##for-each
                     __tmp201752
                     _%methods198333%_
                     _%$methods198337%_)))
                 (_%methods-bind198356%_
                  (let ((__tmp201753
                         (lambda (_%g198348198351%_ _%g198349198353%_)
                           (_%generate-method-bind197534%_
                            _%$klass198329%_
                            _%$method-table198331%_
                            _%g198348198351%_
                            _%g198349198353%_))))
                    (declare (not safe))
                    (##map __tmp201753 _%methods198333%_ _%$methods198337%_)))
                 (_%slots198358%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%slot-refs197625%_)))
                 (_%$slots198362%_
                  (let ((__tmp201754
                         (lambda (_%id198360%_)
                           (let ((__tmp201755 (gensym _%id198360%_)))
                             (declare (not safe))
                             (make-symbol__1 '"__" __tmp201755)))))
                    (declare (not safe))
                    (##map __tmp201754 _%slots198358%_)))
                 (_%_198371%_
                  (let ((__tmp201756
                         (lambda (_%g198363198366%_ _%g198364198368%_)
                           (let ()
                             (declare (not safe))
                             (__hash-put!
                              _%slot-refs197625%_
                              _%g198363198366%_
                              _%g198364198368%_)))))
                    (declare (not safe))
                    (##for-each __tmp201756 _%slots198358%_ _%$slots198362%_)))
                 (_%slots-bind198380%_
                  (let ((__tmp201757
                         (lambda (_%g198372198375%_ _%g198373198377%_)
                           (_%generate-slot-bind197535%_
                            _%$klass198329%_
                            _%g198372198375%_
                            _%g198373198377%_))))
                    (declare (not safe))
                    (##map __tmp201757 _%slots198358%_ _%$slots198362%_)))
                 (_%specializer-clauses198478%_
                  (map (lambda (_%clause198382%_)
                         (let* ((_%__stx200551200552%_ _%clause198382%_)
                                (_%g198385198400%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx200551200552%_)))))
                           (let ((_%__kont200553200554%_
                                  (lambda (_%g198387198428%_
                                           _%g198388198429%_
                                           _%g198389198430%_)
                                    (let* ((_%receiver198459%_
                                            (let ((_%$e198456%_
                                                   (gxc#apply-extract-receiver
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#begin))
                                                          _%g198387198428%_))))
                                              (if _%$e198456%_
                                                  _%$e198456%_
                                                  _%g198389198430%_)))
                                           (_%body198465%_
                                            (map (lambda (_%g198460198462%_)
                                                   (gxc#apply-subst-object-refs__%
                                                    '#f
                                                    _%receiver198459%_
                                                    _%$klass198329%_
                                                    _%method-calls197624%_
                                                    _%slot-refs197625%_
                                                    _%g198460198462%_))
                                                 _%g198387198428%_)))
                                      (cons (cons _%g198389198430%_
                                                  _%g198388198429%_)
                                            _%body198465%_))))
                                 (_%__kont200555200556%_
                                  (lambda () _%clause198382%_)))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx200551200552%_))
                                 (let ((_%e198390198412%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx200551200552%_))))
                                   (let ((_%tl198392198417%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e198390198412%_)))
                                         (_%hd198391198415%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e198390198412%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd198391198415%_))
                                         (let ((_%e198393198420%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd198391198415%_))))
                                           (let ((_%tl198395198425%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e198393198420%_)))
                                                 (_%hd198394198423%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e198393198420%_))))
                                             (_%__kont200553200554%_
                                              _%tl198392198417%_
                                              _%tl198395198425%_
                                              _%hd198394198423%_)))
                                         (_%__kont200555200556%_))))
                                 (_%__kont200555200556%_)))))
                       (let ((__tmp201758
                              (lambda (_%g198470198473%_ _%g198471198475%_)
                                (cons _%g198470198473%_ _%g198471198475%_))))
                         (declare (not safe))
                         (__foldr1 __tmp201758 '() _%g198172198224%_))))
                 (_%specializer-impl198480%_
                  (let ((__tmp201759
                         (cons '%#case-lambda _%specializer-clauses198478%_)))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp201759 _%stx197532%_)))
                 (_%specializer-impl198482%_
                  (_%generate-specializer-impl197536%_
                   _%$klass198329%_
                   _%$method-table198331%_
                   _%methods-bind198356%_
                   _%slots-bind198380%_
                   _%specializer-impl198480%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp201761
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%g197543197605%_)))
                                                          (__tmp201760
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%specializer-id198327%_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp201761
                                                       '" => "
                                                       __tmp201760))
                                                    (_%generate-specializer-def197537%_
                                                     _%g197543197605%_
                                                     _%specializer-id198327%_
                                                     _%specializer-impl198482%_))))
                                            _%clause198184198222%_))))))
                           (_%loop198179198207%_ _%target198176198202%_ '()))
                         (_%g198170198189%_ _%g198171198192%_)))))
               (_%g198170198189%_ _%g198171198192%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g198170198189%_
                                                _%g198171198192%_)))))
                                   (_%g198169198485%_ _%g197542197604%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#opt-lambda-expr?
                                        _%g197542197604%_))
                                     (let* ((_%g198489198519%_
                                             (lambda (_%g198490198516%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g198490198516%_))))
                                            (_%g198488199146%_
                                             (lambda (_%g198490198522%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%g198490198522%_))
                                                   (let ((_%e198494198524%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%g198490198522%_))))
                                                     (let ((_%hd198495198527%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e198494198524%_)))
                                                           (_%tl198496198529%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e198494198524%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl198496198529%_))
                                                           (let ((_%e198497198532%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl198496198529%_))))
                     (let ((_%hd198498198535%_
                            (let ()
                              (declare (not safe))
                              (##car _%e198497198532%_)))
                           (_%tl198499198537%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e198497198532%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%hd198498198535%_))
                           (let ((_%e198500198540%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd198498198535%_))))
                             (let ((_%hd198501198543%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e198500198540%_)))
                                   (_%tl198502198545%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e198500198540%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd198501198543%_))
                                   (let ((_%e198503198548%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd198501198543%_))))
                                     (let ((_%hd198504198551%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e198503198548%_)))
                                           (_%tl198505198553%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e198503198548%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%hd198504198551%_))
                                           (let ((_%e198506198556%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%hd198504198551%_))))
                                             (let ((_%hd198507198559%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e198506198556%_)))
                                                   (_%tl198508198561%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e198506198556%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl198508198561%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl198505198553%_))
                                                       (let ((_%e198509198564%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%tl198505198553%_))))
                 (let ((_%hd198510198567%_
                        (let ()
                          (declare (not safe))
                          (##car _%e198509198564%_)))
                       (_%tl198511198569%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e198509198564%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl198511198569%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl198502198545%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl198499198537%_))
                               (let ((_%e198512198572%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%tl198499198537%_))))
                                 (let ((_%hd198513198575%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e198512198572%_)))
                                       (_%tl198514198577%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e198512198572%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%tl198514198577%_))
                                       ((lambda (_%g198491198580%_
                                                 _%g198492198581%_
                                                 _%g198493198582%_)
                                          (let* ((_%g198606198624%_
                                                  (lambda (_%g198607198621%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g198607198621%_))))
                                                 (_%g198605198680%_
                                                  (lambda (_%g198607198627%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%g198607198627%_))
                                                        (let ((_%e198611198629%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%g198607198627%_))))
                  (let ((_%hd198612198632%_
                         (let ()
                           (declare (not safe))
                           (##car _%e198611198629%_)))
                        (_%tl198613198634%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e198611198629%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl198613198634%_))
                        (let ((_%e198614198637%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl198613198634%_))))
                          (let ((_%hd198615198640%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e198614198637%_)))
                                (_%tl198616198642%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e198614198637%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd198615198640%_))
                                (let ((_%e198617198645%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd198615198640%_))))
                                  (let ((_%hd198618198648%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e198617198645%_)))
                                        (_%tl198619198650%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e198617198645%_))))
                                    ((lambda (_%g198608198653%_
                                              _%g198609198654%_
                                              _%g198610198655%_)
                                       (let ((_%receiver198674%_
                                              (let ((_%$e198671%_
                                                     (gxc#apply-extract-receiver
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               '%#begin))
                                                            _%g198608198653%_))))
                                                (if _%$e198671%_
                                                    _%$e198671%_
                                                    _%g198610198655%_))))
                                         (for-each
                                          (lambda (_%g198675198677%_)
                                            (gxc#apply-collect-object-refs__%
                                             '#f
                                             _%receiver198674%_
                                             _%method-calls197624%_
                                             _%slot-refs197625%_
                                             _%g198675198677%_))
                                          _%g198608198653%_)))
                                     _%tl198616198642%_
                                     _%tl198619198650%_
                                     _%hd198618198648%_)))
                                (_%g198606198624%_ _%g198607198627%_))))
                        (_%g198606198624%_ _%g198607198627%_))))
                (_%g198606198624%_ _%g198607198627%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g198605198680%_
                                             _%g198492198581%_))
                                          (let* ((_%g198683198702%_
                                                  (lambda (_%g198684198699%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g198684198699%_))))
                                                 (_%g198682198824%_
                                                  (lambda (_%g198684198705%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%g198684198705%_))
                                                        (let ((_%e198686198707%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%g198684198705%_))))
                  (let ((_%hd198687198710%_
                         (let ()
                           (declare (not safe))
                           (##car _%e198686198707%_)))
                        (_%tl198688198712%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e198686198707%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%tl198688198712%_))
                        (let ((_g201762_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _%tl198688198712%_
                                  '0))))
                          (begin
                            (let ((_g201763_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g201762_)
                                         (##values-length _g201762_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g201763_ 2)))
                                  (error "Context expects 2 values"
                                         _g201763_)))
                            (let ((_%target198689198715%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g201762_ 0)))
                                  (_%tl198691198717%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g201762_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl198691198717%_))
                                  (letrec ((_%loop198692198720%_
                                            (lambda (_%hd198690198723%_
                                                     _%clause198696198725%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd198690198723%_))
                                                  (let ((_%e198693198727%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd198690198723%_))))
                                                    (let ((_%lp-hd198694198730%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e198693198727%_)))
                                                          (_%lp-tl198695198732%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e198693198727%_))))
                                                      (_%loop198692198720%_
                                                       _%lp-tl198695198732%_
                                                       (cons _%lp-hd198694198730%_
                                                             _%clause198696198725%_))))
                                                  (let ((_%clause198697198735%_
                                                         (reverse _%clause198696198725%_)))
                                                    ((lambda (_%g198685198737%_)
                                                       (for-each
                                                        (lambda (_%clause198750%_)
                                                          (let* ((_%g198752198767%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%g198753198764%_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g198753198764%_))))
                         (_%g198751198814%_
                          (lambda (_%g198753198770%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%g198753198770%_))
                                (let ((_%e198757198772%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%g198753198770%_))))
                                  (let ((_%hd198758198775%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e198757198772%_)))
                                        (_%tl198759198777%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e198757198772%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd198758198775%_))
                                        (let ((_%e198760198780%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd198758198775%_))))
                                          (let ((_%hd198761198783%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e198760198780%_)))
                                                (_%tl198762198785%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e198760198780%_))))
                                            ((lambda (_%g198754198788%_
                                                      _%g198755198789%_
                                                      _%g198756198790%_)
                                               (let ((_%receiver198808%_
                                                      (let ((_%$e198805%_
                                                             (gxc#apply-extract-receiver
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f '%#begin))
                            _%g198754198788%_))))
                (if _%$e198805%_ _%$e198805%_ _%g198756198790%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (for-each
                                                  (lambda (_%g198809198811%_)
                                                    (gxc#apply-collect-object-refs__%
                                                     '#f
                                                     _%receiver198808%_
                                                     _%method-calls197624%_
                                                     _%slot-refs197625%_
                                                     _%g198809198811%_))
                                                  _%g198754198788%_)))
                                             _%tl198759198777%_
                                             _%tl198762198785%_
                                             _%hd198761198783%_)))
                                        (_%g198752198767%_
                                         _%g198753198770%_))))
                                (_%g198752198767%_ _%g198753198770%_)))))
                    (_%g198751198814%_ _%clause198750%_)))
                (let ((__tmp201764
                       (lambda (_%g198816198819%_ _%g198817198821%_)
                         (cons _%g198816198819%_ _%g198817198821%_))))
                  (declare (not safe))
                  (__foldr1 __tmp201764 '() _%g198685198737%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%clause198697198735%_))))))
                                    (_%loop198692198720%_
                                     _%target198689198715%_
                                     '()))
                                  (_%g198683198702%_ _%g198684198705%_)))))
                        (_%g198683198702%_ _%g198684198705%_))))
                (_%g198683198702%_ _%g198684198705%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g198682198824%_
                                             _%g198491198580%_))
                                          (if (_%no-specializer?197628%_)
                                              _%stx197532%_
                                              (let* ((_%specializer-id198833%_
                                                      (let* ((_%id198827%_
                                                              (let ((__tmp201765
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g197543197605%_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp201765 '"::specialize")))
                     (_%specializer-id198830%_
                      (let ((__tmp201766
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _%stx197532%_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _%id198827%_ __tmp201766))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _%specializer-id198830%_))
                _%specializer-id198830%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$klass198835%_
                                                      (let ((__tmp201767
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__klass))))
                (declare (not safe))
                (make-symbol__0 __tmp201767)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$method-table198837%_
                                                      (let ((__tmp201768
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__method-table))))
                (declare (not safe))
                (make-symbol__0 __tmp201768)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods198839%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%method-calls197624%_)))
                                                     (_%$methods198843%_
                                                      (let ((__tmp201769
                                                             (lambda (_%id198841%_)
                                                               (let ((__tmp201770
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gensym _%id198841%_)))
                         (declare (not safe))
                         (make-symbol__1 '"__" __tmp201770)))))
                (declare (not safe))
                (##map __tmp201769 _%methods198839%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_198852%_
                                                      (let ((__tmp201771
                                                             (lambda (_%g198844198847%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g198845198849%_)
                       (let ()
                         (declare (not safe))
                         (__hash-put!
                          _%method-calls197624%_
                          _%g198844198847%_
                          _%g198845198849%_)))))
                (declare (not safe))
                (##for-each __tmp201771 _%methods198839%_ _%$methods198843%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods-bind198862%_
                                                      (let ((__tmp201772
                                                             (lambda (_%g198854198857%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g198855198859%_)
                       (_%generate-method-bind197534%_
                        _%$klass198835%_
                        _%$method-table198837%_
                        _%g198854198857%_
                        _%g198855198859%_))))
                (declare (not safe))
                (##map __tmp201772 _%methods198839%_ _%$methods198843%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots198864%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%slot-refs197625%_)))
                                                     (_%$slots198868%_
                                                      (let ((__tmp201773
                                                             (lambda (_%id198866%_)
                                                               (let ((__tmp201774
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gensym _%id198866%_)))
                         (declare (not safe))
                         (make-symbol__1 '"__" __tmp201774)))))
                (declare (not safe))
                (##map __tmp201773 _%slots198864%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_198877%_
                                                      (let ((__tmp201775
                                                             (lambda (_%g198869198872%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g198870198874%_)
                       (let ()
                         (declare (not safe))
                         (__hash-put!
                          _%slot-refs197625%_
                          _%g198869198872%_
                          _%g198870198874%_)))))
                (declare (not safe))
                (##for-each __tmp201775 _%slots198864%_ _%$slots198868%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots-bind198886%_
                                                      (let ((__tmp201776
                                                             (lambda (_%g198878198881%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g198879198883%_)
                       (_%generate-slot-bind197535%_
                        _%$klass198835%_
                        _%g198878198881%_
                        _%g198879198883%_))))
                (declare (not safe))
                (##map __tmp201776 _%slots198864%_ _%$slots198868%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-lambda-expr198978%_
                                                      (let* ((_%g198888198906%_
                                                              (lambda (_%g198889198903%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g198889198903%_))))
                     (_%g198887198975%_
                      (lambda (_%g198889198909%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g198889198909%_))
                            (let ((_%e198893198911%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g198889198909%_))))
                              (let ((_%hd198894198914%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e198893198911%_)))
                                    (_%tl198895198916%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e198893198911%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl198895198916%_))
                                    (let ((_%e198896198919%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl198895198916%_))))
                                      (let ((_%hd198897198922%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e198896198919%_)))
                                            (_%tl198898198924%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e198896198919%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd198897198922%_))
                                            (let ((_%e198899198927%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd198897198922%_))))
                                              (let ((_%hd198900198930%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e198899198927%_)))
                                                    (_%tl198901198932%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e198899198927%_))))
                                                ((lambda (_%g198890198935%_
                                                          _%g198891198936%_
                                                          _%g198892198937%_)
                                                   (let* ((_%receiver198966%_
                                                           (let ((_%$e198963%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gxc#apply-extract-receiver
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '%#begin))
                                 _%g198890198935%_))))
                     (if _%$e198963%_ _%$e198963%_ _%g198892198937%_)))
                  (_%body198972%_
                   (map (lambda (_%g198967198969%_)
                          (gxc#apply-subst-object-refs__%
                           '#f
                           _%receiver198966%_
                           _%$klass198835%_
                           _%method-calls197624%_
                           _%slot-refs197625%_
                           _%g198967198969%_))
                        _%g198890198935%_))
                  (__tmp201777
                   (cons '%#lambda
                         (cons (cons _%g198892198937%_ _%g198891198936%_)
                               _%body198972%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp201777
                                                      _%g198492198581%_)))
                                                 _%tl198898198924%_
                                                 _%tl198901198932%_
                                                 _%hd198900198930%_)))
                                            (_%g198888198906%_
                                             _%g198889198909%_))))
                                    (_%g198888198906%_ _%g198889198909%_))))
                            (_%g198888198906%_ _%g198889198909%_)))))
                (_%g198887198975%_ _%g198492198581%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-case-lambda-expr199139%_
                                                      (let* ((_%g198980198999%_
                                                              (lambda (_%g198981198996%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g198981198996%_))))
                     (_%g198979199136%_
                      (lambda (_%g198981199002%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g198981199002%_))
                            (let ((_%e198983199004%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g198981199002%_))))
                              (let ((_%hd198984199007%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e198983199004%_)))
                                    (_%tl198985199009%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e198983199004%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl198985199009%_))
                                    (let ((_g201778_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _%tl198985199009%_
                                              '0))))
                                      (begin
                                        (let ((_g201779_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g201778_)
                                                     (##values-length
                                                      _g201778_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g201779_ 2)))
                                              (error "Context expects 2 values"
                                                     _g201779_)))
                                        (let ((_%target198986199012%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g201778_ 0)))
                                              (_%tl198988199014%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g201778_ 1))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl198988199014%_))
                                              (letrec ((_%loop198989199017%_
                                                        (lambda (_%hd198987199020%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%clause198993199022%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd198987199020%_))
                      (let ((_%e198990199024%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd198987199020%_))))
                        (let ((_%lp-hd198991199027%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e198990199024%_)))
                              (_%lp-tl198992199029%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e198990199024%_))))
                          (_%loop198989199017%_
                           _%lp-tl198992199029%_
                           (cons _%lp-hd198991199027%_
                                 _%clause198993199022%_))))
                      (let ((_%clause198994199032%_
                             (reverse _%clause198993199022%_)))
                        ((lambda (_%g198982199034%_)
                           (let* ((_%clauses199134%_
                                   (map (lambda (_%clause199048%_)
                                          (let* ((_%__stx200571200572%_
                                                  _%clause199048%_)
                                                 (_%g199051199066%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx200571200572%_)))))
                                            (let ((_%__kont200573200574%_
                                                   (lambda (_%g199053199094%_
                                                            _%g199054199095%_
                                                            _%g199055199096%_)
                                                     (let* ((_%receiver199115%_
                                                             (let ((_%$e199112%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gxc#apply-extract-receiver
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f '%#begin))
                                   _%g199053199094%_))))
                       (if _%$e199112%_ _%$e199112%_ _%g199055199096%_)))
                    (_%body199121%_
                     (map (lambda (_%g199116199118%_)
                            (gxc#apply-subst-object-refs__%
                             '#f
                             _%receiver199115%_
                             _%$klass198835%_
                             _%method-calls197624%_
                             _%slot-refs197625%_
                             _%g199116199118%_))
                          _%g199053199094%_)))
               (cons (cons _%g199055199096%_ _%g199054199095%_)
                     _%body199121%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont200575200576%_
                                                   (lambda ()
                                                     _%clause199048%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%__stx200571200572%_))
                                                  (let ((_%e199056199078%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%__stx200571200572%_))))
                                                    (let ((_%tl199058199083%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e199056199078%_)))
                                                          (_%hd199057199081%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e199056199078%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd199057199081%_))
                                                          (let ((_%e199059199086%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd199057199081%_))))
                    (let ((_%tl199061199091%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e199059199086%_)))
                          (_%hd199060199089%_
                           (let ()
                             (declare (not safe))
                             (##car _%e199059199086%_))))
                      (_%__kont200573200574%_
                       _%tl199058199083%_
                       _%tl199061199091%_
                       _%hd199060199089%_)))
                  (_%__kont200575200576%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont200575200576%_)))))
                                        (let ((__tmp201780
                                               (lambda (_%g199126199129%_
                                                        _%g199127199131%_)
                                                 (cons _%g199126199129%_
                                                       _%g199127199131%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp201780
                                           '()
                                           _%g198982199034%_))))
                                  (__tmp201781
                                   (cons '%#case-lambda _%clauses199134%_)))
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp201781
                              _%g198491198580%_)))
                         _%clause198994199032%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop198989199017%_
                                                 _%target198986199012%_
                                                 '()))
                                              (_%g198980198999%_
                                               _%g198981199002%_)))))
                                    (_%g198980198999%_ _%g198981199002%_))))
                            (_%g198980198999%_ _%g198981199002%_)))))
                (_%g198979199136%_ _%g198491198580%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl199141%_
                                                      (let ((__tmp201782
                                                             (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (cons (cons _%g198493198582%_ '())
                                             (cons _%specializer-lambda-expr198978%_
                                                   '()))
                                       '())
                                 (cons _%specializer-case-lambda-expr199139%_
                                       '())))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp201782 _%stx197532%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl199143%_
                                                      (_%generate-specializer-impl197536%_
                                                       _%$klass198835%_
                                                       _%$method-table198837%_
                                                       _%methods-bind198862%_
                                                       _%slots-bind198886%_
                                                       _%specializer-impl199141%_)))
                                                (let ((__tmp201784
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%g197543197605%_)))
                                                      (__tmp201783
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%specializer-id198833%_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp201784
                                                   '" => "
                                                   __tmp201783))
                                                (_%generate-specializer-def197537%_
                                                 _%g197543197605%_
                                                 _%specializer-id198833%_
                                                 _%specializer-impl199143%_))))
                                        _%hd198513198575%_
                                        _%hd198510198567%_
                                        _%hd198507198559%_)
                                       (_%g198489198519%_ _%g198490198522%_))))
                               (_%g198489198519%_ _%g198490198522%_))
                           (_%g198489198519%_ _%g198490198522%_))
                       (_%g198489198519%_ _%g198490198522%_))))
               (_%g198489198519%_ _%g198490198522%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g198489198519%_
                                                    _%g198490198522%_))))
                                           (_%g198489198519%_
                                            _%g198490198522%_))))
                                   (_%g198489198519%_ _%g198490198522%_))))
                           (_%g198489198519%_ _%g198490198522%_))))
                   (_%g198489198519%_ _%g198490198522%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g198489198519%_
                                                    _%g198490198522%_)))))
                                       (_%g198488199146%_ _%g197542197604%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#kw-lambda-expr?
                                            _%g197542197604%_))
                                         (let* ((_%g199150199203%_
                                                 (lambda (_%g199151199200%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g199151199200%_))))
                                                (_%g199149200368%_
                                                 (lambda (_%g199151199206%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%g199151199206%_))
                                                       (let ((_%e199157199208%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%g199151199206%_))))
                 (let ((_%hd199158199211%_
                        (let ()
                          (declare (not safe))
                          (##car _%e199157199208%_)))
                       (_%tl199159199213%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e199157199208%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#identifier? _%hd199158199211%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-eq? '%#let-values _%hd199158199211%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl199159199213%_))
                               (let ((_%e199160199216%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%tl199159199213%_))))
                                 (let ((_%hd199161199219%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e199160199216%_)))
                                       (_%tl199162199221%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e199160199216%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd199161199219%_))
                                       (let ((_%e199163199224%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd199161199219%_))))
                                         (let ((_%hd199164199227%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e199163199224%_)))
                                               (_%tl199165199229%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e199163199224%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%hd199164199227%_))
                                               (let ((_%e199166199232%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%hd199164199227%_))))
                                                 (let ((_%hd199167199235%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e199166199232%_)))
                                                       (_%tl199168199237%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e199166199232%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%hd199167199235%_))
                                                       (let ((_%e199169199240%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%hd199167199235%_))))
                 (let ((_%hd199170199243%_
                        (let ()
                          (declare (not safe))
                          (##car _%e199169199240%_)))
                       (_%tl199171199245%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e199169199240%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl199171199245%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%tl199168199237%_))
                           (let ((_%e199172199248%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%tl199168199237%_))))
                             (let ((_%hd199173199251%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e199172199248%_)))
                                   (_%tl199174199253%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e199172199248%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd199173199251%_))
                                   (let ((_%e199175199256%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd199173199251%_))))
                                     (let ((_%hd199176199259%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e199175199256%_)))
                                           (_%tl199177199261%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e199175199256%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#identifier?
                                              _%hd199176199259%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-eq?
                                                  '%#let-values
                                                  _%hd199176199259%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%tl199177199261%_))
                                                   (let ((_%e199178199264%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%tl199177199261%_))))
                                                     (let ((_%hd199179199267%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e199178199264%_)))
                                                           (_%tl199180199269%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e199178199264%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%hd199179199267%_))
                                                           (let ((_%e199181199272%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%hd199179199267%_))))
                     (let ((_%hd199182199275%_
                            (let ()
                              (declare (not safe))
                              (##car _%e199181199272%_)))
                           (_%tl199183199277%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e199181199272%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%hd199182199275%_))
                           (let ((_%e199184199280%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd199182199275%_))))
                             (let ((_%hd199185199283%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e199184199280%_)))
                                   (_%tl199186199285%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e199184199280%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd199185199283%_))
                                   (let ((_%e199187199288%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd199185199283%_))))
                                     (let ((_%hd199188199291%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e199187199288%_)))
                                           (_%tl199189199293%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e199187199288%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl199189199293%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl199186199285%_))
                                               (let ((_%e199190199296%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%tl199186199285%_))))
                                                 (let ((_%hd199191199299%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e199190199296%_)))
                                                       (_%tl199192199301%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e199190199296%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl199192199301%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _%tl199183199277%_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _%tl199180199269%_))
                       (let ((_%e199193199304%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%tl199180199269%_))))
                         (let ((_%hd199194199307%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e199193199304%_)))
                               (_%tl199195199309%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e199193199304%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%tl199195199309%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl199174199253%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%tl199165199229%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%tl199162199221%_))
                                           (let ((_%e199196199312%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%tl199162199221%_))))
                                             (let ((_%hd199197199315%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e199196199312%_)))
                                                   (_%tl199198199317%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e199196199312%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl199198199317%_))
                                                   ((lambda (_%g199152199320%_
                                                             _%g199153199321%_
                                                             _%g199154199322%_
                                                             _%g199155199323%_
                                                             _%g199156199324%_)
                                                      (let* ((_%g199364199426%_
                                                              (lambda (_%g199365199423%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g199365199423%_))))
                     (_%g199363200365%_
                      (lambda (_%g199365199429%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g199365199429%_))
                            (let ((_%e199371199431%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g199365199429%_))))
                              (let ((_%hd199372199434%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e199371199431%_)))
                                    (_%tl199373199436%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e199371199431%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd199372199434%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _%hd199372199434%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl199373199436%_))
                                            (let ((_%e199374199439%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl199373199436%_))))
                                              (let ((_%hd199375199442%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e199374199439%_)))
                                                    (_%tl199376199444%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e199374199439%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl199376199444%_))
                                                    (let ((_%e199377199447%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl199376199444%_))))
                                                      (let ((_%hd199378199450%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e199377199447%_)))
                    (_%tl199379199452%_
                     (let () (declare (not safe)) (##cdr _%e199377199447%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%hd199378199450%_))
                    (let ((_%e199380199455%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd199378199450%_))))
                      (let ((_%hd199381199458%_
                             (let ()
                               (declare (not safe))
                               (##car _%e199380199455%_)))
                            (_%tl199382199460%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e199380199455%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%hd199381199458%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#call _%hd199381199458%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl199382199460%_))
                                    (let ((_%e199383199463%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl199382199460%_))))
                                      (let ((_%hd199384199466%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e199383199463%_)))
                                            (_%tl199385199468%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e199383199463%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd199384199466%_))
                                            (let ((_%e199386199471%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd199384199466%_))))
                                              (let ((_%hd199387199474%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e199386199471%_)))
                                                    (_%tl199388199476%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e199386199471%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd199387199474%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd199387199474%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl199388199476%_))
                                                            (let ((_%e199389199479%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl199388199476%_))))
                      (let ((_%hd199390199482%_
                             (let ()
                               (declare (not safe))
                               (##car _%e199389199479%_)))
                            (_%tl199391199484%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e199389199479%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl199391199484%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl199385199468%_))
                                (let ((_%e199392199487%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl199385199468%_))))
                                  (let ((_%hd199393199490%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e199392199487%_)))
                                        (_%tl199394199492%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e199392199487%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd199393199490%_))
                                        (let ((_%e199395199495%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd199393199490%_))))
                                          (let ((_%hd199396199498%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e199395199495%_)))
                                                (_%tl199397199500%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e199395199495%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _%hd199396199498%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _%hd199396199498%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl199397199500%_))
                                                        (let ((_%e199398199503%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl199397199500%_))))
                  (let ((_%hd199399199506%_
                         (let ()
                           (declare (not safe))
                           (##car _%e199398199503%_)))
                        (_%tl199400199508%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e199398199503%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl199400199508%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl199394199492%_))
                            (let ((_%e199401199511%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl199394199492%_))))
                              (let ((_%hd199402199514%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e199401199511%_)))
                                    (_%tl199403199516%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e199401199511%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd199402199514%_))
                                    (let ((_%e199404199519%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd199402199514%_))))
                                      (let ((_%hd199405199522%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e199404199519%_)))
                                            (_%tl199406199524%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e199404199519%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _%hd199405199522%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _%hd199405199522%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl199406199524%_))
                                                    (let ((_%e199407199527%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl199406199524%_))))
                                                      (let ((_%hd199408199530%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e199407199527%_)))
                    (_%tl199409199532%_
                     (let () (declare (not safe)) (##cdr _%e199407199527%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl199409199532%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%tl199403199516%_))
                        (if (let ((__tmp201785
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-length _%tl199403199516%_))))
                              (declare (not safe))
                              (##fx>= __tmp201785 '1))
                            (let ((_g201786_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _%tl199403199516%_
                                      '1))))
                              (begin
                                (let ((_g201787_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g201786_)
                                             (##values-length _g201786_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g201787_ 2)))
                                      (error "Context expects 2 values"
                                             _g201787_)))
                                (let ((_%target199410199535%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g201786_ 0)))
                                      (_%tl199412199537%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g201786_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl199412199537%_))
                                      (let ((_%e199419199540%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl199412199537%_))))
                                        (let ((_%hd199420199543%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e199419199540%_)))
                                              (_%tl199421199545%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e199419199540%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl199421199545%_))
                                              (letrec ((_%loop199413199548%_
                                                        (lambda (_%hd199411199551%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%kw-ref199417199553%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd199411199551%_))
                      (let ((_%e199414199555%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd199411199551%_))))
                        (let ((_%lp-hd199415199558%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e199414199555%_)))
                              (_%lp-tl199416199560%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e199414199555%_))))
                          (_%loop199413199548%_
                           _%lp-tl199416199560%_
                           (cons _%lp-hd199415199558%_
                                 _%kw-ref199417199553%_))))
                      (let ((_%kw-ref199418199563%_
                             (reverse _%kw-ref199417199553%_)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl199379199452%_))
                            ((lambda (_%g199366199565%_
                                      _%g199367199566%_
                                      _%g199368199567%_
                                      _%g199369199568%_
                                      _%g199370199569%_)
                               (let* ((_%kw-count199620%_
                                       (length (let ((__tmp201788
                                                      (lambda (_%g199612199615%_
                                                               _%g199613199617%_)
                                                        (cons _%g199612199615%_
                                                              _%g199613199617%_))))
                                                 (declare (not safe))
                                                 (__foldr1
                                                  __tmp201788
                                                  '()
                                                  _%g199367199566%_))))
                                      (_%self-index199622%_
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _%kw-count199620%_ '1))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#lambda-expr? _%g199154199322%_))
                                     (let* ((_%g199626199640%_
                                             (lambda (_%g199627199637%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g199627199637%_))))
                                            (_%g199625199763%_
                                             (lambda (_%g199627199643%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%g199627199643%_))
                                                   (let ((_%e199630199645%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%g199627199643%_))))
                                                     (let ((_%hd199631199648%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e199630199645%_)))
                                                           (_%tl199632199650%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e199630199645%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl199632199650%_))
                                                           (let ((_%e199633199653%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl199632199650%_))))
                     (let ((_%hd199634199656%_
                            (let ()
                              (declare (not safe))
                              (##car _%e199633199653%_)))
                           (_%tl199635199658%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e199633199653%_))))
                       ((lambda (_%g199628199661%_ _%g199629199662%_)
                          (let* ((_%self199679%_
                                  (list-ref
                                   _%g199629199662%_
                                   _%self-index199622%_))
                                 (_%receiver199684%_
                                  (let ((_%$e199681%_
                                         (gxc#apply-extract-receiver
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   '%#begin))
                                                _%g199628199661%_))))
                                    (if _%$e199681%_
                                        _%$e199681%_
                                        _%self199679%_))))
                            (for-each
                             (lambda (_%g199686199688%_)
                               (gxc#apply-collect-object-refs__%
                                '#f
                                _%receiver199684%_
                                _%method-calls197624%_
                                _%slot-refs197625%_
                                _%g199686199688%_))
                             _%g199628199661%_)
                            (if (_%no-specializer?197628%_)
                                _%stx197532%_
                                (let* ((_%specializer-id199697%_
                                        (let* ((_%id199691%_
                                                (let ((__tmp201789
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%g197543197605%_))))
                                                  (declare (not safe))
                                                  (make-symbol__1
                                                   __tmp201789
                                                   '"::specialize")))
                                               (_%specializer-id199694%_
                                                (let ((__tmp201790
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-source
                                                          _%stx197532%_))))
                                                  (declare (not safe))
                                                  (gx#core-quote-syntax__1
                                                   _%id199691%_
                                                   __tmp201790))))
                                          (let ()
                                            (declare (not safe))
                                            (gx#core-bind-runtime!__0
                                             _%specializer-id199694%_))
                                          _%specializer-id199694%_))
                                       (_%$klass199699%_
                                        (let ((__tmp201791
                                               (let ()
                                                 (declare (not safe))
                                                 (##gensym '__klass))))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp201791)))
                                       (_%$method-table199701%_
                                        (let ((__tmp201792
                                               (let ()
                                                 (declare (not safe))
                                                 (##gensym '__method-table))))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp201792)))
                                       (_%methods199703%_
                                        (let ()
                                          (declare (not safe))
                                          (__hash-keys
                                           _%method-calls197624%_)))
                                       (_%$methods199707%_
                                        (let ((__tmp201793
                                               (lambda (_%id199705%_)
                                                 (let ((__tmp201794
                                                        (gensym _%id199705%_)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    '"__"
                                                    __tmp201794)))))
                                          (declare (not safe))
                                          (##map __tmp201793
                                                 _%methods199703%_)))
                                       (_%_199716%_
                                        (let ((__tmp201795
                                               (lambda (_%g199708199711%_
                                                        _%g199709199713%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (__hash-put!
                                                    _%method-calls197624%_
                                                    _%g199708199711%_
                                                    _%g199709199713%_)))))
                                          (declare (not safe))
                                          (##for-each
                                           __tmp201795
                                           _%methods199703%_
                                           _%$methods199707%_)))
                                       (_%methods-bind199726%_
                                        (let ((__tmp201796
                                               (lambda (_%g199718199721%_
                                                        _%g199719199723%_)
                                                 (_%generate-method-bind197534%_
                                                  _%$klass199699%_
                                                  _%$method-table199701%_
                                                  _%g199718199721%_
                                                  _%g199719199723%_))))
                                          (declare (not safe))
                                          (##map __tmp201796
                                                 _%methods199703%_
                                                 _%$methods199707%_)))
                                       (_%slots199728%_
                                        (let ()
                                          (declare (not safe))
                                          (__hash-keys _%slot-refs197625%_)))
                                       (_%$slots199732%_
                                        (let ((__tmp201797
                                               (lambda (_%id199730%_)
                                                 (let ((__tmp201798
                                                        (gensym _%id199730%_)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    '"__"
                                                    __tmp201798)))))
                                          (declare (not safe))
                                          (##map __tmp201797 _%slots199728%_)))
                                       (_%_199741%_
                                        (let ((__tmp201799
                                               (lambda (_%g199733199736%_
                                                        _%g199734199738%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (__hash-put!
                                                    _%slot-refs197625%_
                                                    _%g199733199736%_
                                                    _%g199734199738%_)))))
                                          (declare (not safe))
                                          (##for-each
                                           __tmp201799
                                           _%slots199728%_
                                           _%$slots199732%_)))
                                       (_%slots-bind199750%_
                                        (let ((__tmp201800
                                               (lambda (_%g199742199745%_
                                                        _%g199743199747%_)
                                                 (_%generate-slot-bind197535%_
                                                  _%$klass199699%_
                                                  _%g199742199745%_
                                                  _%g199743199747%_))))
                                          (declare (not safe))
                                          (##map __tmp201800
                                                 _%slots199728%_
                                                 _%$slots199732%_)))
                                       (_%specializer-impl199758%_
                                        (let* ((_%specializer-body199756%_
                                                (map (lambda (_%g199751199753%_)
                                                       (gxc#apply-subst-object-refs__%
                                                        '#f
                                                        _%receiver199684%_
                                                        _%$klass199699%_
                                                        _%method-calls197624%_
                                                        _%slot-refs197625%_
                                                        _%g199751199753%_))
                                                     _%g199628199661%_))
                                               (__tmp201801
                                                (cons '%#let-values
                                                      (cons (cons (cons (cons _%g199156199324%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      '())
                                (cons (cons '%#let-values
                                            (cons (cons (cons (cons _%g199155199323%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())
                      (cons (let ((__tmp201802
                                   (cons '%#lambda
                                         (cons _%g199629199662%_
                                               _%specializer-body199756%_))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp201802
                               _%g199154199322%_))
                            '()))
                '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons _%g199153199321%_
                                                        '())))
                                      '()))
                          '())
                    (cons _%g199152199320%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp201801
                                           _%stx197532%_)))
                                       (_%specializer-impl199760%_
                                        (_%generate-specializer-impl197536%_
                                         _%$klass199699%_
                                         _%$method-table199701%_
                                         _%methods-bind199726%_
                                         _%slots-bind199750%_
                                         _%specializer-impl199758%_)))
                                  (let ((__tmp201804
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%g197543197605%_)))
                                        (__tmp201803
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e
                                            _%specializer-id199697%_))))
                                    (declare (not safe))
                                    (gxc#verbose
                                     '"generate method specializer "
                                     __tmp201804
                                     '" => "
                                     __tmp201803))
                                  (_%generate-specializer-def197537%_
                                   _%g197543197605%_
                                   _%specializer-id199697%_
                                   _%specializer-impl199760%_)))))
                        _%tl199635199658%_
                        _%hd199634199656%_)))
                   (_%g199626199640%_ _%g199627199643%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g199626199640%_
                                                    _%g199627199643%_)))))
                                       (_%g199625199763%_ _%g199154199322%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#opt-lambda-expr?
                                            _%g199154199322%_))
                                         (let* ((_%g199767199797%_
                                                 (lambda (_%g199768199794%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g199768199794%_))))
                                                (_%g199766200361%_
                                                 (lambda (_%g199768199800%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%g199768199800%_))
                                                       (let ((_%e199772199802%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%g199768199800%_))))
                 (let ((_%hd199773199805%_
                        (let ()
                          (declare (not safe))
                          (##car _%e199772199802%_)))
                       (_%tl199774199807%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e199772199802%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%tl199774199807%_))
                       (let ((_%e199775199810%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%tl199774199807%_))))
                         (let ((_%hd199776199813%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e199775199810%_)))
                               (_%tl199777199815%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e199775199810%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%hd199776199813%_))
                               (let ((_%e199778199818%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%hd199776199813%_))))
                                 (let ((_%hd199779199821%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e199778199818%_)))
                                       (_%tl199780199823%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e199778199818%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd199779199821%_))
                                       (let ((_%e199781199826%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd199779199821%_))))
                                         (let ((_%hd199782199829%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e199781199826%_)))
                                               (_%tl199783199831%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e199781199826%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%hd199782199829%_))
                                               (let ((_%e199784199834%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%hd199782199829%_))))
                                                 (let ((_%hd199785199837%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e199784199834%_)))
                                                       (_%tl199786199839%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e199784199834%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl199786199839%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl199783199831%_))
                                                           (let ((_%e199787199842%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl199783199831%_))))
                     (let ((_%hd199788199845%_
                            (let ()
                              (declare (not safe))
                              (##car _%e199787199842%_)))
                           (_%tl199789199847%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e199787199842%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl199789199847%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%tl199780199823%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%tl199777199815%_))
                                   (let ((_%e199790199850%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%tl199777199815%_))))
                                     (let ((_%hd199791199853%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e199790199850%_)))
                                           (_%tl199792199855%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e199790199850%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl199792199855%_))
                                           ((lambda (_%g199769199858%_
                                                     _%g199770199859%_
                                                     _%g199771199860%_)
                                              (let* ((_%g199884199898%_
                                                      (lambda (_%g199885199895%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g199885199895%_))))
                                                     (_%g199883199945%_
                                                      (lambda (_%g199885199901%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g199885199901%_))
                                                            (let ((_%e199888199903%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%g199885199901%_))))
                      (let ((_%hd199889199906%_
                             (let ()
                               (declare (not safe))
                               (##car _%e199888199903%_)))
                            (_%tl199890199908%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e199888199903%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl199890199908%_))
                            (let ((_%e199891199911%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl199890199908%_))))
                              (let ((_%hd199892199914%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e199891199911%_)))
                                    (_%tl199893199916%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e199891199911%_))))
                                ((lambda (_%g199886199919%_ _%g199887199920%_)
                                   (let* ((_%self199933%_
                                           (list-ref
                                            _%g199887199920%_
                                            _%self-index199622%_))
                                          (_%receiver199938%_
                                           (let ((_%$e199935%_
                                                  (gxc#apply-extract-receiver
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gx#datum->syntax__0
                                                            '#f
                                                            '%#begin))
                                                         _%g199886199919%_))))
                                             (if _%$e199935%_
                                                 _%$e199935%_
                                                 _%self199933%_))))
                                     (for-each
                                      (lambda (_%g199940199942%_)
                                        (gxc#apply-collect-object-refs__%
                                         '#f
                                         _%receiver199938%_
                                         _%method-calls197624%_
                                         _%slot-refs197625%_
                                         _%g199940199942%_))
                                      _%g199886199919%_)))
                                 _%tl199893199916%_
                                 _%hd199892199914%_)))
                            (_%g199884199898%_ _%g199885199901%_))))
                    (_%g199884199898%_ _%g199885199901%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g199883199945%_
                                                 _%g199770199859%_))
                                              (let* ((_%g199948199967%_
                                                      (lambda (_%g199949199964%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g199949199964%_))))
                                                     (_%g199947200076%_
                                                      (lambda (_%g199949199970%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g199949199970%_))
                                                            (let ((_%e199951199972%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%g199949199970%_))))
                      (let ((_%hd199952199975%_
                             (let ()
                               (declare (not safe))
                               (##car _%e199951199972%_)))
                            (_%tl199953199977%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e199951199972%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _%tl199953199977%_))
                            (let ((_g201805_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _%tl199953199977%_
                                      '0))))
                              (begin
                                (let ((_g201806_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g201805_)
                                             (##values-length _g201805_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g201806_ 2)))
                                      (error "Context expects 2 values"
                                             _g201806_)))
                                (let ((_%target199954199980%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g201805_ 0)))
                                      (_%tl199956199982%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g201805_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl199956199982%_))
                                      (letrec ((_%loop199957199985%_
                                                (lambda (_%hd199955199988%_
                                                         _%clause199961199990%_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%hd199955199988%_))
                                                      (let ((_%e199958199992%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd199955199988%_))))
                (let ((_%lp-hd199959199995%_
                       (let () (declare (not safe)) (##car _%e199958199992%_)))
                      (_%lp-tl199960199997%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e199958199992%_))))
                  (_%loop199957199985%_
                   _%lp-tl199960199997%_
                   (cons _%lp-hd199959199995%_ _%clause199961199990%_))))
              (let ((_%clause199962200000%_ (reverse _%clause199961199990%_)))
                ((lambda (_%g199950200002%_)
                   (for-each
                    (lambda (_%clause200015%_)
                      (let* ((_%g200017200028%_
                              (lambda (_%g200018200025%_)
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g200018200025%_))))
                             (_%g200016200066%_
                              (lambda (_%g200018200031%_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%g200018200031%_))
                                    (let ((_%e200021200033%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%g200018200031%_))))
                                      (let ((_%hd200022200036%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e200021200033%_)))
                                            (_%tl200023200038%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e200021200033%_))))
                                        ((lambda (_%g200019200041%_
                                                  _%g200020200042%_)
                                           (let* ((_%self200054%_
                                                   (list-ref
                                                    _%g200020200042%_
                                                    _%self-index199622%_))
                                                  (_%receiver200059%_
                                                   (let ((_%$e200056%_
                                                          (gxc#apply-extract-receiver
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '%#begin))
                         _%g200019200041%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _%$e200056%_
                                                         _%$e200056%_
                                                         _%self200054%_))))
                                             (for-each
                                              (lambda (_%g200061200063%_)
                                                (gxc#apply-collect-object-refs__%
                                                 '#f
                                                 _%receiver200059%_
                                                 _%method-calls197624%_
                                                 _%slot-refs197625%_
                                                 _%g200061200063%_))
                                              _%g200019200041%_)))
                                         _%tl200023200038%_
                                         _%hd200022200036%_)))
                                    (_%g200017200028%_ _%g200018200031%_)))))
                        (_%g200016200066%_ _%clause200015%_)))
                    (let ((__tmp201807
                           (lambda (_%g200068200071%_ _%g200069200073%_)
                             (cons _%g200068200071%_ _%g200069200073%_))))
                      (declare (not safe))
                      (__foldr1 __tmp201807 '() _%g199950200002%_))))
                 _%clause199962200000%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_%loop199957199985%_
                                         _%target199954199980%_
                                         '()))
                                      (_%g199948199967%_ _%g199949199970%_)))))
                            (_%g199948199967%_ _%g199949199970%_))))
                    (_%g199948199967%_ _%g199949199970%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g199947200076%_
                                                 _%g199769199858%_))
                                              (if (_%no-specializer?197628%_)
                                                  _%stx197532%_
                                                  (let* ((_%specializer-id200085%_
                                                          (let* ((_%id200079%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp201808
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%g197543197605%_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp201808 '"::specialize")))
                         (_%specializer-id200082%_
                          (let ((__tmp201809
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _%stx197532%_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _%id200079%_
                             __tmp201809))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _%specializer-id200082%_))
                    _%specializer-id200082%_))
                 (_%$klass200087%_
                  (let ((__tmp201810
                         (let () (declare (not safe)) (##gensym '__klass))))
                    (declare (not safe))
                    (make-symbol__0 __tmp201810)))
                 (_%$method-table200089%_
                  (let ((__tmp201811
                         (let ()
                           (declare (not safe))
                           (##gensym '__method-table))))
                    (declare (not safe))
                    (make-symbol__0 __tmp201811)))
                 (_%methods200091%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%method-calls197624%_)))
                 (_%$methods200095%_
                  (let ((__tmp201812
                         (lambda (_%id200093%_)
                           (let ((__tmp201813 (gensym _%id200093%_)))
                             (declare (not safe))
                             (make-symbol__1 '"__" __tmp201813)))))
                    (declare (not safe))
                    (##map __tmp201812 _%methods200091%_)))
                 (_%_200104%_
                  (let ((__tmp201814
                         (lambda (_%g200096200099%_ _%g200097200101%_)
                           (let ()
                             (declare (not safe))
                             (__hash-put!
                              _%method-calls197624%_
                              _%g200096200099%_
                              _%g200097200101%_)))))
                    (declare (not safe))
                    (##for-each
                     __tmp201814
                     _%methods200091%_
                     _%$methods200095%_)))
                 (_%methods-bind200114%_
                  (let ((__tmp201815
                         (lambda (_%g200106200109%_ _%g200107200111%_)
                           (_%generate-method-bind197534%_
                            _%$klass200087%_
                            _%$method-table200089%_
                            _%g200106200109%_
                            _%g200107200111%_))))
                    (declare (not safe))
                    (##map __tmp201815 _%methods200091%_ _%$methods200095%_)))
                 (_%slots200116%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%slot-refs197625%_)))
                 (_%$slots200120%_
                  (let ((__tmp201816
                         (lambda (_%id200118%_)
                           (let ((__tmp201817 (gensym _%id200118%_)))
                             (declare (not safe))
                             (make-symbol__1 '"__" __tmp201817)))))
                    (declare (not safe))
                    (##map __tmp201816 _%slots200116%_)))
                 (_%_200129%_
                  (let ((__tmp201818
                         (lambda (_%g200121200124%_ _%g200122200126%_)
                           (let ()
                             (declare (not safe))
                             (__hash-put!
                              _%slot-refs197625%_
                              _%g200121200124%_
                              _%g200122200126%_)))))
                    (declare (not safe))
                    (##for-each __tmp201818 _%slots200116%_ _%$slots200120%_)))
                 (_%slots-bind200138%_
                  (let ((__tmp201819
                         (lambda (_%g200130200133%_ _%g200131200135%_)
                           (_%generate-slot-bind197535%_
                            _%$klass200087%_
                            _%g200130200133%_
                            _%g200131200135%_))))
                    (declare (not safe))
                    (##map __tmp201819 _%slots200116%_ _%$slots200120%_)))
                 (_%specializer-lambda-expr200216%_
                  (let* ((_%g200140200154%_
                          (lambda (_%g200141200151%_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g200141200151%_))))
                         (_%g200139200213%_
                          (lambda (_%g200141200157%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%g200141200157%_))
                                (let ((_%e200144200159%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%g200141200157%_))))
                                  (let ((_%hd200145200162%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e200144200159%_)))
                                        (_%tl200146200164%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e200144200159%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl200146200164%_))
                                        (let ((_%e200147200167%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl200146200164%_))))
                                          (let ((_%hd200148200170%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e200147200167%_)))
                                                (_%tl200149200172%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e200147200167%_))))
                                            ((lambda (_%g200142200175%_
                                                      _%g200143200176%_)
                                               (let* ((_%self200199%_
                                                       (list-ref
                                                        _%g200143200176%_
                                                        _%self-index199622%_))
                                                      (_%receiver200204%_
                                                       (let ((_%$e200201%_
                                                              (gxc#apply-extract-receiver
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f '%#begin))
                             _%g200142200175%_))))
                 (if _%$e200201%_ _%$e200201%_ _%self200199%_)))
              (_%body200210%_
               (map (lambda (_%g200205200207%_)
                      (gxc#apply-subst-object-refs__%
                       '#f
                       _%receiver200204%_
                       _%$klass200087%_
                       _%method-calls197624%_
                       _%slot-refs197625%_
                       _%g200205200207%_))
                    _%g200142200175%_))
              (__tmp201820
               (cons '%#lambda (cons _%g200143200176%_ _%body200210%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp201820
                                                  _%g199770199859%_)))
                                             _%tl200149200172%_
                                             _%hd200148200170%_)))
                                        (_%g200140200154%_
                                         _%g200141200157%_))))
                                (_%g200140200154%_ _%g200141200157%_)))))
                    (_%g200139200213%_ _%g199770199859%_)))
                 (_%specializer-case-lambda-expr200354%_
                  (let* ((_%g200218200237%_
                          (lambda (_%g200219200234%_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g200219200234%_))))
                         (_%g200217200351%_
                          (lambda (_%g200219200240%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%g200219200240%_))
                                (let ((_%e200221200242%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%g200219200240%_))))
                                  (let ((_%hd200222200245%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e200221200242%_)))
                                        (_%tl200223200247%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e200221200242%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl200223200247%_))
                                        (let ((_g201821_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl200223200247%_
                                                  '0))))
                                          (begin
                                            (let ((_g201822_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g201821_)
                                                         (##values-length
                                                          _g201821_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g201822_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g201822_)))
                                            (let ((_%target200224200250%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g201821_
                                                      0)))
                                                  (_%tl200226200252%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g201821_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl200226200252%_))
                                                  (letrec ((_%loop200227200255%_
                                                            (lambda (_%hd200225200258%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%clause200231200260%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd200225200258%_))
                          (let ((_%e200228200262%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd200225200258%_))))
                            (let ((_%lp-hd200229200265%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e200228200262%_)))
                                  (_%lp-tl200230200267%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e200228200262%_))))
                              (_%loop200227200255%_
                               _%lp-tl200230200267%_
                               (cons _%lp-hd200229200265%_
                                     _%clause200231200260%_))))
                          (let ((_%clause200232200270%_
                                 (reverse _%clause200231200260%_)))
                            ((lambda (_%g200220200272%_)
                               (let* ((_%clauses200349%_
                                       (map (lambda (_%clause200286%_)
                                              (let* ((_%g200288200299%_
                                                      (lambda (_%g200289200296%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g200289200296%_))))
                                                     (_%g200287200339%_
                                                      (lambda (_%g200289200302%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g200289200302%_))
                                                            (let ((_%e200292200304%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%g200289200302%_))))
                      (let ((_%hd200293200307%_
                             (let ()
                               (declare (not safe))
                               (##car _%e200292200304%_)))
                            (_%tl200294200309%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e200292200304%_))))
                        ((lambda (_%g200290200312%_ _%g200291200313%_)
                           (let* ((_%self200325%_
                                   (list-ref
                                    _%g200291200313%_
                                    _%self-index199622%_))
                                  (_%receiver200330%_
                                   (let ((_%$e200327%_
                                          (gxc#apply-extract-receiver
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    '%#begin))
                                                 _%g200290200312%_))))
                                     (if _%$e200327%_
                                         _%$e200327%_
                                         _%self200325%_)))
                                  (_%body200336%_
                                   (map (lambda (_%g200331200333%_)
                                          (gxc#apply-subst-object-refs__%
                                           '#f
                                           _%receiver200330%_
                                           _%$klass200087%_
                                           _%method-calls197624%_
                                           _%slot-refs197625%_
                                           _%g200331200333%_))
                                        _%g200290200312%_)))
                             (cons _%g200291200313%_ _%body200336%_)))
                         _%tl200294200309%_
                         _%hd200293200307%_)))
                    (_%g200288200299%_ _%g200289200302%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g200287200339%_
                                                 _%clause200286%_)))
                                            (let ((__tmp201823
                                                   (lambda (_%g200341200344%_
                                                            _%g200342200346%_)
                                                     (cons _%g200341200344%_
                                                           _%g200342200346%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp201823
                                               '()
                                               _%g200220200272%_))))
                                      (__tmp201824
                                       (cons '%#case-lambda
                                             _%clauses200349%_)))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp201824
                                  _%g199769199858%_)))
                             _%clause200232200270%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop200227200255%_
                                                     _%target200224200250%_
                                                     '()))
                                                  (_%g200218200237%_
                                                   _%g200219200240%_)))))
                                        (_%g200218200237%_
                                         _%g200219200240%_))))
                                (_%g200218200237%_ _%g200219200240%_)))))
                    (_%g200217200351%_ _%g199769199858%_)))
                 (_%specializer-impl200356%_
                  (let ((__tmp201825
                         (cons '%#let-values
                               (cons (cons (cons (cons _%g199156199324%_ '())
                                                 (cons (cons '%#let-values
                                                             (cons (cons (cons (cons _%g199155199323%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                             '())
                                       (cons (let ((__tmp201826
                                                    (cons '%#let-values
                                                          (cons (cons (cons (cons _%g199771199860%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                          '())
                                    (cons _%specializer-lambda-expr200216%_
                                          '()))
                              '())
                        (cons _%specializer-case-lambda-expr200354%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp201826
                                                _%stx197532%_))
                                             '()))
                                 '())
                           (cons _%g199153199321%_ '())))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())
                                     (cons _%g199152199320%_ '())))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp201825 _%stx197532%_)))
                 (_%specializer-impl200358%_
                  (_%generate-specializer-impl197536%_
                   _%$klass200087%_
                   _%$method-table200089%_
                   _%methods-bind200114%_
                   _%slots-bind200138%_
                   _%specializer-impl200356%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp201828
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%g197543197605%_)))
                                                          (__tmp201827
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%specializer-id200085%_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp201828
                                                       '" => "
                                                       __tmp201827))
                                                    (_%generate-specializer-def197537%_
                                                     _%g197543197605%_
                                                     _%specializer-id200085%_
                                                     _%specializer-impl200358%_))))
                                            _%hd199791199853%_
                                            _%hd199788199845%_
                                            _%hd199785199837%_)
                                           (_%g199767199797%_
                                            _%g199768199800%_))))
                                   (_%g199767199797%_ _%g199768199800%_))
                               (_%g199767199797%_ _%g199768199800%_))
                           (_%g199767199797%_ _%g199768199800%_))))
                   (_%g199767199797%_ _%g199768199800%_))
               (_%g199767199797%_ _%g199768199800%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g199767199797%_
                                                _%g199768199800%_))))
                                       (_%g199767199797%_ _%g199768199800%_))))
                               (_%g199767199797%_ _%g199768199800%_))))
                       (_%g199767199797%_ _%g199768199800%_))))
               (_%g199767199797%_ _%g199768199800%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g199766200361%_
                                            _%g199154199322%_))
                                         _%stx197532%_))))
                             _%hd199420199543%_
                             _%kw-ref199418199563%_
                             _%hd199408199530%_
                             _%hd199399199506%_
                             _%hd199390199482%_)
                            (_%g199364199426%_ _%g199365199429%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop199413199548%_
                                                 _%target199410199535%_
                                                 '()))
                                              (_%g199364199426%_
                                               _%g199365199429%_))))
                                      (_%g199364199426%_ _%g199365199429%_)))))
                            (_%g199364199426%_ _%g199365199429%_))
                        (_%g199364199426%_ _%g199365199429%_))
                    (_%g199364199426%_ _%g199365199429%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g199364199426%_
                                                     _%g199365199429%_))
                                                (_%g199364199426%_
                                                 _%g199365199429%_))
                                            (_%g199364199426%_
                                             _%g199365199429%_))))
                                    (_%g199364199426%_ _%g199365199429%_))))
                            (_%g199364199426%_ _%g199365199429%_))
                        (_%g199364199426%_ _%g199365199429%_))))
                (_%g199364199426%_ _%g199365199429%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g199364199426%_
                                                     _%g199365199429%_))
                                                (_%g199364199426%_
                                                 _%g199365199429%_))))
                                        (_%g199364199426%_
                                         _%g199365199429%_))))
                                (_%g199364199426%_ _%g199365199429%_))
                            (_%g199364199426%_ _%g199365199429%_))))
                    (_%g199364199426%_ _%g199365199429%_))
                (_%g199364199426%_ _%g199365199429%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g199364199426%_
                                                     _%g199365199429%_))))
                                            (_%g199364199426%_
                                             _%g199365199429%_))))
                                    (_%g199364199426%_ _%g199365199429%_))
                                (_%g199364199426%_ _%g199365199429%_))
                            (_%g199364199426%_ _%g199365199429%_))))
                    (_%g199364199426%_ _%g199365199429%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g199364199426%_
                                                     _%g199365199429%_))))
                                            (_%g199364199426%_
                                             _%g199365199429%_))
                                        (_%g199364199426%_ _%g199365199429%_))
                                    (_%g199364199426%_ _%g199365199429%_))))
                            (_%g199364199426%_ _%g199365199429%_)))))
                (_%g199363200365%_ _%g199153199321%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%hd199197199315%_
                                                    _%hd199194199307%_
                                                    _%hd199191199299%_
                                                    _%hd199188199291%_
                                                    _%hd199170199243%_)
                                                   (_%g199150199203%_
                                                    _%g199151199206%_))))
                                           (_%g199150199203%_
                                            _%g199151199206%_))
                                       (_%g199150199203%_ _%g199151199206%_))
                                   (_%g199150199203%_ _%g199151199206%_))
                               (_%g199150199203%_ _%g199151199206%_))))
                       (_%g199150199203%_ _%g199151199206%_))
                   (_%g199150199203%_ _%g199151199206%_))
               (_%g199150199203%_ _%g199151199206%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g199150199203%_
                                                _%g199151199206%_))
                                           (_%g199150199203%_
                                            _%g199151199206%_))))
                                   (_%g199150199203%_ _%g199151199206%_))))
                           (_%g199150199203%_ _%g199151199206%_))))
                   (_%g199150199203%_ _%g199151199206%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g199150199203%_
                                                    _%g199151199206%_))
                                               (_%g199150199203%_
                                                _%g199151199206%_))
                                           (_%g199150199203%_
                                            _%g199151199206%_))))
                                   (_%g199150199203%_ _%g199151199206%_))))
                           (_%g199150199203%_ _%g199151199206%_))
                       (_%g199150199203%_ _%g199151199206%_))))
               (_%g199150199203%_ _%g199151199206%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g199150199203%_
                                                _%g199151199206%_))))
                                       (_%g199150199203%_ _%g199151199206%_))))
                               (_%g199150199203%_ _%g199151199206%_))
                           (_%g199150199203%_ _%g199151199206%_))
                       (_%g199150199203%_ _%g199151199206%_))))
               (_%g199150199203%_ _%g199151199206%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g199149200368%_
                                            _%g197542197604%_))
                                         _%stx197532%_))))))))
                  (_%__kont200595200596%_ (lambda () _%stx197532%_)))
              (let ((_%__match200624200625%_
                     (lambda (_%e197544197572%_
                              _%hd197545197575%_
                              _%tl197546197577%_
                              _%e197547197580%_
                              _%hd197548197583%_
                              _%tl197549197585%_
                              _%e197550197588%_
                              _%hd197551197591%_
                              _%tl197552197593%_
                              _%e197553197596%_
                              _%hd197554197599%_
                              _%tl197555197601%_)
                       (let ((_%g197542197604%_ _%hd197554197599%_)
                             (_%g197543197605%_ _%hd197551197591%_))
                         (if (let ((__tmp201829
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol
                                       _%g197543197605%_))))
                               (declare (not safe))
                               (gxc#optimizer-top-level-method? __tmp201829))
                             (_%__kont200593200594%_
                              _%g197542197604%_
                              _%g197543197605%_)
                             (_%__kont200595200596%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx200591200592%_))
                    (let ((_%e197544197572%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx200591200592%_))))
                      (let ((_%tl197546197577%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e197544197572%_)))
                            (_%hd197545197575%_
                             (let ()
                               (declare (not safe))
                               (##car _%e197544197572%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl197546197577%_))
                            (let ((_%e197547197580%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl197546197577%_))))
                              (let ((_%tl197549197585%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e197547197580%_)))
                                    (_%hd197548197583%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e197547197580%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd197548197583%_))
                                    (let ((_%e197550197588%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd197548197583%_))))
                                      (let ((_%tl197552197593%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e197550197588%_)))
                                            (_%hd197551197591%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e197550197588%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl197552197593%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl197549197585%_))
                                                (let ((_%e197553197596%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl197549197585%_))))
                                                  (let ((_%tl197555197601%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e197553197596%_)))
                                                        (_%hd197554197599%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e197553197596%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl197555197601%_))
                                                        (_%__match200624200625%_
                                                         _%e197544197572%_
                                                         _%hd197545197575%_
                                                         _%tl197546197577%_
                                                         _%e197547197580%_
                                                         _%hd197548197583%_
                                                         _%tl197549197585%_
                                                         _%e197550197588%_
                                                         _%hd197551197591%_
                                                         _%tl197552197593%_
                                                         _%e197553197596%_
                                                         _%hd197554197599%_
                                                         _%tl197555197601%_)
                                                        (_%__kont200595200596%_))))
                                                (_%__kont200595200596%_))
                                            (_%__kont200595200596%_))))
                                    (_%__kont200595200596%_))))
                            (_%__kont200595200596%_))))
                    (_%__kont200595200596%_))))))))
    (define gxc#extract-receiver-begin-annotation%
      (lambda (_%self197384%_ _%stx197385%_)
        (let* ((_%__stx200627200628%_ _%stx197385%_)
               (_%g197388197421%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx200627200628%_)))))
          (let ((_%__kont200629200630%_
                 (lambda (_%g197390197511%_) _%g197390197511%_))
                (_%__kont200631200632%_
                 (lambda (_%g197406197450%_ _%g197407197451%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self197384%_ _%g197406197450%_)))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx200627200628%_))
                (let ((_%e197391197471%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%__stx200627200628%_))))
                  (let ((_%tl197393197476%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e197391197471%_)))
                        (_%hd197392197474%_
                         (let ()
                           (declare (not safe))
                           (##car _%e197391197471%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl197393197476%_))
                        (let ((_%e197394197479%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl197393197476%_))))
                          (let ((_%tl197396197484%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e197394197479%_)))
                                (_%hd197395197482%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e197394197479%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd197395197482%_))
                                (let ((_%e197397197487%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd197395197482%_))))
                                  (let ((_%tl197399197492%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e197397197487%_)))
                                        (_%hd197398197490%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e197397197487%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd197398197490%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '@receiver
                                               _%hd197398197490%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl197399197492%_))
                                                (let ((_%e197400197495%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl197399197492%_))))
                                                  (let ((_%tl197402197500%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e197400197495%_)))
                                                        (_%hd197401197498%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e197400197495%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl197402197500%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl197396197484%_))
                                                            (let ((_%e197403197503%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl197396197484%_))))
                      (let ((_%tl197405197508%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e197403197503%_)))
                            (_%hd197404197506%_
                             (let ()
                               (declare (not safe))
                               (##car _%e197403197503%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl197405197508%_))
                            (_%__kont200629200630%_ _%hd197401197498%_)
                            (let ()
                              (declare (not safe))
                              (_%g197388197421%_)))))
                    (let () (declare (not safe)) (_%g197388197421%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl197396197484%_))
                    (let ((_%e197414197442%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl197396197484%_))))
                      (let ((_%tl197416197447%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e197414197442%_)))
                            (_%hd197415197445%_
                             (let ()
                               (declare (not safe))
                               (##car _%e197414197442%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl197416197447%_))
                            (_%__kont200631200632%_
                             _%hd197415197445%_
                             _%hd197395197482%_)
                            (let ()
                              (declare (not safe))
                              (_%g197388197421%_)))))
                    (let () (declare (not safe)) (_%g197388197421%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl197396197484%_))
                                                    (let ((_%e197414197442%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl197396197484%_))))
                                                      (let ((_%tl197416197447%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e197414197442%_)))
                    (_%hd197415197445%_
                     (let () (declare (not safe)) (##car _%e197414197442%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl197416197447%_))
                    (_%__kont200631200632%_
                     _%hd197415197445%_
                     _%hd197395197482%_)
                    (let () (declare (not safe)) (_%g197388197421%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g197388197421%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl197396197484%_))
                                                (let ((_%e197414197442%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl197396197484%_))))
                                                  (let ((_%tl197416197447%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e197414197442%_)))
                                                        (_%hd197415197445%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e197414197442%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl197416197447%_))
                                                        (_%__kont200631200632%_
                                                         _%hd197415197445%_
                                                         _%hd197395197482%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g197388197421%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g197388197421%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl197396197484%_))
                                            (let ((_%e197414197442%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl197396197484%_))))
                                              (let ((_%tl197416197447%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e197414197442%_)))
                                                    (_%hd197415197445%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e197414197442%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl197416197447%_))
                                                    (_%__kont200631200632%_
                                                     _%hd197415197445%_
                                                     _%hd197395197482%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g197388197421%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g197388197421%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl197396197484%_))
                                    (let ((_%e197414197442%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl197396197484%_))))
                                      (let ((_%tl197416197447%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e197414197442%_)))
                                            (_%hd197415197445%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e197414197442%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl197416197447%_))
                                            (_%__kont200631200632%_
                                             _%hd197415197445%_
                                             _%hd197395197482%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g197388197421%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g197388197421%_))))))
                        (let () (declare (not safe)) (_%g197388197421%_)))))
                (let () (declare (not safe)) (_%g197388197421%_)))))))
    (define gxc#extract-receiver-if%
      (lambda (_%self197300%_ _%stx197301%_)
        (let* ((_%g197303197324%_
                (lambda (_%g197304197321%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g197304197321%_))))
               (_%g197302197381%_
                (lambda (_%g197304197327%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g197304197327%_))
                      (let ((_%e197308197329%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g197304197327%_))))
                        (let ((_%hd197309197332%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197308197329%_)))
                              (_%tl197310197334%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197308197329%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl197310197334%_))
                              (let ((_%e197311197337%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl197310197334%_))))
                                (let ((_%hd197312197340%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197311197337%_)))
                                      (_%tl197313197342%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197311197337%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl197313197342%_))
                                      (let ((_%e197314197345%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl197313197342%_))))
                                        (let ((_%hd197315197348%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e197314197345%_)))
                                              (_%tl197316197350%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e197314197345%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl197316197350%_))
                                              (let ((_%e197317197353%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl197316197350%_))))
                                                (let ((_%hd197318197356%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e197317197353%_)))
                                                      (_%tl197319197358%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e197317197353%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl197319197358%_))
                                                      ((lambda (_%g197305197361%_
                                                                _%g197306197362%_
                                                                _%g197307197363%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%self197300%_
                                                            _%g197306197362%_)))
                                                       _%hd197318197356%_
                                                       _%hd197315197348%_
                                                       _%hd197312197340%_)
                                                      (_%g197303197324%_
                                                       _%g197304197327%_))))
                                              (_%g197303197324%_
                                               _%g197304197327%_))))
                                      (_%g197303197324%_ _%g197304197327%_))))
                              (_%g197303197324%_ _%g197304197327%_))))
                      (_%g197303197324%_ _%g197304197327%_)))))
          (_%g197302197381%_ _%stx197301%_))))
    (define gxc#collect-object-refs-call%
      (lambda (_%self196265%_ _%stx196266%_)
        (let* ((_%__stx200693200694%_ _%stx196266%_)
               (_%g196274196496%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx200693200694%_)))))
          (let ((_%__kont200695200696%_
                 (lambda (_%g196276197249%_
                          _%g196277197250%_
                          _%g196278197251%_
                          _%g196279197252%_)
                   (let ((__tmp201831
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self196265%_ 'methods)))
                         (__tmp201830
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%g196277197250%_))))
                     (declare (not safe))
                     (hash-put! __tmp201831 __tmp201830 '#t))
                   (for-each
                    (lambda (_%g197285197287%_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self196265%_ _%g197285197287%_)))
                    (let ((__tmp201832
                           (lambda (_%g197289197292%_ _%g197290197294%_)
                             (cons _%g197289197292%_ _%g197290197294%_))))
                      (declare (not safe))
                      (__foldr1 __tmp201832 '() _%g196276197249%_)))))
                (_%__kont200699200700%_
                 (lambda (_%g196319197086%_
                          _%g196320197087%_
                          _%g196321197088%_
                          _%g196322197089%_
                          _%g196323197090%_)
                   (let ((__tmp201834
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self196265%_ 'methods)))
                         (__tmp201833
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%g196320197087%_))))
                     (declare (not safe))
                     (hash-put! __tmp201834 __tmp201833 '#t))
                   (for-each
                    (lambda (_%g197130197132%_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self196265%_ _%g197130197132%_)))
                    (let ((__tmp201835
                           (lambda (_%g197134197137%_ _%g197135197139%_)
                             (cons _%g197134197137%_ _%g197135197139%_))))
                      (declare (not safe))
                      (__foldr1 __tmp201835 '() _%g196319197086%_)))))
                (_%__kont200703200704%_
                 (lambda (_%g196372196921%_
                          _%g196373196922%_
                          _%g196374196923%_)
                   (let ((__tmp201837
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self196265%_ 'slots)))
                         (__tmp201836
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%g196372196921%_))))
                     (declare (not safe))
                     (hash-put! __tmp201837 __tmp201836 '#t))))
                (_%__kont200705200706%_
                 (lambda (_%g196405196798%_
                          _%g196406196799%_
                          _%g196407196800%_
                          _%g196408196801%_)
                   (let ((__tmp201839
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self196265%_ 'slots)))
                         (__tmp201838
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%g196406196799%_))))
                     (declare (not safe))
                     (hash-put! __tmp201839 __tmp201838 '#t))
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self196265%_ _%g196405196798%_))))
                (_%__kont200707200708%_
                 (lambda (_%g196442196672%_ _%g196443196673%_)
                   (let* ((_%accessor196695%_
                           (let ((__tmp201840
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol
                                     _%g196443196673%_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp201840)))
                          (_%klass196697%_
                           (let ((__tmp201841
                                  (##structure-ref
                                   _%accessor196695%_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _%stx196266%_
                              __tmp201841)))
                          (_%slot196699%_
                           (##structure-ref
                            _%accessor196695%_
                            '3
                            gxc#!accessor::t
                            '#f)))
                     (if (if (##structure-ref
                              _%accessor196695%_
                              '4
                              gxc#!accessor::t
                              '#f)
                             '#f
                             (or (let ()
                                   (declare (not safe))
                                   (gxc#!class-struct-slot?
                                    _%klass196697%_
                                    _%slot196699%_))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%klass196697%_
                                    '8
                                    '#f
                                    '#f))))
                         '#!void
                         (let ((__tmp201843
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _%self196265%_ 'slots)))
                               (__tmp201842
                                (##structure-ref
                                 _%accessor196695%_
                                 '3
                                 gxc#!accessor::t
                                 '#f)))
                           (declare (not safe))
                           (hash-put! __tmp201843 __tmp201842 '#t))))))
                (_%__kont200709200710%_
                 (lambda (_%g196465196572%_
                          _%g196466196573%_
                          _%g196467196574%_)
                   (let* ((_%mutator196601%_
                           (let ((__tmp201844
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol
                                     _%g196467196574%_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp201844)))
                          (_%klass196603%_
                           (let ((__tmp201845
                                  (##structure-ref
                                   _%mutator196601%_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _%stx196266%_
                              __tmp201845)))
                          (_%slot196605%_
                           (##structure-ref
                            _%mutator196601%_
                            '3
                            gxc#!mutator::t
                            '#f)))
                     (if (if (##structure-ref
                              _%mutator196601%_
                              '4
                              gxc#!mutator::t
                              '#f)
                             '#f
                             (or (let ()
                                   (declare (not safe))
                                   (gxc#!class-struct-slot?
                                    _%klass196603%_
                                    _%slot196605%_))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%klass196603%_
                                    '8
                                    '#f
                                    '#f))))
                         '#!void
                         (let ((__tmp201846
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _%self196265%_ 'slots))))
                           (declare (not safe))
                           (hash-put! __tmp201846 _%slot196605%_ '#t)))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-e__1 _%self196265%_ _%g196465196572%_)))))
                (_%__kont200711200712%_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#apply-operands _%self196265%_ _%stx196266%_)))))
            (let* ((_%__match201192201193%_
                    (lambda (_%e196468196508%_
                             _%hd196469196511%_
                             _%tl196470196513%_
                             _%e196471196516%_
                             _%hd196472196519%_
                             _%tl196473196521%_
                             _%e196474196524%_
                             _%hd196475196527%_
                             _%tl196476196529%_
                             _%e196477196532%_
                             _%hd196478196535%_
                             _%tl196479196537%_
                             _%e196480196540%_
                             _%hd196481196543%_
                             _%tl196482196545%_
                             _%e196483196548%_
                             _%hd196484196551%_
                             _%tl196485196553%_
                             _%e196486196556%_
                             _%hd196487196559%_
                             _%tl196488196561%_
                             _%e196489196564%_
                             _%hd196490196567%_
                             _%tl196491196569%_)
                      (let ((_%g196465196572%_ _%hd196490196567%_)
                            (_%g196466196573%_ _%hd196487196559%_)
                            (_%g196467196574%_ _%hd196478196535%_))
                        (if (and (let ((__tmp201847
                                        (let ((__tmp201848
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _%g196467196574%_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp201848))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp201847
                                    'gxc#!mutator::t))
                                 (let ((__tmp201849
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self196265%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%g196466196573%_
                                    __tmp201849)))
                            (_%__kont200709200710%_
                             _%g196465196572%_
                             _%g196466196573%_
                             _%g196467196574%_)
                            (_%__kont200711200712%_)))))
                   (_%__match201190201191%_
                    (lambda (_%e196468196508%_
                             _%hd196469196511%_
                             _%tl196470196513%_
                             _%e196471196516%_
                             _%hd196472196519%_
                             _%tl196473196521%_
                             _%e196474196524%_
                             _%hd196475196527%_
                             _%tl196476196529%_
                             _%e196477196532%_
                             _%hd196478196535%_
                             _%tl196479196537%_
                             _%e196480196540%_
                             _%hd196481196543%_
                             _%tl196482196545%_
                             _%e196483196548%_
                             _%hd196484196551%_
                             _%tl196485196553%_
                             _%e196486196556%_
                             _%hd196487196559%_
                             _%tl196488196561%_
                             _%e196489196564%_
                             _%hd196490196567%_
                             _%tl196491196569%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl196491196569%_))
                          (_%__match201192201193%_
                           _%e196468196508%_
                           _%hd196469196511%_
                           _%tl196470196513%_
                           _%e196471196516%_
                           _%hd196472196519%_
                           _%tl196473196521%_
                           _%e196474196524%_
                           _%hd196475196527%_
                           _%tl196476196529%_
                           _%e196477196532%_
                           _%hd196478196535%_
                           _%tl196479196537%_
                           _%e196480196540%_
                           _%hd196481196543%_
                           _%tl196482196545%_
                           _%e196483196548%_
                           _%hd196484196551%_
                           _%tl196485196553%_
                           _%e196486196556%_
                           _%hd196487196559%_
                           _%tl196488196561%_
                           _%e196489196564%_
                           _%hd196490196567%_
                           _%tl196491196569%_)
                          (_%__kont200711200712%_))))
                   (_%__match201184201185%_
                    (lambda (_%e196468196508%_
                             _%hd196469196511%_
                             _%tl196470196513%_
                             _%e196471196516%_
                             _%hd196472196519%_
                             _%tl196473196521%_
                             _%e196474196524%_
                             _%hd196475196527%_
                             _%tl196476196529%_
                             _%e196477196532%_
                             _%hd196478196535%_
                             _%tl196479196537%_
                             _%e196480196540%_
                             _%hd196481196543%_
                             _%tl196482196545%_
                             _%e196483196548%_
                             _%hd196484196551%_
                             _%tl196485196553%_
                             _%e196486196556%_
                             _%hd196487196559%_
                             _%tl196488196561%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl196482196545%_))
                          (let ((_%e196489196564%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl196482196545%_))))
                            (let ((_%tl196491196569%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e196489196564%_)))
                                  (_%hd196490196567%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e196489196564%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl196491196569%_))
                                  (_%__match201192201193%_
                                   _%e196468196508%_
                                   _%hd196469196511%_
                                   _%tl196470196513%_
                                   _%e196471196516%_
                                   _%hd196472196519%_
                                   _%tl196473196521%_
                                   _%e196474196524%_
                                   _%hd196475196527%_
                                   _%tl196476196529%_
                                   _%e196477196532%_
                                   _%hd196478196535%_
                                   _%tl196479196537%_
                                   _%e196480196540%_
                                   _%hd196481196543%_
                                   _%tl196482196545%_
                                   _%e196483196548%_
                                   _%hd196484196551%_
                                   _%tl196485196553%_
                                   _%e196486196556%_
                                   _%hd196487196559%_
                                   _%tl196488196561%_
                                   _%e196489196564%_
                                   _%hd196490196567%_
                                   _%tl196491196569%_)
                                  (_%__kont200711200712%_))))
                          (_%__kont200711200712%_))))
                   (_%__match201130201131%_
                    (lambda (_%e196444196616%_
                             _%hd196445196619%_
                             _%tl196446196621%_
                             _%e196447196624%_
                             _%hd196448196627%_
                             _%tl196449196629%_
                             _%e196450196632%_
                             _%hd196451196635%_
                             _%tl196452196637%_
                             _%e196453196640%_
                             _%hd196454196643%_
                             _%tl196455196645%_
                             _%e196456196648%_
                             _%hd196457196651%_
                             _%tl196458196653%_
                             _%e196459196656%_
                             _%hd196460196659%_
                             _%tl196461196661%_
                             _%e196462196664%_
                             _%hd196463196667%_
                             _%tl196464196669%_)
                      (let ((_%g196442196672%_ _%hd196463196667%_)
                            (_%g196443196673%_ _%hd196454196643%_))
                        (if (and (let ((__tmp201850
                                        (let ((__tmp201851
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _%g196443196673%_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp201851))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp201850
                                    'gxc#!accessor::t))
                                 (let ((__tmp201852
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self196265%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%g196442196672%_
                                    __tmp201852)))
                            (_%__kont200707200708%_
                             _%g196442196672%_
                             _%g196443196673%_)
                            (_%__kont200711200712%_)))))
                   (_%__match201128201129%_
                    (lambda (_%e196444196616%_
                             _%hd196445196619%_
                             _%tl196446196621%_
                             _%e196447196624%_
                             _%hd196448196627%_
                             _%tl196449196629%_
                             _%e196450196632%_
                             _%hd196451196635%_
                             _%tl196452196637%_
                             _%e196453196640%_
                             _%hd196454196643%_
                             _%tl196455196645%_
                             _%e196456196648%_
                             _%hd196457196651%_
                             _%tl196458196653%_
                             _%e196459196656%_
                             _%hd196460196659%_
                             _%tl196461196661%_
                             _%e196462196664%_
                             _%hd196463196667%_
                             _%tl196464196669%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl196458196653%_))
                          (_%__match201130201131%_
                           _%e196444196616%_
                           _%hd196445196619%_
                           _%tl196446196621%_
                           _%e196447196624%_
                           _%hd196448196627%_
                           _%tl196449196629%_
                           _%e196450196632%_
                           _%hd196451196635%_
                           _%tl196452196637%_
                           _%e196453196640%_
                           _%hd196454196643%_
                           _%tl196455196645%_
                           _%e196456196648%_
                           _%hd196457196651%_
                           _%tl196458196653%_
                           _%e196459196656%_
                           _%hd196460196659%_
                           _%tl196461196661%_
                           _%e196462196664%_
                           _%hd196463196667%_
                           _%tl196464196669%_)
                          (_%__match201184201185%_
                           _%e196444196616%_
                           _%hd196445196619%_
                           _%tl196446196621%_
                           _%e196447196624%_
                           _%hd196448196627%_
                           _%tl196449196629%_
                           _%e196450196632%_
                           _%hd196451196635%_
                           _%tl196452196637%_
                           _%e196453196640%_
                           _%hd196454196643%_
                           _%tl196455196645%_
                           _%e196456196648%_
                           _%hd196457196651%_
                           _%tl196458196653%_
                           _%e196459196656%_
                           _%hd196460196659%_
                           _%tl196461196661%_
                           _%e196462196664%_
                           _%hd196463196667%_
                           _%tl196464196669%_))))
                   (_%__match201074201075%_
                    (lambda (_%e196409196710%_
                             _%hd196410196713%_
                             _%tl196411196715%_
                             _%e196412196718%_
                             _%hd196413196721%_
                             _%tl196414196723%_
                             _%e196415196726%_
                             _%hd196416196729%_
                             _%tl196417196731%_
                             _%e196418196734%_
                             _%hd196419196737%_
                             _%tl196420196739%_
                             _%e196421196742%_
                             _%hd196422196745%_
                             _%tl196423196747%_
                             _%e196424196750%_
                             _%hd196425196753%_
                             _%tl196426196755%_
                             _%e196427196758%_
                             _%hd196428196761%_
                             _%tl196429196763%_
                             _%e196430196766%_
                             _%hd196431196769%_
                             _%tl196432196771%_
                             _%e196433196774%_
                             _%hd196434196777%_
                             _%tl196435196779%_
                             _%e196436196782%_
                             _%hd196437196785%_
                             _%tl196438196787%_
                             _%e196439196790%_
                             _%hd196440196793%_
                             _%tl196441196795%_)
                      (let ((_%g196405196798%_ _%hd196440196793%_)
                            (_%g196406196799%_ _%hd196437196785%_)
                            (_%g196407196800%_ _%hd196428196761%_)
                            (_%g196408196801%_ _%hd196419196737%_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%g196408196801%_
                                        'slot-set!))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%g196408196801%_
                                        'unchecked-slot-set!)))
                                 (let ((__tmp201853
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self196265%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%g196407196800%_
                                    __tmp201853)))
                            (_%__kont200705200706%_
                             _%g196405196798%_
                             _%g196406196799%_
                             _%g196407196800%_
                             _%g196408196801%_)
                            (_%__kont200711200712%_)))))
                   (_%__match201066201067%_
                    (lambda (_%e196409196710%_
                             _%hd196410196713%_
                             _%tl196411196715%_
                             _%e196412196718%_
                             _%hd196413196721%_
                             _%tl196414196723%_
                             _%e196415196726%_
                             _%hd196416196729%_
                             _%tl196417196731%_
                             _%e196418196734%_
                             _%hd196419196737%_
                             _%tl196420196739%_
                             _%e196421196742%_
                             _%hd196422196745%_
                             _%tl196423196747%_
                             _%e196424196750%_
                             _%hd196425196753%_
                             _%tl196426196755%_
                             _%e196427196758%_
                             _%hd196428196761%_
                             _%tl196429196763%_
                             _%e196430196766%_
                             _%hd196431196769%_
                             _%tl196432196771%_
                             _%e196433196774%_
                             _%hd196434196777%_
                             _%tl196435196779%_
                             _%e196436196782%_
                             _%hd196437196785%_
                             _%tl196438196787%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl196432196771%_))
                          (let ((_%e196439196790%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl196432196771%_))))
                            (let ((_%tl196441196795%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e196439196790%_)))
                                  (_%hd196440196793%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e196439196790%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl196441196795%_))
                                  (_%__match201074201075%_
                                   _%e196409196710%_
                                   _%hd196410196713%_
                                   _%tl196411196715%_
                                   _%e196412196718%_
                                   _%hd196413196721%_
                                   _%tl196414196723%_
                                   _%e196415196726%_
                                   _%hd196416196729%_
                                   _%tl196417196731%_
                                   _%e196418196734%_
                                   _%hd196419196737%_
                                   _%tl196420196739%_
                                   _%e196421196742%_
                                   _%hd196422196745%_
                                   _%tl196423196747%_
                                   _%e196424196750%_
                                   _%hd196425196753%_
                                   _%tl196426196755%_
                                   _%e196427196758%_
                                   _%hd196428196761%_
                                   _%tl196429196763%_
                                   _%e196430196766%_
                                   _%hd196431196769%_
                                   _%tl196432196771%_
                                   _%e196433196774%_
                                   _%hd196434196777%_
                                   _%tl196435196779%_
                                   _%e196436196782%_
                                   _%hd196437196785%_
                                   _%tl196438196787%_
                                   _%e196439196790%_
                                   _%hd196440196793%_
                                   _%tl196441196795%_)
                                  (_%__kont200711200712%_))))
                          (_%__match201190201191%_
                           _%e196409196710%_
                           _%hd196410196713%_
                           _%tl196411196715%_
                           _%e196412196718%_
                           _%hd196413196721%_
                           _%tl196414196723%_
                           _%e196415196726%_
                           _%hd196416196729%_
                           _%tl196417196731%_
                           _%e196418196734%_
                           _%hd196419196737%_
                           _%tl196420196739%_
                           _%e196421196742%_
                           _%hd196422196745%_
                           _%tl196423196747%_
                           _%e196424196750%_
                           _%hd196425196753%_
                           _%tl196426196755%_
                           _%e196427196758%_
                           _%hd196428196761%_
                           _%tl196429196763%_
                           _%e196430196766%_
                           _%hd196431196769%_
                           _%tl196432196771%_))))
                   (_%__match200988200989%_
                    (lambda (_%e196375196841%_
                             _%hd196376196844%_
                             _%tl196377196846%_
                             _%e196378196849%_
                             _%hd196379196852%_
                             _%tl196380196854%_
                             _%e196381196857%_
                             _%hd196382196860%_
                             _%tl196383196862%_
                             _%e196384196865%_
                             _%hd196385196868%_
                             _%tl196386196870%_
                             _%e196387196873%_
                             _%hd196388196876%_
                             _%tl196389196878%_
                             _%e196390196881%_
                             _%hd196391196884%_
                             _%tl196392196886%_
                             _%e196393196889%_
                             _%hd196394196892%_
                             _%tl196395196894%_
                             _%e196396196897%_
                             _%hd196397196900%_
                             _%tl196398196902%_
                             _%e196399196905%_
                             _%hd196400196908%_
                             _%tl196401196910%_
                             _%e196402196913%_
                             _%hd196403196916%_
                             _%tl196404196918%_)
                      (let ((_%g196372196921%_ _%hd196403196916%_)
                            (_%g196373196922%_ _%hd196394196892%_)
                            (_%g196374196923%_ _%hd196385196868%_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%g196374196923%_
                                        'slot-ref))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%g196374196923%_
                                        'unchecked-slot-ref)))
                                 (let ((__tmp201854
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self196265%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%g196373196922%_
                                    __tmp201854)))
                            (_%__kont200703200704%_
                             _%g196372196921%_
                             _%g196373196922%_
                             _%g196374196923%_)
                            (_%__match201192201193%_
                             _%e196375196841%_
                             _%hd196376196844%_
                             _%tl196377196846%_
                             _%e196378196849%_
                             _%hd196379196852%_
                             _%tl196380196854%_
                             _%e196381196857%_
                             _%hd196382196860%_
                             _%tl196383196862%_
                             _%e196384196865%_
                             _%hd196385196868%_
                             _%tl196386196870%_
                             _%e196387196873%_
                             _%hd196388196876%_
                             _%tl196389196878%_
                             _%e196390196881%_
                             _%hd196391196884%_
                             _%tl196392196886%_
                             _%e196393196889%_
                             _%hd196394196892%_
                             _%tl196395196894%_
                             _%e196396196897%_
                             _%hd196397196900%_
                             _%tl196398196902%_)))))
                   (_%__match200986200987%_
                    (lambda (_%e196375196841%_
                             _%hd196376196844%_
                             _%tl196377196846%_
                             _%e196378196849%_
                             _%hd196379196852%_
                             _%tl196380196854%_
                             _%e196381196857%_
                             _%hd196382196860%_
                             _%tl196383196862%_
                             _%e196384196865%_
                             _%hd196385196868%_
                             _%tl196386196870%_
                             _%e196387196873%_
                             _%hd196388196876%_
                             _%tl196389196878%_
                             _%e196390196881%_
                             _%hd196391196884%_
                             _%tl196392196886%_
                             _%e196393196889%_
                             _%hd196394196892%_
                             _%tl196395196894%_
                             _%e196396196897%_
                             _%hd196397196900%_
                             _%tl196398196902%_
                             _%e196399196905%_
                             _%hd196400196908%_
                             _%tl196401196910%_
                             _%e196402196913%_
                             _%hd196403196916%_
                             _%tl196404196918%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl196398196902%_))
                          (_%__match200988200989%_
                           _%e196375196841%_
                           _%hd196376196844%_
                           _%tl196377196846%_
                           _%e196378196849%_
                           _%hd196379196852%_
                           _%tl196380196854%_
                           _%e196381196857%_
                           _%hd196382196860%_
                           _%tl196383196862%_
                           _%e196384196865%_
                           _%hd196385196868%_
                           _%tl196386196870%_
                           _%e196387196873%_
                           _%hd196388196876%_
                           _%tl196389196878%_
                           _%e196390196881%_
                           _%hd196391196884%_
                           _%tl196392196886%_
                           _%e196393196889%_
                           _%hd196394196892%_
                           _%tl196395196894%_
                           _%e196396196897%_
                           _%hd196397196900%_
                           _%tl196398196902%_
                           _%e196399196905%_
                           _%hd196400196908%_
                           _%tl196401196910%_
                           _%e196402196913%_
                           _%hd196403196916%_
                           _%tl196404196918%_)
                          (_%__match201066201067%_
                           _%e196375196841%_
                           _%hd196376196844%_
                           _%tl196377196846%_
                           _%e196378196849%_
                           _%hd196379196852%_
                           _%tl196380196854%_
                           _%e196381196857%_
                           _%hd196382196860%_
                           _%tl196383196862%_
                           _%e196384196865%_
                           _%hd196385196868%_
                           _%tl196386196870%_
                           _%e196387196873%_
                           _%hd196388196876%_
                           _%tl196389196878%_
                           _%e196390196881%_
                           _%hd196391196884%_
                           _%tl196392196886%_
                           _%e196393196889%_
                           _%hd196394196892%_
                           _%tl196395196894%_
                           _%e196396196897%_
                           _%hd196397196900%_
                           _%tl196398196902%_
                           _%e196399196905%_
                           _%hd196400196908%_
                           _%tl196401196910%_
                           _%e196402196913%_
                           _%hd196403196916%_
                           _%tl196404196918%_))))
                   (_%__match200976200977%_
                    (lambda (_%e196375196841%_
                             _%hd196376196844%_
                             _%tl196377196846%_
                             _%e196378196849%_
                             _%hd196379196852%_
                             _%tl196380196854%_
                             _%e196381196857%_
                             _%hd196382196860%_
                             _%tl196383196862%_
                             _%e196384196865%_
                             _%hd196385196868%_
                             _%tl196386196870%_
                             _%e196387196873%_
                             _%hd196388196876%_
                             _%tl196389196878%_
                             _%e196390196881%_
                             _%hd196391196884%_
                             _%tl196392196886%_
                             _%e196393196889%_
                             _%hd196394196892%_
                             _%tl196395196894%_
                             _%e196396196897%_
                             _%hd196397196900%_
                             _%tl196398196902%_
                             _%e196399196905%_
                             _%hd196400196908%_
                             _%tl196401196910%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#quote _%hd196400196908%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl196401196910%_))
                              (let ((_%e196402196913%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl196401196910%_))))
                                (let ((_%tl196404196918%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196402196913%_)))
                                      (_%hd196403196916%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196402196913%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl196404196918%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl196398196902%_))
                                          (_%__match200988200989%_
                                           _%e196375196841%_
                                           _%hd196376196844%_
                                           _%tl196377196846%_
                                           _%e196378196849%_
                                           _%hd196379196852%_
                                           _%tl196380196854%_
                                           _%e196381196857%_
                                           _%hd196382196860%_
                                           _%tl196383196862%_
                                           _%e196384196865%_
                                           _%hd196385196868%_
                                           _%tl196386196870%_
                                           _%e196387196873%_
                                           _%hd196388196876%_
                                           _%tl196389196878%_
                                           _%e196390196881%_
                                           _%hd196391196884%_
                                           _%tl196392196886%_
                                           _%e196393196889%_
                                           _%hd196394196892%_
                                           _%tl196395196894%_
                                           _%e196396196897%_
                                           _%hd196397196900%_
                                           _%tl196398196902%_
                                           _%e196399196905%_
                                           _%hd196400196908%_
                                           _%tl196401196910%_
                                           _%e196402196913%_
                                           _%hd196403196916%_
                                           _%tl196404196918%_)
                                          (_%__match201066201067%_
                                           _%e196375196841%_
                                           _%hd196376196844%_
                                           _%tl196377196846%_
                                           _%e196378196849%_
                                           _%hd196379196852%_
                                           _%tl196380196854%_
                                           _%e196381196857%_
                                           _%hd196382196860%_
                                           _%tl196383196862%_
                                           _%e196384196865%_
                                           _%hd196385196868%_
                                           _%tl196386196870%_
                                           _%e196387196873%_
                                           _%hd196388196876%_
                                           _%tl196389196878%_
                                           _%e196390196881%_
                                           _%hd196391196884%_
                                           _%tl196392196886%_
                                           _%e196393196889%_
                                           _%hd196394196892%_
                                           _%tl196395196894%_
                                           _%e196396196897%_
                                           _%hd196397196900%_
                                           _%tl196398196902%_
                                           _%e196399196905%_
                                           _%hd196400196908%_
                                           _%tl196401196910%_
                                           _%e196402196913%_
                                           _%hd196403196916%_
                                           _%tl196404196918%_))
                                      (_%__match201190201191%_
                                       _%e196375196841%_
                                       _%hd196376196844%_
                                       _%tl196377196846%_
                                       _%e196378196849%_
                                       _%hd196379196852%_
                                       _%tl196380196854%_
                                       _%e196381196857%_
                                       _%hd196382196860%_
                                       _%tl196383196862%_
                                       _%e196384196865%_
                                       _%hd196385196868%_
                                       _%tl196386196870%_
                                       _%e196387196873%_
                                       _%hd196388196876%_
                                       _%tl196389196878%_
                                       _%e196390196881%_
                                       _%hd196391196884%_
                                       _%tl196392196886%_
                                       _%e196393196889%_
                                       _%hd196394196892%_
                                       _%tl196395196894%_
                                       _%e196396196897%_
                                       _%hd196397196900%_
                                       _%tl196398196902%_))))
                              (_%__match201190201191%_
                               _%e196375196841%_
                               _%hd196376196844%_
                               _%tl196377196846%_
                               _%e196378196849%_
                               _%hd196379196852%_
                               _%tl196380196854%_
                               _%e196381196857%_
                               _%hd196382196860%_
                               _%tl196383196862%_
                               _%e196384196865%_
                               _%hd196385196868%_
                               _%tl196386196870%_
                               _%e196387196873%_
                               _%hd196388196876%_
                               _%tl196389196878%_
                               _%e196390196881%_
                               _%hd196391196884%_
                               _%tl196392196886%_
                               _%e196393196889%_
                               _%hd196394196892%_
                               _%tl196395196894%_
                               _%e196396196897%_
                               _%hd196397196900%_
                               _%tl196398196902%_))
                          (_%__match201190201191%_
                           _%e196375196841%_
                           _%hd196376196844%_
                           _%tl196377196846%_
                           _%e196378196849%_
                           _%hd196379196852%_
                           _%tl196380196854%_
                           _%e196381196857%_
                           _%hd196382196860%_
                           _%tl196383196862%_
                           _%e196384196865%_
                           _%hd196385196868%_
                           _%tl196386196870%_
                           _%e196387196873%_
                           _%hd196388196876%_
                           _%tl196389196878%_
                           _%e196390196881%_
                           _%hd196391196884%_
                           _%tl196392196886%_
                           _%e196393196889%_
                           _%hd196394196892%_
                           _%tl196395196894%_
                           _%e196396196897%_
                           _%hd196397196900%_
                           _%tl196398196902%_))))
                   (_%__match200908200909%_
                    (lambda (_%e196324196960%_
                             _%hd196325196963%_
                             _%tl196326196965%_
                             _%e196327196968%_
                             _%hd196328196971%_
                             _%tl196329196973%_
                             _%e196330196976%_
                             _%hd196331196979%_
                             _%tl196332196981%_
                             _%e196333196984%_
                             _%hd196334196987%_
                             _%tl196335196989%_
                             _%e196336196992%_
                             _%hd196337196995%_
                             _%tl196338196997%_
                             _%e196339197000%_
                             _%hd196340197003%_
                             _%tl196341197005%_
                             _%e196342197008%_
                             _%hd196343197011%_
                             _%tl196344197013%_
                             _%e196345197016%_
                             _%hd196346197019%_
                             _%tl196347197021%_
                             _%e196348197024%_
                             _%hd196349197027%_
                             _%tl196350197029%_
                             _%e196351197032%_
                             _%hd196352197035%_
                             _%tl196353197037%_
                             _%e196354197040%_
                             _%hd196355197043%_
                             _%tl196356197045%_
                             _%e196357197048%_
                             _%hd196358197051%_
                             _%tl196359197053%_
                             _%e196360197056%_
                             _%hd196361197059%_
                             _%tl196362197061%_
                             _%__splice200701200702%_
                             _%target196363197064%_
                             _%tl196365197066%_)
                      (letrec ((_%loop196366197069%_
                                (lambda (_%hd196364197072%_
                                         _%args196370197074%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd196364197072%_))
                                      (let ((_%e196367197076%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd196364197072%_))))
                                        (let ((_%lp-tl196369197081%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e196367197076%_)))
                                              (_%lp-hd196368197079%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e196367197076%_))))
                                          (_%loop196366197069%_
                                           _%lp-tl196369197081%_
                                           (cons _%lp-hd196368197079%_
                                                 _%args196370197074%_))))
                                      (let ((_%args196371197084%_
                                             (reverse _%args196370197074%_)))
                                        (let ((_%g196319197086%_
                                               _%args196371197084%_)
                                              (_%g196320197087%_
                                               _%hd196361197059%_)
                                              (_%g196321197088%_
                                               _%hd196352197035%_)
                                              (_%g196322197089%_
                                               _%hd196343197011%_)
                                              (_%g196323197090%_
                                               _%hd196334196987%_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%g196323197090%_
                                                      'apply))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%g196322197089%_
                                                      'call-method))
                                                   (let ((__tmp201855
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self196265%_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%g196321197088%_
                                                      __tmp201855)))
                                              (_%__kont200699200700%_
                                               _%g196319197086%_
                                               _%g196320197087%_
                                               _%g196321197088%_
                                               _%g196322197089%_
                                               _%g196323197090%_)
                                              (_%__kont200711200712%_))))))))
                        (_%loop196366197069%_ _%target196363197064%_ '()))))
                   (_%__match200866200867%_
                    (lambda (_%e196324196960%_
                             _%hd196325196963%_
                             _%tl196326196965%_
                             _%e196327196968%_
                             _%hd196328196971%_
                             _%tl196329196973%_
                             _%e196330196976%_
                             _%hd196331196979%_
                             _%tl196332196981%_
                             _%e196333196984%_
                             _%hd196334196987%_
                             _%tl196335196989%_
                             _%e196336196992%_
                             _%hd196337196995%_
                             _%tl196338196997%_
                             _%e196339197000%_
                             _%hd196340197003%_
                             _%tl196341197005%_
                             _%e196342197008%_
                             _%hd196343197011%_
                             _%tl196344197013%_
                             _%e196345197016%_
                             _%hd196346197019%_
                             _%tl196347197021%_
                             _%e196348197024%_
                             _%hd196349197027%_
                             _%tl196350197029%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _%hd196349197027%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl196350197029%_))
                              (let ((_%e196351197032%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl196350197029%_))))
                                (let ((_%tl196353197037%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196351197032%_)))
                                      (_%hd196352197035%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196351197032%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl196353197037%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl196347197021%_))
                                          (let ((_%e196354197040%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl196347197021%_))))
                                            (let ((_%tl196356197045%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e196354197040%_)))
                                                  (_%hd196355197043%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e196354197040%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd196355197043%_))
                                                  (let ((_%e196357197048%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd196355197043%_))))
                                                    (let ((_%tl196359197053%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e196357197048%_)))
                                                          (_%hd196358197051%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e196357197048%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd196358197051%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#quote _%hd196358197051%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl196359197053%_))
                          (let ((_%e196360197056%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl196359197053%_))))
                            (let ((_%tl196362197061%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e196360197056%_)))
                                  (_%hd196361197059%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e196360197056%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl196362197061%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl196356197045%_))
                                      (let ((_%__splice200701200702%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%tl196356197045%_
                                                '0))))
                                        (let ((_%tl196365197066%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice200701200702%_
                                                  '1)))
                                              (_%target196363197064%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice200701200702%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl196365197066%_))
                                              (_%__match200908200909%_
                                               _%e196324196960%_
                                               _%hd196325196963%_
                                               _%tl196326196965%_
                                               _%e196327196968%_
                                               _%hd196328196971%_
                                               _%tl196329196973%_
                                               _%e196330196976%_
                                               _%hd196331196979%_
                                               _%tl196332196981%_
                                               _%e196333196984%_
                                               _%hd196334196987%_
                                               _%tl196335196989%_
                                               _%e196336196992%_
                                               _%hd196337196995%_
                                               _%tl196338196997%_
                                               _%e196339197000%_
                                               _%hd196340197003%_
                                               _%tl196341197005%_
                                               _%e196342197008%_
                                               _%hd196343197011%_
                                               _%tl196344197013%_
                                               _%e196345197016%_
                                               _%hd196346197019%_
                                               _%tl196347197021%_
                                               _%e196348197024%_
                                               _%hd196349197027%_
                                               _%tl196350197029%_
                                               _%e196351197032%_
                                               _%hd196352197035%_
                                               _%tl196353197037%_
                                               _%e196354197040%_
                                               _%hd196355197043%_
                                               _%tl196356197045%_
                                               _%e196357197048%_
                                               _%hd196358197051%_
                                               _%tl196359197053%_
                                               _%e196360197056%_
                                               _%hd196361197059%_
                                               _%tl196362197061%_
                                               _%__splice200701200702%_
                                               _%target196363197064%_
                                               _%tl196365197066%_)
                                              (_%__kont200711200712%_))))
                                      (_%__kont200711200712%_))
                                  (_%__kont200711200712%_))))
                          (_%__kont200711200712%_))
                      (_%__kont200711200712%_))
                  (_%__kont200711200712%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont200711200712%_))))
                                          (_%__match201190201191%_
                                           _%e196324196960%_
                                           _%hd196325196963%_
                                           _%tl196326196965%_
                                           _%e196327196968%_
                                           _%hd196328196971%_
                                           _%tl196329196973%_
                                           _%e196330196976%_
                                           _%hd196331196979%_
                                           _%tl196332196981%_
                                           _%e196333196984%_
                                           _%hd196334196987%_
                                           _%tl196335196989%_
                                           _%e196336196992%_
                                           _%hd196337196995%_
                                           _%tl196338196997%_
                                           _%e196339197000%_
                                           _%hd196340197003%_
                                           _%tl196341197005%_
                                           _%e196342197008%_
                                           _%hd196343197011%_
                                           _%tl196344197013%_
                                           _%e196345197016%_
                                           _%hd196346197019%_
                                           _%tl196347197021%_))
                                      (_%__match201190201191%_
                                       _%e196324196960%_
                                       _%hd196325196963%_
                                       _%tl196326196965%_
                                       _%e196327196968%_
                                       _%hd196328196971%_
                                       _%tl196329196973%_
                                       _%e196330196976%_
                                       _%hd196331196979%_
                                       _%tl196332196981%_
                                       _%e196333196984%_
                                       _%hd196334196987%_
                                       _%tl196335196989%_
                                       _%e196336196992%_
                                       _%hd196337196995%_
                                       _%tl196338196997%_
                                       _%e196339197000%_
                                       _%hd196340197003%_
                                       _%tl196341197005%_
                                       _%e196342197008%_
                                       _%hd196343197011%_
                                       _%tl196344197013%_
                                       _%e196345197016%_
                                       _%hd196346197019%_
                                       _%tl196347197021%_))))
                              (_%__match201190201191%_
                               _%e196324196960%_
                               _%hd196325196963%_
                               _%tl196326196965%_
                               _%e196327196968%_
                               _%hd196328196971%_
                               _%tl196329196973%_
                               _%e196330196976%_
                               _%hd196331196979%_
                               _%tl196332196981%_
                               _%e196333196984%_
                               _%hd196334196987%_
                               _%tl196335196989%_
                               _%e196336196992%_
                               _%hd196337196995%_
                               _%tl196338196997%_
                               _%e196339197000%_
                               _%hd196340197003%_
                               _%tl196341197005%_
                               _%e196342197008%_
                               _%hd196343197011%_
                               _%tl196344197013%_
                               _%e196345197016%_
                               _%hd196346197019%_
                               _%tl196347197021%_))
                          (_%__match200976200977%_
                           _%e196324196960%_
                           _%hd196325196963%_
                           _%tl196326196965%_
                           _%e196327196968%_
                           _%hd196328196971%_
                           _%tl196329196973%_
                           _%e196330196976%_
                           _%hd196331196979%_
                           _%tl196332196981%_
                           _%e196333196984%_
                           _%hd196334196987%_
                           _%tl196335196989%_
                           _%e196336196992%_
                           _%hd196337196995%_
                           _%tl196338196997%_
                           _%e196339197000%_
                           _%hd196340197003%_
                           _%tl196341197005%_
                           _%e196342197008%_
                           _%hd196343197011%_
                           _%tl196344197013%_
                           _%e196345197016%_
                           _%hd196346197019%_
                           _%tl196347197021%_
                           _%e196348197024%_
                           _%hd196349197027%_
                           _%tl196350197029%_))))
                   (_%__match200798200799%_
                    (lambda (_%e196280197147%_
                             _%hd196281197150%_
                             _%tl196282197152%_
                             _%e196283197155%_
                             _%hd196284197158%_
                             _%tl196285197160%_
                             _%e196286197163%_
                             _%hd196287197166%_
                             _%tl196288197168%_
                             _%e196289197171%_
                             _%hd196290197174%_
                             _%tl196291197176%_
                             _%e196292197179%_
                             _%hd196293197182%_
                             _%tl196294197184%_
                             _%e196295197187%_
                             _%hd196296197190%_
                             _%tl196297197192%_
                             _%e196298197195%_
                             _%hd196299197198%_
                             _%tl196300197200%_
                             _%e196301197203%_
                             _%hd196302197206%_
                             _%tl196303197208%_
                             _%e196304197211%_
                             _%hd196305197214%_
                             _%tl196306197216%_
                             _%e196307197219%_
                             _%hd196308197222%_
                             _%tl196309197224%_
                             _%__splice200697200698%_
                             _%target196310197227%_
                             _%tl196312197229%_)
                      (letrec ((_%loop196313197232%_
                                (lambda (_%hd196311197235%_
                                         _%args196317197237%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd196311197235%_))
                                      (let ((_%e196314197239%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd196311197235%_))))
                                        (let ((_%lp-tl196316197244%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e196314197239%_)))
                                              (_%lp-hd196315197242%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e196314197239%_))))
                                          (_%loop196313197232%_
                                           _%lp-tl196316197244%_
                                           (cons _%lp-hd196315197242%_
                                                 _%args196317197237%_))))
                                      (let ((_%args196318197247%_
                                             (reverse _%args196317197237%_)))
                                        (let ((_%g196276197249%_
                                               _%args196318197247%_)
                                              (_%g196277197250%_
                                               _%hd196308197222%_)
                                              (_%g196278197251%_
                                               _%hd196299197198%_)
                                              (_%g196279197252%_
                                               _%hd196290197174%_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%g196279197252%_
                                                      'call-method))
                                                   (let ((__tmp201856
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self196265%_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%g196278197251%_
                                                      __tmp201856)))
                                              (_%__kont200695200696%_
                                               _%g196276197249%_
                                               _%g196277197250%_
                                               _%g196278197251%_
                                               _%g196279197252%_)
                                              (_%__match200986200987%_
                                               _%e196280197147%_
                                               _%hd196281197150%_
                                               _%tl196282197152%_
                                               _%e196283197155%_
                                               _%hd196284197158%_
                                               _%tl196285197160%_
                                               _%e196286197163%_
                                               _%hd196287197166%_
                                               _%tl196288197168%_
                                               _%e196289197171%_
                                               _%hd196290197174%_
                                               _%tl196291197176%_
                                               _%e196292197179%_
                                               _%hd196293197182%_
                                               _%tl196294197184%_
                                               _%e196295197187%_
                                               _%hd196296197190%_
                                               _%tl196297197192%_
                                               _%e196298197195%_
                                               _%hd196299197198%_
                                               _%tl196300197200%_
                                               _%e196301197203%_
                                               _%hd196302197206%_
                                               _%tl196303197208%_
                                               _%e196304197211%_
                                               _%hd196305197214%_
                                               _%tl196306197216%_
                                               _%e196307197219%_
                                               _%hd196308197222%_
                                               _%tl196309197224%_))))))))
                        (_%loop196313197232%_ _%target196310197227%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx200693200694%_))
                  (let ((_%e196280197147%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx200693200694%_))))
                    (let ((_%tl196282197152%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e196280197147%_)))
                          (_%hd196281197150%_
                           (let ()
                             (declare (not safe))
                             (##car _%e196280197147%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl196282197152%_))
                          (let ((_%e196283197155%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl196282197152%_))))
                            (let ((_%tl196285197160%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e196283197155%_)))
                                  (_%hd196284197158%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e196283197155%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd196284197158%_))
                                  (let ((_%e196286197163%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd196284197158%_))))
                                    (let ((_%tl196288197168%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e196286197163%_)))
                                          (_%hd196287197166%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e196286197163%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd196287197166%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd196287197166%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl196288197168%_))
                                                  (let ((_%e196289197171%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl196288197168%_))))
                                                    (let ((_%tl196291197176%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e196289197171%_)))
                                                          (_%hd196290197174%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e196289197171%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl196291197176%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl196285197160%_))
                      (let ((_%e196292197179%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl196285197160%_))))
                        (let ((_%tl196294197184%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196292197179%_)))
                              (_%hd196293197182%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196292197179%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd196293197182%_))
                              (let ((_%e196295197187%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd196293197182%_))))
                                (let ((_%tl196297197192%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196295197187%_)))
                                      (_%hd196296197190%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196295197187%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd196296197190%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd196296197190%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl196297197192%_))
                                              (let ((_%e196298197195%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl196297197192%_))))
                                                (let ((_%tl196300197200%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e196298197195%_)))
                                                      (_%hd196299197198%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e196298197195%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl196300197200%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl196294197184%_))
                                                          (let ((_%e196301197203%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl196294197184%_))))
                    (let ((_%tl196303197208%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e196301197203%_)))
                          (_%hd196302197206%_
                           (let ()
                             (declare (not safe))
                             (##car _%e196301197203%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd196302197206%_))
                          (let ((_%e196304197211%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd196302197206%_))))
                            (let ((_%tl196306197216%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e196304197211%_)))
                                  (_%hd196305197214%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e196304197211%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd196305197214%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%hd196305197214%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl196306197216%_))
                                          (let ((_%e196307197219%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl196306197216%_))))
                                            (let ((_%tl196309197224%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e196307197219%_)))
                                                  (_%hd196308197222%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e196307197219%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl196309197224%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl196303197208%_))
                                                      (let ((_%__splice200697200698%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%tl196303197208%_
                        '0))))
                (let ((_%tl196312197229%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice200697200698%_ '1)))
                      (_%target196310197227%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice200697200698%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl196312197229%_))
                      (_%__match200798200799%_
                       _%e196280197147%_
                       _%hd196281197150%_
                       _%tl196282197152%_
                       _%e196283197155%_
                       _%hd196284197158%_
                       _%tl196285197160%_
                       _%e196286197163%_
                       _%hd196287197166%_
                       _%tl196288197168%_
                       _%e196289197171%_
                       _%hd196290197174%_
                       _%tl196291197176%_
                       _%e196292197179%_
                       _%hd196293197182%_
                       _%tl196294197184%_
                       _%e196295197187%_
                       _%hd196296197190%_
                       _%tl196297197192%_
                       _%e196298197195%_
                       _%hd196299197198%_
                       _%tl196300197200%_
                       _%e196301197203%_
                       _%hd196302197206%_
                       _%tl196303197208%_
                       _%e196304197211%_
                       _%hd196305197214%_
                       _%tl196306197216%_
                       _%e196307197219%_
                       _%hd196308197222%_
                       _%tl196309197224%_
                       _%__splice200697200698%_
                       _%target196310197227%_
                       _%tl196312197229%_)
                      (_%__match200986200987%_
                       _%e196280197147%_
                       _%hd196281197150%_
                       _%tl196282197152%_
                       _%e196283197155%_
                       _%hd196284197158%_
                       _%tl196285197160%_
                       _%e196286197163%_
                       _%hd196287197166%_
                       _%tl196288197168%_
                       _%e196289197171%_
                       _%hd196290197174%_
                       _%tl196291197176%_
                       _%e196292197179%_
                       _%hd196293197182%_
                       _%tl196294197184%_
                       _%e196295197187%_
                       _%hd196296197190%_
                       _%tl196297197192%_
                       _%e196298197195%_
                       _%hd196299197198%_
                       _%tl196300197200%_
                       _%e196301197203%_
                       _%hd196302197206%_
                       _%tl196303197208%_
                       _%e196304197211%_
                       _%hd196305197214%_
                       _%tl196306197216%_
                       _%e196307197219%_
                       _%hd196308197222%_
                       _%tl196309197224%_))))
              (_%__match200986200987%_
               _%e196280197147%_
               _%hd196281197150%_
               _%tl196282197152%_
               _%e196283197155%_
               _%hd196284197158%_
               _%tl196285197160%_
               _%e196286197163%_
               _%hd196287197166%_
               _%tl196288197168%_
               _%e196289197171%_
               _%hd196290197174%_
               _%tl196291197176%_
               _%e196292197179%_
               _%hd196293197182%_
               _%tl196294197184%_
               _%e196295197187%_
               _%hd196296197190%_
               _%tl196297197192%_
               _%e196298197195%_
               _%hd196299197198%_
               _%tl196300197200%_
               _%e196301197203%_
               _%hd196302197206%_
               _%tl196303197208%_
               _%e196304197211%_
               _%hd196305197214%_
               _%tl196306197216%_
               _%e196307197219%_
               _%hd196308197222%_
               _%tl196309197224%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__match201190201191%_
                                                   _%e196280197147%_
                                                   _%hd196281197150%_
                                                   _%tl196282197152%_
                                                   _%e196283197155%_
                                                   _%hd196284197158%_
                                                   _%tl196285197160%_
                                                   _%e196286197163%_
                                                   _%hd196287197166%_
                                                   _%tl196288197168%_
                                                   _%e196289197171%_
                                                   _%hd196290197174%_
                                                   _%tl196291197176%_
                                                   _%e196292197179%_
                                                   _%hd196293197182%_
                                                   _%tl196294197184%_
                                                   _%e196295197187%_
                                                   _%hd196296197190%_
                                                   _%tl196297197192%_
                                                   _%e196298197195%_
                                                   _%hd196299197198%_
                                                   _%tl196300197200%_
                                                   _%e196301197203%_
                                                   _%hd196302197206%_
                                                   _%tl196303197208%_))))
                                          (_%__match201190201191%_
                                           _%e196280197147%_
                                           _%hd196281197150%_
                                           _%tl196282197152%_
                                           _%e196283197155%_
                                           _%hd196284197158%_
                                           _%tl196285197160%_
                                           _%e196286197163%_
                                           _%hd196287197166%_
                                           _%tl196288197168%_
                                           _%e196289197171%_
                                           _%hd196290197174%_
                                           _%tl196291197176%_
                                           _%e196292197179%_
                                           _%hd196293197182%_
                                           _%tl196294197184%_
                                           _%e196295197187%_
                                           _%hd196296197190%_
                                           _%tl196297197192%_
                                           _%e196298197195%_
                                           _%hd196299197198%_
                                           _%tl196300197200%_
                                           _%e196301197203%_
                                           _%hd196302197206%_
                                           _%tl196303197208%_))
                                      (_%__match200866200867%_
                                       _%e196280197147%_
                                       _%hd196281197150%_
                                       _%tl196282197152%_
                                       _%e196283197155%_
                                       _%hd196284197158%_
                                       _%tl196285197160%_
                                       _%e196286197163%_
                                       _%hd196287197166%_
                                       _%tl196288197168%_
                                       _%e196289197171%_
                                       _%hd196290197174%_
                                       _%tl196291197176%_
                                       _%e196292197179%_
                                       _%hd196293197182%_
                                       _%tl196294197184%_
                                       _%e196295197187%_
                                       _%hd196296197190%_
                                       _%tl196297197192%_
                                       _%e196298197195%_
                                       _%hd196299197198%_
                                       _%tl196300197200%_
                                       _%e196301197203%_
                                       _%hd196302197206%_
                                       _%tl196303197208%_
                                       _%e196304197211%_
                                       _%hd196305197214%_
                                       _%tl196306197216%_))
                                  (_%__match201190201191%_
                                   _%e196280197147%_
                                   _%hd196281197150%_
                                   _%tl196282197152%_
                                   _%e196283197155%_
                                   _%hd196284197158%_
                                   _%tl196285197160%_
                                   _%e196286197163%_
                                   _%hd196287197166%_
                                   _%tl196288197168%_
                                   _%e196289197171%_
                                   _%hd196290197174%_
                                   _%tl196291197176%_
                                   _%e196292197179%_
                                   _%hd196293197182%_
                                   _%tl196294197184%_
                                   _%e196295197187%_
                                   _%hd196296197190%_
                                   _%tl196297197192%_
                                   _%e196298197195%_
                                   _%hd196299197198%_
                                   _%tl196300197200%_
                                   _%e196301197203%_
                                   _%hd196302197206%_
                                   _%tl196303197208%_))))
                          (_%__match201190201191%_
                           _%e196280197147%_
                           _%hd196281197150%_
                           _%tl196282197152%_
                           _%e196283197155%_
                           _%hd196284197158%_
                           _%tl196285197160%_
                           _%e196286197163%_
                           _%hd196287197166%_
                           _%tl196288197168%_
                           _%e196289197171%_
                           _%hd196290197174%_
                           _%tl196291197176%_
                           _%e196292197179%_
                           _%hd196293197182%_
                           _%tl196294197184%_
                           _%e196295197187%_
                           _%hd196296197190%_
                           _%tl196297197192%_
                           _%e196298197195%_
                           _%hd196299197198%_
                           _%tl196300197200%_
                           _%e196301197203%_
                           _%hd196302197206%_
                           _%tl196303197208%_))))
                  (_%__match201128201129%_
                   _%e196280197147%_
                   _%hd196281197150%_
                   _%tl196282197152%_
                   _%e196283197155%_
                   _%hd196284197158%_
                   _%tl196285197160%_
                   _%e196286197163%_
                   _%hd196287197166%_
                   _%tl196288197168%_
                   _%e196289197171%_
                   _%hd196290197174%_
                   _%tl196291197176%_
                   _%e196292197179%_
                   _%hd196293197182%_
                   _%tl196294197184%_
                   _%e196295197187%_
                   _%hd196296197190%_
                   _%tl196297197192%_
                   _%e196298197195%_
                   _%hd196299197198%_
                   _%tl196300197200%_))
              (_%__kont200711200712%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont200711200712%_))
                                          (_%__kont200711200712%_))
                                      (_%__kont200711200712%_))))
                              (_%__kont200711200712%_))))
                      (_%__kont200711200712%_))
                  (_%__kont200711200712%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont200711200712%_))
                                              (_%__kont200711200712%_))
                                          (_%__kont200711200712%_))))
                                  (_%__kont200711200712%_))))
                          (_%__kont200711200712%_))))
                  (_%__kont200711200712%_)))))))
    (define gxc#subst-object-refs-call%
      (lambda (_%self195208%_ _%stx195209%_)
        (letrec ((_%force-e195211%_
                  (lambda (_%target196263%_)
                    (cons '%#call
                          (cons (cons '%#ref (cons 'force '()))
                                (cons (cons '%#ref (cons _%target196263%_ '()))
                                      '()))))))
          (let* ((_%__stx201195201196%_ _%stx195209%_)
                 (_%g195219195441%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx201195201196%_)))))
            (let ((_%__kont201197201198%_
                   (lambda (_%g195221196209%_
                            _%g195222196210%_
                            _%g195223196211%_
                            _%g195224196212%_)
                     (let ((_%$method196257%_
                            (let ((__tmp201858
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self195208%_ 'methods)))
                                  (__tmp201857
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g195222196210%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp201858 __tmp201857)))
                           (_%args196258%_
                            (map (lambda (_%g196245196247%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self195208%_
                                      _%g196245196247%_)))
                                 (let ((__tmp201859
                                        (lambda (_%g196249196252%_
                                                 _%g196250196254%_)
                                          (cons _%g196249196252%_
                                                _%g196250196254%_))))
                                   (declare (not safe))
                                   (__foldr1
                                    __tmp201859
                                    '()
                                    _%g195221196209%_)))))
                       (let ((__tmp201860
                              (cons '%#call
                                    (cons (_%force-e195211%_ _%$method196257%_)
                                          (cons (cons '%#ref
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self195208%_
                                                               'receiver))
                                                            '()))
                                                _%args196258%_)))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp201860 _%stx195209%_)))))
                  (_%__kont201201201202%_
                   (lambda (_%g195264196043%_
                            _%g195265196044%_
                            _%g195266196045%_
                            _%g195267196046%_
                            _%g195268196047%_)
                     (let ((_%$method196099%_
                            (let ((__tmp201862
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self195208%_ 'methods)))
                                  (__tmp201861
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g195265196044%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp201862 __tmp201861)))
                           (_%args196100%_
                            (map (lambda (_%g196087196089%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self195208%_
                                      _%g196087196089%_)))
                                 (let ((__tmp201863
                                        (lambda (_%g196091196094%_
                                                 _%g196092196096%_)
                                          (cons _%g196091196094%_
                                                _%g196092196096%_))))
                                   (declare (not safe))
                                   (__foldr1
                                    __tmp201863
                                    '()
                                    _%g195264196043%_)))))
                       (let ((__tmp201864
                              (cons '%#call
                                    (cons (cons '%#ref (cons 'apply '()))
                                          (cons (_%force-e195211%_
                                                 _%$method196099%_)
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (slot-ref__0 _%self195208%_ 'receiver))
                          '()))
              _%args196100%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp201864 _%stx195209%_)))))
                  (_%__kont201205201206%_
                   (lambda (_%g195317195876%_
                            _%g195318195877%_
                            _%g195319195878%_)
                     (let* ((_%$field195910%_
                             (let ((__tmp201866
                                    (let ()
                                      (declare (not safe))
                                      (slot-ref__0 _%self195208%_ 'slots)))
                                   (__tmp201865
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%g195317195876%_))))
                               (declare (not safe))
                               (hash-ref__0 __tmp201866 __tmp201865)))
                            (__tmp201867
                             (cons '%#struct-unchecked-ref
                                   (cons (cons '%#ref
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (slot-ref__0
                                                        _%self195208%_
                                                        'klass))
                                                     '()))
                                         (cons (cons '%#ref
                                                     (cons _%$field195910%_
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (slot-ref__0 _%self195208%_ 'receiver))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp201867 _%stx195209%_))))
                  (_%__kont201207201208%_
                   (lambda (_%g195350195750%_
                            _%g195351195751%_
                            _%g195352195752%_
                            _%g195353195753%_)
                     (let ((_%$field195788%_
                            (let ((__tmp201869
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self195208%_ 'slots)))
                                  (__tmp201868
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g195351195751%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp201869 __tmp201868)))
                           (_%expr195789%_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-e__1
                               _%self195208%_
                               _%g195350195750%_))))
                       (let ((__tmp201870
                              (cons '%#struct-unchecked-set!
                                    (cons (cons '%#ref
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (slot-ref__0
                                                         _%self195208%_
                                                         'klass))
                                                      '()))
                                          (cons (cons '%#ref
                                                      (cons _%$field195788%_
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (slot-ref__0 _%self195208%_ 'receiver))
                          '()))
              (cons _%expr195789%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp201870 _%stx195209%_)))))
                  (_%__kont201209201210%_
                   (lambda (_%g195387195622%_ _%g195388195623%_)
                     (let* ((_%accessor195645%_
                             (let ((__tmp201871
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol
                                       _%g195388195623%_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp201871)))
                            (_%klass195647%_
                             (let ((__tmp201872
                                    (##structure-ref
                                     _%accessor195645%_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _%stx195209%_
                                __tmp201872)))
                            (_%slot195649%_
                             (##structure-ref
                              _%accessor195645%_
                              '3
                              gxc#!accessor::t
                              '#f)))
                       (if (if (##structure-ref
                                _%accessor195645%_
                                '4
                                gxc#!accessor::t
                                '#f)
                               '#f
                               (or (let ()
                                     (declare (not safe))
                                     (gxc#!class-struct-slot?
                                      _%klass195647%_
                                      _%slot195649%_))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass195647%_
                                      '8
                                      '#f
                                      '#f))))
                           _%stx195209%_
                           (let* ((_%$field195655%_
                                   (let ((__tmp201873
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self195208%_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp201873 _%slot195649%_)))
                                  (__tmp201874
                                   (cons '%#struct-unchecked-ref
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (slot-ref__0
                                                              _%self195208%_
                                                              'klass))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$field195655%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _%self195208%_ 'receiver))
                               '()))
                   '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp201874
                              _%stx195209%_))))))
                  (_%__kont201211201212%_
                   (lambda (_%g195410195517%_
                            _%g195411195518%_
                            _%g195412195519%_)
                     (let* ((_%mutator195547%_
                             (let ((__tmp201875
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol
                                       _%g195412195519%_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp201875)))
                            (_%klass195549%_
                             (let ((__tmp201876
                                    (##structure-ref
                                     _%mutator195547%_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _%stx195209%_
                                __tmp201876)))
                            (_%slot195551%_
                             (##structure-ref
                              _%mutator195547%_
                              '3
                              gxc#!mutator::t
                              '#f))
                            (_%expr195553%_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-e__1
                                _%self195208%_
                                _%g195410195517%_))))
                       (if (if (##structure-ref
                                _%mutator195547%_
                                '4
                                gxc#!mutator::t
                                '#f)
                               '#f
                               (or (let ()
                                     (declare (not safe))
                                     (gxc#!class-struct-slot?
                                      _%klass195549%_
                                      _%slot195551%_))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass195549%_
                                      '8
                                      '#f
                                      '#f))))
                           (let ((__tmp201877
                                  (cons '%#call
                                        (cons (cons (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       '%#ref))
                                                    (cons _%g195412195519%_
                                                          '()))
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#ref))
                                                          (cons _%g195411195518%_
                                                                '()))
                                                    (cons _%expr195553%_
                                                          '()))))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp201877 _%stx195209%_))
                           (let* ((_%$field195559%_
                                   (let ((__tmp201878
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self195208%_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp201878 _%slot195551%_)))
                                  (__tmp201879
                                   (cons '%#struct-unchecked-set!
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (slot-ref__0
                                                              _%self195208%_
                                                              'klass))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$field195559%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _%self195208%_ 'receiver))
                               '()))
                   (cons _%expr195553%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp201879
                              _%stx195209%_))))))
                  (_%__kont201213201214%_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-operands _%self195208%_ _%stx195209%_)))))
              (let* ((_%__match201694201695%_
                      (lambda (_%e195413195453%_
                               _%hd195414195456%_
                               _%tl195415195458%_
                               _%e195416195461%_
                               _%hd195417195464%_
                               _%tl195418195466%_
                               _%e195419195469%_
                               _%hd195420195472%_
                               _%tl195421195474%_
                               _%e195422195477%_
                               _%hd195423195480%_
                               _%tl195424195482%_
                               _%e195425195485%_
                               _%hd195426195488%_
                               _%tl195427195490%_
                               _%e195428195493%_
                               _%hd195429195496%_
                               _%tl195430195498%_
                               _%e195431195501%_
                               _%hd195432195504%_
                               _%tl195433195506%_
                               _%e195434195509%_
                               _%hd195435195512%_
                               _%tl195436195514%_)
                        (let ((_%g195410195517%_ _%hd195435195512%_)
                              (_%g195411195518%_ _%hd195432195504%_)
                              (_%g195412195519%_ _%hd195423195480%_))
                          (if (and (let ((__tmp201880
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self195208%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%g195411195518%_
                                      __tmp201880))
                                   (let ((__tmp201881
                                          (let ((__tmp201882
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%g195412195519%_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp201882))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp201881
                                      'gxc#!mutator::t)))
                              (_%__kont201211201212%_
                               _%g195410195517%_
                               _%g195411195518%_
                               _%g195412195519%_)
                              (_%__kont201213201214%_)))))
                     (_%__match201692201693%_
                      (lambda (_%e195413195453%_
                               _%hd195414195456%_
                               _%tl195415195458%_
                               _%e195416195461%_
                               _%hd195417195464%_
                               _%tl195418195466%_
                               _%e195419195469%_
                               _%hd195420195472%_
                               _%tl195421195474%_
                               _%e195422195477%_
                               _%hd195423195480%_
                               _%tl195424195482%_
                               _%e195425195485%_
                               _%hd195426195488%_
                               _%tl195427195490%_
                               _%e195428195493%_
                               _%hd195429195496%_
                               _%tl195430195498%_
                               _%e195431195501%_
                               _%hd195432195504%_
                               _%tl195433195506%_
                               _%e195434195509%_
                               _%hd195435195512%_
                               _%tl195436195514%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl195436195514%_))
                            (_%__match201694201695%_
                             _%e195413195453%_
                             _%hd195414195456%_
                             _%tl195415195458%_
                             _%e195416195461%_
                             _%hd195417195464%_
                             _%tl195418195466%_
                             _%e195419195469%_
                             _%hd195420195472%_
                             _%tl195421195474%_
                             _%e195422195477%_
                             _%hd195423195480%_
                             _%tl195424195482%_
                             _%e195425195485%_
                             _%hd195426195488%_
                             _%tl195427195490%_
                             _%e195428195493%_
                             _%hd195429195496%_
                             _%tl195430195498%_
                             _%e195431195501%_
                             _%hd195432195504%_
                             _%tl195433195506%_
                             _%e195434195509%_
                             _%hd195435195512%_
                             _%tl195436195514%_)
                            (_%__kont201213201214%_))))
                     (_%__match201686201687%_
                      (lambda (_%e195413195453%_
                               _%hd195414195456%_
                               _%tl195415195458%_
                               _%e195416195461%_
                               _%hd195417195464%_
                               _%tl195418195466%_
                               _%e195419195469%_
                               _%hd195420195472%_
                               _%tl195421195474%_
                               _%e195422195477%_
                               _%hd195423195480%_
                               _%tl195424195482%_
                               _%e195425195485%_
                               _%hd195426195488%_
                               _%tl195427195490%_
                               _%e195428195493%_
                               _%hd195429195496%_
                               _%tl195430195498%_
                               _%e195431195501%_
                               _%hd195432195504%_
                               _%tl195433195506%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl195427195490%_))
                            (let ((_%e195434195509%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl195427195490%_))))
                              (let ((_%tl195436195514%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e195434195509%_)))
                                    (_%hd195435195512%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e195434195509%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl195436195514%_))
                                    (_%__match201694201695%_
                                     _%e195413195453%_
                                     _%hd195414195456%_
                                     _%tl195415195458%_
                                     _%e195416195461%_
                                     _%hd195417195464%_
                                     _%tl195418195466%_
                                     _%e195419195469%_
                                     _%hd195420195472%_
                                     _%tl195421195474%_
                                     _%e195422195477%_
                                     _%hd195423195480%_
                                     _%tl195424195482%_
                                     _%e195425195485%_
                                     _%hd195426195488%_
                                     _%tl195427195490%_
                                     _%e195428195493%_
                                     _%hd195429195496%_
                                     _%tl195430195498%_
                                     _%e195431195501%_
                                     _%hd195432195504%_
                                     _%tl195433195506%_
                                     _%e195434195509%_
                                     _%hd195435195512%_
                                     _%tl195436195514%_)
                                    (_%__kont201213201214%_))))
                            (_%__kont201213201214%_))))
                     (_%__match201632201633%_
                      (lambda (_%e195389195566%_
                               _%hd195390195569%_
                               _%tl195391195571%_
                               _%e195392195574%_
                               _%hd195393195577%_
                               _%tl195394195579%_
                               _%e195395195582%_
                               _%hd195396195585%_
                               _%tl195397195587%_
                               _%e195398195590%_
                               _%hd195399195593%_
                               _%tl195400195595%_
                               _%e195401195598%_
                               _%hd195402195601%_
                               _%tl195403195603%_
                               _%e195404195606%_
                               _%hd195405195609%_
                               _%tl195406195611%_
                               _%e195407195614%_
                               _%hd195408195617%_
                               _%tl195409195619%_)
                        (let ((_%g195387195622%_ _%hd195408195617%_)
                              (_%g195388195623%_ _%hd195399195593%_))
                          (if (and (let ((__tmp201883
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self195208%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%g195387195622%_
                                      __tmp201883))
                                   (let ((__tmp201884
                                          (let ((__tmp201885
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%g195388195623%_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp201885))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp201884
                                      'gxc#!accessor::t)))
                              (_%__kont201209201210%_
                               _%g195387195622%_
                               _%g195388195623%_)
                              (_%__kont201213201214%_)))))
                     (_%__match201630201631%_
                      (lambda (_%e195389195566%_
                               _%hd195390195569%_
                               _%tl195391195571%_
                               _%e195392195574%_
                               _%hd195393195577%_
                               _%tl195394195579%_
                               _%e195395195582%_
                               _%hd195396195585%_
                               _%tl195397195587%_
                               _%e195398195590%_
                               _%hd195399195593%_
                               _%tl195400195595%_
                               _%e195401195598%_
                               _%hd195402195601%_
                               _%tl195403195603%_
                               _%e195404195606%_
                               _%hd195405195609%_
                               _%tl195406195611%_
                               _%e195407195614%_
                               _%hd195408195617%_
                               _%tl195409195619%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl195403195603%_))
                            (_%__match201632201633%_
                             _%e195389195566%_
                             _%hd195390195569%_
                             _%tl195391195571%_
                             _%e195392195574%_
                             _%hd195393195577%_
                             _%tl195394195579%_
                             _%e195395195582%_
                             _%hd195396195585%_
                             _%tl195397195587%_
                             _%e195398195590%_
                             _%hd195399195593%_
                             _%tl195400195595%_
                             _%e195401195598%_
                             _%hd195402195601%_
                             _%tl195403195603%_
                             _%e195404195606%_
                             _%hd195405195609%_
                             _%tl195406195611%_
                             _%e195407195614%_
                             _%hd195408195617%_
                             _%tl195409195619%_)
                            (_%__match201686201687%_
                             _%e195389195566%_
                             _%hd195390195569%_
                             _%tl195391195571%_
                             _%e195392195574%_
                             _%hd195393195577%_
                             _%tl195394195579%_
                             _%e195395195582%_
                             _%hd195396195585%_
                             _%tl195397195587%_
                             _%e195398195590%_
                             _%hd195399195593%_
                             _%tl195400195595%_
                             _%e195401195598%_
                             _%hd195402195601%_
                             _%tl195403195603%_
                             _%e195404195606%_
                             _%hd195405195609%_
                             _%tl195406195611%_
                             _%e195407195614%_
                             _%hd195408195617%_
                             _%tl195409195619%_))))
                     (_%__match201576201577%_
                      (lambda (_%e195354195662%_
                               _%hd195355195665%_
                               _%tl195356195667%_
                               _%e195357195670%_
                               _%hd195358195673%_
                               _%tl195359195675%_
                               _%e195360195678%_
                               _%hd195361195681%_
                               _%tl195362195683%_
                               _%e195363195686%_
                               _%hd195364195689%_
                               _%tl195365195691%_
                               _%e195366195694%_
                               _%hd195367195697%_
                               _%tl195368195699%_
                               _%e195369195702%_
                               _%hd195370195705%_
                               _%tl195371195707%_
                               _%e195372195710%_
                               _%hd195373195713%_
                               _%tl195374195715%_
                               _%e195375195718%_
                               _%hd195376195721%_
                               _%tl195377195723%_
                               _%e195378195726%_
                               _%hd195379195729%_
                               _%tl195380195731%_
                               _%e195381195734%_
                               _%hd195382195737%_
                               _%tl195383195739%_
                               _%e195384195742%_
                               _%hd195385195745%_
                               _%tl195386195747%_)
                        (let ((_%g195350195750%_ _%hd195385195745%_)
                              (_%g195351195751%_ _%hd195382195737%_)
                              (_%g195352195752%_ _%hd195373195713%_)
                              (_%g195353195753%_ _%hd195364195689%_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%g195353195753%_
                                          'slot-set!))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%g195353195753%_
                                          'unchecked-slot-set!)))
                                   (let ((__tmp201886
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self195208%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%g195352195752%_
                                      __tmp201886)))
                              (_%__kont201207201208%_
                               _%g195350195750%_
                               _%g195351195751%_
                               _%g195352195752%_
                               _%g195353195753%_)
                              (_%__kont201213201214%_)))))
                     (_%__match201568201569%_
                      (lambda (_%e195354195662%_
                               _%hd195355195665%_
                               _%tl195356195667%_
                               _%e195357195670%_
                               _%hd195358195673%_
                               _%tl195359195675%_
                               _%e195360195678%_
                               _%hd195361195681%_
                               _%tl195362195683%_
                               _%e195363195686%_
                               _%hd195364195689%_
                               _%tl195365195691%_
                               _%e195366195694%_
                               _%hd195367195697%_
                               _%tl195368195699%_
                               _%e195369195702%_
                               _%hd195370195705%_
                               _%tl195371195707%_
                               _%e195372195710%_
                               _%hd195373195713%_
                               _%tl195374195715%_
                               _%e195375195718%_
                               _%hd195376195721%_
                               _%tl195377195723%_
                               _%e195378195726%_
                               _%hd195379195729%_
                               _%tl195380195731%_
                               _%e195381195734%_
                               _%hd195382195737%_
                               _%tl195383195739%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl195377195723%_))
                            (let ((_%e195384195742%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl195377195723%_))))
                              (let ((_%tl195386195747%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e195384195742%_)))
                                    (_%hd195385195745%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e195384195742%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl195386195747%_))
                                    (_%__match201576201577%_
                                     _%e195354195662%_
                                     _%hd195355195665%_
                                     _%tl195356195667%_
                                     _%e195357195670%_
                                     _%hd195358195673%_
                                     _%tl195359195675%_
                                     _%e195360195678%_
                                     _%hd195361195681%_
                                     _%tl195362195683%_
                                     _%e195363195686%_
                                     _%hd195364195689%_
                                     _%tl195365195691%_
                                     _%e195366195694%_
                                     _%hd195367195697%_
                                     _%tl195368195699%_
                                     _%e195369195702%_
                                     _%hd195370195705%_
                                     _%tl195371195707%_
                                     _%e195372195710%_
                                     _%hd195373195713%_
                                     _%tl195374195715%_
                                     _%e195375195718%_
                                     _%hd195376195721%_
                                     _%tl195377195723%_
                                     _%e195378195726%_
                                     _%hd195379195729%_
                                     _%tl195380195731%_
                                     _%e195381195734%_
                                     _%hd195382195737%_
                                     _%tl195383195739%_
                                     _%e195384195742%_
                                     _%hd195385195745%_
                                     _%tl195386195747%_)
                                    (_%__kont201213201214%_))))
                            (_%__match201692201693%_
                             _%e195354195662%_
                             _%hd195355195665%_
                             _%tl195356195667%_
                             _%e195357195670%_
                             _%hd195358195673%_
                             _%tl195359195675%_
                             _%e195360195678%_
                             _%hd195361195681%_
                             _%tl195362195683%_
                             _%e195363195686%_
                             _%hd195364195689%_
                             _%tl195365195691%_
                             _%e195366195694%_
                             _%hd195367195697%_
                             _%tl195368195699%_
                             _%e195369195702%_
                             _%hd195370195705%_
                             _%tl195371195707%_
                             _%e195372195710%_
                             _%hd195373195713%_
                             _%tl195374195715%_
                             _%e195375195718%_
                             _%hd195376195721%_
                             _%tl195377195723%_))))
                     (_%__match201490201491%_
                      (lambda (_%e195320195796%_
                               _%hd195321195799%_
                               _%tl195322195801%_
                               _%e195323195804%_
                               _%hd195324195807%_
                               _%tl195325195809%_
                               _%e195326195812%_
                               _%hd195327195815%_
                               _%tl195328195817%_
                               _%e195329195820%_
                               _%hd195330195823%_
                               _%tl195331195825%_
                               _%e195332195828%_
                               _%hd195333195831%_
                               _%tl195334195833%_
                               _%e195335195836%_
                               _%hd195336195839%_
                               _%tl195337195841%_
                               _%e195338195844%_
                               _%hd195339195847%_
                               _%tl195340195849%_
                               _%e195341195852%_
                               _%hd195342195855%_
                               _%tl195343195857%_
                               _%e195344195860%_
                               _%hd195345195863%_
                               _%tl195346195865%_
                               _%e195347195868%_
                               _%hd195348195871%_
                               _%tl195349195873%_)
                        (let ((_%g195317195876%_ _%hd195348195871%_)
                              (_%g195318195877%_ _%hd195339195847%_)
                              (_%g195319195878%_ _%hd195330195823%_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%g195319195878%_
                                          'slot-ref))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%g195319195878%_
                                          'unchecked-slot-ref)))
                                   (let ((__tmp201887
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self195208%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%g195318195877%_
                                      __tmp201887)))
                              (_%__kont201205201206%_
                               _%g195317195876%_
                               _%g195318195877%_
                               _%g195319195878%_)
                              (_%__match201694201695%_
                               _%e195320195796%_
                               _%hd195321195799%_
                               _%tl195322195801%_
                               _%e195323195804%_
                               _%hd195324195807%_
                               _%tl195325195809%_
                               _%e195326195812%_
                               _%hd195327195815%_
                               _%tl195328195817%_
                               _%e195329195820%_
                               _%hd195330195823%_
                               _%tl195331195825%_
                               _%e195332195828%_
                               _%hd195333195831%_
                               _%tl195334195833%_
                               _%e195335195836%_
                               _%hd195336195839%_
                               _%tl195337195841%_
                               _%e195338195844%_
                               _%hd195339195847%_
                               _%tl195340195849%_
                               _%e195341195852%_
                               _%hd195342195855%_
                               _%tl195343195857%_)))))
                     (_%__match201488201489%_
                      (lambda (_%e195320195796%_
                               _%hd195321195799%_
                               _%tl195322195801%_
                               _%e195323195804%_
                               _%hd195324195807%_
                               _%tl195325195809%_
                               _%e195326195812%_
                               _%hd195327195815%_
                               _%tl195328195817%_
                               _%e195329195820%_
                               _%hd195330195823%_
                               _%tl195331195825%_
                               _%e195332195828%_
                               _%hd195333195831%_
                               _%tl195334195833%_
                               _%e195335195836%_
                               _%hd195336195839%_
                               _%tl195337195841%_
                               _%e195338195844%_
                               _%hd195339195847%_
                               _%tl195340195849%_
                               _%e195341195852%_
                               _%hd195342195855%_
                               _%tl195343195857%_
                               _%e195344195860%_
                               _%hd195345195863%_
                               _%tl195346195865%_
                               _%e195347195868%_
                               _%hd195348195871%_
                               _%tl195349195873%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl195343195857%_))
                            (_%__match201490201491%_
                             _%e195320195796%_
                             _%hd195321195799%_
                             _%tl195322195801%_
                             _%e195323195804%_
                             _%hd195324195807%_
                             _%tl195325195809%_
                             _%e195326195812%_
                             _%hd195327195815%_
                             _%tl195328195817%_
                             _%e195329195820%_
                             _%hd195330195823%_
                             _%tl195331195825%_
                             _%e195332195828%_
                             _%hd195333195831%_
                             _%tl195334195833%_
                             _%e195335195836%_
                             _%hd195336195839%_
                             _%tl195337195841%_
                             _%e195338195844%_
                             _%hd195339195847%_
                             _%tl195340195849%_
                             _%e195341195852%_
                             _%hd195342195855%_
                             _%tl195343195857%_
                             _%e195344195860%_
                             _%hd195345195863%_
                             _%tl195346195865%_
                             _%e195347195868%_
                             _%hd195348195871%_
                             _%tl195349195873%_)
                            (_%__match201568201569%_
                             _%e195320195796%_
                             _%hd195321195799%_
                             _%tl195322195801%_
                             _%e195323195804%_
                             _%hd195324195807%_
                             _%tl195325195809%_
                             _%e195326195812%_
                             _%hd195327195815%_
                             _%tl195328195817%_
                             _%e195329195820%_
                             _%hd195330195823%_
                             _%tl195331195825%_
                             _%e195332195828%_
                             _%hd195333195831%_
                             _%tl195334195833%_
                             _%e195335195836%_
                             _%hd195336195839%_
                             _%tl195337195841%_
                             _%e195338195844%_
                             _%hd195339195847%_
                             _%tl195340195849%_
                             _%e195341195852%_
                             _%hd195342195855%_
                             _%tl195343195857%_
                             _%e195344195860%_
                             _%hd195345195863%_
                             _%tl195346195865%_
                             _%e195347195868%_
                             _%hd195348195871%_
                             _%tl195349195873%_))))
                     (_%__match201478201479%_
                      (lambda (_%e195320195796%_
                               _%hd195321195799%_
                               _%tl195322195801%_
                               _%e195323195804%_
                               _%hd195324195807%_
                               _%tl195325195809%_
                               _%e195326195812%_
                               _%hd195327195815%_
                               _%tl195328195817%_
                               _%e195329195820%_
                               _%hd195330195823%_
                               _%tl195331195825%_
                               _%e195332195828%_
                               _%hd195333195831%_
                               _%tl195334195833%_
                               _%e195335195836%_
                               _%hd195336195839%_
                               _%tl195337195841%_
                               _%e195338195844%_
                               _%hd195339195847%_
                               _%tl195340195849%_
                               _%e195341195852%_
                               _%hd195342195855%_
                               _%tl195343195857%_
                               _%e195344195860%_
                               _%hd195345195863%_
                               _%tl195346195865%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#quote _%hd195345195863%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl195346195865%_))
                                (let ((_%e195347195868%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl195346195865%_))))
                                  (let ((_%tl195349195873%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e195347195868%_)))
                                        (_%hd195348195871%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e195347195868%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl195349195873%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl195343195857%_))
                                            (_%__match201490201491%_
                                             _%e195320195796%_
                                             _%hd195321195799%_
                                             _%tl195322195801%_
                                             _%e195323195804%_
                                             _%hd195324195807%_
                                             _%tl195325195809%_
                                             _%e195326195812%_
                                             _%hd195327195815%_
                                             _%tl195328195817%_
                                             _%e195329195820%_
                                             _%hd195330195823%_
                                             _%tl195331195825%_
                                             _%e195332195828%_
                                             _%hd195333195831%_
                                             _%tl195334195833%_
                                             _%e195335195836%_
                                             _%hd195336195839%_
                                             _%tl195337195841%_
                                             _%e195338195844%_
                                             _%hd195339195847%_
                                             _%tl195340195849%_
                                             _%e195341195852%_
                                             _%hd195342195855%_
                                             _%tl195343195857%_
                                             _%e195344195860%_
                                             _%hd195345195863%_
                                             _%tl195346195865%_
                                             _%e195347195868%_
                                             _%hd195348195871%_
                                             _%tl195349195873%_)
                                            (_%__match201568201569%_
                                             _%e195320195796%_
                                             _%hd195321195799%_
                                             _%tl195322195801%_
                                             _%e195323195804%_
                                             _%hd195324195807%_
                                             _%tl195325195809%_
                                             _%e195326195812%_
                                             _%hd195327195815%_
                                             _%tl195328195817%_
                                             _%e195329195820%_
                                             _%hd195330195823%_
                                             _%tl195331195825%_
                                             _%e195332195828%_
                                             _%hd195333195831%_
                                             _%tl195334195833%_
                                             _%e195335195836%_
                                             _%hd195336195839%_
                                             _%tl195337195841%_
                                             _%e195338195844%_
                                             _%hd195339195847%_
                                             _%tl195340195849%_
                                             _%e195341195852%_
                                             _%hd195342195855%_
                                             _%tl195343195857%_
                                             _%e195344195860%_
                                             _%hd195345195863%_
                                             _%tl195346195865%_
                                             _%e195347195868%_
                                             _%hd195348195871%_
                                             _%tl195349195873%_))
                                        (_%__match201692201693%_
                                         _%e195320195796%_
                                         _%hd195321195799%_
                                         _%tl195322195801%_
                                         _%e195323195804%_
                                         _%hd195324195807%_
                                         _%tl195325195809%_
                                         _%e195326195812%_
                                         _%hd195327195815%_
                                         _%tl195328195817%_
                                         _%e195329195820%_
                                         _%hd195330195823%_
                                         _%tl195331195825%_
                                         _%e195332195828%_
                                         _%hd195333195831%_
                                         _%tl195334195833%_
                                         _%e195335195836%_
                                         _%hd195336195839%_
                                         _%tl195337195841%_
                                         _%e195338195844%_
                                         _%hd195339195847%_
                                         _%tl195340195849%_
                                         _%e195341195852%_
                                         _%hd195342195855%_
                                         _%tl195343195857%_))))
                                (_%__match201692201693%_
                                 _%e195320195796%_
                                 _%hd195321195799%_
                                 _%tl195322195801%_
                                 _%e195323195804%_
                                 _%hd195324195807%_
                                 _%tl195325195809%_
                                 _%e195326195812%_
                                 _%hd195327195815%_
                                 _%tl195328195817%_
                                 _%e195329195820%_
                                 _%hd195330195823%_
                                 _%tl195331195825%_
                                 _%e195332195828%_
                                 _%hd195333195831%_
                                 _%tl195334195833%_
                                 _%e195335195836%_
                                 _%hd195336195839%_
                                 _%tl195337195841%_
                                 _%e195338195844%_
                                 _%hd195339195847%_
                                 _%tl195340195849%_
                                 _%e195341195852%_
                                 _%hd195342195855%_
                                 _%tl195343195857%_))
                            (_%__match201692201693%_
                             _%e195320195796%_
                             _%hd195321195799%_
                             _%tl195322195801%_
                             _%e195323195804%_
                             _%hd195324195807%_
                             _%tl195325195809%_
                             _%e195326195812%_
                             _%hd195327195815%_
                             _%tl195328195817%_
                             _%e195329195820%_
                             _%hd195330195823%_
                             _%tl195331195825%_
                             _%e195332195828%_
                             _%hd195333195831%_
                             _%tl195334195833%_
                             _%e195335195836%_
                             _%hd195336195839%_
                             _%tl195337195841%_
                             _%e195338195844%_
                             _%hd195339195847%_
                             _%tl195340195849%_
                             _%e195341195852%_
                             _%hd195342195855%_
                             _%tl195343195857%_))))
                     (_%__match201410201411%_
                      (lambda (_%e195269195917%_
                               _%hd195270195920%_
                               _%tl195271195922%_
                               _%e195272195925%_
                               _%hd195273195928%_
                               _%tl195274195930%_
                               _%e195275195933%_
                               _%hd195276195936%_
                               _%tl195277195938%_
                               _%e195278195941%_
                               _%hd195279195944%_
                               _%tl195280195946%_
                               _%e195281195949%_
                               _%hd195282195952%_
                               _%tl195283195954%_
                               _%e195284195957%_
                               _%hd195285195960%_
                               _%tl195286195962%_
                               _%e195287195965%_
                               _%hd195288195968%_
                               _%tl195289195970%_
                               _%e195290195973%_
                               _%hd195291195976%_
                               _%tl195292195978%_
                               _%e195293195981%_
                               _%hd195294195984%_
                               _%tl195295195986%_
                               _%e195296195989%_
                               _%hd195297195992%_
                               _%tl195298195994%_
                               _%e195299195997%_
                               _%hd195300196000%_
                               _%tl195301196002%_
                               _%e195302196005%_
                               _%hd195303196008%_
                               _%tl195304196010%_
                               _%e195305196013%_
                               _%hd195306196016%_
                               _%tl195307196018%_
                               _%__splice201203201204%_
                               _%target195308196021%_
                               _%tl195310196023%_)
                        (letrec ((_%loop195311196026%_
                                  (lambda (_%hd195309196029%_
                                           _%args195315196031%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd195309196029%_))
                                        (let ((_%e195312196033%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd195309196029%_))))
                                          (let ((_%lp-tl195314196038%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e195312196033%_)))
                                                (_%lp-hd195313196036%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e195312196033%_))))
                                            (_%loop195311196026%_
                                             _%lp-tl195314196038%_
                                             (cons _%lp-hd195313196036%_
                                                   _%args195315196031%_))))
                                        (let ((_%args195316196041%_
                                               (reverse _%args195315196031%_)))
                                          (let ((_%g195264196043%_
                                                 _%args195316196041%_)
                                                (_%g195265196044%_
                                                 _%hd195306196016%_)
                                                (_%g195266196045%_
                                                 _%hd195297195992%_)
                                                (_%g195267196046%_
                                                 _%hd195288195968%_)
                                                (_%g195268196047%_
                                                 _%hd195279195944%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%g195268196047%_
                                                        'apply))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%g195267196046%_
                                                        'call-method))
                                                     (let ((__tmp201888
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self195208%_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _%g195266196045%_
                                                        __tmp201888)))
                                                (_%__kont201201201202%_
                                                 _%g195264196043%_
                                                 _%g195265196044%_
                                                 _%g195266196045%_
                                                 _%g195267196046%_
                                                 _%g195268196047%_)
                                                (_%__kont201213201214%_))))))))
                          (_%loop195311196026%_ _%target195308196021%_ '()))))
                     (_%__match201368201369%_
                      (lambda (_%e195269195917%_
                               _%hd195270195920%_
                               _%tl195271195922%_
                               _%e195272195925%_
                               _%hd195273195928%_
                               _%tl195274195930%_
                               _%e195275195933%_
                               _%hd195276195936%_
                               _%tl195277195938%_
                               _%e195278195941%_
                               _%hd195279195944%_
                               _%tl195280195946%_
                               _%e195281195949%_
                               _%hd195282195952%_
                               _%tl195283195954%_
                               _%e195284195957%_
                               _%hd195285195960%_
                               _%tl195286195962%_
                               _%e195287195965%_
                               _%hd195288195968%_
                               _%tl195289195970%_
                               _%e195290195973%_
                               _%hd195291195976%_
                               _%tl195292195978%_
                               _%e195293195981%_
                               _%hd195294195984%_
                               _%tl195295195986%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _%hd195294195984%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl195295195986%_))
                                (let ((_%e195296195989%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl195295195986%_))))
                                  (let ((_%tl195298195994%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e195296195989%_)))
                                        (_%hd195297195992%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e195296195989%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl195298195994%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl195292195978%_))
                                            (let ((_%e195299195997%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl195292195978%_))))
                                              (let ((_%tl195301196002%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e195299195997%_)))
                                                    (_%hd195300196000%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e195299195997%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%hd195300196000%_))
                                                    (let ((_%e195302196005%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd195300196000%_))))
                                                      (let ((_%tl195304196010%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e195302196005%_)))
                    (_%hd195303196008%_
                     (let () (declare (not safe)) (##car _%e195302196005%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _%hd195303196008%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _%hd195303196008%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl195304196010%_))
                            (let ((_%e195305196013%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl195304196010%_))))
                              (let ((_%tl195307196018%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e195305196013%_)))
                                    (_%hd195306196016%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e195305196013%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl195307196018%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl195301196002%_))
                                        (let ((_%__splice201203201204%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice->vector
                                                  _%tl195301196002%_
                                                  '0))))
                                          (let ((_%tl195310196023%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice201203201204%_
                                                    '1)))
                                                (_%target195308196021%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice201203201204%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl195310196023%_))
                                                (_%__match201410201411%_
                                                 _%e195269195917%_
                                                 _%hd195270195920%_
                                                 _%tl195271195922%_
                                                 _%e195272195925%_
                                                 _%hd195273195928%_
                                                 _%tl195274195930%_
                                                 _%e195275195933%_
                                                 _%hd195276195936%_
                                                 _%tl195277195938%_
                                                 _%e195278195941%_
                                                 _%hd195279195944%_
                                                 _%tl195280195946%_
                                                 _%e195281195949%_
                                                 _%hd195282195952%_
                                                 _%tl195283195954%_
                                                 _%e195284195957%_
                                                 _%hd195285195960%_
                                                 _%tl195286195962%_
                                                 _%e195287195965%_
                                                 _%hd195288195968%_
                                                 _%tl195289195970%_
                                                 _%e195290195973%_
                                                 _%hd195291195976%_
                                                 _%tl195292195978%_
                                                 _%e195293195981%_
                                                 _%hd195294195984%_
                                                 _%tl195295195986%_
                                                 _%e195296195989%_
                                                 _%hd195297195992%_
                                                 _%tl195298195994%_
                                                 _%e195299195997%_
                                                 _%hd195300196000%_
                                                 _%tl195301196002%_
                                                 _%e195302196005%_
                                                 _%hd195303196008%_
                                                 _%tl195304196010%_
                                                 _%e195305196013%_
                                                 _%hd195306196016%_
                                                 _%tl195307196018%_
                                                 _%__splice201203201204%_
                                                 _%target195308196021%_
                                                 _%tl195310196023%_)
                                                (_%__kont201213201214%_))))
                                        (_%__kont201213201214%_))
                                    (_%__kont201213201214%_))))
                            (_%__kont201213201214%_))
                        (_%__kont201213201214%_))
                    (_%__kont201213201214%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont201213201214%_))))
                                            (_%__match201692201693%_
                                             _%e195269195917%_
                                             _%hd195270195920%_
                                             _%tl195271195922%_
                                             _%e195272195925%_
                                             _%hd195273195928%_
                                             _%tl195274195930%_
                                             _%e195275195933%_
                                             _%hd195276195936%_
                                             _%tl195277195938%_
                                             _%e195278195941%_
                                             _%hd195279195944%_
                                             _%tl195280195946%_
                                             _%e195281195949%_
                                             _%hd195282195952%_
                                             _%tl195283195954%_
                                             _%e195284195957%_
                                             _%hd195285195960%_
                                             _%tl195286195962%_
                                             _%e195287195965%_
                                             _%hd195288195968%_
                                             _%tl195289195970%_
                                             _%e195290195973%_
                                             _%hd195291195976%_
                                             _%tl195292195978%_))
                                        (_%__match201692201693%_
                                         _%e195269195917%_
                                         _%hd195270195920%_
                                         _%tl195271195922%_
                                         _%e195272195925%_
                                         _%hd195273195928%_
                                         _%tl195274195930%_
                                         _%e195275195933%_
                                         _%hd195276195936%_
                                         _%tl195277195938%_
                                         _%e195278195941%_
                                         _%hd195279195944%_
                                         _%tl195280195946%_
                                         _%e195281195949%_
                                         _%hd195282195952%_
                                         _%tl195283195954%_
                                         _%e195284195957%_
                                         _%hd195285195960%_
                                         _%tl195286195962%_
                                         _%e195287195965%_
                                         _%hd195288195968%_
                                         _%tl195289195970%_
                                         _%e195290195973%_
                                         _%hd195291195976%_
                                         _%tl195292195978%_))))
                                (_%__match201692201693%_
                                 _%e195269195917%_
                                 _%hd195270195920%_
                                 _%tl195271195922%_
                                 _%e195272195925%_
                                 _%hd195273195928%_
                                 _%tl195274195930%_
                                 _%e195275195933%_
                                 _%hd195276195936%_
                                 _%tl195277195938%_
                                 _%e195278195941%_
                                 _%hd195279195944%_
                                 _%tl195280195946%_
                                 _%e195281195949%_
                                 _%hd195282195952%_
                                 _%tl195283195954%_
                                 _%e195284195957%_
                                 _%hd195285195960%_
                                 _%tl195286195962%_
                                 _%e195287195965%_
                                 _%hd195288195968%_
                                 _%tl195289195970%_
                                 _%e195290195973%_
                                 _%hd195291195976%_
                                 _%tl195292195978%_))
                            (_%__match201478201479%_
                             _%e195269195917%_
                             _%hd195270195920%_
                             _%tl195271195922%_
                             _%e195272195925%_
                             _%hd195273195928%_
                             _%tl195274195930%_
                             _%e195275195933%_
                             _%hd195276195936%_
                             _%tl195277195938%_
                             _%e195278195941%_
                             _%hd195279195944%_
                             _%tl195280195946%_
                             _%e195281195949%_
                             _%hd195282195952%_
                             _%tl195283195954%_
                             _%e195284195957%_
                             _%hd195285195960%_
                             _%tl195286195962%_
                             _%e195287195965%_
                             _%hd195288195968%_
                             _%tl195289195970%_
                             _%e195290195973%_
                             _%hd195291195976%_
                             _%tl195292195978%_
                             _%e195293195981%_
                             _%hd195294195984%_
                             _%tl195295195986%_))))
                     (_%__match201300201301%_
                      (lambda (_%e195225196107%_
                               _%hd195226196110%_
                               _%tl195227196112%_
                               _%e195228196115%_
                               _%hd195229196118%_
                               _%tl195230196120%_
                               _%e195231196123%_
                               _%hd195232196126%_
                               _%tl195233196128%_
                               _%e195234196131%_
                               _%hd195235196134%_
                               _%tl195236196136%_
                               _%e195237196139%_
                               _%hd195238196142%_
                               _%tl195239196144%_
                               _%e195240196147%_
                               _%hd195241196150%_
                               _%tl195242196152%_
                               _%e195243196155%_
                               _%hd195244196158%_
                               _%tl195245196160%_
                               _%e195246196163%_
                               _%hd195247196166%_
                               _%tl195248196168%_
                               _%e195249196171%_
                               _%hd195250196174%_
                               _%tl195251196176%_
                               _%e195252196179%_
                               _%hd195253196182%_
                               _%tl195254196184%_
                               _%__splice201199201200%_
                               _%target195255196187%_
                               _%tl195257196189%_)
                        (letrec ((_%loop195258196192%_
                                  (lambda (_%hd195256196195%_
                                           _%args195262196197%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd195256196195%_))
                                        (let ((_%e195259196199%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd195256196195%_))))
                                          (let ((_%lp-tl195261196204%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e195259196199%_)))
                                                (_%lp-hd195260196202%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e195259196199%_))))
                                            (_%loop195258196192%_
                                             _%lp-tl195261196204%_
                                             (cons _%lp-hd195260196202%_
                                                   _%args195262196197%_))))
                                        (let ((_%args195263196207%_
                                               (reverse _%args195262196197%_)))
                                          (let ((_%g195221196209%_
                                                 _%args195263196207%_)
                                                (_%g195222196210%_
                                                 _%hd195253196182%_)
                                                (_%g195223196211%_
                                                 _%hd195244196158%_)
                                                (_%g195224196212%_
                                                 _%hd195235196134%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%g195224196212%_
                                                        'call-method))
                                                     (let ((__tmp201889
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self195208%_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _%g195223196211%_
                                                        __tmp201889)))
                                                (_%__kont201197201198%_
                                                 _%g195221196209%_
                                                 _%g195222196210%_
                                                 _%g195223196211%_
                                                 _%g195224196212%_)
                                                (_%__match201488201489%_
                                                 _%e195225196107%_
                                                 _%hd195226196110%_
                                                 _%tl195227196112%_
                                                 _%e195228196115%_
                                                 _%hd195229196118%_
                                                 _%tl195230196120%_
                                                 _%e195231196123%_
                                                 _%hd195232196126%_
                                                 _%tl195233196128%_
                                                 _%e195234196131%_
                                                 _%hd195235196134%_
                                                 _%tl195236196136%_
                                                 _%e195237196139%_
                                                 _%hd195238196142%_
                                                 _%tl195239196144%_
                                                 _%e195240196147%_
                                                 _%hd195241196150%_
                                                 _%tl195242196152%_
                                                 _%e195243196155%_
                                                 _%hd195244196158%_
                                                 _%tl195245196160%_
                                                 _%e195246196163%_
                                                 _%hd195247196166%_
                                                 _%tl195248196168%_
                                                 _%e195249196171%_
                                                 _%hd195250196174%_
                                                 _%tl195251196176%_
                                                 _%e195252196179%_
                                                 _%hd195253196182%_
                                                 _%tl195254196184%_))))))))
                          (_%loop195258196192%_ _%target195255196187%_ '())))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx201195201196%_))
                    (let ((_%e195225196107%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx201195201196%_))))
                      (let ((_%tl195227196112%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e195225196107%_)))
                            (_%hd195226196110%_
                             (let ()
                               (declare (not safe))
                               (##car _%e195225196107%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl195227196112%_))
                            (let ((_%e195228196115%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl195227196112%_))))
                              (let ((_%tl195230196120%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e195228196115%_)))
                                    (_%hd195229196118%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e195228196115%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd195229196118%_))
                                    (let ((_%e195231196123%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd195229196118%_))))
                                      (let ((_%tl195233196128%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e195231196123%_)))
                                            (_%hd195232196126%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e195231196123%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _%hd195232196126%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _%hd195232196126%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl195233196128%_))
                                                    (let ((_%e195234196131%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl195233196128%_))))
                                                      (let ((_%tl195236196136%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e195234196131%_)))
                    (_%hd195235196134%_
                     (let () (declare (not safe)) (##car _%e195234196131%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl195236196136%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl195230196120%_))
                        (let ((_%e195237196139%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl195230196120%_))))
                          (let ((_%tl195239196144%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e195237196139%_)))
                                (_%hd195238196142%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e195237196139%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd195238196142%_))
                                (let ((_%e195240196147%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd195238196142%_))))
                                  (let ((_%tl195242196152%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e195240196147%_)))
                                        (_%hd195241196150%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e195240196147%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd195241196150%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _%hd195241196150%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl195242196152%_))
                                                (let ((_%e195243196155%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl195242196152%_))))
                                                  (let ((_%tl195245196160%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e195243196155%_)))
                                                        (_%hd195244196158%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e195243196155%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl195245196160%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl195239196144%_))
                                                            (let ((_%e195246196163%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl195239196144%_))))
                      (let ((_%tl195248196168%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e195246196163%_)))
                            (_%hd195247196166%_
                             (let ()
                               (declare (not safe))
                               (##car _%e195246196163%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd195247196166%_))
                            (let ((_%e195249196171%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd195247196166%_))))
                              (let ((_%tl195251196176%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e195249196171%_)))
                                    (_%hd195250196174%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e195249196171%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd195250196174%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd195250196174%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl195251196176%_))
                                            (let ((_%e195252196179%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl195251196176%_))))
                                              (let ((_%tl195254196184%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e195252196179%_)))
                                                    (_%hd195253196182%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e195252196179%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl195254196184%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair/null?
                                                           _%tl195248196168%_))
                                                        (let ((_%__splice201199201200%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-split-splice->vector
                          _%tl195248196168%_
                          '0))))
                  (let ((_%tl195257196189%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice201199201200%_ '1)))
                        (_%target195255196187%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice201199201200%_ '0))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl195257196189%_))
                        (_%__match201300201301%_
                         _%e195225196107%_
                         _%hd195226196110%_
                         _%tl195227196112%_
                         _%e195228196115%_
                         _%hd195229196118%_
                         _%tl195230196120%_
                         _%e195231196123%_
                         _%hd195232196126%_
                         _%tl195233196128%_
                         _%e195234196131%_
                         _%hd195235196134%_
                         _%tl195236196136%_
                         _%e195237196139%_
                         _%hd195238196142%_
                         _%tl195239196144%_
                         _%e195240196147%_
                         _%hd195241196150%_
                         _%tl195242196152%_
                         _%e195243196155%_
                         _%hd195244196158%_
                         _%tl195245196160%_
                         _%e195246196163%_
                         _%hd195247196166%_
                         _%tl195248196168%_
                         _%e195249196171%_
                         _%hd195250196174%_
                         _%tl195251196176%_
                         _%e195252196179%_
                         _%hd195253196182%_
                         _%tl195254196184%_
                         _%__splice201199201200%_
                         _%target195255196187%_
                         _%tl195257196189%_)
                        (_%__match201488201489%_
                         _%e195225196107%_
                         _%hd195226196110%_
                         _%tl195227196112%_
                         _%e195228196115%_
                         _%hd195229196118%_
                         _%tl195230196120%_
                         _%e195231196123%_
                         _%hd195232196126%_
                         _%tl195233196128%_
                         _%e195234196131%_
                         _%hd195235196134%_
                         _%tl195236196136%_
                         _%e195237196139%_
                         _%hd195238196142%_
                         _%tl195239196144%_
                         _%e195240196147%_
                         _%hd195241196150%_
                         _%tl195242196152%_
                         _%e195243196155%_
                         _%hd195244196158%_
                         _%tl195245196160%_
                         _%e195246196163%_
                         _%hd195247196166%_
                         _%tl195248196168%_
                         _%e195249196171%_
                         _%hd195250196174%_
                         _%tl195251196176%_
                         _%e195252196179%_
                         _%hd195253196182%_
                         _%tl195254196184%_))))
                (_%__match201488201489%_
                 _%e195225196107%_
                 _%hd195226196110%_
                 _%tl195227196112%_
                 _%e195228196115%_
                 _%hd195229196118%_
                 _%tl195230196120%_
                 _%e195231196123%_
                 _%hd195232196126%_
                 _%tl195233196128%_
                 _%e195234196131%_
                 _%hd195235196134%_
                 _%tl195236196136%_
                 _%e195237196139%_
                 _%hd195238196142%_
                 _%tl195239196144%_
                 _%e195240196147%_
                 _%hd195241196150%_
                 _%tl195242196152%_
                 _%e195243196155%_
                 _%hd195244196158%_
                 _%tl195245196160%_
                 _%e195246196163%_
                 _%hd195247196166%_
                 _%tl195248196168%_
                 _%e195249196171%_
                 _%hd195250196174%_
                 _%tl195251196176%_
                 _%e195252196179%_
                 _%hd195253196182%_
                 _%tl195254196184%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match201692201693%_
                                                     _%e195225196107%_
                                                     _%hd195226196110%_
                                                     _%tl195227196112%_
                                                     _%e195228196115%_
                                                     _%hd195229196118%_
                                                     _%tl195230196120%_
                                                     _%e195231196123%_
                                                     _%hd195232196126%_
                                                     _%tl195233196128%_
                                                     _%e195234196131%_
                                                     _%hd195235196134%_
                                                     _%tl195236196136%_
                                                     _%e195237196139%_
                                                     _%hd195238196142%_
                                                     _%tl195239196144%_
                                                     _%e195240196147%_
                                                     _%hd195241196150%_
                                                     _%tl195242196152%_
                                                     _%e195243196155%_
                                                     _%hd195244196158%_
                                                     _%tl195245196160%_
                                                     _%e195246196163%_
                                                     _%hd195247196166%_
                                                     _%tl195248196168%_))))
                                            (_%__match201692201693%_
                                             _%e195225196107%_
                                             _%hd195226196110%_
                                             _%tl195227196112%_
                                             _%e195228196115%_
                                             _%hd195229196118%_
                                             _%tl195230196120%_
                                             _%e195231196123%_
                                             _%hd195232196126%_
                                             _%tl195233196128%_
                                             _%e195234196131%_
                                             _%hd195235196134%_
                                             _%tl195236196136%_
                                             _%e195237196139%_
                                             _%hd195238196142%_
                                             _%tl195239196144%_
                                             _%e195240196147%_
                                             _%hd195241196150%_
                                             _%tl195242196152%_
                                             _%e195243196155%_
                                             _%hd195244196158%_
                                             _%tl195245196160%_
                                             _%e195246196163%_
                                             _%hd195247196166%_
                                             _%tl195248196168%_))
                                        (_%__match201368201369%_
                                         _%e195225196107%_
                                         _%hd195226196110%_
                                         _%tl195227196112%_
                                         _%e195228196115%_
                                         _%hd195229196118%_
                                         _%tl195230196120%_
                                         _%e195231196123%_
                                         _%hd195232196126%_
                                         _%tl195233196128%_
                                         _%e195234196131%_
                                         _%hd195235196134%_
                                         _%tl195236196136%_
                                         _%e195237196139%_
                                         _%hd195238196142%_
                                         _%tl195239196144%_
                                         _%e195240196147%_
                                         _%hd195241196150%_
                                         _%tl195242196152%_
                                         _%e195243196155%_
                                         _%hd195244196158%_
                                         _%tl195245196160%_
                                         _%e195246196163%_
                                         _%hd195247196166%_
                                         _%tl195248196168%_
                                         _%e195249196171%_
                                         _%hd195250196174%_
                                         _%tl195251196176%_))
                                    (_%__match201692201693%_
                                     _%e195225196107%_
                                     _%hd195226196110%_
                                     _%tl195227196112%_
                                     _%e195228196115%_
                                     _%hd195229196118%_
                                     _%tl195230196120%_
                                     _%e195231196123%_
                                     _%hd195232196126%_
                                     _%tl195233196128%_
                                     _%e195234196131%_
                                     _%hd195235196134%_
                                     _%tl195236196136%_
                                     _%e195237196139%_
                                     _%hd195238196142%_
                                     _%tl195239196144%_
                                     _%e195240196147%_
                                     _%hd195241196150%_
                                     _%tl195242196152%_
                                     _%e195243196155%_
                                     _%hd195244196158%_
                                     _%tl195245196160%_
                                     _%e195246196163%_
                                     _%hd195247196166%_
                                     _%tl195248196168%_))))
                            (_%__match201692201693%_
                             _%e195225196107%_
                             _%hd195226196110%_
                             _%tl195227196112%_
                             _%e195228196115%_
                             _%hd195229196118%_
                             _%tl195230196120%_
                             _%e195231196123%_
                             _%hd195232196126%_
                             _%tl195233196128%_
                             _%e195234196131%_
                             _%hd195235196134%_
                             _%tl195236196136%_
                             _%e195237196139%_
                             _%hd195238196142%_
                             _%tl195239196144%_
                             _%e195240196147%_
                             _%hd195241196150%_
                             _%tl195242196152%_
                             _%e195243196155%_
                             _%hd195244196158%_
                             _%tl195245196160%_
                             _%e195246196163%_
                             _%hd195247196166%_
                             _%tl195248196168%_))))
                    (_%__match201630201631%_
                     _%e195225196107%_
                     _%hd195226196110%_
                     _%tl195227196112%_
                     _%e195228196115%_
                     _%hd195229196118%_
                     _%tl195230196120%_
                     _%e195231196123%_
                     _%hd195232196126%_
                     _%tl195233196128%_
                     _%e195234196131%_
                     _%hd195235196134%_
                     _%tl195236196136%_
                     _%e195237196139%_
                     _%hd195238196142%_
                     _%tl195239196144%_
                     _%e195240196147%_
                     _%hd195241196150%_
                     _%tl195242196152%_
                     _%e195243196155%_
                     _%hd195244196158%_
                     _%tl195245196160%_))
                (_%__kont201213201214%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont201213201214%_))
                                            (_%__kont201213201214%_))
                                        (_%__kont201213201214%_))))
                                (_%__kont201213201214%_))))
                        (_%__kont201213201214%_))
                    (_%__kont201213201214%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont201213201214%_))
                                                (_%__kont201213201214%_))
                                            (_%__kont201213201214%_))))
                                    (_%__kont201213201214%_))))
                            (_%__kont201213201214%_))))
                    (_%__kont201213201214%_))))))))))
